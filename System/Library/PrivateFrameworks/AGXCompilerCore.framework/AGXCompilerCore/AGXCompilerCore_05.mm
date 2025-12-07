uint64_t AGCLLVMUserObject::Sampler::getAllocationInfo(uint64_t this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = *(v3 + 16);
      v7 = &v6[4 * v5];
      v8 = (a3 & 0xFFFFF) - *(v3 + 236);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 28) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFF00000 | v4 & 0xFFFFF;
  }

  *(this + 8) = *(a2 + 16);
  *this = a3;
  *(this + 16) = *(a2 + 24);
  return this;
}

void AGCLLVMUserObject::getTextureFenceFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set = 0;
    *&dword_28117E5B8 = 0;
    qword_28117E5C0 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getGetNullTextureFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set = 0;
    *&dword_28117E578 = 0;
    qword_28117E580 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set, &dword_20E4E1000);
  }
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Constant ***a2)
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

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, *(v9 + 36) - *(v9 + 28) + *v15, v5);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v13 != v9;
}

uint64_t llvm::GlobalDCEPass::GlobalDCEPass(uint64_t a1, uint64_t a2)
{
  result = llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 0;
  *(result + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = 0;
  v4 = *(result + 300);
  *(result + 300) = *(a2 + 300);
  *(a2 + 300) = v4;
  v5 = *(result + 304);
  *(result + 304) = *(a2 + 304);
  *(a2 + 304) = v5;
  v6 = *(a2 + 312);
  v7 = *(a2 + 320);
  *(a2 + 312) = 0;
  *(result + 312) = v6;
  *(result + 320) = v7;
  *(a2 + 320) = 0;
  v9 = *(a2 + 328);
  v8 = *(a2 + 336);
  *(result + 328) = v9;
  *(result + 336) = v8;
  *(result + 344) = *(a2 + 344);
  if (v8)
  {
    v10 = *(v9 + 8);
    v11 = *(result + 320);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(v6 + 8 * v10) = result + 328;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
  }

  v12 = *(a2 + 352);
  v13 = *(a2 + 360);
  *(a2 + 352) = 0;
  *(result + 352) = v12;
  *(result + 360) = v13;
  *(a2 + 360) = 0;
  v15 = *(a2 + 368);
  v14 = *(a2 + 376);
  *(result + 368) = v15;
  *(result + 376) = v14;
  *(result + 384) = *(a2 + 384);
  if (v14)
  {
    v16 = *(v15 + 8);
    v17 = *(result + 360);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v12 + 8 * v16) = result + 368;
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  *(result + 392) = 0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  *(result + 392) = *(a2 + 392);
  *(a2 + 392) = 0;
  *(result + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  v18 = *(result + 404);
  *(result + 404) = *(a2 + 404);
  *(a2 + 404) = v18;
  v19 = *(result + 408);
  *(result + 408) = *(a2 + 408);
  *(a2 + 408) = v19;
  *(result + 416) = 0;
  *(result + 424) = 0;
  *(result + 432) = 0;
  *(result + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(result + 424) = *(a2 + 424);
  *(a2 + 424) = 0;
  v20 = *(result + 428);
  *(result + 428) = *(a2 + 428);
  *(a2 + 428) = v20;
  v21 = *(result + 432);
  *(result + 432) = *(a2 + 432);
  *(a2 + 432) = v21;
  return result;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex32,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7D20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void llvm::GlobalDCEPass::~GlobalDCEPass(llvm::GlobalDCEPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 108);
  v6 = *(this + 52);
  if (v5)
  {
    v7 = (v6 + 16);
    v8 = 104 * v5;
    do
    {
      if ((*(v7 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000 && *v7 != *(v7 - 1))
      {
        free(*v7);
      }

      v7 += 13;
      v8 -= 104;
    }

    while (v8);
    v6 = *(this + 52);
    v5 = *(this + 108);
    v9 = 104 * v5;
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v5, v6, v9);
  v10 = *(this + 102);
  v11 = *(this + 49);
  if (v10)
  {
    v12 = 112 * v10;
    do
    {
      if ((*v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v11 + 96));
        v13 = *(v11 + 8);
        if ((v11 + 24) != v13)
        {
          free(v13);
        }
      }

      v11 += 112;
      v12 -= 112;
    }

    while (v12);
    v11 = *(this + 49);
    v10 = *(this + 102);
    v14 = 112 * v10;
  }

  else
  {
    v14 = 0;
  }

  llvm::deallocate_buffer(v10, v11, v14);
  v15 = *(this + 46);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(this + 44);
  *(this + 44) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 41);
  if (v18)
  {
    do
    {
      v19 = *v18;
      v20 = v18[4];
      if (v20 != v18[3])
      {
        free(v20);
      }

      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v21 = *(this + 39);
  *(this + 39) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(this + 76);
  v23 = *(this + 36);
  if (v22)
  {
    v24 = (v23 + 16);
    v25 = 72 * v22;
    do
    {
      if ((*(v24 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000 && *v24 != *(v24 - 1))
      {
        free(*v24);
      }

      v24 += 9;
      v25 -= 72;
    }

    while (v25);
    v23 = *(this + 36);
    v22 = 9 * *(this + 76);
    v26 = 72 * *(this + 76);
  }

  else
  {
    v26 = 0;
  }

  llvm::deallocate_buffer(v22, v23, v26);
  v27 = *(this + 1);
  if (v27 != *this)
  {
    free(v27);
  }
}

uint64_t std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5, a4);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::isRequired();
}

char *llvm::PassInfoMixin<llvm::GlobalDCEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x45)
  {
    v1 = v0;
  }

  else
  {
    v1 = 69;
  }

  v2 = &aStringrefLlvmG_92[v1];
  v3 = 69 - v1;
  if ((69 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 69 - v1;
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

uint64_t llvm::IRBuilderBase::CreateAdd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 16))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::detail::PassModel<llvm::Module,llvm::GlobalDCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825B0018;
  llvm::GlobalDCEPass::~GlobalDCEPass((a1 + 1), a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMUserObject::areIndirectTextureWritesSupported(AGCLLVMUserObject *this)
{
  v1 = *this;
  if (*(this + 14) == 1 && *(*(this + *(v1 - 24) + 2168) + 1865) != 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + *(v1 - 24) + 2168) + 1852);
  }

  return v2 & 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v5[0] = &unk_2825A8F68;
  v5[1] = v3;
  v5[3] = v5;
  iterateResourceUsers(v2, v5);
  return std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
}

void AGCLLVMUserObject::replaceTrigIdentities(AGCLLVMUserObject *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 267);
  v3 = *(v1 + 271);
  AGCLLVMBuilder::AGCLLVMBuilder(&v38, *v2);
  v44 = v3;
  v38 = &unk_2825A73A0;
  AGCLLVMBuilder::AGCLLVMBuilder(&v45, *v2);
  v50 = &v38;
  v49[37] = v2;
  v51 = v1;
  v45 = &unk_28257D048;
  v43 = v2;
  v40[20] = *(v3 + 104);
  {
    AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements = 0;
    *&dword_28117E488 = 0;
    qword_28117E490 = 0x2800000000;
    __cxa_atexit(llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::flag, memory_order_acquire) != -1)
  {
    v32[0] = v37;
    __p[0] = v32;
    std::__call_once(&AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::flag, __p, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::$_0 &&>>);
  }

  v4 = v43[4];
  v5 = v43 + 3;
  if (v4 != (v43 + 3))
  {
    do
    {
      if (v4)
      {
        v6 = (v4 - 56);
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v4 + 1);
      Name = llvm::Value::getName(v6);
      v37[0] = 0;
      v37[1] = 0;
      if (AGCLLVMBuilder::findPrefix(Name, v9, v37, &v36, "air.", 4uLL))
      {
        Key = llvm::StringMapImpl::FindKey();
        v11 = Key == -1 ? dword_28117E488 : Key;
        if (v11 != dword_28117E488)
        {
          v12 = *(v4 - 6);
          if (v12)
          {
            v29 = AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements;
            do
            {
              while (1)
              {
                v13 = *(v12 + 24);
                v12 = *(v12 + 8);
                if (((llvm::CallBase::arg_end(v13) - (v13 - 32 * (*(v13 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                {
                  llvm::IRBuilderBase::SetInsertPoint(&v39, v13);
                  v14 = *(v13 - 4 * (*(v13 + 5) & 0x7FFFFFF));
                  if (v14)
                  {
                    if (*(v14 + 16) == 84 && ((llvm::CallBase::arg_end(v14) - (v14 + 32 * -(*(v14 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0x20)
                    {
                      v15 = *(v14 - 32);
                      if (v15)
                      {
                        if (!*(v15 + 16) && *(v15 + 24) == *(v14 + 72))
                        {
                          v16 = llvm::Value::getName(v15);
                          v35[0] = 0;
                          v35[1] = 0;
                          if (AGCLLVMBuilder::findPrefix(v16, v17, v35, &v34, "air.", 4uLL))
                          {
                            v18 = *(v29 + 8 * v11);
                            v19 = llvm::StringMapImpl::FindKey();
                            v20 = v19 == -1 ? *(v18 + 16) : v19;
                            v21 = *(v18 + 8) + 8 * v20;
                            if (v21 != *(*(v29 + 8 * v11) + 8) + 8 * *(*(v29 + 8 * v11) + 16))
                            {
                              if (AGCTargetPrinter::isValidToPrintMessage(*(v51 + 212)))
                              {
                                v28 = *(v51 + 212);
                                llvm::StringRef::str(v32, v37);
                                v22 = v32;
                                if (v33 < 0)
                                {
                                  v22 = v32[0];
                                }

                                v27 = v22;
                                llvm::StringRef::str(__p, v35);
                                if (v31 >= 0)
                                {
                                  v23 = __p;
                                }

                                else
                                {
                                  v23 = __p[0];
                                }

                                AGCTargetPrinter::printMessage(v28, "Simplify Identity: %s(%s)", v27, v23);
                                if (v31 < 0)
                                {
                                  operator delete(__p[0]);
                                }

                                if (v33 < 0)
                                {
                                  operator delete(v32[0]);
                                }
                              }

                              v24 = *(*v21 + 8);
                              v25 = *(*v21 + 16);
                              v26 = (v50 + (v25 >> 1));
                              if (v25)
                              {
                                v24 = *(*v26 + v24);
                              }

                              v24(v26, *(v14 - 32 * (*(v14 + 20) & 0x7FFFFFF)));
                              llvm::Value::replaceAllUsesWith();
                              llvm::Instruction::eraseFromParent(v13);
                              if (!llvm::Value::getNumUses(v14))
                              {
                                break;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (!v12)
                {
                  goto LABEL_43;
                }
              }

              llvm::Instruction::eraseFromParent(v14);
            }

            while (v12);
          }
        }
      }

LABEL_43:
      v4 = v7;
    }

    while (v7 != v5);
  }

  v38 = &unk_2825A73A0;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v49);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v48);
  if (v46 != &v47)
  {
    free(v46);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v42);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v41);
  if (v39 != v40)
  {
    free(v39);
  }
}

uint64_t AGCLLVMUserObject::Texture::getAllocationInfo(uint64_t this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(v3 + 232);
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = *(v3 + 16);
      v7 = &v6[4 * v5];
      v8 = (a3 & 0xFFFFF) - *(v3 + 236);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 28) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFF00000 | v4 & 0xFFFFF;
  }

  *(this + 16) = *(a2 + 32);
  *(this + 8) = *(a2 + 8);
  v11 = *(a2 + 12);
  *(this + 9) = *(a2 + 16) == 1;
  *this = a3;
  *(this + 4) = v11;
  *(this + 24) = *(a2 + 40);
  return this;
}

BOOL llvm::SmallPtrSetImplBase::erase_imp(const void ***this, const void *a2)
{
  imp = llvm::SmallPtrSetImplBase::find_imp(this, a2);
  v4 = this[1];
  v5 = 16;
  if (v4 == *this)
  {
    v5 = 20;
  }

  v6 = &v4[*(this + v5)];
  if (imp != v6)
  {
    *imp = -2;
    ++*(this + 6);
  }

  return imp != v6;
}

const void **llvm::SmallPtrSetImplBase::find_imp(const void ***this, const void *a2)
{
  result = *this;
  v5 = this[1];
  if (v5 != result)
  {
    result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
    if (*result == a2)
    {
      return result;
    }

    v5 = this[1];
    v7 = 16;
    if (v5 == *this)
    {
      v7 = 20;
    }

    v8 = *(this + v7);
    return &v5[v8];
  }

  v8 = *(this + 5);
  if (!v8)
  {
    return &v5[v8];
  }

  v9 = 8 * v8;
  while (*result != a2)
  {
    ++result;
    v9 -= 8;
    if (!v9)
    {
      return &v5[v8];
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceLateTextureBufferLength(uint64_t this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = *(v1 + 32);
  v29 = v1 + 24;
  if (v2 != v1 + 24)
  {
    v3 = this;
    v31 = this + 1712;
    v4 = this + 2168;
    v5 = this + 1704;
    do
    {
      v30 = *(v2 + 8);
      if (v2)
      {
        v6 = (v2 - 56);
      }

      else
      {
        v6 = 0;
      }

      this = llvm::Value::getName(v6);
      if (v7 >= 0x26)
      {
        this = memcmp(this, "agx.texture_heap.texture_buffer_length", 0x26uLL);
        if (!this)
        {
          this = llvm::Module::getGlobalVariable();
          v8 = *(v2 - 48);
          if (v8)
          {
            v9 = this;
            do
            {
              v10 = *(v8 + 24);
              v8 = *(v8 + 8);
              if (*(v10 + 16) == 84)
              {
                v11 = v10;
              }

              else
              {
                v11 = 0;
              }

              llvm::IRBuilderBase::SetInsertPoint((v31 + *(*v3 - 24)), v11);
              v12 = *(v11 - 4 * (*(v11 + 5) & 0x7FFFFFF));
              v13 = v3 + *(*v3 - 24);
              v14 = *(v13 + 238);
              v35 = 257;
              Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 47, v12, v14, v34);
              UDiv = Cast;
              v17 = *v3;
              if (!*(*(v4 + *(*v3 - 24)) + 1900))
              {
                v18 = AGCLLVMObject::useTextureIDLegacyMode(Cast);
                v17 = *v3;
                if (v18)
                {
                  v19 = v3 + *(v17 - 24);
                  v20 = llvm::ConstantInt::get();
                  v35 = 257;
                  UDiv = llvm::IRBuilderBase::CreateUDiv((v19 + 1712), UDiv, v20, v34);
                  v17 = *v3;
                }
              }

              v21 = (v3 + *(v17 - 24));
              v22 = v21[239];
              v35 = 257;
              Load = AGCLLVMBuilder::CreateLoad((v21 + 213), v9, v34);
              v33 = 257;
              GEP = llvm::IRBuilderBase::CreateGEP((v21 + 214), v22, Load, UDiv, v32);
              v25 = *(*v3 - 24);
              v35 = 257;
              v26 = AGCLLVMBuilder::CreateLoad((v5 + v25), GEP, v34);
              v27 = v3 + *(*v3 - 24);
              v28 = *(v27 + 238);
              v35 = 257;
              llvm::IRBuilderBase::CreateCast((v27 + 1712), 38, v26, v28, v34);
              llvm::Value::replaceAllUsesWith();
              this = llvm::Instruction::eraseFromParent(v11);
            }

            while (v8);
          }
        }
      }

      v2 = v30;
    }

    while (v30 != v29);
  }

  return this;
}

uint64_t AGCLLVMUserObject::replaceSamplerFunctionUses(uint64_t *a1, uint64_t a2, int *a3)
{
  v438 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = (a1 + *(*a1 - 24));
  size = v7[90].__r_.__value_.__l.__size_;
  v9 = *a3;
  if ((size[1864] & 1) != 0 || a3[1] != 2)
  {
    if (v9 == 3)
    {
      (*(*size + 416))(size, a1[20]);
      v6 = *a1;
      v9 = *a3;
    }
  }

  else if ((v9 & 0xFFFFFFFE) == 2)
  {
    v10 = "Read or write to cube texture not supported";
    v11 = v7 + 69;
LABEL_447:
    std::string::append(v11, v10);
    return 0;
  }

  if (*(*(a1 + *(v6 - 24) + 2168) + 1855) == 1 && v9 == 8)
  {
    v13 = (*(v6 + 448))(a1);
    if (v13)
    {
      v14 = *(v13 + 32);
      if ((v14 & 0x400000) == 0)
      {
        v351 = std::__throw_bad_optional_access[abi:nn200100]();
        return AGCLLVMUserObject::isConstantSampler(v351, v352, v353, v354);
      }

      if ((v14 & 0x200000) != 0)
      {
        v15 = (a1 + *(*a1 - 24));
        v10 = "Large MRT not supported with image block write";
LABEL_446:
        v11 = v15 + 69;
        goto LABEL_447;
      }
    }
  }

  __src = llvm::PointerType::get();
  llvm::StructType::get();
  v16 = *a1;
  v367 = *(a3 + 41);
  if (*(a3 + 41))
  {
    v378 = *(*(a1 + *(v16 - 24) + 2168) + 1846);
  }

  else
  {
    v378 = 0;
  }

  v17 = *(v16 - 24);
  v18 = *(a2 + 8);
  v19 = 1;
  if (!v18)
  {
    return v19;
  }

  v20 = a1 + 214;
  v377 = a1 + 271;
  v359 = *(*(a1 + v17 + 2168) + 1853);
  v383 = a1 + 213;
  v372 = *(**(*(a2 + 24) + 16) + 8);
  v379 = a1 + 214;
  v361 = *a3 & 0xFFFFFFFE;
  while (1)
  {
    v21 = *(v18 + 24);
    v18 = *(v18 + 8);
    llvm::IRBuilderBase::SetInsertPoint((v20 + *(*a1 - 24)), v21);
    v22 = *a3;
    memset(v419, 0, 11);
    v420 = 0u;
    v421 = 0u;
    v422 = 0u;
    v423 = 0u;
    v424 = 0;
    v425 = 0u;
    v426 = 0u;
    v427 = 0u;
    v428 = 0;
    v430 = 0u;
    memset(v431, 0, 28);
    v433 = 0u;
    memset(v434, 0, sizeof(v434));
    v432 = 0u;
    v435 = 1;
    v436 = 0;
    v437 = 0;
    v23 = a3[3];
    v434[25] = *(a3 + 52) != 0;
    *&v434[26] = *(a3 + 47);
    v429 = 4;
    v24 = *(v21 + 5) & 0x7FFFFFF;
    __src = v22;
    v417 = v23;
    v25 = (v21 - 32 * v24);
    ConstantSamplerGlobal = *(a3 + 31) ? *&v25[8 * *(a3 + 31)] : 0;
    v27 = *&v25[8 * *(a3 + 30)];
    if (!v27 || *(v27 + 16) - 11 >= 2)
    {
      if (!ConstantSamplerGlobal)
      {
        v380 = *&v25[8 * *(a3 + 30)];
        isConstantSampler = 0;
        v407 = 0;
        v406 = 0;
        goto LABEL_35;
      }

      if (ConstantSamplerGlobal[16] - 11 >= 2)
      {
        break;
      }
    }

    llvm::UndefValue::get();
LABEL_29:
    llvm::Value::replaceAllUsesWith();
LABEL_30:
    llvm::Instruction::eraseFromParent(v21);
LABEL_31:
    if (!v18)
    {
      return 1;
    }
  }

  v380 = *&v25[8 * *(a3 + 30)];
  v407 = 0;
  v406 = 0;
  isConstantSampler = AGCLLVMUserObject::isConstantSampler(a1, ConstantSamplerGlobal, &v407, &v406);
LABEL_35:
  if (v380 && *(llvm::Value::stripPointerCasts(v380) + 16) >= 0x15u && !(*(*a1 + 400))(a1))
  {
    goto LABEL_31;
  }

  if ((isConstantSampler & 1) == 0)
  {
    v30 = (*(*a1 + 416))(a1);
    if (ConstantSamplerGlobal)
    {
      if ((v30 & 1) == 0 && *(llvm::Value::stripPointerCasts(ConstantSamplerGlobal) + 16) > 0x14u)
      {
        goto LABEL_31;
      }
    }
  }

  if ((isConstantSampler | (*(*a1 + 352))(a1) & v378 ^ 1))
  {
    if ((llvm::AttributeList::hasFnAttr() & 1) != 0 || (llvm::CallBase::hasFnAttrOnCalledFunction() & 1) != 0 || a3[4] >= 2)
    {
      v437 = 1;
    }

    v405 = 0;
    if (isConstantSampler && !*(*(v377 + *(*a1 - 24)) + 1900))
    {
      v31 = v407;
      if (v378)
      {
        v32 = ((v407 >> 16) & 0xF) - 1;
        if (v32 > 7)
        {
          LOWORD(v33) = 0;
        }

        else
        {
          v33 = dword_20E715D98[v32];
        }

        v405 = (32 * ((v407 & 0x6000) != 0)) | (((v407 & 0x6000) == 0x4000) << 6) | (((v407 & 0x1800) == 2048) << 7) | (((v407 & 0x600) == 512) << 8) | v33;
        v31 = v407 & 0xFFFFFFFFFFF0FFFFLL;
      }

      ConstantSamplerGlobal = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(a1, v31, v406);
    }

    v374 = ConstantSamplerGlobal;
    v376 = v18;
    BYTE1(v419[2]) = (*a3 - 9) < 2;
    if (*(a3 + 36))
    {
      v34 = (v21 - 32 * (*(v21 + 5) & 0x7FFFFFF));
      if (!*(a3 + 35))
      {
        goto LABEL_62;
      }

      v35 = *&v34[8 * *(a3 + 35)];
      if (!v35)
      {
        goto LABEL_62;
      }

      v36 = (v35 + 24);
      if (*(v35 + 32) >= 0x41u)
      {
        v36 = *v36;
      }

      if (*v36)
      {
LABEL_62:
        v37 = *&v34[8 * *(a3 + 36)];
        if (v37 && *(v37 + 16) <= 0x14u)
        {
          if (llvm::Constant::isZeroValue(*&v34[8 * *(a3 + 36)]))
          {
            goto LABEL_77;
          }

          v362 = isConstantSampler;
          if ((*(*v37 + 8) & 0xFE) == 0x12)
          {
            v38 = *(*v37 + 32);
            InsertElement = llvm::ConstantAggregateZero::get();
            if (v38)
            {
              for (i = 0; i != v38; ++i)
              {
                AggregateElement = llvm::Constant::getAggregateElement(v37);
                v42 = AggregateElement;
                v43 = *(AggregateElement + 32);
                if (v43 > 0x40)
                {
                  v44 = **(AggregateElement + 24);
                }

                else
                {
                  v44 = (*(AggregateElement + 24) << -v43) >> -v43;
                }

                if ((v44 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
                {
                  v42 = llvm::ConstantInt::get();
                }

                v45 = v383 + *(*a1 - 24);
                LOWORD(v415) = 257;
                v46 = llvm::ConstantInt::get();
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((v45 + 8), InsertElement, v42, v46, __dst);
              }
            }
          }

          else
          {
            v82 = *(v37 + 32);
            if (v82 > 0x40)
            {
              v83 = **(v37 + 24);
            }

            else
            {
              v83 = (*(v37 + 24) << -v82) >> -v82;
            }

            InsertElement = v37;
            if ((v83 - 8) <= 0xFFFFFFFFFFFFFFEFLL)
            {
              InsertElement = llvm::ConstantInt::get();
            }
          }
        }

        else
        {
          v362 = isConstantSampler;
          InsertElement = *&v34[8 * *(a3 + 36)];
        }

        *(&v427 + 1) = InsertElement;
        v18 = v376;
        v20 = a1 + 214;
        isConstantSampler = v362;
      }
    }

LABEL_77:
    if (*a3 == 12)
    {
      *(&v433 + 1) = *(v21 + 4 * *(a3 + 48) + -4 * (*(v21 + 5) & 0x7FFFFFF));
      *v434 = *(v21 + 4 * *(a3 + 49) + -4 * (*(v21 + 5) & 0x7FFFFFF));
      *&v434[8] = *(v21 + 4 * *(a3 + 50) + -4 * (*(v21 + 5) & 0x7FFFFFF));
      *&v434[16] = *(v21 + 4 * *(a3 + 51) + -4 * (*(v21 + 5) & 0x7FFFFFF));
    }

    if (*(a3 + 40))
    {
      if (BYTE1(v419[2]) == 1)
      {
        v47 = llvm::ConstantInt::get();
      }

      else
      {
        v47 = *(v21 + 4 * *(a3 + 40) + -4 * (*(v21 + 5) & 0x7FFFFFF));
      }

      v428 = v47;
    }

    if (v372 == 16)
    {
      if ((v378 & 1) == 0)
      {
        LOBYTE(v419[2]) = 1;
      }

      if (*(a3 + 46))
      {
        v431[1] = *(v21 + 4 * *(a3 + 46) + -4 * (*(v21 + 5) & 0x7FFFFFF));
      }
    }

    v48 = *(a3 + 38);
    if (*(a3 + 38))
    {
      *(&v430 + 1) = *(v21 + 4 * v48 + -4 * (*(v21 + 5) & 0x7FFFFFF));
      v431[0] = *(v21 + 4 * v48 + -4 * (*(v21 + 5) & 0x7FFFFFF) + 4);
      v429 = 2;
      goto LABEL_91;
    }

    if (*(a3 + 37))
    {
      v62 = (v21 + 32 * *(a3 + 37) + -32 * (*(v21 + 5) & 0x7FFFFFF));
      v63 = *v62;
      *&v430 = v62[4];
      v64 = (v63 + 24);
      if (*(v63 + 32) >= 0x41u)
      {
        v64 = *v64;
      }

      v65 = *v64;
      v429 = v65 != 0;
      if (HIDWORD(__src))
      {
        v66 = *a1;
        if (!v65)
        {
          if (!(*(v66 + 336))(a1))
          {
            v429 = 1;
            goto LABEL_91;
          }

          v66 = *a1;
        }

        if (!(*(v66 + 384))(a1))
        {
          goto LABEL_91;
        }

        v429 = 0;
        v67 = *(*a1 - 24);
        v68 = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v374, 1);
        LOWORD(v415) = 257;
        Load = AGCLLVMBuilder::CreateLoad((v383 + v67), v68, __dst);
        goto LABEL_262;
      }

      if (__src != 3 || *(*(v377 + *(*a1 - 24)) + 1883) != 1)
      {
LABEL_256:
        v429 = 3;
        *&v430 = 0;
        goto LABEL_91;
      }

      goto LABEL_173;
    }

    v76 = *(a3 + 39);
    if (*(a3 + 39))
    {
      if (HIDWORD(__src))
      {
        v429 = 1;
        v77 = *(v21 + 4 * v76 + -4 * (*(v21 + 5) & 0x7FFFFFF));
      }

      else if (__src == 3)
      {
        v429 = 1;
        v77 = llvm::ConstantInt::get();
      }

      else
      {
        v77 = 0;
        v429 = 3;
      }

      *&v430 = v77;
      if (!v359 || *a3 != 8 && *a3 != 3)
      {
LABEL_91:
        if (v367)
        {
          v431[2] = AGCLLVMBuilder::f32Extend((v383 + *(*a1 - 24)), *(v21 + 4 * *(a3 + 41) + -4 * (*(v21 + 5) & 0x7FFFFFF)), 1);
        }

        if (*(a3 + 42))
        {
          *&v432 = *(v21 + 4 * *(a3 + 42) + -4 * (*(v21 + 5) & 0x7FFFFFF));
        }

        v49 = *a3;
        if (*a3 == 8 || v49 == 3)
        {
          DefaultRoundingMode = a3[6];
          v51 = *a1;
          if (!DefaultRoundingMode)
          {
            DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode((a1 + *(v51 - 24)));
            v51 = *a1;
          }

          v15 = (a1 + *(v51 - 24));
          v52 = v15[90].__r_.__value_.__l.__size_;
          if (DefaultRoundingMode == 2 && (v52[1888] & 1) == 0)
          {
            v10 = "The specified rounding mode is not supported on this device.";
            goto LABEL_446;
          }

          v419[0] = AGCLLVMTargetLowerer::getRTZMode(v52, DefaultRoundingMode);
          v49 = *a3;
        }

        v53 = (a1 + *(*a1 - 24));
        v54 = *(*(v53 + 271) + 1891) == 1 && v49 == 0;
        if (v54 && AGCLLVMObject::getDefaultRoundingMode(v53) == 1)
        {
          LOBYTE(v419[1]) = 1;
        }

        if (*(a3 + 43))
        {
          *(&v432 + 1) = *(v21 + 4 * *(a3 + 43) + -4 * (*(v21 + 5) & 0x7FFFFFF));
          v55 = **(&v432 + 1);
          if ((*(**(&v432 + 1) + 8) & 0xFE) == 0x12)
          {
            v55 = **(v55 + 16);
          }

          v56 = a1 + *(*a1 - 24);
          if (v55 == *(v56 + 234) && (v419[0] & 0xFFFFFFFE) == 2)
          {
            v402 = *(v56 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v403, (v56 + 1712));
            v404 = *(v56 + 452);
            AGCLLVMUserObject::buildEmulatedIsF16Format(a1, &v402, v380);
            if (v403)
            {
              llvm::MetadataTracking::untrack();
            }

            v57 = a1 + *(*a1 - 24);
            v58 = *(v57 + 271);
            v399 = *(v57 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v400, (v57 + 1712));
            v401 = *(v57 + 452);
            AGCLLVMTargetLowerer::buildRTZF16Value(v58, &v399, *(&v432 + 1), v419[0] == 3);
            if (v400)
            {
              llvm::MetadataTracking::untrack();
            }

            LOWORD(v415) = 257;
            *(&v432 + 1) = llvm::IRBuilderBase::CreateSelect();
          }
        }

        if (*(a3 + 44))
        {
          *&v433 = *(v21 + 4 * *(a3 + 44) + -4 * (*(v21 + 5) & 0x7FFFFFF));
        }

        if (*(a3 + 45))
        {
          v59 = *(v21 + 4 * *(a3 + 45) + -4 * (*(v21 + 5) & 0x7FFFFFF));
          v60 = (v59 + 24);
          if (*(v59 + 32) >= 0x41u)
          {
            v60 = *v60;
          }

          v61 = *v60;
        }

        else
        {
          if (v361 != 4)
          {
LABEL_137:
            BindlessConstantSampler = 0;
            v370 = *a3;
            if (v374 || *a3 == 8)
            {
              goto LABEL_206;
            }

            __p[0] = 4;
            __p[1] = 0;
            v411 = 0;
            if ((*(*a1 + 352))(a1))
            {
              if (*a3 == 3)
              {
                if (a3[1])
                {
                  v71 = 3;
                }

                else
                {
                  v71 = 1;
                }
              }

              else if (*a3 == 2)
              {
                if (*(a3 + 54))
                {
                  v71 = 4;
                }

                else
                {
                  v71 = 2 * (a3[1] != 0);
                }
              }

              else
              {
                v71 = 5;
              }

              InternalConstSampler = AGCLLVMUserObject::getInternalConstSampler(a1, v71);
              v94 = v92;
              v95 = a1 + *(*a1 - 24);
              if (*(*(v95 + 271) + 1900))
              {
                llvm::IRBuilderBase::SetInsertPoint((v95 + 1712), v21);
                v96 = llvm::PointerType::get();
                BindlessConstantSampler = AGCLLVMUserObject::getBindlessConstantSampler(a1, InternalConstSampler, v94, v96);
                isConstantSampler = 1;
LABEL_202:
                if (v411 != -8192 && v411 != -4096 && v411)
                {
                  v98 = BindlessConstantSampler;
                  llvm::ValueHandleBase::RemoveFromUseList(__p);
                  BindlessConstantSampler = v98;
                }

LABEL_206:
                if (*(a3 + 52))
                {
                  v99 = *(v21 + 4 * *(a3 + 47) + -4 * (*(v21 + 5) & 0x7FFFFFF));
                  if (v99)
                  {
                    if (*(v99 + 16) == 16)
                    {
                      v100 = (v99 + 24);
                      if (*(v99 + 32) >= 0x41u)
                      {
                        v100 = *v100;
                      }

                      *&v434[26] = *v100;
                    }
                  }
                }

                v365 = BindlessConstantSampler;
                llvm::IRBuilderBase::SetInsertPoint((v20 + *(*a1 - 24)), v21);
                v102 = *(v21 + 4 * *(a3 + 34) + -4 * (*(v21 + 5) & 0x7FFFFFF));
                *&v427 = v102;
                v103 = a3[1];
                v105 = v103 == 2 && *a3 != 8;
                if (v103 == 3 || v105)
                {
                  v111 = AGCLLVMBuilder::extendVector((v383 + *(*a1 - 24)), v102, 4, v101);
                  v368 = 0;
                }

                else
                {
                  v106 = *a1;
                  if (!*(a3 + 54))
                  {
                    v368 = 0;
LABEL_266:
                    if ((*(*(v377 + *(v106 - 24)) + 1953) & 1) == 0 && *(&v427 + 1) && *a3 == 2)
                    {
                      v364 = v21;
                      v158 = isConstantSampler;
                      v159 = 0;
                      if (a3[1] == 1)
                      {
                        v160 = 2;
                      }

                      else
                      {
                        v160 = 3;
                      }

                      do
                      {
                        v161 = v383 + *(*a1 - 24);
                        v162 = v427;
                        LOWORD(v415) = 257;
                        v163 = llvm::ConstantInt::get();
                        Element = llvm::IRBuilderBase::CreateExtractElement((v161 + 8), v162, v163, __dst);
                        v165 = v383 + *(*a1 - 24);
                        v166 = *(&v427 + 1);
                        LOWORD(v415) = 257;
                        v167 = llvm::ConstantInt::get();
                        v168 = llvm::IRBuilderBase::CreateExtractElement((v165 + 8), v166, v167, __dst);
                        v169 = a1 + *(*a1 - 24);
                        v170 = v427;
                        LOWORD(v415) = 257;
                        Add = llvm::IRBuilderBase::CreateAdd((v169 + 1712), Element, v168, __dst);
                        v412 = 257;
                        v172 = llvm::ConstantInt::get();
                        llvm::IRBuilderBase::CreateInsertElement((v169 + 1712), v170, Add, v172, __p);
                        ++v159;
                      }

                      while (v160 != v159);
                      *(&v427 + 1) = 0;
                      v106 = *a1;
                      v18 = v376;
                      isConstantSampler = v158;
                      v21 = v364;
                    }

                    v173 = a1 + *(v106 - 24);
                    v174 = *(v173 + 271);
                    if (v174[1881] == 1 && (*(a1 + 20) & 1) == 0 && (v174[1882] & 1) == 0)
                    {
                      if (a3[1])
                      {
                        v175 = 16;
                      }

                      else if (v174[1884])
                      {
                        v175 = 30;
                      }

                      else
                      {
                        v175 = 16;
                      }

                      if (*a3 == 2)
                      {
                        v396 = *(v173 + 110);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v397, (v173 + 1712));
                        v398 = *(v173 + 452);
                        (*(*v174 + 904))(v174, &v396, a1, v380, &__src, *(a3 + 40), *(a3 + 44), *(a3 + 42), v355, v356, v357);
                        if (v397)
                        {
                          llvm::MetadataTracking::untrack();
                        }
                      }

                      else if (*a3 == 3)
                      {
                        if (a3[2] == 1)
                        {
                          *&v427 = AGCLLVMBuilder::clampToWidth((v173 + 1704), v427, v175, 0);
                        }

                        v176 = llvm::ConstantInt::get();
                        if (*(a3 + 40))
                        {
                          v177 = *(*a1 - 24);
                          v178 = AGCLLVMUserObject::buildImageArgumentPointer(a1, *(v21 - 4 * (*(v21 + 5) & 0x7FFFFFF)), 2);
                          LOWORD(v415) = 257;
                          v179 = AGCLLVMBuilder::CreateLoad((v383 + v177), v178, __dst);
                          v180 = a1 + *(*a1 - 24);
                          LOWORD(v415) = 257;
                          v181 = llvm::ConstantInt::get();
                          v182 = llvm::IRBuilderBase::CreateExtractElement((v180 + 1712), v179, v181, __dst);
                          v183 = llvm::ConstantInt::get();
                          v412 = 257;
                          Sub = llvm::IRBuilderBase::CreateSub((v180 + 1712), v182, v183, __p);
                          v185 = *(*a1 - 24);
                          v186 = v428;
                          v187 = *v428;
                          LOWORD(v415) = 257;
                          ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc((v379 + v185), Sub, v187, __dst);
                          v412 = 257;
                          ICmp = llvm::IRBuilderBase::CreateICmp((v379 + v185), 34, v186, ZExtOrTrunc, __p);
                          v409 = 257;
                          v176 = llvm::IRBuilderBase::CreateOr((v379 + v185), v176, ICmp, &v408);
                        }

                        if (*(a3 + 44))
                        {
                          v190 = *(*a1 - 24);
                          v191 = v433;
                          v192 = llvm::ConstantInt::get();
                          LOWORD(v415) = 257;
                          v193 = llvm::IRBuilderBase::CreateICmp((v379 + v190), 34, v191, v192, __dst);
                          v412 = 257;
                          llvm::IRBuilderBase::CreateOr((v379 + v190), v176, v193, __p);
                        }

                        v194 = v427;
                        if ((*(*v427 + 8) & 0xFE) == 0x12)
                        {
                          v195 = v383 + *(*a1 - 24);
                          LOWORD(v415) = 257;
                          v196 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateExtractElement((v195 + 8), v194, v196, __dst);
                          v197 = v427;
                          v198 = a1 + *(*a1 - 24);
                          llvm::ConstantInt::get();
                          LOWORD(v415) = 257;
                          Select = llvm::IRBuilderBase::CreateSelect();
                          v412 = 257;
                          v200 = llvm::ConstantInt::get();
                          *&v427 = llvm::IRBuilderBase::CreateInsertElement((v198 + 1712), v197, Select, v200, __p);
                        }

                        else
                        {
                          llvm::ConstantInt::get();
                          LOWORD(v415) = 257;
                          *&v427 = llvm::IRBuilderBase::CreateSelect();
                        }
                      }
                    }

                    BYTE2(v419[1]) = (v378 & 1) == 0;
                    BYTE1(v419[1]) = a3[7] & BYTE2(v419[1]);
                    *&v422 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 2);
                    *(&v422 + 1) = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 3);
                    if (*a3 == 8 || *a3 == 3)
                    {
                      *&v420 = AGCLLVMUserObject::buildBindlessIndexAsPtr(a1, v380);
                      *(&v421 + 1) = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 1);
                      v20 = a1 + 214;
                      if ((*(*a1 + 408))(a1))
                      {
                        goto LABEL_301;
                      }

                      v203 = 4;
                      v204 = &v423;
                      v205 = v380;
                    }

                    else
                    {
                      v205 = v380;
                      v206 = AGCLLVMUserObject::buildBindlessIndexAsPtr(a1, v380);
                      v203 = 0;
                      *&v420 = v206;
                      v204 = &v421;
                      v20 = a1 + 214;
                    }

                    *v204 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v205, v203);
LABEL_301:
                    if (v370 == 8)
                    {
                      v209 = *(a3 + 32);
                      v424 = *(a1 + 1882);
                      *&v425 = *(v21 + 4 * v209 + -4 * (*(v21 + 5) & 0x7FFFFFF));
                      *(&v425 + 1) = *(v21 + 4 * v209 + -4 * (*(v21 + 5) & 0x7FFFFFF) + 4);
                      *&v426 = *(v21 + 4 * v209 + -4 * (*(v21 + 5) & 0x7FFFFFF) + 8);
                      *(&v426 + 1) = *(v21 + 4 * v209 + -4 * (*(v21 + 5) & 0x7FFFFFF) + 12);
                      v418 = a3[5];
                      BYTE2(v419[2]) = (*(*(a1 + *(*a1 - 24)) + 240))(a1 + *(*a1 - 24)) ^ 1;
                      v210 = *(v21 + 4 * *(a3 + 53) + -4 * (*(v21 + 5) & 0x7FFFFFF));
                      v211 = (v210 + 24);
                      if (*(v210 + 32) >= 0x41u)
                      {
                        v211 = *v211;
                      }

                      if (*v211)
                      {
                        v436 = (*(*a1 + 448))(a1);
                      }

                      goto LABEL_314;
                    }

                    if (v365)
                    {
                      v207 = a1 + *(*a1 - 24);
                      if (*(*(v207 + 271) + 1900))
                      {
                        *(&v420 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(a1, v365, v201, v202);
                        Value = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v365, 0);
                      }

                      else
                      {
                        LODWORD(__p[0]) = 0;
                        LOWORD(v415) = 257;
                        Value = llvm::IRBuilderBase::CreateExtractValue((v207 + 1712), v365, __p, 1, __dst);
                      }

                      *(&v423 + 1) = Value;
                      goto LABEL_314;
                    }

                    v212 = v374;
                    *(&v420 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(a1, v374, v201, v202);
                    *(&v423 + 1) = AGCLLVMUserObject::buildSamplerArgumentPointer(a1, v374, 0);
                    if (isConstantSampler)
                    {
                      if (v378)
                      {
                        goto LABEL_317;
                      }

                      goto LABEL_325;
                    }

                    v232 = *(v374 + 16);
                    if (!v374 || (v233 = v232 - 28, v232 < 0x1C))
                    {
                      if (!v374 || v232 != 5)
                      {
                        goto LABEL_365;
                      }

                      v233 = *(v374 + 9);
                    }

                    if (v233 - 48 <= 2)
                    {
                      do
                      {
                        v234 = *(v212 + 20);
                        if ((v234 & 0x40000000) != 0)
                        {
                          v235 = *(v212 - 8);
                        }

                        else
                        {
                          v235 = (v212 - 32 * (v234 & 0x7FFFFFF));
                        }

                        v212 = *v235;
                        v232 = *(*v235 + 16);
                        if (v212)
                        {
                          v236 = v232 >= 0x1C;
                        }

                        else
                        {
                          v236 = 0;
                        }

                        if (v236)
                        {
                          v238 = v232 - 28;
                        }

                        else
                        {
                          if (v212)
                          {
                            v237 = v232 == 5;
                          }

                          else
                          {
                            v237 = 0;
                          }

                          if (!v237)
                          {
                            break;
                          }

                          v238 = *(v212 + 18);
                        }
                      }

                      while (v238 - 48 < 3);
                    }

LABEL_365:
                    if (v232 == 3)
                    {
                      if ((llvm::GlobalValue::isDeclaration(v212) & 1) == 0)
                      {
                        __dst[0] = 0;
                        if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1[86], *(a1 + 176), v212, __dst))
                        {
                          v239 = __dst[0];
                        }

                        else
                        {
                          v239 = (a1[86] + 48 * *(a1 + 176));
                        }

                        v342 = (v239 + 40);
LABEL_428:
                        v213 = *v342;
                        if (v213 != -1)
                        {
                          HIBYTE(v419[1]) = (*(*a1 + 376))(a1, v213) & 1;
                        }

                        goto LABEL_315;
                      }
                    }

                    else if (v232 <= 0x14)
                    {
                      if (v232 == 16)
                      {
                        PtrToInt = v212;
                      }

                      else
                      {
                        PtrToInt = llvm::ConstantExpr::getPtrToInt();
                        if (PtrToInt)
                        {
                          v343 = *(PtrToInt + 16) == 16;
                        }

                        else
                        {
                          v343 = 0;
                        }

                        if (!v343)
                        {
                          PtrToInt = llvm::ConstantExpr::getPtrToInt();
                          if (*(PtrToInt + 16) != 16)
                          {
                            PtrToInt = 0;
                          }
                        }
                      }

                      if (*(PtrToInt + 32) > 0x40u)
                      {
                        v344 = **(PtrToInt + 24);
                        if ((v344 & 0x4000000000000000) != 0)
                        {
                          goto LABEL_314;
                        }
                      }

                      else
                      {
                        v344 = *(PtrToInt + 24);
                        if ((v344 & 0x4000000000000000) != 0)
                        {
                          goto LABEL_314;
                        }
                      }

                      if (v344 < *(a1 + 166))
                      {
                        v342 = (a1[82] + 4 * v344);
                        goto LABEL_428;
                      }
                    }

LABEL_314:
                    v213 = 0xFFFFFFFFLL;
LABEL_315:
                    if (v378)
                    {
                      if (!isConstantSampler)
                      {
                        LOWORD(__dst[0]) = (*(*a1 + 360))(a1, v213);
                        v214 = __dst;
                        goto LABEL_334;
                      }

LABEL_317:
                      v214 = &v405;
LABEL_334:
                      v220 = AGCLLVMUserObject::buildEmulatePCF(a1, &__src, v214);
                      v228 = 0;
                      goto LABEL_336;
                    }

                    if (v367)
                    {
                      v215 = isConstantSampler;
                    }

                    else
                    {
                      v215 = 1;
                    }

                    if ((v215 & 1) == 0 && ((*(*a1 + 360))(a1, v213) & 0x10) != 0)
                    {
                      v216 = a1 + *(*a1 - 24);
                      v217 = *(v216 + 271);
                      v393 = *(v216 + 110);
                      llvm::IRBuilderBase::getCurrentDebugLocation(&v394, (v216 + 1712));
                      v395 = *(v216 + 452);
                      v431[2] = (*(*v217 + 40))(v217, &v393, v431[2], 0);
                      if (v394)
                      {
                        llvm::MetadataTracking::untrack();
                      }
                    }

LABEL_325:
                    v218 = a1 + *(*a1 - 24);
                    v219 = *(v218 + 271);
                    v390 = *(v218 + 110);
                    llvm::IRBuilderBase::getCurrentDebugLocation(&v391, (v218 + 1712));
                    v392 = *(v218 + 452);
                    v220 = (*(*v219 + 288))(v219, &v390, &__src);
                    v221 = v391;
                    if (v391)
                    {
                      llvm::MetadataTracking::untrack();
                    }

                    if (*a3 == 12)
                    {
                      v222 = *(v377 + *(*a1 - 24));
                      if ((*(*v222 + 296))(v222, &__src))
                      {
                        v223 = v220;
                        v434[24] = 1;
                        v224 = a1 + *(*a1 - 24);
                        v225 = *(v224 + 271);
                        v387 = *(v224 + 110);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v388, (v224 + 1712));
                        v389 = *(v224 + 452);
                        v226 = (*(*v225 + 288))(v225, &v387, &__src);
                        if (v388)
                        {
                          llvm::MetadataTracking::untrack();
                        }

                        v227 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v415) = 257;
                        v228 = llvm::IRBuilderBase::CreateExtractValue(v20 + v227, v226, __p, 1, __dst);
                        v434[24] = 0;
                        v220 = v223;
                      }

                      else
                      {
                        v228 = 0;
                      }
                    }

                    else
                    {
                      v228 = 0;
                    }

LABEL_336:
                    if (!v220)
                    {
                      goto LABEL_30;
                    }

                    v371 = v228;
                    if (v372 == 16)
                    {
                      if ((v419[2] & 1) == 0)
                      {
                        v229 = a1 + *(*a1 - 24);
                        v230 = v220;
                        v231 = *(v229 + 271);
                        v384 = *(v229 + 110);
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v385, (v229 + 1712));
                        v386 = *(v229 + 452);
                        v220 = (*(*v231 + 312))(v231, &v384, v230);
                        v221 = v385;
                        if (v385)
                        {
                          llvm::MetadataTracking::untrack();
                        }
                      }

                      if (LOBYTE(v419[2]) == 1 && *(a1 + 3913) == 1)
                      {
                        __dst[0] = "sparse_tier1_done";
                        LOWORD(v415) = 259;
                        llvm::BasicBlock::splitBasicBlock();
                        __dst[0] = "sparse_tier1_valid";
                        LOWORD(v415) = 259;
                        operator new();
                      }
                    }

                    v241 = v220;
                    if (v368)
                    {
                      v242 = *(v377 + *(*a1 - 24));
                      v243 = (*(*v242 + 808))(v242);
                    }

                    else
                    {
                      v243 = 0;
                    }

                    if (a3[1] == 2 && (*(a1 + 20) & 1) == 0)
                    {
                      v244 = *(*(v377 + *(*a1 - 24)) + 1944) ^ 1;
                    }

                    else
                    {
                      v244 = 0;
                    }

                    v245 = *a3;
                    if (*a3 == 2 && ((v243 | v244) & 1) != 0)
                    {
                      v274 = v241;
                      if (v372 == 16)
                      {
                        v275 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v415) = 257;
                        v274 = llvm::IRBuilderBase::CreateExtractValue(v20 + v275, v241, __p, 1, __dst);
                      }

                      NullValue = llvm::Constant::getNullValue(*v274, v221);
                      v375 = v274;
                      v276 = *v274;
                      if ((*(*v274 + 2) & 0xFE) == 0x12)
                      {
                        v276 = **(v276 + 2);
                      }

                      v277 = *(*a1 - 24);
                      v278 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 2);
                      LOWORD(v415) = 257;
                      v279 = AGCLLVMBuilder::CreateLoad((v383 + v277), v278, __dst);
                      v280 = v383 + *(*a1 - 24);
                      LOWORD(v415) = 257;
                      v281 = llvm::ConstantInt::get();
                      v282 = llvm::IRBuilderBase::CreateExtractElement((v280 + 8), v279, v281, __dst);
                      v283 = v282;
                      if (v244)
                      {
                        LShr = v282;
                        if (v430)
                        {
                          v285 = *(*a1 - 24);
                          v286 = *v282;
                          LOWORD(v415) = 257;
                          Cast = llvm::IRBuilderBase::CreateCast(v379 + v285, 39, v430, v286, __dst);
                          v288 = *(*a1 - 24);
                          LOWORD(v415) = 257;
                          LShr = llvm::IRBuilderBase::CreateLShr((v379 + v288), v283, Cast, __dst);
                        }

                        v366 = v283;
                        v289 = a1 + *(*a1 - 24);
                        v290 = v427;
                        LOWORD(v415) = 257;
                        v291 = llvm::ConstantInt::get();
                        v292 = llvm::IRBuilderBase::CreateExtractElement((v289 + 1712), v290, v291, __dst);
                        v293 = LShr;
                        v294 = *LShr;
                        v412 = 257;
                        v369 = llvm::IRBuilderBase::CreateCast((v289 + 1712), 39, v292, v294, __p);
                        v295 = *(*a1 - 24);
                        v296 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 4);
                        v297 = AGCLLVMBuilder::CreateLoad((v383 + v295), v296, "packedFormatAndAlpha");
                        v298 = a1 + *(*a1 - 24);
                        v299 = llvm::ConstantInt::get();
                        __dst[0] = "alpha";
                        LOWORD(v415) = 259;
                        UIToFP = llvm::IRBuilderBase::CreateLShr((v298 + 1712), v297, v299, __dst);
                        if (*(v276 + 8) <= 6u)
                        {
                          v301 = *(*a1 - 24);
                          LOWORD(v415) = 257;
                          UIToFP = llvm::IRBuilderBase::CreateUIToFP((v379 + v301), UIToFP, v276, __dst);
                        }

                        v302 = AGCLLVMBuilder::truncateToSmall((v383 + *(*a1 - 24)), UIToFP, v276);
                        if ((*(*v375 + 8) & 0xFE) == 0x12)
                        {
                          v303 = *a1;
                          v304 = a1 + *(*a1 - 24);
                          v305 = *(v304 + 239);
                          if (**(*NullValue + 16) == v305)
                          {
                            LOWORD(v415) = 257;
                            v302 = llvm::IRBuilderBase::CreateCast((v304 + 1712), 39, v302, v305, __dst);
                            v303 = *a1;
                          }

                          v306 = v383 + *(v303 - 24);
                          LOWORD(v415) = 257;
                          v307 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateInsertElement((v306 + 8), NullValue, v302, v307, __dst);
                        }

                        v308 = v293;
                        v309 = *(*a1 - 24);
                        LOWORD(v415) = 257;
                        v310 = llvm::IRBuilderBase::CreateICmp((v379 + v309), 35, v369, v293, __dst);
                        v311 = v427;
                        if ((*(*v427 + 8) & 0xFE) == 0x12)
                        {
                          v382 = v308;
                          v312 = a1 + *(*a1 - 24);
                          LOWORD(v415) = 257;
                          v313 = llvm::ConstantInt::get();
                          v314 = llvm::IRBuilderBase::CreateExtractElement((v312 + 1712), v311, v313, __dst);
                          v315 = *v366;
                          v412 = 257;
                          v316 = llvm::IRBuilderBase::CreateCast((v312 + 1712), 39, v314, v315, __p);
                          v317 = *(*a1 - 24);
                          LOWORD(v415) = 257;
                          v318 = llvm::IRBuilderBase::CreateICmp((v379 + v317), 35, v316, v382, __dst);
                          v412 = 257;
                          llvm::IRBuilderBase::CreateOr((v379 + v317), v310, v318, __p);
                        }

                        LOWORD(v415) = 257;
                        v319 = llvm::IRBuilderBase::CreateSelect();
                        v18 = v376;
                      }

                      else
                      {
                        v319 = v241;
                        v18 = v376;
                        if (v243)
                        {
                          if (*(v276 + 8) > 6u)
                          {
                            v334 = v282;
                          }

                          else
                          {
                            v332 = a1 + *(*a1 - 24);
                            v333 = *(v332 + 234);
                            LOWORD(v415) = 257;
                            v334 = llvm::IRBuilderBase::CreateCast((v332 + 1712), 49, v282, v333, __dst);
                          }

                          v338 = AGCLLVMBuilder::truncateToSmall((v383 + *(*a1 - 24)), v334, v276);
                          v339 = v383 + *(*a1 - 24);
                          LOWORD(v415) = 257;
                          v340 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateInsertElement((v339 + 8), NullValue, v338, v340, __dst);
                          LOWORD(v415) = 257;
                          v319 = llvm::IRBuilderBase::CreateSelect();
                        }
                      }

                      if (v372 == 16)
                      {
                        v341 = *(*a1 - 24);
                        LODWORD(__p[0]) = 0;
                        LOWORD(v415) = 257;
                        v20 = a1 + 214;
                        v320 = v241;
                        llvm::IRBuilderBase::CreateInsertValue(v379 + v341, v241, v319, __p, 1, __dst);
                      }

                      else
                      {
                        v20 = a1 + 214;
                        v320 = v241;
                      }
                    }

                    else
                    {
                      if (v245 != 10)
                      {
                        v320 = v241;
                        if (v245 != 9)
                        {
LABEL_379:
                          if (v245 == 12)
                          {
                            if (*(*v434 + 16) != 19)
                            {
                              v246 = *(*a1 - 24);
                              LODWORD(__p[0]) = 1;
                              LOWORD(v415) = 257;
                              v247 = llvm::IRBuilderBase::CreateExtractValue(v20 + v246, v320, __p, 1, __dst);
                              v248 = llvm::ConstantInt::get();
                              v249 = llvm::ConstantInt::get();
                              v250 = *(*a1 - 24);
                              LOWORD(v415) = 257;
                              v251 = llvm::IRBuilderBase::CreateAnd((v379 + v250), v247, v248, __dst);
                              v252 = *(*a1 - 24);
                              LOWORD(v415) = 257;
                              v253 = llvm::IRBuilderBase::CreateAnd((v379 + v252), v247, v249, __dst);
                              v412 = 257;
                              v255 = llvm::Constant::getNullValue(*v253, v254);
                              llvm::IRBuilderBase::CreateICmp((v379 + v252), 33, v253, v255, __p);
                              llvm::ConstantInt::get();
                              llvm::ConstantInt::get();
                              v409 = 257;
                              v256 = llvm::IRBuilderBase::CreateSelect();
                              v257 = *v434;
                              v258 = (v383 + *(*a1 - 24));
                              v259 = llvm::ConstantInt::get();
                              LOWORD(v415) = 257;
                              GEP = AGCLLVMBuilder::CreateGEP(v258, v257, v259, __dst);
                              v261 = v257;
                              v20 = a1 + 214;
                              llvm::IRBuilderBase::CreateAlignedStore((v379 + *(*a1 - 24)), v251, v261, 0, 0);
                              llvm::IRBuilderBase::CreateAlignedStore((v379 + *(*a1 - 24)), v256, GEP, 0, 0);
                            }

                            if (v417 == 8 || v417 == 4)
                            {
                              v262 = *(*a1 - 24);
                              v263 = 4;
                            }

                            else if ((v417 & 0xFFFFFFFB) == 3)
                            {
                              v262 = *(*a1 - 24);
                              v263 = 2;
                            }

                            else
                            {
                              v262 = *(*a1 - 24);
                              if (v417 == 1)
                              {
                                v263 = 4;
                              }

                              else
                              {
                                v263 = 2;
                              }
                            }

                            LODWORD(__p[0]) = 0;
                            LOWORD(v415) = 257;
                            v264 = llvm::IRBuilderBase::CreateExtractValue(v20 + v262, v241, __p, 1, __dst);
                            v265 = AGCLLVMBuilder::subrangeVector((v383 + *(*a1 - 24)), v264, 0, v263, 1);
                            v267 = AGCLLVMBuilder::subrangeVector((v383 + *(*a1 - 24)), v264, v263, v263, 1);
                            v268 = *(*a1 - 24);
                            if (v371)
                            {
                              v269 = AGCLLVMBuilder::subrangeVector((v383 + v268), v371, 0, v263, 1);
                              v270 = AGCLLVMBuilder::subrangeVector((v383 + *(*a1 - 24)), v371, v263, v263, 1);
                              v381 = AGCLLVMBuilder::concatenateVectors((v383 + *(*a1 - 24)), v265, v269, v271);
                              v273 = AGCLLVMBuilder::concatenateVectors((v383 + *(*a1 - 24)), v267, v270, v272);
                            }

                            else
                            {
                              v381 = AGCLLVMBuilder::extendVector((v383 + v268), v265, 4, v266);
                              v273 = AGCLLVMBuilder::extendVector((v383 + *(*a1 - 24)), v267, 4, v321);
                            }

                            v322 = v273;
                            v323 = *(*a1 - 24);
                            v324 = *(&v433 + 1);
                            v325 = llvm::PointerType::get();
                            LOWORD(v415) = 257;
                            PointerCast = llvm::IRBuilderBase::CreatePointerCast((v379 + v323), v324, v325, __dst, v326);
                            v328 = (v383 + *(*a1 - 24));
                            v329 = llvm::ConstantInt::get();
                            LOWORD(v415) = 257;
                            v330 = AGCLLVMBuilder::CreateGEP(v328, PointerCast, v329, __dst);
                            llvm::IRBuilderBase::CreateAlignedStore((v379 + *(*a1 - 24)), v381, PointerCast, 0, 0);
                            v331 = v330;
                            v20 = a1 + 214;
                            llvm::IRBuilderBase::CreateAlignedStore((v379 + *(*a1 - 24)), v322, v331, 0, 0);
                            v18 = v376;
                            goto LABEL_30;
                          }

                          goto LABEL_29;
                        }
                      }

                      v335 = v383 + *(*a1 - 24);
                      LOWORD(v415) = 257;
                      v336 = llvm::ConstantInt::get();
                      v337 = (v335 + 8);
                      v320 = v241;
                      llvm::IRBuilderBase::CreateExtractElement(v337, v241, v336, __dst);
                    }

                    v245 = *a3;
                    goto LABEL_379;
                  }

                  v107 = *(v106 - 24);
                  if (a3[2] != 1)
                  {
                    v108 = v383 + v107;
                    v109 = *(v383 + v107 + 200);
                    if ((*(*v102 + 8) & 0xFE) == 0x12)
                    {
                      v109 = llvm::FixedVectorType::get();
                    }

                    if ((*(v109 + 8) & 0xFE) == 0x12)
                    {
                      v110 = *(**(v109 + 16) + 8);
                    }

                    else
                    {
                      v110 = *(v109 + 8);
                    }

                    LOWORD(v415) = 257;
                    if (v110 > 6)
                    {
                      FPExt = llvm::IRBuilderBase::CreateCast((v108 + 8), 39, v102, v109, __dst);
                    }

                    else
                    {
                      FPExt = llvm::IRBuilderBase::CreateFPExt((v108 + 8), v102, v109, __dst);
                    }

                    v102 = FPExt;
                  }

                  *&v427 = v102;
                  v106 = *a1;
                  v113 = a1 + *(*a1 - 24);
                  if (*(*(v113 + 271) + 1884))
                  {
                    v368 = 0;
                    goto LABEL_266;
                  }

                  v363 = isConstantSampler;
                  v114 = 1944;
                  if (a3[2] == 1)
                  {
                    v114 = 1952;
                  }

                  v115 = *&v113[v114];
                  v116 = AGCLLVMUserObject::buildImageTextureBufferLength(a1, v380);
                  v117 = *(a1 + *(*a1 - 24) + 2168);
                  (*(*v117 + 912))(v117, v118, v119);
                  v120 = llvm::ConstantInt::get();
                  v121 = *(a1 + *(*a1 - 24) + 2168);
                  (*(*v121 + 912))(v121, v122, v123);
                  v360 = llvm::ConstantInt::get();
                  v124 = *(*a1 - 24);
                  LOWORD(v415) = 257;
                  v368 = llvm::IRBuilderBase::CreateICmp((v20 + v124), 36, v427, v116, __dst);
                  v125 = *a3;
                  if (*a3 == 3)
                  {
                    v126 = *(v377 + *(*a1 - 24));
                    if ((*(*v126 + 808))(v126))
                    {
                      v127 = *(a1 + *(*a1 - 24) + 1760);
                      __dst[0] = "skip_texture_buffer_write";
                      LOWORD(v415) = 259;
                      llvm::BasicBlock::splitBasicBlock();
                      v128 = *(v127 + 40);
                      if (v128 == v127 + 40)
                      {
                        v131 = 0;
                      }

                      else
                      {
                        v129 = (v128 - 24);
                        if (v128)
                        {
                          v130 = v128 - 24;
                        }

                        else
                        {
                          v130 = 0;
                        }

                        if (*(v130 + 16) - 29 >= 0xB)
                        {
                          v131 = 0;
                        }

                        else
                        {
                          v131 = v129;
                        }
                      }

                      llvm::Instruction::eraseFromParent(v131);
                      __dst[0] = "texture_buffer_write";
                      LOWORD(v415) = 259;
                      operator new();
                    }

                    v125 = *a3;
                  }

                  isConstantSampler = v363;
                  if (v125 == 2 && (v132 = *(v377 + *(*a1 - 24)), (*(*v132 + 808))(v132)))
                  {
                    llvm::ConstantInt::get();
                    LOWORD(v415) = 257;
                  }

                  else
                  {
                    v133 = *(a1 + *(*a1 - 24) + 2168);
                    (*(*v133 + 912))(v133);
                    llvm::ConstantInt::get();
                    LOWORD(v415) = 257;
                  }

                  *&v427 = llvm::IRBuilderBase::CreateSelect();
                  v140 = *(*a1 - 24);
                  LOWORD(v415) = 257;
                  v141 = llvm::IRBuilderBase::CreateAnd((v20 + v140), v427, v120, __dst);
                  v142 = *(*a1 - 24);
                  LOWORD(v415) = 257;
                  v143 = llvm::IRBuilderBase::CreateLShr((v20 + v142), v427, v360, __dst);
                  v144 = *(*a1 - 24);
                  v145 = **(v115 + 16);
                  LOWORD(v415) = 257;
                  TruncOrBitCast = llvm::IRBuilderBase::CreateTruncOrBitCast((v379 + v144), v141, v145, __dst, v146);
                  v148 = *(*a1 - 24);
                  v149 = **(v115 + 16);
                  LOWORD(v415) = 257;
                  v151 = llvm::IRBuilderBase::CreateTruncOrBitCast((v379 + v148), v143, v149, __dst, v150);
                  v152 = llvm::UndefValue::get();
                  v153 = v383 + *(*a1 - 24);
                  LOWORD(v415) = 257;
                  v154 = llvm::ConstantInt::get();
                  v155 = llvm::IRBuilderBase::CreateInsertElement((v153 + 8), v152, TruncOrBitCast, v154, __dst);
                  v156 = v383 + *(*a1 - 24);
                  LOWORD(v415) = 257;
                  v157 = llvm::ConstantInt::get();
                  v111 = llvm::IRBuilderBase::CreateInsertElement((v156 + 8), v155, v151, v157, __dst);
                  v18 = v376;
                }

                *&v427 = v111;
                v106 = *a1;
                goto LABEL_266;
              }

              v75 = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(a1, InternalConstSampler, v92);
            }

            else
            {
              if (HIDWORD(__src))
              {
                v72 = "agc.nnorm_sampler_wrapper_non_1d";
              }

              else
              {
                v72 = "agc.nnorm_sampler_wrapper_1d";
              }

              GlobalVariable = llvm::Module::getGlobalVariable();
              if (GlobalVariable)
              {
                v74 = GlobalVariable;
              }

              else
              {
                if (HIDWORD(__src))
                {
                  v78 = "agc.nnorm_sampler_non_1d";
                }

                else
                {
                  v78 = "agc.nnorm_sampler_1d";
                }

                v79 = 1;
                v80 = llvm::User::operator new(0x58);
                BYTE1(v415) = 1;
                if (*v78)
                {
                  __dst[0] = v78;
                  v81 = 3;
                }

                else
                {
                  v81 = 1;
                }

                LOBYTE(v415) = v81;
                llvm::GlobalVariable::GlobalVariable();
                *(v80 + 80) |= 1u;
                v85 = *(*(v377 + *(*a1 - 24)) + 1812);
                v86 = __clz(v85) ^ 0x13F;
                if (v85)
                {
                  v87 = v86;
                }

                else
                {
                  v87 = 0;
                }

                v358 = v87 | v358 & 0xFFFFFFFFFFFF0000;
                llvm::GlobalObject::setAlignment();
                llvm::GlobalObject::setSection();
                v88 = v383 + *(*a1 - 24);
                v89 = *(v88 + 55);
                v90 = AGCLLVMBuilder::buildGlobalMetadata(v88, v80, 3u, HIDWORD(__src) != 0);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v89, v90);
                __dst[0] = v80;
                llvm::ConstantStruct::get();
                v74 = llvm::User::operator new(0x58);
                BYTE1(v415) = 1;
                if (*v72)
                {
                  __dst[0] = v72;
                  v79 = 3;
                }

                LOBYTE(v415) = v79;
                LOBYTE(v357) = 0;
                v356 = 0x100000002;
                v355 = 0;
                llvm::GlobalVariable::GlobalVariable();
                *(v74 + 80) |= 1u;
                llvm::GlobalVariable::setInitializer();
                __dst[0] = 4;
                __dst[1] = 0;
                v91 = v74;
                v414 = v74;
                if (v74 != -8192)
                {
                  v91 = v74;
                  if (v74 != -4096)
                  {
                    v91 = v74;
                    if (v74)
                    {
                      llvm::ValueHandleBase::AddToUseList(__dst);
                      v91 = v414;
                    }
                  }
                }

                std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(a1 + 102, v91, __dst);
                v18 = v376;
                v20 = a1 + 214;
                if (v414 != -8192 && v414 != -4096 && v414)
                {
                  llvm::ValueHandleBase::RemoveFromUseList(__dst);
                }
              }

              v75 = v74;
            }

            llvm::ValueHandleBase::operator=(__p, v75);
            BindlessConstantSampler = 0;
            v97 = v411;
            if (v411 && *(v411 + 16) == 3)
            {
              if ((*(v411 + 80) & 1) != 0 && (llvm::GlobalValue::isDeclaration(v411) & 1) == 0)
              {
                BindlessConstantSampler = *(v97 - 4);
              }

              else
              {
                BindlessConstantSampler = 0;
              }
            }

            goto LABEL_202;
          }

          v61 = 0;
        }

        v434[28] = v61;
        goto LABEL_137;
      }

      v134 = *(*a1 - 24);
      v135 = AGCLLVMUserObject::buildImageArgumentPointer(a1, v380, 7);
      LOWORD(v415) = 257;
      v136 = AGCLLVMBuilder::CreateLoad((v383 + v134), v135, __dst);
      v137 = a1 + *(*a1 - 24);
      v138 = v430;
      v139 = AGCLLVMBuilder::truncateToSmall((v137 + 1704), v136, *v430);
      LOWORD(v415) = 257;
      Load = llvm::IRBuilderBase::CreateAdd((v137 + 1712), v138, v139, __dst);
    }

    else
    {
      if (*(a3 + 54))
      {
        if (*(*(v377 + *(*a1 - 24)) + 1884) == 1 && __src != 3)
        {
          goto LABEL_256;
        }

LABEL_173:
        v429 = 1;
        Load = llvm::ConstantInt::get();
        goto LABEL_262;
      }

      if (BYTE1(v419[2]) != 1)
      {
        goto LABEL_256;
      }

      v429 = 0;
      Load = llvm::Constant::getNullValue(*(a1 + *(*a1 - 24) + 1856), v29);
    }

LABEL_262:
    *&v430 = Load;
    goto LABEL_91;
  }

  std::string::basic_string[abi:nn200100]<0>(__dst, "sample");
  if (*a3 == 1)
  {
    v345 = "sample_compare";
LABEL_451:
    MEMORY[0x20F331AA0](__dst, v345);
  }

  else if (*a3 == 5)
  {
    v345 = "gather_compare";
    goto LABEL_451;
  }

  std::operator+<char>();
  v347 = std::string::append(&v408, " must be known at compile time");
  v348 = v347->__r_.__value_.__r.__words[2];
  *__p = *&v347->__r_.__value_.__l.__data_;
  v411 = v348;
  v347->__r_.__value_.__l.__size_ = 0;
  v347->__r_.__value_.__r.__words[2] = 0;
  v347->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v411) >= 0)
  {
    v349 = __p;
  }

  else
  {
    v349 = __p[0];
  }

  if (SHIBYTE(v411) >= 0)
  {
    v350 = HIBYTE(v411);
  }

  else
  {
    v350 = __p[1];
  }

  std::string::append((a1 + *(*a1 - 24) + 1656), v349, v350);
  if (SHIBYTE(v411) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v408.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v408.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v414) < 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

uint64_t AGCLLVMUserObject::isConstantSampler(AGCLLVMUserObject *this, llvm::Value *a2, unint64_t *a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(a2 + 16);
  v9 = v8 - 28;
  if (v8 >= 0x1C)
  {
    goto LABEL_5;
  }

  if (v8 == 5)
  {
    v9 = *(a2 + 9);
LABEL_5:
    v10 = v9 != 48;
    while ((v9 & 0xFFFFFFFE) == 0x30)
    {
      v11 = *(v6 + 5);
      if ((v11 & 0x40000000) != 0)
      {
        v12 = *(v6 - 1);
      }

      else
      {
        v12 = (v6 - 32 * (v11 & 0x7FFFFFF));
      }

      v6 = *v12;
      v8 = *(*v12 + 16);
      if (v6)
      {
        v13 = v8 >= 0x1C;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v9 = v8 - 28;
      }

      else
      {
        if (v6)
        {
          v14 = v8 == 5;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          goto LABEL_23;
        }

        v9 = *(v6 + 9);
      }
    }

    goto LABEL_37;
  }

  v10 = 1;
LABEL_23:
  if (v8 == 16)
  {
    v16 = (v6 + 24);
    v17 = *(v6 + 8);
    goto LABEL_25;
  }

LABEL_37:
  if (v8 != 3)
  {
    return 0;
  }

  if (llvm::GlobalValue::isDeclaration(v6))
  {
    return 0;
  }

  v25 = *(v6 - 4);
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 16);
  if (v26 == 14)
  {
    ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(*(v6 - 4));
    v18 = llvm::ConstantDataSequential::getElementAsInteger(v25);
    goto LABEL_28;
  }

  if (v26 != 16)
  {
    return 0;
  }

  v16 = (v25 + 24);
  v17 = *(v25 + 32);
LABEL_25:
  if (v17 >= 0x41)
  {
    v16 = *v16;
  }

  v18 = 0;
  ElementAsInteger = *v16;
LABEL_28:
  v20 = *(this + *(*this - 24) + 2136);
  v29[0] = "air.version";
  v30 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v20, v29);
  if (!NamedMetadata)
  {
    if (*(this + 14) != 1)
    {
      goto LABEL_46;
    }

LABEL_44:
    if (ElementAsInteger < 0)
    {
      goto LABEL_46;
    }

    return 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (!Operand)
  {
    goto LABEL_46;
  }

  v23 = Operand;
  v28 = 0;
  LODWORD(v29[0]) = 0;
  parseMDInt(0, Operand, v29, &v28 + 1);
  LODWORD(v29[0]) = 1;
  parseMDInt(0, v23, v29, &v28);
  if (HIDWORD(v28) <= 1)
  {
    goto LABEL_44;
  }

  if (v28 <= 5 && HIDWORD(v28) == 2)
  {
    goto LABEL_44;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_46:
  v27 = (this + *(*this - 24));
  if (*(v27[271] + 1895) == 1 && (!(*(*v27 + 80))(v27) || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 7))
  {
    v18 = 0;
    ElementAsInteger &= 0xFFFFFFFFFF0FFFFFLL;
  }

  *a3 = ElementAsInteger;
  *a4 = v18;
  return 1;
}

llvm::Instruction *AGCLLVMUserObject::buildImageArgumentPointer(_BYTE *a1, AGCLLVMUserObject *this, uint64_t a3)
{
  v3 = a3;
  v41[2] = *MEMORY[0x277D85DE8];
  DirectImageGlobalValue = AGCLLVMUserObject::getDirectImageGlobalValue(this, this);
  if (DirectImageGlobalValue)
  {
    return *(DirectImageGlobalValue - 32 * (*(DirectImageGlobalValue + 20) & 0x7FFFFFF) + 32 * v3);
  }

  if (v3 > 7 || (v8 = AGCLLVMUserObject::buildBindlessIndex(a1, this)) == 0)
  {
    v9 = &a1[*(*a1 - 24)];
    if ((*(*(v9 + 271) + 1869) & 1) != 0 || v3 <= 8 && ((1 << v3) & 0x103) != 0)
    {
      v10 = &a1[64 * v3];
      v11 = *(v10 + 157);
      if (v11)
      {
        v12 = *(v10 + 161);
        v13 = *(v9 + 238);
        v37 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 47, this, v13, v36);
        if (v3 == 1)
        {
          v15 = &a1[*(*a1 - 24)];
          v16 = llvm::ConstantInt::get();
          v37 = 257;
          Cast = llvm::IRBuilderBase::CreateLShr((v15 + 1712), Cast, v16, v36);
        }

        v17 = &a1[*(*a1 - 24)];
        v18 = *(v17 + 237);
        v37 = 257;
        v19 = llvm::IRBuilderBase::CreateCast((v17 + 1712), 38, Cast, v18, v36);
        UDiv = v19;
        v21 = *a1;
        if (a1[3767] == 1 && !*(*&a1[*(v21 - 24) + 2168] + 1900))
        {
          v22 = AGCLLVMObject::useTextureIDLegacyMode(v19);
          v21 = *a1;
          if (v22)
          {
            v23 = &a1[*(v21 - 24)];
            TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 224), *(*(v23 + 271) + 1784));
            LODWORD(v39) = v24;
            llvm::TypeSize::operator unsigned long long();
            v25 = llvm::ConstantInt::get();
            v37 = 257;
            UDiv = llvm::IRBuilderBase::CreateUDiv((v23 + 1712), UDiv, v25, v36);
            v21 = *a1;
          }
        }

        v26 = &a1[*(v21 - 24)];
        if (v3 > 1 || UDiv[16] < 0x15u)
        {
          TypeAllocSize = llvm::ConstantInt::get();
          v39 = UDiv;
          v37 = 257;
          llvm::Type::isOpaquePointerTy(*v11);
          return llvm::IRBuilderBase::CreateGEP((v26 + 1712), v12, v11, &TypeAllocSize, 2, v36);
        }

        else
        {
          v27 = llvm::PointerType::get();
          v28 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(&a1[*(*a1 - 24) + 1704], "llvm.agx.textureState", 21, v27, v27, *&a1[*(*a1 - 24) + 1912]);
          v29 = &a1[*(*a1 - 24)];
          v37 = 257;
          v41[0] = llvm::IRBuilderBase::CreateCast((v29 + 214), 49, v11, v27, v36);
          v30 = &a1[*(*a1 - 24)];
          v31 = *(v30 + 239);
          v40 = 257;
          v41[1] = llvm::IRBuilderBase::CreateCast((v30 + 1712), 39, UDiv, v31, &TypeAllocSize);
          v35[16] = 257;
          v32 = llvm::IRBuilderBase::CreateCall(v29 + 214, *(v28 + 24), v28, v41, 2, v35);
          v33 = &a1[*(*a1 - 24)];
          v34 = llvm::PointerType::get();
          v37 = 257;
          return llvm::IRBuilderBase::CreateCast((v33 + 1712), 49, v32, v34, v36);
        }
      }

      else
      {
        llvm::PointerType::get();

        return llvm::UndefValue::get();
      }
    }

    v8 = AGCLLVMUserObject::buildImageHeapIndex(a1, this);
  }

  return AGCLLVMUserObject::buildBindlessImageArgumentPointer(a1, v8, v3);
}

uint64_t AGCLLVMUserObject::getDirectImageGlobalValue(uint64_t this, llvm::Value *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = this;
  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x1B)
    {
      break;
    }

    if (v3 != 77)
    {
      return 0;
    }

LABEL_8:
    v4 = *(v2 + 20);
    if ((v4 & 0x40000000) != 0)
    {
      v5 = *(v2 - 8);
    }

    else
    {
      v5 = (v2 - 32 * (v4 & 0x7FFFFFF));
    }

    v2 = *v5;
    if (!*v5)
    {
      return 0;
    }
  }

  if (v3 == 5)
  {
    if (*(v2 + 18) != 49)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v3 != 3 || (llvm::GlobalValue::isDeclaration(v2) & 1) != 0)
  {
    return 0;
  }

  return *(v2 - 32);
}

uint64_t AGCLLVMUserObject::buildBindlessIndex(const void ***this, llvm::Value *a2)
{
  v4 = this + 131;
  imp = llvm::SmallPtrSetImplBase::find_imp(this + 131, a2);
  v6 = this[132];
  v7 = 16;
  if (v6 == this[131])
  {
    v7 = 20;
  }

  if (imp == &v6[*(v4 + v7)])
  {
    return 0;
  }

  v8 = *(*this - 3) + this;
  v9 = *(v8 + 238);
  v11 = "bindless_index";
  v12 = 259;
  return llvm::IRBuilderBase::CreateCast((v8 + 1712), 47, a2, v9, &v11);
}

uint64_t AGCLLVMUserObject::buildBindlessImageArgumentPointer(AGCLLVMUserObject *a1, llvm::Value *a2, unsigned int a3)
{
  v6 = a3 == 1;
  v7 = a1 + 24 * v6;
  v8 = *(v7 + 303);
  if (!v8)
  {
    {
      v45 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_indices[0] = (*(*v45 + 512))(v45);
      v46 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      dword_27C8D81E4 = (*(*v46 + 240))(v46);
      dword_27C8D81E8 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 792))();
      dword_27C8D81EC = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 520))();
      v47 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      dword_27C8D81F0 = (*(*v47 + 248))(v47);
      dword_27C8D81F4 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 800))();
      dword_27C8D81F8 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 528))();
      dword_27C8D81FC = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 256))();
      dword_27C8D8200 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 824))();
      dword_27C8D8204 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 536))();
      dword_27C8D8208 = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 264))();
      dword_27C8D820C = (*(**(*(a1 + *(*a1 - 24) + 2168) + 920) + 832))();
    }

    v9 = (&AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_index_names[2 * *(a1 + 3767)])[v6];
    if ((*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) == 27)
    {
      v10 = 2;
    }

    else
    {
      v10 = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) != 7 && (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) != 22 && (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) != 8 && (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) != 3 && (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) != 4;
    }

    v11 = AGCLLVMUserObject::buildBindlessImageArgumentPointer(llvm::Value *,ImageArgumentQuery::Enum)::bind_indices[6 * *(a1 + 3767) + 3 * v6 + v10];
    v12 = llvm::PointerType::get();
    if (*v9)
    {
      v70[2] = v9;
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    v70[0] = "agc.texture_heap.";
    LOBYTE(v71) = 3;
    HIBYTE(v71) = v13;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(a1, v12, v70, v11, 0, 5u, 1);
    llvm::ValueHandleBase::operator=((v7 + 2408), GlobalBufferBinding);
    v8 = *(v7 + 303);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0;
    }

    if (a3 == 9)
    {
      AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), *(a1 + *(*a1 - 24) + 1912));
      v18 = a1 + *(*a1 - 24);
      v19 = *(v18 + 239);
      v71 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v18 + 1712), 39, a2, v19, v70);
      llvm::IRBuilderBase::CreateAlignedStore(v18 + 214, Cast, AllocaInEntryBlock, 0, 0);
      return AllocaInEntryBlock;
    }

LABEL_23:
    v21 = *(a1 + *(*a1 - 24) + 1904);
    goto LABEL_24;
  }

  if (a3 < 2)
  {
    v15 = a1 + *(*a1 - 24);
    v16 = llvm::PointerType::get();
    v71 = 257;
    return llvm::IRBuilderBase::CreateCast((v15 + 1712), 49, v8, v16, v70);
  }

  if (a3 != 2)
  {
    goto LABEL_23;
  }

  v21 = llvm::FixedVectorType::get();
LABEL_24:
  v22 = llvm::PointerType::get();
  v23 = *a1;
  v48 = v22;
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1900) || (v24 = AGCLLVMObject::useTextureIDLegacyMode(v22), v23 = *a1, !v24))
  {
    v25 = a2;
    v26 = (*(a1 + *(v23 - 24) + 2168) + 1784);
  }

  else
  {
    v25 = a2;
    v26 = (a1 + *(v23 - 24) + 1888);
  }

  v27 = *v26;
  v28 = llvm::PointerType::get();
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), v21);
  v29 = a1 + *(*a1 - 24);
  v71 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v29 + 1704), v8, v70);
  v69 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((v29 + 1712), 49, Load, v28, v68);
  v67 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v29 + 1712), v27, v31, v25, v66);
  v65 = 257;
  v33 = llvm::IRBuilderBase::CreateCast((v29 + 1712), 49, GEP, v48, v64);
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5u:
        v38 = a1 + *(*a1 - 24);
        v39 = *(v38 + 271);
        v58 = *(v38 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (v38 + 1712));
        v60 = *(v38 + 452);
        (*(*v39 + 648))(v39, &v58, v33, AllocaInEntryBlock);
        if (!v59)
        {
          return AllocaInEntryBlock;
        }

        break;
      case 6u:
        v41 = a1 + *(*a1 - 24);
        v42 = *(v41 + 271);
        v55 = *(v41 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (v41 + 1712));
        v57 = *(v41 + 452);
        (*(*v42 + 656))(v42, &v55, v33, AllocaInEntryBlock);
        if (!v56)
        {
          return AllocaInEntryBlock;
        }

        break;
      case 7u:
        v34 = a1 + *(*a1 - 24);
        v35 = *(v34 + 271);
        v52 = *(v34 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (v34 + 1712));
        v54 = *(v34 + 452);
        (*(*v35 + 664))(v35, &v52, v33, AllocaInEntryBlock);
        if (!v53)
        {
          return AllocaInEntryBlock;
        }

        break;
      default:
        return AllocaInEntryBlock;
    }

    goto LABEL_39;
  }

  if (a3 == 2)
  {
    v43 = a1 + *(*a1 - 24);
    v44 = *(v43 + 271);
    v61 = *(v43 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v43 + 1712));
    v63 = *(v43 + 452);
    (*(*v44 + 640))(v44, &v61, v33, AllocaInEntryBlock);
    if (!v62)
    {
      return AllocaInEntryBlock;
    }

    goto LABEL_39;
  }

  if (a3 == 4)
  {
    v36 = a1 + *(*a1 - 24);
    v37 = *(v36 + 271);
    v49 = *(v36 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (v36 + 1712));
    v51 = *(v36 + 452);
    (*(*v37 + 672))(v37, &v49, v33, AllocaInEntryBlock);
    if (v50)
    {
LABEL_39:
      llvm::MetadataTracking::untrack();
    }
  }

  return AllocaInEntryBlock;
}

uint64_t AGCLLVMBuilder::createAllocaInEntryBlock(AGCLLVMBuilder *this, llvm::Type *a2)
{
  v15 = *(this + 56);
  v4 = *(*(v15 + 56) + 80);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (this + 8));
  v17 = *(this + 26);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v5);
  if (FirstInsertionPt)
  {
    v7 = (FirstInsertionPt - 24);
  }

  else
  {
    v7 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + 8), v7);
  v14 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(this + 1, a2, 0, v13);
  v10 = v15;
  v11 = v16;
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v12 = v17;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v10, this + 8);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  return Alloca;
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

uint64_t llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 24))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t llvm::IRBuilderBase::CreateLShr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 160))(*(this + 9));
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

uint64_t AGCLLVMG16PB0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t llvm::IRBuilderBase::CreateICmp(unsigned int **a1, uint64_t a2, llvm::CmpInst **a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*a1[9] + 40))(a1[9]);
  if (!v8)
  {
    v8 = llvm::User::operator new(0x40);
    llvm::CmpInst::makeCmpResultType(*a3, v9);
    llvm::CmpInst::CmpInst();
    (*(*a1[10] + 16))(a1[10], v8, a5, a1[6], a1[7]);
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
  }

  return v8;
}

uint64_t llvm::CmpInst::makeCmpResultType(llvm::CmpInst *this, llvm::Type *a2)
{
  v3 = *(this + 2);
  result = llvm::Type::getInt1Ty(*this, a2);
  if (this && (v3 & 0xFE) == 0x12)
  {

    return llvm::VectorType::get();
  }

  return result;
}

uint64_t AGCLLVMGen5TargetLowerer::adjustToMip(unsigned int **this, llvm::Value *a2, llvm::Value *a3)
{
  v9 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), a2, a3, v8);
  v9 = 257;
  NullValue = llvm::Constant::getNullValue(*LShr, v5);
  llvm::IRBuilderBase::CreateICmp(this + 1, 33, LShr, NullValue, v8);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMUserObject::buildBindlessIndexAsPtr(const void ***this, llvm::Value *a2)
{
  result = AGCLLVMUserObject::buildBindlessIndex(this, a2);
  if (result)
  {
    v4 = result;
    v5 = llvm::PointerType::get();
    v6 = *(*this - 3) + this;
    v7 = "bindless_index_as_ptr";
    v8 = 259;
    return llvm::IRBuilderBase::CreateCast((v6 + 1712), 48, v4, v5, &v7);
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildBindlessSamplerIndex(AGCLLVMUserObject *this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v5 = this + *(*this - 24);
  if (!*(*(v5 + 271) + 1900))
  {
    v8 = this + *(*this - 24) + 1712;
    goto LABEL_5;
  }

  v6 = *(v5 + 238);
  v13 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 1712), 47, a2, v6, v12);
  v8 = this + *(*this - 24) + 1712;
  if (!Cast)
  {
LABEL_5:
    v9 = llvm::ConstantInt::get();
    v10 = llvm::PointerType::get();
    v13 = 257;
    return llvm::IRBuilderBase::CreateCast(v8, 48, v9, v10, v12);
  }

  v9 = Cast;
  v10 = llvm::PointerType::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreateCast(v8, 48, v9, v10, v12);
}

llvm::Type **AGCLLVMUserObject::buildSamplerArgumentPointer(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v38[5] = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) != 0 && *Value != 48 && atoi(Value) || (v7 = *(a1 + *(*a1 - 24) + 2168), *(v7 + 1900)))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 1892) ^ 1;
  }

  DirectImageGlobalValue = AGCLLVMUserObject::getDirectImageGlobalValue(a2, a2);
  if (DirectImageGlobalValue)
  {
    v10 = DirectImageGlobalValue;
    if (*(*DirectImageGlobalValue + 8) != 13)
    {
      if (*(DirectImageGlobalValue + 16) == 9)
      {
        v11 = DirectImageGlobalValue;
      }

      else
      {
        v11 = 0;
      }

      v10 = *(&v11[4 * v3] - 4 * (*(v11 + 5) & 0x7FFFFFF));
    }

    if (v3 != 2)
    {
      return v10;
    }

    v12 = a1 + *(*a1 - 24);
    v37 = 257;
    return AGCLLVMBuilder::CreateLoad((v12 + 1704), v10, v36);
  }

  if (*(a1 + 15) == 1 && (v3 != 2) | v8 & 1)
  {
    v14 = a1 + *(*a1 - 24);
    if (v3 != 2)
    {
      v15 = llvm::PointerType::get();
      v37 = 257;
      v16 = v14 + 1712;
      v17 = 50;
LABEL_39:
      v34 = a2;
      return llvm::IRBuilderBase::CreateCast(v16, v17, v34, v15, v36);
    }

    v15 = *(v14 + 1912);
    v37 = 257;
    v16 = v14 + 1712;
LABEL_38:
    v17 = 47;
    goto LABEL_39;
  }

  v18 = a1 + *(*a1 - 24);
  if (*(*(v18 + 2168) + 1900))
  {
    if (!*(a1 + 2520))
    {
      AGCLLVMUserObject::createSamplerHeapGlobal(a1);
    }

    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v19 = *(a1 + 2088);
        v20 = *(a1 + 2120);
        v21 = a1 + *(*a1 - 24);
        v22 = *(v21 + 1896);
        v37 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v21 + 1712, 47, a2, v22, v36);
        v24 = a1 + *(*a1 - 24);
        v38[0] = llvm::ConstantInt::get();
        v38[1] = Cast;
        v37 = 257;
        llvm::Type::isOpaquePointerTy(*v19);
        return llvm::IRBuilderBase::CreateGEP(v24 + 1712, v20, v19, v38, 2, v36);
      }

      v32 = a1 + *(*a1 - 24);
      v33 = *(a1 + 2520);
      v15 = llvm::PointerType::get();
      v37 = 257;
      v16 = v32 + 1712;
      v17 = 49;
      v34 = v33;
      return llvm::IRBuilderBase::CreateCast(v16, v17, v34, v15, v36);
    }

    v31 = a1 + *(*a1 - 24);
    v15 = *(v31 + 1912);
    v37 = 257;
    v16 = v31 + 1712;
    goto LABEL_38;
  }

  v25 = a1 + (v3 << 6);
  v26 = *(v25 + 1896);
  v27 = *(v25 + 2152);
  if (v26)
  {
    if (v27)
    {
      v28 = *(v18 + 1760);
      v29 = *(v28 + 40);
      if (v29 != v28 + 40)
      {
        v30 = v29 ? v29 - 24 : 0;
        if (*(v30 + 16) - 29 < 0xB)
        {
          llvm::BasicBlock::splitBasicBlock();
          v36[0] = "non_constant_sampler";
          v37 = 259;
          operator new();
        }
      }

      v36[0] = "pick_sampler";
      v37 = 259;
      operator new();
    }

    goto LABEL_47;
  }

  if (!v27)
  {
LABEL_47:

    return AGCLLVMUserObject::buildNonConstantSamplerArgumentPointer(a1, a2, v3);
  }

  return AGCLLVMUserObject::buildConstantSamplerArgumentPointer(a1, a2, v3);
}

uint64_t AGCLLVMUserObject::createSamplerHeapGlobal(AGCLLVMUserObject *this)
{
  {
    v8 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMUserObject::createSamplerHeapGlobal(void)::bind_indices[0] = (*(*v8 + 552))(v8);
    dword_27C8D8224 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 280))();
    dword_27C8D8228 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 808))();
    dword_27C8D822C = (*(**(*(this + *(*this - 24) + 2168) + 920) + 560))();
    dword_27C8D8230 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 288))();
    dword_27C8D8234 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 816))();
  }

  if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 27)
  {
    v2 = 2;
  }

  else
  {
    v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 22 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 3 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 4;
  }

  v3 = AGCLLVMUserObject::createSamplerHeapGlobal(void)::bind_indices[3 * *(this + 3896) + v2];
  v4 = llvm::PointerType::get();
  v9[0] = "agc.sampler_heap.";
  v9[2] = v3;
  v10 = 2051;
  GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v4, v9, v3, 0, 5u, 0);
  llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
  *(GlobalBufferBinding + 80) &= ~1u;
  llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v6);
  llvm::GlobalVariable::setInitializer();
  llvm::Module::getOrInsertNamedMetadata();
  llvm::ConstantInt::get();
  v9[0] = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  return llvm::ValueHandleBase::operator=((this + 2504), GlobalBufferBinding);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildSampleFunction(llvm::ConstantInt **a1, uint64_t a2, int *a3)
{
  v240 = *MEMORY[0x277D85DE8];
  v221 = *a2;
  v222 = *(a2 + 16);
  if (v222)
  {
    llvm::MetadataTracking::track();
  }

  v223 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v221);
  if (v222)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((*a3 - 6) < 3)
  {
    return (*(*a1 + 199))(a1, a3);
  }

  if (*a3 == 3)
  {
    Element = *(a3 + 28);
    if (a3[2] == 6)
    {
      if ((*(*Element + 8) & 0xFE) == 0x12)
      {
        v233 = 257;
        v9 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v9, &v230);
      }

      v10 = llvm::ConstantInt::get();
      v233 = 257;
      v11 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Element, v10, &v230);
      v12 = llvm::ConstantInt::get();
      v233 = 257;
      LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), Element, v12, &v230);
      v14 = llvm::ConstantInt::get();
      v239 = 257;
      v15 = llvm::IRBuilderBase::CreateAnd((a1 + 1), LShr, v14, &v238);
      llvm::FixedVectorType::get();
      v16 = llvm::UndefValue::get();
      v17 = a1[25];
      v233 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v11, v17, &v230);
      v239 = 257;
      v19 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v16, Cast, v19, &v238);
      v21 = a1[25];
      v233 = 257;
      v22 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v15, v21, &v230);
      v239 = 257;
      v23 = llvm::ConstantInt::get();
      v24 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v22, v23, &v238);
      v25 = llvm::ConstantInt::get();
      v233 = 257;
      v26 = llvm::ConstantInt::get();
      v27 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v24, v25, v26, &v230);
      v28 = llvm::ConstantInt::get();
      v233 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v27, v28, v29, &v230);
    }

    else
    {
      v30 = AGCLLVMBuilder::extendVector(a1, *(a3 + 28), 4, v6);
    }

    v217 = v30;
  }

  else
  {
    v217 = 0;
  }

  v31 = *a3;
  v32 = a3[1];
  if (*(a1 + 1883) & 1 | (v32 != 0))
  {
    v33 = a3[1];
  }

  else
  {
    v33 = *a3 == 3;
  }

  v34 = a3[2];
  if (v34 == 6)
  {
    v35 = 7;
  }

  else
  {
    v35 = a3[2];
  }

  v210 = v35;
  v36 = **(a3 + 17);
  if ((*(v36 + 8) & 0xFE) == 0x12)
  {
    v37 = *(**(v36 + 16) + 8);
  }

  else
  {
    v37 = *(v36 + 8);
  }

  v219 = *(a3 + 19);
  v208 = *(a3 + 25);
  v38 = *(a3 + 27);
  v230 = v232;
  v231 = 0x1000000000;
  v206 = v31 & 0xFFFFFFFE;
  v39 = 2040;
  if ((v31 & 0xFFFFFFFE) == 4)
  {
    v39 = 2048;
  }

  v70 = v31 == 3;
  v40 = 2056;
  if (!v70)
  {
    v40 = v39;
  }

  std::string::basic_string[abi:nn200100]<0>(&v238, *(a1 + v40));
  v41 = a1[24];
  if (v37 != 13)
  {
    v41 = a1[19];
  }

  if (*(a1 + 1954))
  {
    v42 = a1[24];
    if (v38)
    {
      v42 = **(a3 + 27);
    }

    v43 = a1[24];
    if (v32 == 2)
    {
      v43 = a1[24];
      if (v37 == 13)
      {
        v43 = **(a3 + 29);
      }
    }

    v218 = a1[24];
    if (v219)
    {
      v218 = **(a3 + 19);
    }

    v44 = *a3;
    if (a3[40] == 1 && v44 == 3)
    {
      v215 = v43;
      v212 = v42;
      v41 = **(a3 + 21);
      goto LABEL_44;
    }
  }

  else
  {
    v44 = *a3;
    v42 = a1[24];
    v43 = v42;
    v218 = v42;
  }

  v215 = v43;
  v212 = v42;
  if (v44 != 3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[24]);
  }

LABEL_44:
  v45 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v45);
  v46 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v46);
  v47 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v47);
  if (*(a1 + 2384) == 1)
  {
    v48 = **(a3 + 17);
    if ((*(v48 + 2) & 0xFE) != 0x12)
    {
      goto LABEL_49;
    }

    v49 = *(v48 + 2);
  }

  else
  {
    v49 = a1 + 25;
  }

  v48 = *v49;
LABEL_49:
  if (v48 == a1[25])
  {
    v50 = ".i";
  }

  else if (v48 == a1[24])
  {
    v50 = ".ci16";
  }

  else
  {
    v50 = &unk_20E75F419;
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      if (v33 != 3)
      {
        goto LABEL_92;
      }

      std::string::append(&v238, ".3d");
      if (v37 == 13)
      {
        std::string::append(&v238, v50);
        v52 = llvm::FixedVectorType::get();
      }

      else
      {
        v52 = a1[39];
      }

LABEL_79:
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v52);
      goto LABEL_92;
    }

    std::string::append(&v238, ".cube");
    if (v37 == 13)
    {
      std::string::append(&v238, "stf");
      if ((a1[233] & 1) == 0)
      {
        v216 = 0;
        goto LABEL_187;
      }

      if (*(a1 + 2360) != 1)
      {
        v55 = llvm::FixedVectorType::get();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v55);
        v54 = v215;
LABEL_85:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v54);
        if (v219)
        {
          std::string::append(&v238, ".array");
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v218);
        }

        if (v208)
        {
          std::string::append(&v238, ".shadow");
          v53 = a1[21];
          goto LABEL_89;
        }

LABEL_90:
        if (v37 != 13)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }
    }

    else
    {
      std::string::append(&v238, a1[294]);
      if ((a1[295] & 1) == 0)
      {
        v54 = a1[39];
        goto LABEL_85;
      }
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[28]);
    v54 = a1[24];
    goto LABEL_85;
  }

  if (!v33)
  {
    std::string::append(&v238, ".1d");
    if (v37 != 13)
    {
      v48 = a1[21];
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v48);
    if (v219)
    {
      std::string::append(&v238, ".array");
      v53 = v218;
LABEL_89:
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v53);
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  if (v33 != 1)
  {
    goto LABEL_92;
  }

  std::string::append(&v238, ".2d");
  if (v37 == 13)
  {
    v51 = llvm::FixedVectorType::get();
  }

  else
  {
    v51 = a1[28];
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v51);
  if (v38)
  {
    std::string::append(&v238, ".msaa");
  }

  if (v219)
  {
    std::string::append(&v238, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v218);
  }

  if (v37 != 13)
  {
    if (!v208)
    {
      goto LABEL_92;
    }

    std::string::append(&v238, ".shadow");
    v52 = a1[21];
    goto LABEL_79;
  }

LABEL_91:
  std::string::append(&v238, v50);
LABEL_92:
  v56 = a3[40];
  if (v56 > 1)
  {
    v57 = v41;
    if (v56 == 3)
    {
      v58 = v38;
      if (v38)
      {
        v61 = v212;
      }

      else
      {
        if (v206 != 4)
        {
          goto LABEL_113;
        }

        std::string::append(&v238, ".gather");
        if (*a3 != 4)
        {
          goto LABEL_113;
        }

        v61 = a1[24];
      }

      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v61);
      goto LABEL_113;
    }

    v58 = v38;
    if (v56 == 2)
    {
      std::string::append(&v238, ".grad");
      v59 = a3[1];
      if (v59 > 3)
      {
        v60 = 0;
      }

      else
      {
        v60 = dword_20E70CAF0[v59];
      }

      v62 = *(a1 + 2360);
      if (v32 != 2)
      {
        v62 = 0;
      }

      v63 = v60 - v62;
      if (v60 != v62)
      {
        do
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[28]);
          --v63;
        }

        while (v63);
      }
    }
  }

  else
  {
    v57 = v41;
    if (v56)
    {
      v58 = v38;
      if (v56 == 1)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v57);
        std::string::append(&v238, ".lod");
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[19]);
      v58 = v38;
    }
  }

LABEL_113:
  if (*(a3 + 18))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[24]);
    std::string::append(&v238, ".offset");
  }

  if (*a3 == 3)
  {
    if (v34 == 8 || v34 == 4)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[41]);
      v64 = ".4xi16";
LABEL_119:
      std::string::append(&v238, v64);
      goto LABEL_135;
    }

    if ((v210 & 0xFFFFFFFB) == 3)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[42]);
      v64 = ".4xi32";
      goto LABEL_119;
    }

    v80 = 39;
    if (v210 == 1)
    {
      v80 = 37;
      v81 = ".4xh";
    }

    else
    {
      v81 = ".4xf";
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[v80]);
    std::string::append(&v238, v81);
    if (a3[4] == 1)
    {
      v64 = ".rtz";
      goto LABEL_119;
    }
  }

  else
  {
    v65 = 328;
    v66 = v210 & 0xFFFFFFFB;
    v67 = ".4xi32";
    v68 = 312;
    if (v210 == 1)
    {
      v68 = 296;
    }

    v69 = ".4xf";
    if (v210 == 1)
    {
      v69 = ".4xh";
    }

    v70 = v66 == 3;
    if (v66 == 3)
    {
      v71 = 336;
    }

    else
    {
      v71 = v68;
    }

    if (!v70)
    {
      v67 = v69;
    }

    if (v34 == 8)
    {
      v71 = 328;
      v67 = ".4xi16";
    }

    if (v34 == 4)
    {
      v72 = ".4xi16";
    }

    else
    {
      v65 = v71;
      v72 = v67;
    }

    v73 = *(a1 + v65);
    std::string::append(&v238, v72);
    v74 = a1[23];
    v236[0] = v73;
    v236[1] = v74;
    llvm::StructType::get();
  }

LABEL_135:
  if (v33 == 2 && v37 == 13)
  {
    if (a1[25] == v215)
    {
      v75 = ".i32";
    }

    else if (a1[24] == v215)
    {
      v75 = ".i16";
    }

    else if (a1[19] == v215)
    {
      v75 = ".f16";
    }

    else
    {
      v75 = &unk_20E75F419;
    }

    std::string::append(&v238, v75);
  }

  if (v219)
  {
    if (a1[25] == v218)
    {
      v76 = ".i32";
    }

    else if (a1[24] == v218)
    {
      v76 = ".i16";
    }

    else if (a1[19] == v218)
    {
      v76 = ".f16";
    }

    else
    {
      v76 = &unk_20E75F419;
    }

    std::string::append(&v238, v76);
  }

  if (v58)
  {
    if (a1[25] == v212)
    {
      v77 = ".i32";
    }

    else if (a1[24] == v212)
    {
      v77 = ".i16";
    }

    else if (a1[19] == v212)
    {
      v77 = ".f16";
    }

    else
    {
      v77 = &unk_20E75F419;
    }

    std::string::append(&v238, v77);
  }

  v78 = a3[40];
  v79 = ".f16";
  if (v78)
  {
    if (v78 != 1)
    {
      goto LABEL_180;
    }

    if (a1[25] == v57)
    {
      v79 = ".i32";
    }

    else if (a1[24] == v57)
    {
      v79 = ".i16";
    }

    else if (a1[19] != v57)
    {
      v79 = &unk_20E75F419;
    }
  }

  std::string::append(&v238, v79);
LABEL_180:
  if (*a3 != 3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, a1[19]);
  }

  llvm::FunctionType::get();
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    v82 = v238.__r_.__value_.__r.__words[0];
    if (!v238.__r_.__value_.__r.__words[0])
    {
      goto LABEL_186;
    }
  }

  else
  {
    v82 = &v238;
  }

  strlen(v82);
LABEL_186:
  llvm::Module::getOrInsertFunction();
  v216 = v83;
LABEL_187:
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (v230 != v232)
  {
    free(v230);
  }

  v84 = *(a3 + 17);
  if ((*(*v84 + 8) & 0xFE) == 0x12)
  {
    v85 = *(**(*v84 + 16) + 8);
  }

  else
  {
    v85 = *(*v84 + 8);
  }

  v86 = *(a3 + 25);
  v213 = a3[40];
  v229 = *(a3 + 17);
  v230 = v232;
  v231 = 0x1000000000;
  v87 = *(a3 + 18);
  v214 = *(a3 + 19);
  v88 = *(a3 + 23);
  v211 = *(a3 + 22);
  v220 = a3[1];
  if (*a3 != 3)
  {
    v89 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v89);
    v90 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v90);
  }

  v91 = llvm::PointerType::get();
  if (*a3 == 3)
  {
    v92 = a3 + 14;
  }

  else
  {
    v92 = a3 + 12;
  }

  v93 = *v92;
  v239 = 257;
  v94 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v93, v91, &v238);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v94);
  if (*a3 == 3)
  {
    v96 = llvm::ConstantPointerNull::get(v91, v95);
  }

  else
  {
    if (!*(a1 + 475) || (v97 = *(a3 + 5)) == 0)
    {
      v97 = *(a3 + 11);
    }

    v239 = 257;
    v96 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v97, v91, &v238);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v96);
  v98 = llvm::PointerType::get();
  v99 = v98;
  v100 = *(a3 + 4);
  if (v100)
  {
    if (!*(a1 + 475) && (AGCLLVMObject::useTextureIDLegacyMode(v98) & 1) == 0)
    {
      v238.__r_.__value_.__r.__words[0] = llvm::DataLayout::getTypeAllocSize((a1 + 59), a1[223]);
      LODWORD(v238.__r_.__value_.__r.__words[1]) = v101;
      llvm::TypeSize::operator unsigned long long();
      v102 = v88;
      v103 = llvm::ConstantInt::get();
      v104 = a1[25];
      v239 = 257;
      v105 = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v100, v104, &v238);
      v238.__r_.__value_.__r.__words[0] = "agx2_tex_heap_byte_offset";
      v239 = 259;
      v106 = v103;
      v88 = v102;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v105, v106, &v238);
      v239 = 257;
      v100 = llvm::IRBuilderBase::CreateCast((a1 + 1), 48, Mul, v99, &v238);
    }

    v108 = v100;
  }

  else
  {
    v109 = llvm::ConstantInt::get();
    v239 = 257;
    v108 = llvm::IRBuilderBase::CreateCast((a1 + 1), 48, v109, v99, &v238);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v108);
  v111 = v229;
  if (v220 == 2)
  {
    if (v85 == 13)
    {
      v112 = AGCLLVMBuilder::subrangeVector(a1, v229, 0, 2, 1);
    }

    else
    {
      v112 = AGCLLVMBuilder::extendVector(a1, v229, 4, v110);
    }

    v111 = v112;
    v229 = v112;
  }

  v113 = *v111;
  if ((*(*v111 + 8) & 0xFE) == 0x12)
  {
    v113 = **(v113 + 2);
  }

  if ((*(a1 + 1883) & 1) == 0 && !a3[1] && *a3 == 3)
  {
    v114 = v88;
    v115 = AGCLLVMBuilder::extendVector(a1, v111, 2, v110);
    v116 = llvm::ConstantInt::get();
    v239 = 257;
    v117 = llvm::ConstantInt::get();
    v118 = v115;
    v88 = v114;
    v229 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v118, v116, v117, &v238);
  }

  v119 = 0;
  if (*(a1 + 2360) == 1 && v220 == 2)
  {
    v120 = a3[1];
    if (v120 > 3)
    {
      v121 = 0;
    }

    else
    {
      v121 = dword_20E70CAF0[v120];
    }

    v207 = v88;
    v209 = v86;
    if (v213 == 2)
    {
      v122 = a1[28];
      v234[0] = a1[39];
      v234[1] = v122;
      v234[2] = v122;
      v234[3] = v122;
      llvm::FunctionType::get();
      if (a1[297])
      {
        strlen(a1[297]);
      }

      llvm::Module::getOrInsertFunction();
      v124 = v123;
      v238.__r_.__value_.__r.__words[0] = &v238.__r_.__value_.__r.__words[2];
      v238.__r_.__value_.__l.__size_ = 0x400000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v238, v229);
      AGCLLVMTargetLowerer::remapGradients(a1, &v238, v211, v207, v121);
      v237 = 257;
      v125 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v124 + 24), v124, v238.__r_.__value_.__l.__data_, LODWORD(v238.__r_.__value_.__r.__words[1]), v236);
      if (v238.__r_.__value_.__l.__data_ != &v238.__r_.__value_.__r.__words[2])
      {
        free(v238.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      llvm::FunctionType::get();
      if (a1[296])
      {
        strlen(a1[296]);
      }

      llvm::Module::getOrInsertFunction();
      v239 = 257;
      v125 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v126 + 24), v126, &v229, 1, &v238);
    }

    v229 = AGCLLVMBuilder::subrangeVector(a1, v125, 0, 2, 1);
    v239 = 257;
    v127 = llvm::ConstantInt::get();
    v128 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v125, v127, &v238);
    v129 = a1[25];
    v237 = 257;
    v130 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v128, v129, v236);
    v131 = a1[24];
    v235 = 257;
    v119 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v130, v131, v234);
    if (v213 == 2)
    {
      v211 = AGCLLVMBuilder::subrangeVector(a1, v125, 3u, 2, 1);
      v88 = AGCLLVMBuilder::subrangeVector(a1, v125, 5u, 2, 1);
    }

    else
    {
      v88 = v207;
    }

    v86 = v209;
  }

  if (v85 == 13 && v220 == 2)
  {
    v119 = *(a3 + 29);
    if ((*(a1 + 1954) & 1) == 0)
    {
      v119 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 29), a1[24]);
    }
  }

  if (*(a3 + 23) == 1 && *a3 != 3)
  {
    if (a3[1] < 2)
    {
      if (v85 == 13)
      {
        goto LABEL_255;
      }

LABEL_254:
      (*(*a1 + 200))(a1, *(a3 + 6), &v229, v220 == 2);
      goto LABEL_255;
    }

    if (v85 != 13 && v220 == 2)
    {
      goto LABEL_254;
    }
  }

LABEL_255:
  v133 = a1[24];
  if (v113 == v133)
  {
    v134 = v229;
    if ((a1[298] & 1) == 0)
    {
      v134 = AGCLLVMBuilder::extendFromSmall(a1, v229, v133, 0);
      v229 = v134;
    }
  }

  else
  {
    v134 = v229;
  }

  if (v85 != 13)
  {
    v134 = AGCLLVMBuilder::f32Extend(a1, v134, 1);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v134);
  if (v119)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v119);
  }

  if (v214)
  {
    FPToUI = *(a3 + 19);
    if (*FPToUI == a1[25] && (*(a1 + 1954) & 1) == 0)
    {
      if (*(FPToUI + 16) == 84)
      {
        v136 = *(FPToUI - 4);
        if (v136)
        {
          if (!*(v136 + 16) && *(v136 + 24) == *(FPToUI + 9))
          {
            Name = llvm::Value::getName(v136);
            if (v138 >= 0x13)
            {
              v139 = *Name == 0x766E6F632E726961 && Name[1] == 0x33692E752E747265;
              if (v139 && *(Name + 11) == 0x662E3233692E752ELL)
              {
                v226 = *(a1 + 7);
                llvm::IRBuilderBase::getCurrentDebugLocation(&v227, (a1 + 1));
                v228 = *(a1 + 26);
                v141 = AGCLLVMTargetLowerer::buildBiasF2IVarying(a1, &v226, *(FPToUI - 4 * (*(FPToUI + 5) & 0x7FFFFFF)));
                if (v227)
                {
                  llvm::MetadataTracking::untrack();
                }

                v142 = a1[24];
                v239 = 257;
                FPToUI = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v141, v142, &v238);
              }
            }
          }
        }
      }

      if (FPToUI == *(a3 + 19))
      {
        v143 = llvm::ConstantInt::get();
        v144 = *(a3 + 19);
        v239 = 257;
        llvm::IRBuilderBase::CreateICmp(a1 + 1, 37, v144, v143, &v238);
        v239 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        FPToUI = AGCLLVMBuilder::truncateToSmall(a1, Select, a1[24]);
      }
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, FPToUI);
  }

  if (v86)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, *(a3 + 25));
  }

  v146 = *(a3 + 27);
  if (v146)
  {
    if ((*(a1 + 1954) & 1) == 0)
    {
      v147 = a1[24];
      v239 = 257;
      v146 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v146, v147, &v238);
    }

    v148 = v146;
    goto LABEL_291;
  }

  v165 = a3[40];
  switch(v165)
  {
    case 0:
      v148 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 21), a1[19]);
      goto LABEL_291;
    case 1:
      v166 = *(a3 + 21);
      if (v85 == 13)
      {
        if (*(*v166 + 8) == 13)
        {
          if (*(a1 + 1954) == 1 && *a3 == 3)
          {
            goto LABEL_346;
          }

          if (*v166 == a1[25] && *(a1 + 1882) == 1)
          {
            v167 = llvm::ConstantInt::get();
            v239 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 34, v166, v167, &v238);
            llvm::ConstantInt::get();
            v168 = *(a3 + 21);
            v169 = a1[24];
            v237 = 257;
            llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v168, v169, v236);
            v235 = 257;
            v170 = llvm::IRBuilderBase::CreateSelect();
          }

          else
          {
            v205 = a1[24];
            v239 = 257;
            v170 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v166, v205, &v238);
          }
        }

        else
        {
          v204 = a1[24];
          v239 = 257;
          v170 = llvm::IRBuilderBase::CreateFPToUI((a1 + 1), v166, v204, &v238);
        }
      }

      else
      {
        v170 = AGCLLVMBuilder::truncateToSmall(a1, *(a3 + 21), a1[19]);
      }

      v166 = v170;
LABEL_346:
      v148 = v166;
      goto LABEL_291;
    case 2:
      if (*(a1 + 2360) == 1 && v220 == 2)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v211);
        v148 = v88;
LABEL_291:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v148);
        break;
      }

      v202 = a3[1];
      if (v202 > 3)
      {
        v203 = 0;
      }

      else
      {
        v203 = dword_20E70CAF0[v202];
      }

      AGCLLVMTargetLowerer::remapGradients(a1, &v230, v211, v88, v203);
      break;
  }

  if (*(a3 + 18))
  {
    v149 = llvm::ConstantInt::get();
    v150 = a3[1];
    if (v150 <= 3)
    {
      v151 = 0;
      v152 = dword_20E70CAF0[v150];
      do
      {
        v239 = 257;
        v153 = llvm::ConstantInt::get();
        v154 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v87, v153, &v238);
        v239 = 257;
        v155 = llvm::ConstantInt::get();
        Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v154, v155, &v238);
        v239 = 257;
        v157 = llvm::ConstantInt::get();
        v158 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Shl, v157, &v238);
        v239 = 257;
        v149 = llvm::IRBuilderBase::CreateOr((a1 + 1), v149, v158, &v238);
        ++v151;
      }

      while (v152 != v151);
    }

    v159 = AGCLLVMBuilder::truncateToSmall(a1, v149, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v159);
  }

  v160 = *a3;
  if (*a3 == 4)
  {
    v161 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v161);
    v160 = *a3;
  }

  v162 = v217;
  if (v160 != 3)
  {
    v163 = *(a3 + 24);
    if (v163)
    {
      if (v163[16] <= 0x14u)
      {
        if (llvm::Constant::isZeroValue(*(a3 + 24)))
        {
          goto LABEL_303;
        }

        v163 = *(a3 + 24);
      }

      v164 = AGCLLVMBuilder::truncateToSmall(a1, v163, a1[19]);
      goto LABEL_320;
    }

LABEL_303:
    v164 = llvm::ConstantFP::get();
LABEL_320:
    v162 = v164;
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v230, v162);
  v239 = 257;
  v7 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v216 + 24), v216, v230, v231, &v238);
  if (*(a3 + 288) == 1)
  {
    llvm::Attribute::get();
    llvm::Value::getContext(v7);
    *(v7 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (*a3 == 3)
  {
    goto LABEL_335;
  }

  LODWORD(v236[0]) = 0;
  v239 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v7, v236, 1, &v238);
  if (a3[2] == 6)
  {
    v172 = llvm::UndefValue::get();
    v239 = 257;
    v173 = llvm::ConstantInt::get();
    v174 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v173, &v238);
    v237 = 257;
    v175 = llvm::ConstantInt::get();
    v176 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v172, v174, v175, v236);
    v239 = 257;
    v177 = llvm::ConstantInt::get();
    v178 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v177, &v238);
    v237 = 257;
    v179 = llvm::ConstantInt::get();
    v180 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v176, v178, v179, v236);
    v181 = a1[26];
    v239 = 257;
    v182 = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v180, v181, &v238);
    llvm::FixedVectorType::get();
    v183 = llvm::UndefValue::get();
    v239 = 257;
    v184 = llvm::ConstantInt::get();
    v185 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v183, v182, v184, &v238);
    v186 = llvm::ConstantInt::get();
    v239 = 257;
    v187 = llvm::ConstantInt::get();
    v188 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v185, v186, v187, &v238);
    v239 = 257;
    v189 = llvm::ConstantInt::get();
    v190 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v188, v186, v189, &v238);
    v191 = llvm::ConstantInt::get();
    v239 = 257;
    v192 = llvm::ConstantInt::get();
    v193 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v190, v191, v192, &v238);
  }

  else
  {
    if (*(a3 + 22) != 1)
    {
      goto LABEL_329;
    }

    v193 = (**a1)(a1, Value);
  }

  Value = v193;
LABEL_329:
  if (*(a3 + 21) == 1 && (*(*Value + 8) & 0xFE) == 0x12)
  {
    v239 = 257;
    v194 = llvm::ConstantInt::get();
    Value = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Value, v194, &v238);
  }

  if (*(a3 + 24) == 1)
  {
    v195 = a1[23];
    v238.__r_.__value_.__r.__words[0] = *Value;
    v238.__r_.__value_.__l.__size_ = v195;
    llvm::StructType::get();
    v196 = llvm::UndefValue::get();
    LODWORD(v236[0]) = 0;
    v239 = 257;
    InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v196, Value, v236, 1, &v238);
    v225 = 1;
    v239 = 257;
    v198 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v7, &v225, 1, &v238);
    v199 = a1[23];
    v237 = 257;
    v200 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v198, v199, v236);
    v224 = 1;
    v235 = 257;
    v7 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v200, &v224, 1, v234);
  }

  else
  {
    v7 = Value;
  }

LABEL_335:
  if (v230 != v232)
  {
    free(v230);
  }

  return v7;
}

llvm::Value *AGCLLVMBuilder::f32Extend(AGCLLVMBuilder *this, llvm::Value *a2, int a3)
{
  v4 = a2;
  v5 = *a2;
  v6 = *(this + 21);
  if (*a2 != v6)
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v6 = llvm::FixedVectorType::get();
      v8 = *(v5 + 8);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    if ((v8 & 0xFE) == 0x12)
    {
      v8 = *(**(v5 + 16) + 8);
    }

    if (v8 > 6)
    {
      v12 = 257;
      if (a3)
      {
        return llvm::IRBuilderBase::CreateSIToFP((this + 8), v4, v6, v11);
      }

      else
      {
        return llvm::IRBuilderBase::CreateUIToFP((this + 8), v4, v6, v11);
      }
    }

    else
    {
      v12 = 257;
      return llvm::IRBuilderBase::CreateFPExt((this + 8), v4, v6, v11);
    }
  }

  return v4;
}

llvm::Value *AGCLLVMBuilder::truncateToSmall(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Type *a3)
{
  v3 = a2;
  v5 = *(this + 19);
  if (v5 == a3 || (v5 = *(this + 24), v5 == a3) || (v5 = *(this + 23), v5 == a3))
  {
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v5 = llvm::FixedVectorType::get();
    }

    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v6 = *(**(v5 + 16) + 8);
    }

    else
    {
      v6 = *(v5 + 8);
    }

    v10 = 257;
    if (v6 > 6)
    {
      return llvm::IRBuilderBase::CreateCast(this + 8, 38, v3, v5, v9);
    }

    else
    {
      return llvm::IRBuilderBase::CreateFPTrunc((this + 8), v3, v5, v9);
    }
  }

  return v3;
}

uint64_t llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a5);
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

llvm::Value *AGCLLVMBuilder::coerceSampleType(void *a1, llvm::Value *a2, int a3)
{
  v3 = a2;
  v5 = *a2;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v13 = 19;
      if ((*(v5 + 2) & 0xFE) == 0x12)
      {
        v13 = 37;
      }

      v14 = a1[v13];
      v16 = 257;
      return llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), a2, v14, v15);
    }

    if (a3 != 3)
    {
      return v3;
    }

LABEL_9:
    v8 = a1[42];
    goto LABEL_11;
  }

  switch(a3)
  {
    case 4:
LABEL_5:
      if (llvm::Type::getScalarSizeInBits(v5) == 32)
      {
        v6 = a1[42];
        v16 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v3, v6, v15);
        v8 = a1[41];
        v16 = 257;
        v9 = a1 + 1;
        v10 = 38;
        return llvm::IRBuilderBase::CreateCast(v9, v10, Cast, v8, v15);
      }

      v8 = a1[41];
LABEL_11:
      v16 = 257;
      v9 = a1 + 1;
      v10 = 49;
      Cast = v3;
      return llvm::IRBuilderBase::CreateCast(v9, v10, Cast, v8, v15);
    case 7:
      goto LABEL_9;
    case 8:
      goto LABEL_5;
  }

  return v3;
}

unsigned __int8 *llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v8 = (*(**(a1 + 72) + 352))(*(a1 + 72), a2, a3, a4, a5);
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
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a6);
    }
  }

  else
  {
    v8 = llvm::User::operator new(0x60);
    v10 = llvm::Instruction::Instruction();
    *(v10 + 64) = v10 + 80;
    *(v10 + 72) = 0x400000000;
    llvm::InsertValueInst::init();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v8, a6, *(a1 + 48), *(a1 + 56));
    v11 = *(a1 + 8);
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

llvm::Instruction *AGCLLVMTargetBuilder::CreateFabs(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = AGCLLVMTargetLowerer::CreateFabs(v4, &v7, a2);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Instruction *AGCLLVMTargetLowerer::CreateFabs(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  if (v9)
  {
    llvm::MetadataTracking::track();
  }

  v10 = *(a2 + 6);
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v8, a3, "llvm.fabs");
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildDot(AGCLLVMBuilder *a1, llvm::Value *a2, llvm::Value *a3, int a4)
{
  if ((~a4 & 6) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 26) = v6 | a4 & 8;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {

    return AGCLLVMBuilder::buildDotProduct(a1, a2, a3, a4);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v9 = 257;
    return llvm::IRBuilderBase::CreateFMul(a1 + 8, a2, a3, v8);
  }
}

llvm::Value *AGCLLVMBuilder::buildDotProduct(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v20 = 257;
  v7 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v7, v19);
  v20 = 257;
  v9 = llvm::ConstantInt::get();
  v10 = llvm::IRBuilderBase::CreateExtractElement((this + 1), a3, v9, v19);
  v20 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), Element, v10, v19);
  v12 = *(*a2 + 32);
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
      v20 = 257;
      v14 = llvm::ConstantInt::get();
      v15 = llvm::IRBuilderBase::CreateExtractElement((this + 1), a2, v14, v19);
      v20 = 257;
      v16 = llvm::ConstantInt::get();
      v17 = llvm::IRBuilderBase::CreateExtractElement((this + 1), a3, v16, v19);
      FMul = AGCLLVMBuilder::buildFma(this, v15, v17, FMul);
    }
  }

  return FMul;
}

llvm::Instruction *AGCLLVMBuilder::buildFma(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  *(&v25.__r_.__value_.__s + 23) = 9;
  strcpy(&v25, "llvm.fma.");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v26, *(v8 + 32));
    v10 = std::string::insert(&v26, 0, "v");
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

    std::string::append(&v25, v12, v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(this + 21))
  {
    v16 = "f32";
  }

  else
  {
    v16 = "f16";
  }

  std::string::append(&v25, v16);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(this, v17, size, v8, v8, v8, v8);
  v26.__r_.__value_.__r.__words[0] = a2;
  v26.__r_.__value_.__l.__size_ = a3;
  v26.__r_.__value_.__r.__words[2] = a4;
  v24 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(this + 1, *(v19 + 24), v19, &v26, 3, __p);
  llvm::Instruction::setHasAllowReassoc(v20);
  llvm::Instruction::setHasApproxFunc(v20);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[3] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  v11[0] = v12;
  v11[1] = 0x300000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v11, __src, v11);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v8;
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateSqrt(AGCLLVMTargetBuilder *this, llvm::Value *a2)
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
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.sqrt");
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

uint64_t AGCLLVMAirBuiltins::buildFastFMin(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    v7 = (*(v6 + *(*v6 - 24) + 1808) & 2) == 0;
  }

  else
  {
    v7 = 1;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v8 = *(*a2 + 8);
  }

  v9 = v8 == 2;
  v10 = *(this + 58);
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 48))(v10, &v13, a2, a3, v9 & v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltins::buildFastFSaturate(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v7 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (this + 8));
  v9 = *(this + 26);
  v5 = (*(*v4 + 40))(v4, &v7, a2, 0);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

llvm::Instruction *AGCLLVMAirBuiltins::buildMix(AGCLLVMBuilder *a1, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, int a5)
{
  v5 = a2;
  if ((~a5 & 6) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 26) = v6 | a5 & 8;
  if (a2 != a3)
  {
    v14 = 257;
    FNeg = llvm::IRBuilderBase::CreateFNeg(a1 + 8, a4, v13);
    v11 = AGCLLVMBuilder::buildFma(a1, v5, FNeg, v5);
    return AGCLLVMBuilder::buildFma(a1, a3, a4, v11);
  }

  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFNeg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    v5 = llvm::UnaryOperator::Create();
    llvm::IRBuilderBase::setFPAttrs(a1, v5, *(a1 + 96));
LABEL_9:
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a3);
    return v5;
  }

  v5 = (*(**(a1 + 72) + 200))(*(a1 + 72));
  if (v5)
  {
    v6 = *(v5 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t AGCLLVMAirBuiltins::buildWidth(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = AGCLLVMAirBuiltins::buildDfdx(this, a2);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, v4);
  v6 = AGCLLVMAirBuiltins::buildDfdy(this, a2);
  v7 = AGCLLVMTargetBuilder::CreateFabs(this, v6);
  v10 = 257;
  return llvm::IRBuilderBase::CreateFAdd(this + 8, Fabs, v7, v9);
}

llvm::Instruction *AGCLLVMAirBuiltins::buildDfdx(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v18 = a2;
  v4 = *(this + 118) + *(**(this + 118) - 24);
  v5 = *(v4 + 1808);
  v15 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (this + 8));
  v17 = *(this + 26);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, v4 + 1712);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *a2;
  v8 = 1648;
  if (v6 == *(this + 19))
  {
    v8 = 1664;
  }

  v7 = *(this + 58);
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = strlen(*(v7 + v8));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v9, v10, v6, v6);
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(this + 1, *(v11 + 24), v11, &v18, 1, v13);
  *(*(this + 118) + *(**(this + 118) - 24) + 1808) = v5;
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildDfdy(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v19 = a2;
  v4 = *(this + 118) + *(**(this + 118) - 24);
  v5 = *(v4 + 1808);
  v16 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (this + 8));
  v18 = *(this + 26);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v16, v4 + 1712);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  *(*(this + 118) + *(**(this + 118) - 24) + 1808) = v5;
  v6 = *a2;
  v8 = 1656;
  if (v6 == *(this + 19))
  {
    v8 = 1672;
  }

  v7 = *(this + 58);
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = strlen(*(v7 + v8));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v9, v10, v6, v6);
  v15 = 257;
  v12 = llvm::IRBuilderBase::CreateCall(this + 1, *(v11 + 24), v11, &v19, 1, v14);
  return (*(**(this + 118) + 32))(*(this + 118), v12);
}

uint64_t AGCLLVMAirBuiltins::buildFastFClamp(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v8 = *(this + 58);
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v13 = *(this + 26);
  v9 = (*(*v8 + 80))(v8, &v11, a2, a3, a4, 0);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

double std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 24);
  v7 = (a1 + 24);
  v8 = *(a1 + 47);
  v9 = *(a2 + 47);
  if (v9 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  if (v9 >= 0)
  {
    v11 = (a2 + 24);
  }

  else
  {
    v11 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v8 >= 0)
  {
    v13 = (a1 + 24);
  }

  else
  {
    v13 = *(a1 + 24);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  if (v15)
  {
    v16 = v15 < 0;
  }

  else
  {
    v16 = v10 < v12;
  }

  v17 = *(a3 + 47);
  if (v17 >= 0)
  {
    v18 = *(a3 + 47);
  }

  else
  {
    v18 = *(a3 + 32);
  }

  if (v17 >= 0)
  {
    v19 = (a3 + 24);
  }

  else
  {
    v19 = *(a3 + 24);
  }

  if (v10 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v10;
  }

  v21 = memcmp(v19, v11, v20);
  v23 = v18 < v10;
  if (v21)
  {
    v23 = v21 < 0;
  }

  if (v16)
  {
    v24 = a1;
    if (v23)
    {
LABEL_51:
      v34 = a3;
LABEL_72:

      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(v24, v34).n128_u64[0];
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2);
    v25 = *(a2 + 47);
    v26 = *(a3 + 47);
    if (v26 >= 0)
    {
      v27 = *(a3 + 47);
    }

    else
    {
      v27 = *(a3 + 32);
    }

    if (v26 >= 0)
    {
      v28 = (a3 + 24);
    }

    else
    {
      v28 = *(a3 + 24);
    }

    if (v25 >= 0)
    {
      v29 = *(a2 + 47);
    }

    else
    {
      v29 = *(a2 + 32);
    }

    if (v25 >= 0)
    {
      v30 = v6;
    }

    else
    {
      v30 = *(a2 + 24);
    }

    if (v29 >= v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    v32 = memcmp(v28, v30, v31);
    v33 = v27 < v29;
    if (v32)
    {
      v33 = v32 < 0;
    }

    if (v33)
    {
      v24 = a2;
      goto LABEL_51;
    }
  }

  else if (v23)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
    v35 = *(a1 + 47);
    v36 = *(a2 + 47);
    if (v36 >= 0)
    {
      v37 = *(a2 + 47);
    }

    else
    {
      v37 = *(a2 + 32);
    }

    if (v36 >= 0)
    {
      v38 = v6;
    }

    else
    {
      v38 = *(a2 + 24);
    }

    if (v35 >= 0)
    {
      v39 = *(a1 + 47);
    }

    else
    {
      v39 = *(a1 + 32);
    }

    if (v35 >= 0)
    {
      v40 = v7;
    }

    else
    {
      v40 = *(a1 + 24);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    v42 = memcmp(v38, v40, v41);
    v43 = v37 < v39;
    if (v42)
    {
      v43 = v42 < 0;
    }

    if (v43)
    {
      v24 = a1;
      v34 = a2;
      goto LABEL_72;
    }
  }

  return result;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x20F331DA0);
  }
}

uint64_t AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject *this, const AGCLLVMStatelessFragmentObject::WriteFramebufferOptions *a2, unsigned __int8 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::str(&__p, a2, 1);
  v5 = *(a2 + 316);
  v6 = *(a2 + 304);
  AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(this, *(a2 + 8), v5, v6);
  llvm::Module::getOrInsertFunction();
  v8 = v7;
  v9 = *(v7 + 9);
  *(v7 + 9) = v9 & 0xC00F | (16 * *(*(this + *(*this - 24) + 2168) + 1960));
  if (v5 == 1)
  {
    llvm::ConstantInt::get();
  }

  else
  {
    if (v9)
    {
      llvm::Function::BuildLazyArguments(v7);
    }

    llvm::Value::setName();
  }

  if (*(v8 + 18))
  {
    llvm::Function::BuildLazyArguments(v8);
  }

  llvm::Value::setName();
  if (v6)
  {
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(v8);
    }

    llvm::Value::setName();
  }

  if (*(v8 + 72) == v8 + 72)
  {
    operator new();
  }

  v10 = this + *(*this - 24);
  if (v10[2284] == 1)
  {
    v11 = *(v10 + 570);
  }

  else
  {
    v11 = 0;
  }

  AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(this, v8, v11, *(a2 + 308) & 0xFFFFFFFFFFLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::IRBuilderBase *this, llvm::Value *a2, unsigned int a3)
{
  v5 = *(this + 8);
  v6 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FD40](v6, v5, a2, 0);
  v9 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, v8);
  return v6;
}

uint64_t AGCLLVMAirBuiltins::buildNanFMax(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
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

  v8 = (*(*v6 + 56))(v6, &v10, a2, a3, v7 == *(this + 21));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMBuilder::findCommonDominatorOfUsers(uint64_t a1, uint64_t a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x400000000;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v4 = *(v2 + 24);
    if (!v4 || *(v4 + 16) != 83)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v22, *(v2 + 24));
      goto LABEL_24;
    }

    v5 = *(v4 + 20);
    if ((v5 & 0x40000000) != 0)
    {
      v7 = *(v4 - 8);
      v6 = v5 & 0x7FFFFFF;
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v6 = v5 & 0x7FFFFFF;
      v7 = (v4 - 32 * v6);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    v8 = 32 * v6;
    v9 = v7;
    do
    {
      if (*v7 == a1)
      {
        v10 = *(v4 + 20);
        if ((v10 & 0x40000000) != 0)
        {
          v11 = *(v4 - 8);
        }

        else
        {
          v11 = v4 - 32 * (v10 & 0x7FFFFFF);
        }

        v12 = *(v11 + 32 * *(v4 + 60) + 8 * ((v9 - v11) >> 5));
        v13 = *(v12 + 40);
        if (v13 == v12 + 40)
        {
          v16 = 0;
        }

        else
        {
          v14 = v13 - 24;
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

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v22, v16);
      }

      v7 += 4;
      v9 += 4;
      v8 -= 32;
    }

    while (v8);
LABEL_24:
    v2 = *(v2 + 8);
  }

  while (v2);
  v17 = v22;
  if (v23)
  {
    v18 = 0;
    v19 = 8 * v23;
    do
    {
      v20 = *v17;
      if (v18 != *v17)
      {
        if (v18 && (llvm::DominatorTree::dominates() & 1) == 0)
        {
          if ((llvm::DominatorTree::dominates() & 1) == 0)
          {
            llvm::DominatorTreeBase<llvm::BasicBlock,false>::findNearestCommonDominator();
          }
        }

        else
        {
          v18 = v20;
        }
      }

      ++v17;
      v19 -= 8;
    }

    while (v19);
    v17 = v22;
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v24)
  {
    free(v17);
  }

  return v18;
}

uint64_t AGCLLVMAirBuiltins::buildNanFSaturate(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v5 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  v6 = (*(*v4 + 40))(v4, &v8, a2, v5 == *(this + 21));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll(unsigned int *result)
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
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](v4);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }
}

void std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserObject::initializeSampleFunctionMap(AGCLLVMUserObject *this)
{
  v1 = this;
  v339[8] = *MEMORY[0x277D85DE8];
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(this);
  if (*(SampleFunctionMap + 3))
  {
    return;
  }

  v303 = SampleFunctionMap;
  v3 = 0;
  v337 = v339;
  v338 = xmmword_20E70C500;
  v230 = v1;
  do
  {
    v4 = 0;
    v240 = v3;
    v5 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v3];
    v330 = *(v5 + 2);
    v287 = v5;
    v6 = *(v5 + 12);
    if (v330 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v5 + 12);
    }

    v8 = 8;
    if (!v7)
    {
      v8 = 0;
    }

    v270 = v8;
    v242 = v6;
    v9 = v6 == 0;
    if (v6)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v258 = v11;
    v264 = v10;
    v253 = v10 + 1;
    v250 = v10 + 2;
    v276 = v7;
    do
    {
      v244 = v4;
      v12 = (&AGCLLVMUserObject::air_image_dims + v4);
      v311 = *(&AGCLLVMUserObject::air_image_dims + v4 + 8);
      if (!v242 || v311 != 3)
      {
        v13 = 0;
        v14 = 1;
        v293 = v12;
        __s = &unk_20E75F419;
        v304 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_texture_subtypes;
        do
        {
          v248 = v14;
          v15 = 0;
          v246 = v13;
          v16 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
          do
          {
            v17 = *(v16 + 4);
            if (v17 != 6 && (!v7 || *(v16 + 20) == 1) && ((v15 & 0xFFFFFFFE) != 2 || v330 == 12))
            {
              v18 = *v287;
              if (*v287)
              {
                v19 = strlen(*v287);
                *&v338 = 0;
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v18, &v18[v19]);
              }

              else
              {
                *&v338 = 0;
              }

              if (*v12)
              {
                v20 = strlen(*v12);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, *v12, &(*v12)[v20]);
              }

              else if (*(&v338 + 1) < v338)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v21 = strlen(__s);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, __s, &__s[v21]);
              v22 = *(v16 + v270);
              if (v22)
              {
                v23 = strlen(*(v16 + v270));
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v22, &v22[v23]);
              }

              else if (*(&v338 + 1) < v338)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v24 = v253;
              v25 = v250;
              if (!*(v12 + 12))
              {
                v25 = v253;
                v24 = 0;
              }

              v325 = v24;
              v26 = v25 + (v330 == 1);
              if (v330 != 1)
              {
                v25 = 0;
              }

              v318 = v25;
              v27 = *(v304 + 2);
              if (v27 == 1)
              {
                v31 = v26 + 2;
                v32 = v26 + 3;
                v30 = 0;
                if (v311 == 2)
                {
                  v28 = 0;
                  v29 = 0;
                }

                else
                {
                  v28 = v26 + 4;
                  v29 = v26 + 3;
                  v32 = v26 + 5;
                }
              }

              else
              {
                if (v27)
                {
                  v30 = 0;
                  v28 = 0;
                  v29 = 0;
                  v32 = v26 + 1;
                  v31 = v26;
                }

                else
                {
                  if (v311 == 2)
                  {
                    v28 = 0;
                  }

                  else
                  {
                    v28 = v26 + 1;
                  }

                  if (v311 == 2)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = v26;
                  }

                  if (v311 == 2)
                  {
                    v30 = v26;
                  }

                  else
                  {
                    v30 = v26 + 2;
                  }

                  v31 = v30 + 2;
                  v32 = v30 + 3;
                }

                v26 = 0;
              }

              v33 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v338);
              *(v33 + 8) = v330;
              *(v33 + 12) = v311;
              *(v33 + 16) = 0;
              *(v33 + 20) = v17;
              *(v33 + 24) = 1;
              *(v33 + 28) = 0;
              v7 = v276;
              *(v33 + 36) = v276;
              *(v33 + 37) = v32 + 1;
              *(v33 + 38) = 256;
              *(v33 + 40) = 0;
              *(v33 + 41) = v258;
              *(v33 + 42) = v264;
              *(v33 + 43) = v29;
              *(v33 + 44) = v28;
              *(v33 + 45) = v30;
              *(v33 + 46) = v26;
              *(v33 + 47) = 0;
              *(v33 + 48) = v325;
              *(v33 + 49) = v318;
              *(v33 + 50) = 0;
              *(v33 + 54) = v31;
              *(v33 + 55) = v32;
              *(v33 + 56) = 0;
              *(v33 + 60) = 1;
              *(v33 + 61) = 0;
              v12 = v293;
            }

            ++v15;
            v16 += 3;
          }

          while (v15 != 9);
          v304 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_texture_subtypes + 2 * v248;
          __s = *v304;
          v13 = 1;
          v14 = 2;
        }

        while ((v246 & 1) == 0);
      }

      v4 = v244 + 16;
    }

    while (v244 != 96);
    v3 = v240 + 1;
  }

  while (v240 != 3);
  do
  {
    v34 = 0;
    v225 = v3;
    v277 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v3];
    v288 = *(v277 + 12);
    v35 = 8;
    if (!*(v277 + 12))
    {
      v35 = 0;
    }

    v229 = v35;
    do
    {
      v226 = v34;
      v36 = &AGCLLVMUserObject::air_image_dims + v34;
      v282 = *(&AGCLLVMUserObject::air_image_dims + v34 + 8);
      if (!v288 || v282 != 3)
      {
        v231 = 1;
        v235 = &AGCLLVMUserObject::air_image_dims + v34;
        do
        {
          v37 = 0;
          v38 = 1;
          v236 = &unk_20E75F419;
          v237 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes;
          do
          {
            v228 = v38;
            v39 = 0;
            v227 = v37;
            v40 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
            do
            {
              v232 = v39;
              if (!v288)
              {
                if ((v39 & 0xFFFFFFFE) == 2)
                {
                  goto LABEL_137;
                }

LABEL_75:
                v41 = *(v277 + 2);
                if (v230)
                {
                  if (v41 == 2 && (v231 & 1) != 0)
                  {
                    v331 = (v40 + 2);
                    v251 = (v40 + v229);
                    v42 = 1;
                    v43 = 1;
                    v44 = (v282 & 0xFFFFFFFD) != 0;
                    v45 = 1;
                    goto LABEL_82;
                  }

                  v44 = 0;
                  v43 = (v41 & 0xFFFFFFFE) == 2;
                  v331 = (v40 + 2);
                  v42 = v41 != 3;
                  v251 = (v40 + v229);
                  if (v41 == 2)
                  {
                    v45 = v231;
LABEL_82:
                    v46 = 2;
                    v249 = 1;
LABEL_83:
                    v47 = 0;
                    v48 = v46 + v288;
                    if (!v288)
                    {
                      v46 = 0;
                    }

                    v245 = v46;
                    v49 = v48 + 2;
                    if (v282 != 2)
                    {
                      v49 = v48 + 1;
                    }

                    v243 = v49;
                    v247 = v48;
                    if (v282 == 2)
                    {
                      v50 = v48 + 1;
                    }

                    else
                    {
                      v50 = 0;
                    }

                    v241 = v50;
                    v51 = 1;
                    v239 = (v45 & 1) == 0;
                    v271 = *(v277 + 2);
                    v238 = v41 == 3;
                    v326 = v45 & 1;
                    v294 = 1;
                    __sa = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
                    v259 = v43;
                    v265 = v44;
                    v254 = v42;
                    while (2)
                    {
                      v234 = v51;
                      v233 = v47;
                      v52 = &off_277E21138;
                      v53 = 3;
                      v54 = &unk_20E75F419;
LABEL_92:
                      if ((v43 || *v331 != 6) && (v42 & *(v52 - 4) & 1) == 0)
                      {
                        v55 = *v277;
                        if (*v277)
                        {
                          v56 = strlen(*v277);
                          *&v338 = 0;
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v55, &v55[v56]);
                        }

                        else
                        {
                          *&v338 = 0;
                        }

                        if (v326)
                        {
                          if (*v36)
                          {
                            v57 = (*v36 + strlen(*v36));
                            v58 = *v36;
                            goto LABEL_107;
                          }

                          if (*(&v338 + 1) < v338)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }
                        }

                        else
                        {
                          if (v36[12])
                          {
                            v58 = "2d_ms_array";
                          }

                          else
                          {
                            v58 = "2d_ms";
                          }

                          v59 = 5;
                          if (v36[12])
                          {
                            v59 = 11;
                          }

                          v57 = &v58[v59];
LABEL_107:
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v58, v57);
                        }

                        v60 = strlen(v236);
                        llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v236, &v236[v60]);
                        v61 = strlen(v54);
                        llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v54, &v54[v61]);
                        v62 = *(__sa + 1);
                        if (v62)
                        {
                          v63 = strlen(*(__sa + 1));
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v62, &v62[v63]);
                        }

                        else if (*(&v338 + 1) < v338)
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod();
                        }

                        if (*v251)
                        {
                          v64 = strlen(*v251);
                          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, *v251, &(*v251)[v64]);
                          v65 = v338;
                        }

                        else
                        {
                          v65 = v338;
                          if (*(&v338 + 1) < v338)
                          {
                            llvm::SmallVectorBase<unsigned long long>::grow_pod();
                          }
                        }

                        v66 = v36[12] + v243;
                        if (v36[12])
                        {
                          v67 = v243;
                        }

                        else
                        {
                          v67 = 0;
                        }

                        v319 = v67;
                        v68 = v66 + v239;
                        v69 = v66 + v239 + v238;
                        if (v271 != 3)
                        {
                          v68 = 0;
                        }

                        v312 = v68;
                        if (v44)
                        {
                          v70 = v66 + v239 + v238;
                        }

                        else
                        {
                          v70 = 0;
                        }

                        if (v326)
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = v36[12] + v243;
                        }

                        v305 = v71;
                        v72 = v69 + v44;
                        v73 = v69 + v44 + v326;
                        if (v326)
                        {
                          v74 = v72;
                        }

                        else
                        {
                          v74 = 0;
                        }

                        v75 = *(v52 - 2);
                        v76 = *v331;
                        v77 = *(v237 + 2);
                        v78 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v65);
                        *(v78 + 8) = v271;
                        *(v78 + 12) = v282;
                        *(v78 + 16) = v294;
                        *(v78 + 20) = v76;
                        *(v78 + 24) = v77;
                        *(v78 + 28) = 0;
                        *(v78 + 32) = v75;
                        *(v78 + 36) = v288;
                        *(v78 + 37) = v73 + 1;
                        *(v78 + 38) = 0;
                        *(v78 + 39) = v249;
                        *(v78 + 40) = 0;
                        *(v78 + 41) = v245;
                        *(v78 + 42) = v247;
                        *(v78 + 43) = 0;
                        *(v78 + 44) = v70;
                        *(v78 + 45) = 0;
                        *(v78 + 47) = v74;
                        *(v78 + 48) = v319;
                        *(v78 + 49) = 0;
                        *(v78 + 50) = v305;
                        v36 = v235;
                        *(v78 + 51) = v312;
                        *(v78 + 52) = v241;
                        *(v78 + 53) = 0;
                        *(v78 + 55) = v73;
                        v43 = v259;
                        v44 = v265;
                        *(v78 + 56) = 0;
                        *(v78 + 60) = 1;
                        *(v78 + 61) = 0;
                        v42 = v254;
                      }

                      v79 = *v52;
                      v52 += 2;
                      v54 = v79;
                      if (!--v53)
                      {
                        __sa = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v234;
                        v294 = *__sa;
                        v47 = 1;
                        v51 = 2;
                        if (v233)
                        {
                          goto LABEL_137;
                        }

                        continue;
                      }

                      goto LABEL_92;
                    }
                  }

                  v46 = 1;
                  v249 = 0;
                }

                else
                {
                  v44 = 0;
                  v249 = 0;
                  v43 = (v41 & 0xFFFFFFFE) == 2;
                  v331 = (v40 + 2);
                  v42 = v41 != 3;
                  v251 = (v40 + v229);
                  v46 = 1;
                }

                v45 = v231;
                goto LABEL_83;
              }

              if (v39 & 0xFFFFFFFE) != 2 && (*(v40 + 20))
              {
                goto LABEL_75;
              }

LABEL_137:
              v39 = v232 + 1;
              v40 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v232 + 3];
            }

            while (v232 != 8);
            v237 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v228;
            v236 = *v237;
            v37 = 1;
            v38 = 2;
          }

          while ((v227 & 1) == 0);
          v80 = (v282 == 1) & v231;
          v231 = 0;
        }

        while ((v80 & 1) != 0);
      }

      v34 = v226 + 16;
    }

    while (v226 != 96);
    v3 = v225 + 1;
  }

  while (v225 != 7);
  v81 = 0;
  do
  {
    v255 = v81;
    v82 = &AGCLLVMUserObject::air_image_dims + v81;
    v83 = *(&AGCLLVMUserObject::air_image_dims + v81 + 8);
    __sb = v83 == 1;
    v306 = v83;
    if (v83 == 2)
    {
      v84 = 4;
    }

    else
    {
      v84 = 3;
    }

    v295 = v84;
    if (v83 == 2)
    {
      v85 = 3;
    }

    else
    {
      v85 = 0;
    }

    v289 = v85;
    v313 = 1;
    do
    {
      v86 = 0;
      v87 = 1;
      v320 = &unk_20E75F419;
      do
      {
        v266 = v87;
        v88 = 0;
        v260 = v86;
        v89 = ".v4f32";
        v90 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
        do
        {
          v272 = v88;
          v91 = 0;
          v92 = *(v90 + 4);
          v93 = 1;
          v327 = 1;
          v332 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
          do
          {
            v283 = v93;
            v278 = v91;
            v94 = &off_277E21138;
            v95 = 3;
            v96 = &unk_20E75F419;
            do
            {
              if (v92 == 6 || (*(v94 - 4) & 1) != 0)
              {
                goto LABEL_179;
              }

              *&v338 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, "air.block_read_texture_", "");
              if (v313)
              {
                if (!*v82)
                {
                  if (*(&v338 + 1) < v338)
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod();
                  }

                  goto LABEL_168;
                }

                v97 = (*v82 + strlen(*v82));
                v98 = *v82;
              }

              else
              {
                if (v82[12])
                {
                  v98 = "2d_ms_array";
                }

                else
                {
                  v98 = "2d_ms";
                }

                v99 = 5;
                if (v82[12])
                {
                  v99 = 11;
                }

                v97 = &v98[v99];
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v98, v97);
LABEL_168:
              v100 = strlen(v320);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v320, &v320[v100]);
              v101 = strlen(v96);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v96, &v96[v101]);
              v102 = *(v332 + 1);
              if (v102)
              {
                v103 = strlen(*(v332 + 1));
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v102, &v102[v103]);
              }

              else if (*(&v338 + 1) < v338)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v104 = strlen(v89);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v89, &v89[v104]);
              if (v82[12])
              {
                v105 = v295;
              }

              else
              {
                v105 = 0;
              }

              v106 = v82[12] + v295 + __sb;
              v107 = v82;
              if (v306 == 1)
              {
                v108 = v82[12] + v295;
              }

              else
              {
                v108 = 0;
              }

              v109 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v338);
              *(v109 + 8) = 12;
              *(v109 + 12) = v306;
              *(v109 + 16) = v327;
              *(v109 + 20) = v92;
              *(v109 + 24) = 1;
              *(v109 + 28) = 0;
              *(v109 + 36) = 1;
              *(v109 + 37) = v106 + 5;
              *(v109 + 38) = 256;
              *(v109 + 42) = 2;
              *(v109 + 44) = v108;
              v82 = v107;
              *(v109 + 45) = 0;
              *(v109 + 47) = v106;
              *(v109 + 48) = v105;
              *(v109 + 53) = 0;
              *(v109 + 49) = 0;
              v110 = vadd_s16(vdup_n_s16(v106), 0x4000300020001);
              *(v109 + 55) = vuzp1_s8(v110, v110).u32[0];
              *(v109 + 59) = v289;
              *(v109 + 60) = 1;
              *(v109 + 61) = 0;
LABEL_179:
              v111 = *v94;
              v94 += 2;
              v96 = v111;
              --v95;
            }

            while (v95);
            v332 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v283;
            v327 = *v332;
            v91 = 1;
            v93 = 2;
          }

          while ((v278 & 1) == 0);
          v88 = v272 + 1;
          v90 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v272 + 3];
          v89 = *v90;
        }

        while (v272 != 8);
        v320 = *(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v266);
        v86 = 1;
        v87 = 2;
      }

      while ((v260 & 1) == 0);
      v112 = (v306 == 1) & v313;
      v313 = 0;
    }

    while ((v112 & 1) != 0);
    v81 = v255 + 16;
  }

  while (v255 != 96);
  v113 = 9;
  v114 = v230;
  do
  {
    v115 = 0;
    v252 = v113;
    v116 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v113];
    v117 = *(v116 + 2);
    v307 = v116;
    v118 = *(v116 + 12);
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    if (v118)
    {
      v120 = 2;
    }

    else
    {
      v120 = 0;
    }

    v284 = v120;
    v279 = v119 + 1;
    v290 = v119;
    v273 = v119 + 2;
    v261 = (v118 & 1 | (v117 == 5)) == 0;
    v267 = v118 | (v117 == 5);
    do
    {
      v256 = v115;
      v121 = (&AGCLLVMUserObject::air_image_dims + v115);
      v314 = *(&AGCLLVMUserObject::air_image_dims + v115 + 8);
      if ((v314 - 1) <= 1)
      {
        v122 = 0;
        v123 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
        do
        {
          v124 = *(v123 + 4);
          if (v124 != 6 && (v117 != 5 || *(v123 + 20) == 1) && ((v122 & 0xFFFFFFFE) != 2 || v117 == 12))
          {
            v125 = *v307;
            if (*v307)
            {
              v126 = strlen(*v307);
              *&v338 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v125, &v125[v126]);
            }

            else
            {
              *&v338 = 0;
            }

            if (*v121)
            {
              v127 = strlen(*v121);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, *v121, &(*v121)[v127]);
            }

            else if (*(&v338 + 1) < v338)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            v128 = v123[v117 == 5];
            if (v128)
            {
              v129 = strlen(v123[v117 == 5]);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v128, &v128[v129]);
              v130 = v338;
            }

            else
            {
              v130 = v338;
              if (*(&v338 + 1) < v338)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }
            }

            v131 = v279;
            v132 = v273;
            if (!*(v121 + 12))
            {
              v132 = v279;
              v131 = 0;
            }

            v333 = v131;
            v133 = v132 + (v117 == 5);
            if (v117 != 5)
            {
              v132 = 0;
            }

            v328 = v132;
            v134 = v133 + 2;
            if (v314 == 2)
            {
              v135 = 0;
            }

            else
            {
              v135 = v133 + 1;
            }

            if (v314 == 2)
            {
              v136 = 0;
            }

            else
            {
              v136 = v133;
            }

            if (v314 == 2)
            {
              v134 = v133;
            }

            v137 = v134 + v261;
            if (v267)
            {
              v134 = 0;
            }

            v321 = v134;
            v138 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v130);
            *(v138 + 8) = v117;
            *(v138 + 12) = v314;
            *(v138 + 16) = 0;
            *(v138 + 20) = v124;
            *(v138 + 24) = 1;
            *(v138 + 36) = 0;
            *(v138 + 28) = 0;
            *(v138 + 37) = v137 + 1;
            *(v138 + 38) = 256;
            *(v138 + 40) = 0;
            *(v138 + 41) = v284;
            *(v138 + 42) = v290;
            *(v138 + 43) = v136;
            *(v138 + 44) = v135;
            *(v138 + 47) = 0;
            *(v138 + 45) = 0;
            *(v138 + 48) = v333;
            *(v138 + 49) = v328;
            *(v138 + 50) = 0;
            *(v138 + 52) = 0;
            *(v138 + 53) = v321;
            *(v138 + 55) = v137;
            *(v138 + 56) = 0;
            *(v138 + 60) = 0;
            *(v138 + 61) = 0;
            v114 = v230;
          }

          ++v122;
          v123 += 3;
        }

        while (v122 != 9);
      }

      v115 = v256 + 16;
    }

    while (v256 != 96);
    v113 = v252 + 1;
  }

  while (v252 != 12);
  v139 = 0;
  do
  {
    v140 = 0;
    v257 = v139;
    v322 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v113];
    v141 = *(v322 + 2);
    v315 = v114 & (v141 == 2);
    if (v315)
    {
      v142 = 2;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142 + 2;
    if (v141 != 3)
    {
      v143 = v142 + 1;
    }

    v308 = v142;
    if (v141 == 3)
    {
      v144 = v142 + 1;
    }

    else
    {
      v144 = 0;
    }

    v296 = v144;
    __sc = v143;
    v291 = v143 + 1;
    v145 = 1;
    v146 = &unk_20E75F419;
    v329 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes;
    do
    {
      v268 = v145;
      v147 = 0;
      v262 = v140;
      v148 = ".v4f32";
      v334 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
      do
      {
        v274 = v147;
        if ((v147 & 0xFFFFFFFE) != 2 || v141 == 12)
        {
          v150 = 0;
          v151 = 1;
          v152 = 1;
          v153 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
          do
          {
            v285 = v151;
            v280 = v150;
            v154 = &off_277E21138;
            v155 = 3;
            v156 = &unk_20E75F419;
            do
            {
              if (*(v154 - 4) != 1 || v141 == 3)
              {
                v158 = *v322;
                if (*v322)
                {
                  v159 = strlen(*v322);
                  *&v338 = 0;
                  llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v158, &v158[v159]);
                }

                else
                {
                  *&v338 = 0;
                }

                v160 = strlen(v146);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v146, &v146[v160]);
                v161 = strlen(v156);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v156, &v156[v161]);
                v162 = *(v153 + 1);
                if (v162)
                {
                  v163 = strlen(*(v153 + 1));
                  llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v162, &v162[v163]);
                }

                else if (*(&v338 + 1) < v338)
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

                v164 = strlen(v148);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v148, &v148[v164]);
                v165 = *(v154 - 2);
                v166 = *(v334 + 4);
                v167 = *(v329 + 2);
                v168 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v338);
                *(v168 + 8) = v141;
                *(v168 + 12) = 1;
                *(v168 + 16) = v152;
                *(v168 + 20) = v166;
                *(v168 + 24) = v167;
                *(v168 + 28) = 0;
                *(v168 + 32) = v165;
                *(v168 + 36) = 0;
                *(v168 + 37) = v291;
                *(v168 + 38) = 0;
                *(v168 + 39) = v315;
                *(v168 + 40) = 0;
                *(v168 + 42) = v308;
                *(v168 + 43) = 0;
                *(v168 + 51) = v296;
                *(v168 + 54) = 0;
                *(v168 + 52) = 0;
                *(v168 + 55) = __sc;
                *(v168 + 56) = 0;
                *(v168 + 60) = 1;
                *(v168 + 62) = 1;
              }

              v169 = *v154;
              v154 += 2;
              v156 = v169;
              --v155;
            }

            while (v155);
            v153 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v285;
            v152 = *v153;
            v150 = 1;
            v151 = 2;
          }

          while ((v280 & 1) == 0);
        }

        v147 = v274 + 1;
        v334 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v274 + 3];
        v148 = *v334;
      }

      while (v274 != 8);
      v329 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coherence_modes + 2 * v268;
      v146 = *v329;
      v140 = 1;
      v145 = 2;
    }

    while ((v262 & 1) == 0);
    v139 = 1;
    v113 = 14;
    v114 = v230;
  }

  while ((v257 & 1) == 0);
  v170 = 0;
  v171 = ".v4f32";
  v172 = AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types;
  do
  {
    v309 = v170;
    v173 = 0;
    v174 = 1;
    v175 = 1;
    v176 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
    do
    {
      v323 = v174;
      v316 = v173;
      v177 = 0x10u;
      v178 = &unk_20E75F419;
      do
      {
        *&v338 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, "air.block_read_texture_buffer_1d", "");
        v179 = strlen(v178);
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v178, &v178[v179]);
        v180 = *(v176 + 1);
        if (v180)
        {
          v181 = strlen(*(v176 + 1));
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v180, &v180[v181]);
        }

        else if (*(&v338 + 1) < v338)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v182 = strlen(v171);
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v171, &v171[v182]);
        v183 = *(v172 + 4);
        v184 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v338);
        *(v184 + 8) = 12;
        *(v184 + 16) = v175;
        *(v184 + 20) = v183;
        *(v184 + 24) = 1;
        *(v184 + 28) = 0;
        *(v184 + 36) = 16779009;
        *(v184 + 40) = 0;
        *(v184 + 42) = 2;
        *(v184 + 51) = 0;
        *(v184 + 43) = 0;
        *(v184 + 55) = 100992003;
        *(v184 + 59) = 256;
        v178 = *(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::rounding_modes + v177);
        v177 += 16;
      }

      while (v177 != 64);
      v176 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types + 16 * v323;
      v175 = *v176;
      v173 = 1;
      v174 = 2;
    }

    while ((v316 & 1) == 0);
    v170 = v309 + 1;
    v172 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::res_types[3 * v309 + 3];
    v171 = *v172;
  }

  while (v309 != 8);
  v185 = 16;
  do
  {
    v335 = v185;
    v186 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::sample_function_types)[2 * v185];
    v187 = *(v186 + 12);
    v188 = &byte_277E21294;
    v189 = 112;
    do
    {
      v190 = *(v188 - 1);
      if (v190 == 3)
      {
        v191 = v187;
      }

      else
      {
        v191 = 0;
      }

      if (v190 && (v191 & 1) == 0)
      {
        v192 = *v186;
        if (*v186)
        {
          v193 = strlen(*v186);
          *&v338 = 0;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v192, &v192[v193]);
        }

        else
        {
          *&v338 = 0;
        }

        v194 = *(v188 - 12);
        if (v194)
        {
          v195 = strlen(*(v188 - 12));
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v194, &v194[v195]);
          v196 = v338;
          v197 = v303;
        }

        else
        {
          v196 = v338;
          if (*(&v338 + 1) < v338)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v197 = v303;
        }

        v198 = *(v186 + 2);
        v199 = *v188;
        v200 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v197, v337, v196);
        *(v200 + 8) = v198;
        *(v200 + 12) = v190;
        *(v200 + 16) = 0;
        *(v200 + 24) = 1;
        *(v200 + 36) = 0;
        *(v200 + 28) = 0;
        *(v200 + 37) = 4;
        *(v200 + 39) = 1;
        *(v200 + 40) = 0;
        *(v200 + 42) = 2;
        *(v200 + 47) = 0;
        *(v200 + 43) = 0;
        *(v200 + 48) = v199;
        *(v200 + 53) = 0;
        *(v200 + 49) = 0;
        *(v200 + 55) = 3;
        *(v200 + 56) = 0;
        *(v200 + 60) = 0;
        *(v200 + 61) = 0;
      }

      v188 += 16;
      v189 -= 16;
    }

    while (v189);
    v185 = v335 + 1;
  }

  while (v335 != 19);
  v201 = 1;
  do
  {
    v202 = 0;
    v263 = v201;
    v9 = (v201 & 1) == 0;
    v203 = &packed_pixel_data_types;
    if (!v9)
    {
      v203 = &pixel_data_types;
    }

    v292 = v203;
    v275 = *v203;
    do
    {
      v204 = 0;
      v269 = v202;
      v205 = (&AGCLLVMUserObject::air_image_dims + v202);
      v206 = 1;
      __sd = ".i16";
      v310 = &AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types;
      do
      {
        v286 = v206;
        v281 = v204;
        if (v275)
        {
          v207 = 0;
          v317 = v275;
          v324 = v292;
          do
          {
            v297 = v207;
            v208 = &off_277E21138;
            v209 = 3;
            v210 = &unk_20E75F419;
            do
            {
              *&v338 = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, "air.write_imageblock_slice_to_texture_", "");
              if (*v205)
              {
                v211 = strlen(*v205);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, *v205, &(*v205)[v211]);
              }

              else if (*(&v338 + 1) < v338)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              v212 = strlen(v210);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v210, &v210[v212]);
              if (*(v310 + 2) == 4)
              {
                v213 = strlen(__sd);
                llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, __sd, &__sd[v213]);
              }

              v214 = strlen(v317);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v337, v317, &v317[v214]);
              v215 = *(v205 + 2);
              if (v215 == 2)
              {
                v216 = 7;
              }

              else
              {
                v216 = 6;
              }

              if (v215 == 2)
              {
                v217 = 6;
              }

              else
              {
                v217 = 0;
              }

              v336 = v217;
              v218 = v216 + *(v205 + 12);
              v219 = v205;
              if (*(v205 + 12))
              {
                v220 = v216;
              }

              else
              {
                v220 = 0;
              }

              v221 = *(v324 + 2);
              v222 = *(v208 - 2);
              v223 = *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(v303, v337, v338);
              *(v223 + 8) = 8;
              *(v223 + 12) = v215;
              *(v223 + 16) = 0xA00000001;
              *(v223 + 24) = 1;
              *(v223 + 28) = v221;
              *(v223 + 32) = v222;
              *(v223 + 37) = v218 + 3;
              *(v223 + 38) = 0x10000;
              *(v223 + 42) = 5;
              *(v223 + 43) = 0;
              *(v223 + 47) = v218;
              *(v223 + 48) = v220;
              v205 = v219;
              *(v223 + 51) = 0;
              *(v223 + 49) = 0;
              *(v223 + 52) = v336;
              *(v223 + 53) = 0;
              *(v223 + 55) = v218 + 2;
              *(v223 + 56) = 0;
              *(v223 + 60) = 0;
              *(v223 + 61) = v218 + 1;
              *(v223 + 62) = 0;
              v224 = *v208;
              v208 += 2;
              v210 = v224;
              *(v223 + 36) = 0;
              --v209;
            }

            while (v209);
            v207 = v297 + 1;
            v324 = &v292[2 * (v297 + 1)];
            v317 = *v324;
          }

          while (*v324);
        }

        v310 = &(&AGCLLVMUserObject::initializeSampleFunctionMap(BOOL)::coord_types)[2 * v286];
        __sd = *v310;
        v204 = 1;
        v206 = 2;
      }

      while ((v281 & 1) == 0);
      v202 = v269 + 16;
    }

    while (v269 != 96);
    v201 = 0;
  }

  while ((v263 & 1) != 0);
  if (v337 != v339)
  {
    free(v337);
  }
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 65, 8);
  v11 = v10;
  v12 = v10 + 64;
  if (a3)
  {
    memcpy((v10 + 64), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t AGCCodeGenServiceCreateInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LLVMAGXRuntimeMajorVersion();
  if (v6 == 1)
  {
    AGCEnv::load(v6);
    v9 = *(a1 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 8);
    }

    if (v9)
    {
      AGCEnv::deserialize(a1);
    }

    {
      if (Value)
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }
    }

    if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("USE_MONOLITHIC_COMPILER", v8)) == 0 || *Value == 48 || (Value = atoi(Value), !Value))
    {
      {
        if (Value)
        {
          AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        }
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1)
      {
        Value = AGCEnv::getValue("MTL_MONOLITHIC_COMPILER", v8);
      }
    }

    AGCLLVMCtx::initialize(Value);
    operator new();
  }

  return 0;
}

uint64_t MTLCompilerCreate(const std::string::value_type *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = (a1 + 12);
  std::string::basic_string[abi:nn200100](__dst, (a1 + 12), v5);
  std::string::basic_string[abi:nn200100](__p, v7 + v5, v6);
  v8 = (v5 + v6 + 12);
  memset(&v11, 0, sizeof(v11));
  if (a2 > v8)
  {
    std::string::append(&v11, &a1[v8], a2 - v8);
  }

  Internal = AGCCodeGenServiceCreateInternal(&v11, v4, 2, __p, __dst);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(__dst[0]);
  }

  return Internal;
}

void AGCEnv::load(AGCEnv *this)
{
  v52[20] = *MEMORY[0x277D85DE8];
  {
    if (this)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
    return;
  }

  OSLog = AGCEnv::getOSLog(this);
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v50) = 136315138;
    *(&v50 + 4) = "load";
    _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", &v50, 0xCu);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "/System/Library/PrivateFrameworks/AGXCompilerCore.framework/EnvVars.txt");
  v52[6] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  v52[0] = MEMORY[0x277D82858] + 64;
  v4 = MEMORY[0x277D82808];
  v5 = *(MEMORY[0x277D82808] + 16);
  *&v50 = *(MEMORY[0x277D82808] + 8);
  *&v51[*(v50 - 24) - 16] = v5;
  *(&v50 + 1) = 0;
  v6 = &v51[*(v50 - 24) - 16];
  std::ios_base::init(v6, v51);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *&v50 = v2;
  v52[0] = v3;
  MEMORY[0x20F331B50](v51);
  v7 = std::filebuf::open();
  if (!v7)
  {
    std::ios_base::clear(&v51[*(v50 - 24) - 16], *&v51[*(v50 - 24) + 16] | 4);
  }

  v8 = *&v51[*(v50 - 24) + 16] & 5;
  v9 = AGCEnv::getOSLog(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20E4E1000, v9, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
    }

    goto LABEL_51;
  }

  if (v10)
  {
    v37 = __p;
    if (v42 < 0)
    {
      v37 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v37;
    _os_log_debug_impl(&dword_20E4E1000, v9, OS_LOG_TYPE_DEBUG, "Reading environment variables from '%s'", buf, 0xCu);
  }

  AGCEnv::getEnvLookup(v10);
  memset(&__str, 0, sizeof(__str));
  v11 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc(&v51[*(v50 - 24) - 16]);
    v12 = std::locale::use_facet(buf, v11);
    v13 = (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(buf);
    v14 = std::getline[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v50, &__str, v13);
    if ((v51[*(v50 - 24) + 16] & 5) != 0)
    {
      break;
    }

    v15 = std::string::find(&__str, 61, 0);
    if (v15 == -1)
    {
      v22 = AGCEnv::getOSLog(0xFFFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_20E4E1000, v22, OS_LOG_TYPE_DEBUG, "Skipped line with no '=' character in EnvVars.txt", buf, 2u);
      }
    }

    else
    {
      v16 = v15;
      std::string::basic_string(&v39, &__str, 0, v15, buf);
      std::string::basic_string(&v38, &__str, v16 + 1, 0xFFFFFFFFFFFFFFFFLL, buf);
      AGCEnv::trim(&v39);
      v17 = AGCEnv::trim(&v38);
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v39.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v19 = 0;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v39;
        }

        else
        {
          v20 = v39.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v21 = strcmp(AGCEnv::getStatusVariables(unsigned long *)::status_vars[v19], v20);
          if (!v21)
          {
            break;
          }

          if (++v19 == 46)
          {
            v27 = AGCEnv::getOSLog(v21);
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_43;
            }

            if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &v39;
            }

            else
            {
              v28 = v39.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = v28;
            v24 = v27;
            v25 = "Read unknown variable from EnvVars.txt: %s";
            v26 = 12;
            goto LABEL_42;
          }
        }

        *buf = &v39;
        v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v39.__r_.__value_.__l.__data_, buf);
        v30 = std::string::operator=((v29 + 7), &v38);
        v31 = AGCEnv::getOSLog(v30);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v32 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v39;
        }

        else
        {
          v33 = v39.__r_.__value_.__r.__words[0];
        }

        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v39.__r_.__value_.__l.__size_;
        }

        v34 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        v35 = &v38;
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v38.__r_.__value_.__l.__size_;
          v35 = v38.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v33;
        v44 = 2048;
        v45 = v32;
        v46 = 2080;
        v47 = v35;
        v48 = 2048;
        v49 = v34;
        v24 = v31;
        v25 = "%s[%zu] = %s[%zu]\n";
        v26 = 42;
      }

      else
      {
        v23 = AGCEnv::getOSLog(v17);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v24 = v23;
        v25 = "Skipped line with empty variable name in EnvVars.txt";
        v26 = 2;
      }

LABEL_42:
      _os_log_debug_impl(&dword_20E4E1000, v24, OS_LOG_TYPE_DEBUG, v25, buf, v26);
LABEL_43:
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }
  }

  v36 = AGCEnv::getOSLog(v14);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20E4E1000, v36, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_51:
  *&v50 = *v4;
  *&v51[*(v50 - 24) - 16] = v4[3];
  MEMORY[0x20F331B60](v51);
  std::istream::~istream();
  MEMORY[0x20F331D40](v52);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }
}

void std::vector<std::unique_ptr<llvm::AGX::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AGCLLVMCtx::AGCLLVMCtx(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, __int128 *a6, std::string::size_type i)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a2;
  *(a1 + 40) = a5;
  llvm::AGX::AGXCompiler::AGXCompiler();
  *(a1 + 160) = xmmword_20E70C6B0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 176;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = a1 + 352;
  *(a1 + 344) = 0x400000000;
  *(a1 + 480) = a1 + 496;
  *(a1 + 488) = 0x400000000;
  *(a1 + 624) = a1 + 640;
  *(a1 + 632) = 0x400000000;
  *(a1 + 768) = a1 + 784;
  *(a1 + 776) = 0x400000000;
  *(a1 + 912) = a1 + 928;
  *(a1 + 920) = 0x400000000;
  *(a1 + 1056) = a1 + 1072;
  *(a1 + 1064) = 0x400000000;
  *(a1 + 1200) = a1 + 1216;
  *(a1 + 1208) = 0x400000000;
  *(a1 + 1344) = a1 + 1360;
  *(a1 + 1352) = 0x400000000;
  *(a1 + 1488) = a1 + 1504;
  *(a1 + 1496) = 0x400000000;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) = 0x2000000000;
  llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::AnalysisManager();
}

void AGCPrinterFactory::Get(AGCPrinterFactory *this)
{
  {
    if (v1)
    {
      AGCPrinterFactory::AGCPrinterFactory(v1, v2);
    }
  }
}

void AGCPrinterFactory::AGCPrinterFactory(AGCPrinterFactory *this, const char *a2)
{
  AGCPrinterFactory::Get(void)::instance = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
LABEL_5:
    LODWORD(Value) = 0;
    goto LABEL_6;
  }

  Value = AGCEnv::getValue("AGC_STATUS_FILE_MAX_SIZE_IN_BYTES", a2);
  if (Value)
  {
    if (*Value != 48)
    {
      LODWORD(Value) = atoi(Value);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  dword_27C8D81BC = Value;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v4 = AGCEnv::isEnabled(void)::is_internal == 1 && (v3 = AGCEnv::getValue("AGC_ENABLE_STATUS_FILE", a2)) != 0 && *v3 != 48 && atoi(v3) != 0;
  byte_27C8D81C0 = v4;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v6 = AGCEnv::isEnabled(void)::is_internal == 1 && (v5 = AGCEnv::getValue("AGC_ENABLE_STATUS_FILE_STDERR", a2)) != 0 && *v5 != 48 && atoi(v5) != 0;
  byte_27C8D81C1 = v6;
}

void GetAGCPrinterFactoryMutex(void)
{
  {
    __cxa_atexit(MEMORY[0x277D82690], &GetAGCPrinterFactoryMutex(void)::m, &dword_20E4E1000);
  }
}

void GetTargetPrinterCache(void)
{
  {
    GetTargetPrinterCache(void)::cache = 0u;
    *&qword_27C8D82A0 = 0u;
    dword_27C8D82B0 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,std::shared_ptr<AGCTargetPrinter>>::~unordered_map[abi:nn200100], &GetTargetPrinterCache(void)::cache, &dword_20E4E1000);
  }
}

uint64_t AGCTargetPrinter::AGCTargetPrinter(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &AGCPrinterFactory::Get(void)::instance;
  AGCTargetPrinter::printMessage(a1, "Running LLVM version %d (and AGC version %d.%d.%d).", 32023, 2, 0, 1);
  std::string::basic_string[abi:nn200100]<0>(&v10, "Active environment variable values:\n");
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    for (i = 0; i != 46; ++i)
    {
      v5 = AGCEnv::getStatusVariables(unsigned long *)::status_vars[i];
      Value = AGCEnv::getValue(v5, v3);
      if (Value)
      {
        v7 = Value;
        std::string::append(&v10, v5);
        std::string::append(&v10, "=");
        std::string::append(&v10, v7);
        std::string::append(&v10, "\n");
      }
    }
  }

  v8 = &v10;
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v10.__r_.__value_.__r.__words[0];
  }

  AGCTargetPrinter::printMessage(a1, "%s", v8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return a1;
}

void AGCTargetPrinter::printMessage(AGCTargetPrinter *this, const char *a2, ...)
{
  va_start(va, a2);
  if (AGCTargetPrinter::isValidToPrintMessage(this))
  {
    __s = 0;
    vasprintf(&__s, a2, va);
    v4 = strlen(__s);
    v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, __s, v4);
    v7 = 10;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, &v7, 1);
    std::ostream::flush();
    free(__s);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeTextureAndSamplerFunctionMaps(void)::$_0 &&>>()
{
  v139[8] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::initializeSampleFunctionMap(0);
  AGCLLVMUserObject::initializeSampleFunctionMap(1);
  AGCLLVMUserObject::getDimensionFunctionMap(v0);
  v1 = 0;
  v137 = v139;
  v138 = xmmword_20E70C500;
  do
  {
    v2 = 0;
    v126 = v1;
    v3 = &(&AGCLLVMUserObject::initializeDimensionFunctionMap(void)::dim_funcs)[2 * v1];
    v4 = *(v3 + 2);
    do
    {
      v5 = &(&AGCLLVMUserObject::air_image_dims)[v2];
      if (v4 != 3)
      {
        if (v4 == 2 && *(v5 + 2) != 3)
        {
          goto LABEL_32;
        }

LABEL_8:
        v6 = *(v5 + 2);
        v7 = 1;
        while (1)
        {
          if (v7)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }

          if (v4 == v8)
          {
            goto LABEL_27;
          }

          v9 = *v3;
          if (*v3)
          {
            v10 = strlen(*v3);
            *&v138 = 0;
            llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v9, &v9[v10]);
            if ((v7 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            *&v138 = 0;
            if ((v7 & 1) == 0)
            {
LABEL_18:
              if (*(v5 + 12))
              {
                v12 = "2d_ms_array";
              }

              else
              {
                v12 = "2d_ms";
              }

              if (*(v5 + 12))
              {
                v13 = 11;
              }

              else
              {
                v13 = 5;
              }

              v11 = &v12[v13];
              goto LABEL_25;
            }
          }

          if (!*v5)
          {
            if (*(&v138 + 1) < v138)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            goto LABEL_26;
          }

          v11 = &(*v5)[strlen(*v5)];
          v12 = *v5;
LABEL_25:
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v12, v11);
LABEL_26:
          v14 = *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(v137, v138);
          *(v14 + 12) = v4;
          *(v14 + 16) = 0;
LABEL_27:
          v15 = (v6 == 1) & v7;
          v7 = 0;
          if ((v15 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      if (*(v5 + 12) == 1)
      {
        goto LABEL_8;
      }

LABEL_32:
      v2 += 2;
    }

    while (v2 != 14);
    v1 = v126 + 1;
  }

  while (v126 != 10);
  *&v138 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_width_texture_buffer_1d", "");
  v16 = *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(v137, v138);
  *(v16 + 12) = 0;
  *(v16 + 16) = 1;
  v17 = v137;
  if (v137 != v139)
  {
    free(v137);
  }

  v137 = v139;
  v138 = xmmword_20E70C500;
  AGCLLVMUserObject::getTextureFenceFunctionSet(v17);
  for (i = 0; i != 14; i += 2)
  {
    v19 = &(&AGCLLVMUserObject::air_image_dims)[i];
    v20 = (&AGCLLVMUserObject::air_image_dims)[i + 1];
    v21 = 1;
    do
    {
      *&v138 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.fence_texture_", "");
      if ((v21 & 1) == 0)
      {
        if (*(v19 + 12))
        {
          v23 = "2d_ms_array";
        }

        else
        {
          v23 = "2d_ms";
        }

        if (*(v19 + 12))
        {
          v24 = 11;
        }

        else
        {
          v24 = 5;
        }

        v22 = &v23[v24];
        goto LABEL_48;
      }

      if (*v19)
      {
        v22 = &(*v19)[strlen(*v19)];
        v23 = *v19;
LABEL_48:
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v23, v22);
        goto LABEL_49;
      }

      if (*(&v138 + 1) < v138)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

LABEL_49:
      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, v137, v138);
      v25 = (v20 == 1) & v21;
      v21 = 0;
    }

    while ((v25 & 1) != 0);
  }

  *&v138 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.fence_texture_", "");
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "buffer_1d", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureFenceFunctionSet(void)::texturefence_function_set, v137, v138);
  v26 = v137;
  if (v137 != v139)
  {
    free(v137);
  }

  v137 = v139;
  v138 = xmmword_20E70C500;
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v26);
  for (j = 0; j != 16; ++j)
  {
    *&v138 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.is_null_", "");
    v28 = strlen(air_texture_types[j]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, air_texture_types[j], &air_texture_types[j][v28]);
    v29 = llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set, v137, v138);
  }

  AGCLLVMUserObject::getGetNullTextureFunctionSet(v29);
  for (k = 0; k != 16; ++k)
  {
    *&v138 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_null_", "");
    v31 = strlen(air_texture_types[k]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, air_texture_types[k], &air_texture_types[k][v31]);
    llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getGetNullTextureFunctionSet(void)::get_null_texture_function_set, v137, v138);
  }

  v32 = v137;
  if (v137 != v139)
  {
    free(v137);
  }

  v137 = v139;
  v138 = xmmword_20E70C500;
  AGCLLVMUserObject::getUniqueIDFunctionSet(v32);
  *&v138 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_unique_identifier.p1", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v137, v138);
  *&v138 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_unique_identifier.p2", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v137, v138);
  for (m = 0; m != 16; ++m)
  {
    *&v138 = 0;
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_unique_identifier_", "");
    v34 = strlen(air_texture_types[m]);
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, air_texture_types[m], &air_texture_types[m][v34]);
    llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v137, v138);
  }

  *&v138 = 0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "air.get_unique_identifier_", "");
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, "sampler", "");
  llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, v137, v138);
  v35 = v137;
  if (v137 != v139)
  {
    free(v137);
  }

  v137 = v139;
  v138 = xmmword_20E70C500;
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v35);
  v36 = 0;
  do
  {
    std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_load_explicit_");
    __s = off_277E21710[v36];
    v37 = std::string::append(&v133, __s);
    __p = *v37;
    v37->__r_.__value_.__r.__words[0] = 0;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    v125 = v36;
    for (n = 0; n != 4; ++n)
    {
      v39 = off_277E21698[n];
      v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v42 = strlen(off_277E21698[n]);
      std::string::basic_string[abi:nn200100](&v133, size + v42);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v133;
      }

      else
      {
        v43 = v133.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v43, p_p, size);
      }

      v45 = v43 + size;
      if (v42)
      {
        memmove(v45, v39, v42);
      }

      v45[v42] = 0;
      v46 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v133;
      }

      else
      {
        v47 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v133.__r_.__value_.__l.__size_;
      }

      *&v138 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v47, v47 + v46);
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
    }

    std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_store_explicit_");
    v48 = std::string::append(&v133, __s);
    v49 = v48->__r_.__value_.__r.__words[0];
    v135.__r_.__value_.__r.__words[0] = v48->__r_.__value_.__l.__size_;
    *(v135.__r_.__value_.__r.__words + 7) = *(&v48->__r_.__value_.__r.__words[1] + 7);
    v50 = HIBYTE(v48->__r_.__value_.__r.__words[2]);
    v48->__r_.__value_.__r.__words[0] = 0;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v49;
    __p.__r_.__value_.__l.__size_ = v135.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v135.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v50;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    for (ii = 0; ii != 4; ++ii)
    {
      v52 = off_277E21698[ii];
      if ((v50 & 0x80u) == 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = __p.__r_.__value_.__l.__size_;
      }

      v54 = strlen(off_277E21698[ii]);
      std::string::basic_string[abi:nn200100](&v133, v53 + v54);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &v133;
      }

      else
      {
        v55 = v133.__r_.__value_.__r.__words[0];
      }

      if (v53)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &__p;
        }

        else
        {
          v56 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v55, v56, v53);
      }

      v57 = v55 + v53;
      if (v54)
      {
        memmove(v57, v52, v54);
      }

      v57[v54] = 0;
      v58 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v133;
      }

      else
      {
        v59 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v58 = v133.__r_.__value_.__l.__size_;
      }

      *&v138 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v59, v59 + v58);
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
    }

    std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_exchange_explicit_");
    v60 = std::string::append(&v133, __s);
    v61 = v60->__r_.__value_.__r.__words[0];
    v135.__r_.__value_.__r.__words[0] = v60->__r_.__value_.__l.__size_;
    *(v135.__r_.__value_.__r.__words + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
    v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
    v60->__r_.__value_.__r.__words[0] = 0;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v61;
    __p.__r_.__value_.__l.__size_ = v135.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v135.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v62;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    for (jj = 0; jj != 4; ++jj)
    {
      v64 = off_277E21698[jj];
      if ((v62 & 0x80u) == 0)
      {
        v65 = v62;
      }

      else
      {
        v65 = __p.__r_.__value_.__l.__size_;
      }

      v66 = strlen(off_277E21698[jj]);
      std::string::basic_string[abi:nn200100](&v133, v65 + v66);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v133;
      }

      else
      {
        v67 = v133.__r_.__value_.__r.__words[0];
      }

      if (v65)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &__p;
        }

        else
        {
          v68 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v67, v68, v65);
      }

      v69 = v67 + v65;
      if (v66)
      {
        memmove(v69, v64, v66);
      }

      v69[v66] = 0;
      v70 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v133;
      }

      else
      {
        v71 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v133.__r_.__value_.__l.__size_;
      }

      *&v138 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v71, v71 + v70);
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
    }

    std::string::basic_string[abi:nn200100]<0>(&v133, "air.atomic_compare_exchange_weak_explicit_");
    v72 = std::string::append(&v133, __s);
    v73 = v72->__r_.__value_.__r.__words[0];
    v135.__r_.__value_.__r.__words[0] = v72->__r_.__value_.__l.__size_;
    *(v135.__r_.__value_.__r.__words + 7) = *(&v72->__r_.__value_.__r.__words[1] + 7);
    v74 = HIBYTE(v72->__r_.__value_.__r.__words[2]);
    v72->__r_.__value_.__r.__words[0] = 0;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v73;
    __p.__r_.__value_.__l.__size_ = v135.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v135.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = v74;
    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v133.__r_.__value_.__l.__data_);
    }

    for (kk = 0; kk != 4; ++kk)
    {
      v76 = off_277E21698[kk];
      if ((v74 & 0x80u) == 0)
      {
        v77 = v74;
      }

      else
      {
        v77 = __p.__r_.__value_.__l.__size_;
      }

      v78 = strlen(off_277E21698[kk]);
      std::string::basic_string[abi:nn200100](&v133, v77 + v78);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v133;
      }

      else
      {
        v79 = v133.__r_.__value_.__r.__words[0];
      }

      if (v77)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &__p;
        }

        else
        {
          v80 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v79, v80, v77);
      }

      v81 = v79 + v77;
      if (v78)
      {
        memmove(v81, v76, v78);
      }

      v81[v78] = 0;
      v82 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v133;
      }

      else
      {
        v83 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v82 = v133.__r_.__value_.__l.__size_;
      }

      *&v138 = 0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v83, v83 + v82);
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
    }

    for (mm = 0; mm != 7; ++mm)
    {
      std::string::basic_string[abi:nn200100]<0>(&v132, "air.atomic_");
      v85 = std::string::append(&v132, off_277E216C8[mm]);
      v86 = v85->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:nn200100]<0>(&v129, "_explicit_");
      if ((v131 & 0x80u) == 0)
      {
        v87 = &v129;
      }

      else
      {
        v87 = v129;
      }

      if ((v131 & 0x80u) == 0)
      {
        v88 = v131;
      }

      else
      {
        v88 = v130;
      }

      v89 = std::string::append(&v135, v87, v88);
      v90 = v89->__r_.__value_.__r.__words[2];
      *&v133.__r_.__value_.__l.__data_ = *&v89->__r_.__value_.__l.__data_;
      v133.__r_.__value_.__r.__words[2] = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      v91 = std::string::append(&v133, __s);
      v92 = v91->__r_.__value_.__r.__words[0];
      v136[0] = v91->__r_.__value_.__l.__size_;
      *(v136 + 7) = *(&v91->__r_.__value_.__r.__words[1] + 7);
      v93 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
      v91->__r_.__value_.__r.__words[0] = 0;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v92;
      __p.__r_.__value_.__l.__size_ = v136[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v136 + 7);
      *(&__p.__r_.__value_.__s + 23) = v93;
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (v131 < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      for (nn = 0; nn != 4; ++nn)
      {
        v95 = off_277E21698[nn];
        if ((v93 & 0x80u) == 0)
        {
          v96 = v93;
        }

        else
        {
          v96 = __p.__r_.__value_.__l.__size_;
        }

        v97 = strlen(off_277E21698[nn]);
        std::string::basic_string[abi:nn200100](&v133, v96 + v97);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = &v133;
        }

        else
        {
          v98 = v133.__r_.__value_.__r.__words[0];
        }

        if (v96)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = &__p;
          }

          else
          {
            v99 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v98, v99, v96);
        }

        v100 = v98 + v96;
        if (v97)
        {
          memmove(v100, v95, v97);
        }

        v100[v97] = 0;
        v101 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v133;
        }

        else
        {
          v102 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v101 = v133.__r_.__value_.__l.__size_;
        }

        *&v138 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v102, v102 + v101);
        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
      }
    }

    v103 = 0;
    v104 = 1;
    do
    {
      v127 = v104;
      std::string::basic_string[abi:nn200100]<0>(&v132, "air.atomic_");
      v105 = std::string::append(&v132, off_277E21700[v103]);
      v106 = v105->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v105->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v106;
      v105->__r_.__value_.__l.__size_ = 0;
      v105->__r_.__value_.__r.__words[2] = 0;
      v105->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:nn200100]<0>(&v129, "_explicit_");
      if ((v131 & 0x80u) == 0)
      {
        v107 = &v129;
      }

      else
      {
        v107 = v129;
      }

      if ((v131 & 0x80u) == 0)
      {
        v108 = v131;
      }

      else
      {
        v108 = v130;
      }

      v109 = std::string::append(&v135, v107, v108);
      v110 = v109->__r_.__value_.__r.__words[2];
      *&v133.__r_.__value_.__l.__data_ = *&v109->__r_.__value_.__l.__data_;
      v133.__r_.__value_.__r.__words[2] = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      v111 = std::string::append(&v133, __s);
      v112 = v111->__r_.__value_.__r.__words[0];
      v136[0] = v111->__r_.__value_.__l.__size_;
      *(v136 + 7) = *(&v111->__r_.__value_.__r.__words[1] + 7);
      v113 = HIBYTE(v111->__r_.__value_.__r.__words[2]);
      v111->__r_.__value_.__r.__words[0] = 0;
      v111->__r_.__value_.__l.__size_ = 0;
      v111->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v112;
      __p.__r_.__value_.__l.__size_ = v136[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v136 + 7);
      *(&__p.__r_.__value_.__s + 23) = v113;
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (v131 < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      v114 = 0;
      v115 = 1;
      do
      {
        v116 = v115;
        v117 = off_277E216B8[v114];
        if ((v113 & 0x80u) == 0)
        {
          v118 = v113;
        }

        else
        {
          v118 = __p.__r_.__value_.__l.__size_;
        }

        v119 = strlen(v117);
        std::string::basic_string[abi:nn200100](&v133, v118 + v119);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v120 = &v133;
        }

        else
        {
          v120 = v133.__r_.__value_.__r.__words[0];
        }

        if (v118)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v121 = &__p;
          }

          else
          {
            v121 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v120, v121, v118);
        }

        v122 = v120 + v118;
        if (v119)
        {
          memmove(v122, v117, v119);
        }

        v122[v119] = 0;
        v123 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v124 = &v133;
        }

        else
        {
          v124 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v123 = v133.__r_.__value_.__l.__size_;
        }

        *&v138 = 0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v137, v124, v124 + v123);
        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v133.__r_.__value_.__l.__data_);
        }

        llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, v137, v138);
        v115 = 0;
        v114 = 1;
      }

      while ((v116 & 1) != 0);
      v104 = 0;
      v103 = 1;
    }

    while ((v127 & 1) != 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = v125 + 1;
  }

  while (v125 != 7);
  if (v137 != v139)
  {
    free(v137);
  }
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E5E0) = qword_28117E5E0 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_28117E5DC;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<llvm::NoneType,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v7 = *a1;
  v8 = *(*a1 + 8 * result);
  if (v8)
  {
    if (v8 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v9 = result;
  v10 = MEMORY[0x20F330650](a3 + 9, 8);
  v11 = v10;
  v12 = v10 + 8;
  if (a3)
  {
    memcpy((v10 + 8), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v7 + 8 * v9) = v11;
  *v11 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
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

uint64_t *AGCLLVMTargetConfig::createTargetConfig(uint64_t a1)
{
  v1 = 0;
  if (a1 > 0x18u)
  {
    if (a1 > 0x1Fu)
    {
      if (a1 > 0x22u)
      {
        if (a1 == 35 || a1 == 38)
        {
          {
            v43 = a1;
            LODWORD(a1) = v43;
            if (v44)
            {
              AGCLLVMG17GA0TargetConfig::AGCLLVMG17GA0TargetConfig();
              __cxa_atexit(AGCLLVMG17GA0TargetConfig::~AGCLLVMG17GA0TargetConfig, &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0, &dword_20E4E1000);
              LODWORD(a1) = v43;
            }
          }

          {
            v45 = a1;
            LODWORD(a1) = v45;
            if (v46)
            {
              AGCLLVMG18PA0TargetConfig::AGCLLVMG18PA0TargetConfig();
              __cxa_atexit(AGCLLVMG18PA0TargetConfig::~AGCLLVMG18PA0TargetConfig, &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0, &dword_20E4E1000);
              LODWORD(a1) = v45;
            }
          }

          if (a1 == 65574)
          {
            return &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0;
          }

          else
          {
            return &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0;
          }
        }

        return v1;
      }

      if (a1 == 32 || a1 == 34)
      {
        {
          v37 = a1;
          LODWORD(a1) = v37;
          if (v38)
          {
            AGCLLVMG16GA0TargetConfig::AGCLLVMG16GA0TargetConfig();
            __cxa_atexit(AGCLLVMG16GA0TargetConfig::~AGCLLVMG16GA0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0, &dword_20E4E1000);
            LODWORD(a1) = v37;
          }
        }

        {
          v39 = a1;
          LODWORD(a1) = v39;
          if (v40)
          {
            AGCLLVMG16GB0TargetConfig::AGCLLVMG16GB0TargetConfig();
            __cxa_atexit(AGCLLVMG16GB0TargetConfig::~AGCLLVMG16GB0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0, &dword_20E4E1000);
            LODWORD(a1) = v39;
          }
        }

        {
          v41 = a1;
          LODWORD(a1) = v41;
          if (v42)
          {
            AGCLLVMG17PA0TargetConfig::AGCLLVMG17PA0TargetConfig();
            __cxa_atexit(AGCLLVMG17PA0TargetConfig::~AGCLLVMG17PA0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0, &dword_20E4E1000);
            LODWORD(a1) = v41;
          }
        }

        if (a1 == 196640)
        {
          v1 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0;
        }

        else
        {
          v1 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0;
        }

        v2 = 65570;
        v3 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0;
        goto LABEL_53;
      }
    }

    else
    {
      if (a1 - 25 < 3)
      {
        goto LABEL_27;
      }

      if (a1 == 31)
      {
        {
          v47 = a1;
          LODWORD(a1) = v47;
          if (v48)
          {
            AGCLLVMG16PA0TargetConfig::AGCLLVMG16PA0TargetConfig();
            __cxa_atexit(AGCLLVMG16PA0TargetConfig::~AGCLLVMG16PA0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0, &dword_20E4E1000);
            LODWORD(a1) = v47;
          }
        }

        {
          v49 = a1;
          LODWORD(a1) = v49;
          if (v50)
          {
            AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0, 196639);
            __cxa_atexit(AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0, &dword_20E4E1000);
            LODWORD(a1) = v49;
          }
        }

        v2 = 262175;
        {
          v51 = a1;
          v2 = 262175;
          v52 = a1;
          LODWORD(a1) = v51;
          if (v52)
          {
            AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1, 262175);
            __cxa_atexit(AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1, &dword_20E4E1000);
            v2 = 262175;
            LODWORD(a1) = v51;
          }
        }

        v1 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0;
        if (a1 == 196639)
        {
          v1 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0;
        }

        v3 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1;
LABEL_53:
        if (a1 == v2)
        {
          return v3;
        }
      }
    }

    return v1;
  }

  if (a1 <= 0x12u)
  {
    if (a1 - 17 < 2)
    {
      goto LABEL_82;
    }

    if (a1 != 14 && a1 != 16)
    {
      return v1;
    }

LABEL_27:
    {
      v5 = a1;
      LODWORD(a1) = v5;
      if (v6)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0, 65550);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0 = &unk_2825B03B8;
        dword_27C8D8744 = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0, &dword_20E4E1000);
        LODWORD(a1) = v5;
      }
    }

    {
      v7 = a1;
      LODWORD(a1) = v7;
      if (v8)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0, 65552);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0 = &unk_2825B03B8;
        dword_27C8D8854 = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0, &dword_20E4E1000);
        LODWORD(a1) = v7;
      }
    }

    {
      v9 = a1;
      LODWORD(a1) = v9;
      if (v10)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0, 196622);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0 = &unk_2825B03B8;
        dword_27C8D86BC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0, &dword_20E4E1000);
        LODWORD(a1) = v9;
      }
    }

    {
      v11 = a1;
      LODWORD(a1) = v11;
      if (v12)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0, 196624);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0 = &unk_2825B03B8;
        dword_27C8D87CC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0, &dword_20E4E1000);
        LODWORD(a1) = v11;
      }
    }

    {
      v13 = a1;
      LODWORD(a1) = v13;
      if (v14)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0, 65561);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0 = &unk_2825B03B8;
        dword_27C8DA9DC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0, &dword_20E4E1000);
        LODWORD(a1) = v13;
      }
    }

    {
      v15 = a1;
      LODWORD(a1) = v15;
      if (v16)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0, 65562);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0 = &unk_2825B03B8;
        dword_27C8DAA6C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0, &dword_20E4E1000);
        LODWORD(a1) = v15;
      }
    }

    {
      v17 = a1;
      LODWORD(a1) = v17;
      if (v18)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0, 65563);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0 = &unk_2825B03B8;
        dword_27C8DAAFC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0, &dword_20E4E1000);
        LODWORD(a1) = v17;
      }
    }

    {
      v19 = a1;
      LODWORD(a1) = v19;
      if (v20)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0, 196633);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0 = &unk_2825B03B8;
        dword_27C8DAB8C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0, &dword_20E4E1000);
        LODWORD(a1) = v19;
      }
    }

    {
      v21 = a1;
      LODWORD(a1) = v21;
      if (v22)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0, 196634);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0 = &unk_2825B03B8;
        dword_27C8DAC1C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0, &dword_20E4E1000);
        LODWORD(a1) = v21;
      }
    }

    {
      v23 = a1;
      LODWORD(a1) = v23;
      if (v24)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0, 196635);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0 = &unk_2825B03B8;
        dword_27C8DACAC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0, &dword_20E4E1000);
        LODWORD(a1) = v23;
      }
    }

    v1 = &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0;
    if (a1 <= 196621)
    {
      if (a1 > 65561)
      {
        if (a1 == 65562)
        {
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0;
        }

        else if (a1 == 65563)
        {
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0;
        }
      }

      else if (a1 == 65552)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0;
      }

      else if (a1 == 65561)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0;
      }
    }

    else if (a1 <= 196632)
    {
      if (a1 == 196622)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0;
      }

      else if (a1 == 196624)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x30019:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0;
        case 0x3001A:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0;
        case 0x3001B:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0;
      }
    }

    return v1;
  }

  if (a1 - 19 < 3)
  {
    {
      v25 = a1;
      LODWORD(a1) = v25;
      if (v26)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0, 65555);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0 = &unk_2825B1558;
        dword_27C8DAD3C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0, &dword_20E4E1000);
        LODWORD(a1) = v25;
      }
    }

    {
      v27 = a1;
      LODWORD(a1) = v27;
      if (v28)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0, 196627);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0 = &unk_2825B1558;
        dword_27C8DADCC = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0, &dword_20E4E1000);
        LODWORD(a1) = v27;
      }
    }

    {
      v29 = a1;
      LODWORD(a1) = v29;
      if (v30)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0, 65556);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0 = &unk_2825B1558;
        dword_27C8DAE5C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0, &dword_20E4E1000);
        LODWORD(a1) = v29;
      }
    }

    {
      v31 = a1;
      LODWORD(a1) = v31;
      if (v32)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0, 196628);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0 = &unk_2825B1558;
        dword_27C8DAEEC = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0, &dword_20E4E1000);
        LODWORD(a1) = v31;
      }
    }

    {
      v33 = a1;
      LODWORD(a1) = v33;
      if (v34)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0, 65557);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0 = &unk_2825B1558;
        dword_27C8DAF7C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0, &dword_20E4E1000);
        LODWORD(a1) = v33;
      }
    }

    {
      v35 = a1;
      LODWORD(a1) = v35;
      if (v36)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0, 196629);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0 = &unk_2825B1558;
        dword_27C8DB00C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0, &dword_20E4E1000);
        LODWORD(a1) = v35;
      }
    }

    v1 = &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0;
    if (a1 <= 196626)
    {
      if (a1 == 65556)
      {
        return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0;
      }

      else if (a1 == 65557)
      {
        return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x30015:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0;
        case 0x30014:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0;
        case 0x30013:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0;
      }
    }

    return v1;
  }

  if (a1 != 22)
  {
    if (a1 != 24)
    {
      return v1;
    }

    goto LABEL_85;
  }

  if (a1 != 196630)
  {
LABEL_85:

    return AGCLLVMCreateG15TargetConfig(a1);
  }

  LODWORD(a1) = 196625;
LABEL_82:

  return AGCLLVMCreateG14TargetConfig(a1);
}