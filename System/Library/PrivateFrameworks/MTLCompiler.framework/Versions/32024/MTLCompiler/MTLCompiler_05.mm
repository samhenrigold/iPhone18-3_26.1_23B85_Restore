uint64_t llvm::IRBuilderBase::CreateBr(unsigned int **this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = llvm::BranchInst::Create(a2, 0, a3);
  v7 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v4, v6);
}

uint64_t MTLMemoryCheckPass::getActualResourceUsageForPtr(llvm::ConstantInt **this, unsigned int **a2, llvm::ConstantInt **a3, BOOL a4)
{
  result = llvm::ConstantInt::get();
  if ((*(*(this[8] + 9) + 24) & 2) != 0)
  {
    v34[0] = "index";
    v35 = 259;
    v8 = llvm::ConstantInt::get();
    LShr = llvm::IRBuilderBase::CreateLShr(a2, a3, v8, v34, 0);
    v34[0] = "byteIndex";
    v35 = 259;
    v10 = llvm::ConstantInt::get();
    v11 = llvm::IRBuilderBase::CreateLShr(a2, LShr, v10, v34, 0);
    v35 = 257;
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateAnd(a2, LShr, v12, v34);
    v33 = 257;
    v14 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl(a2, v13, v14, v32, 0, 0);
    v16 = this[12];
    v30 = "bitIndex";
    v31 = 259;
    Cast = llvm::IRBuilderBase::CreateCast(a2, 38, Shl, v16, &v30);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(this[8]);
    v19 = *(inserted + 3);
    v35 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v19, inserted, 0, 0, v34);
    v21 = this[8];
    Name = llvm::Value::getName(inserted);
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v21, Name, v23);
    v35 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP(a2, GVBaseType, AlignedLoad, v11, v34);
    v26 = *(GEP + 72);
    v34[0] = "bufferUsageByteEntry";
    v35 = 259;
    v27 = llvm::IRBuilderBase::CreateAlignedLoad(a2, v26, GEP, 0, 0, v34);
    v35 = 257;
    v28 = llvm::IRBuilderBase::CreateLShr(a2, v27, Cast, v34, 0);
    v32[0] = "actualResourceUsage";
    v33 = 259;
    v29 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateAnd(a2, v28, v29, v32);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::ReturnInst **this, llvm::Value *a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], a2, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::ReturnInst **this, uint64_t a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], 0, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

uint64_t llvm::BranchInst::setSuccessor(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result - 32 * a2;
  v5 = *(v3 - 32);
  v4 = v3 - 32;
  if (v5)
  {
    v6 = *(v4 + 8);
    **(v4 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v4 + 16);
    }
  }

  *v4 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v4 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v4 + 8;
    }

    *(v4 + 16) = v7;
    *v7 = v4;
  }

  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x21604B430](v5, this, a2);
  return v5;
}

void *llvm::SmallVector<unsigned long,6u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C2E328(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *llvm::SmallVectorImpl<unsigned long>::assign(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1[3] < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Instruction *,true>::growAndAssign(a1, a2, a3);
  }

  v3 = *a1;
  v4 = a1[2];
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1[2];
  }

  if (v5)
  {
    v6 = 0;
    v7 = (v5 + 1) & 0x1FFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_213C7D090)));
      if (v10.i8[0])
      {
        *(v9 - 1) = a3;
      }

      if (v10.i8[4])
      {
        *v9 = a3;
      }

      v6 += 2;
      v9 += 2;
    }

    while (v7 != v6);
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 8 * v4 + 8);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_213C7D090)));
      if (v15.i8[0])
      {
        *(v14 - 1) = a3;
      }

      if (v15.i8[4])
      {
        *v14 = a3;
      }

      v12 += 2;
      v14 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  a1[2] = a2;
  return a1;
}

uint64_t llvm::raw_svector_ostream::raw_svector_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D82200] + 16;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(a1 + 16) = v4;
    *a1 = MEMORY[0x21604BA70](v4 << 6, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void LowerOSLogStructPass::~LowerOSLogStructPass(LowerOSLogStructPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL LowerOSLogStructPass::runOnModule(LowerOSLogStructPass *this, llvm::Module *a2)
{
  v83[4] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v58 = Function;
    v3 = *(Function + 8);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 24);
        if (v4 && *(v4 + 16) == 84)
        {
          v71 = llvm::Instruction::getFunction(v4);
          std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *>(&v65, &v71, &v71);
        }

        v3 = *(v3 + 8);
      }

      while (v3);
      for (i = v66; i; i = *i)
      {
        v6 = i[2];
        v64 = v6;
        v7 = *(v6 + 8);
        if (!v7)
        {
LABEL_11:
          if (*(v6 + 18))
          {
            llvm::Function::BuildLazyArguments(v6);
          }

          v71 = *(*(v6 + 88) + 8);
          v72 = 0;
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v81, &v71);
          v78 = v80;
          v79 = 0x400000000;
          v8 = v82;
          if (v82)
          {
            do
            {
              v9 = v81[v8 - 1];
              LODWORD(v82) = v8 - 1;
              if (*(v9 + 16) <= 0x1Bu)
              {
                v10 = 0;
              }

              else
              {
                v10 = v9;
              }

              if (*(v10 + 16) != 84 || v10 == 0)
              {
                llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v78, v10);
                llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v81, *(v9 + 8), 0);
              }

              else
              {
                v12 = llvm::UndefValue::get();
                llvm::CallBase::setArgOperand(v10, 0, v12);
                llvm::CallBase::setArgOperand(v10, 1u, v12);
              }

              v8 = v82;
            }

            while (v82);
            v13 = v78;
            v14 = v79;
          }

          else
          {
            v14 = 0;
            v13 = v80;
          }

          v15 = v13 - 4;
          for (j = 4 * v14; j * 2; j -= 4)
          {
            v17 = *&v15[j];
            llvm::Instruction::eraseFromParent(v17);
          }

          v18 = *(v64 + 3);
          v19 = 24;
          if (*(v64 + 12) == 3)
          {
            v19 = 16;
          }

          v20 = *(*(v18 + 16) + v19);
          v76[0] = &v77;
          v76[1] = 0x400000000;
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v76, v20);
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v76, v20);
          v71 = &v73;
          v72 = 0x800000000;
          v21 = *(v64 + 14);
          v62 = 0;
          v63 = v21;
          llvm::Function::getContext(v64);
          v22 = llvm::AttributeSet::addAttribute();
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v71, v22);
          llvm::Function::getContext(v64);
          v23 = llvm::AttributeSet::addAttribute();
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v71, v23);
          if ((*(v18 + 12) - 3) <= 0xFFFFFFFD)
          {
            v24 = 2;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v76, *(*(v18 + 16) + 8 * v24));
              ParamAttrs = llvm::AttributeList::getParamAttrs(&v63);
              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v71, ParamAttrs);
            }

            while (v24++ < (*(v18 + 12) - 1));
          }

          v27 = llvm::FunctionType::get();
          v28 = *(v64 + 8);
          v60 = 261;
          v59[0] = llvm::Value::getName(v64);
          v59[1] = v29;
          v61 = llvm::Function::Create(v27, v28 & 0xF, v59, 0);
          llvm::SymbolTableListTraits<llvm::Function>::addNodeToList();
        }

        while (*(*(*(v7 + 24) - 32 * (*(*(v7 + 24) + 20) & 0x7FFFFFF)) + 16) == 3)
        {
          v7 = *(v7 + 8);
          if (!v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v30 = v75;
    v71 = v75;
    v72 = v75;
    v73 = 4;
    v74 = 0;
    v31 = v69;
    if (v69)
    {
      do
      {
        v32 = v31[2];
        v33 = *(v32 + 1);
        if (v33)
        {
          v34 = v31[3];
          do
          {
            v35 = *(v33 + 24);
            v33 = *(v33 + 8);
            v36 = *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF));
            if (v36)
            {
              v37 = *(v36 + 16) == 3;
            }

            else
            {
              v37 = 0;
            }

            if (v37)
            {
              llvm::SmallPtrSetImpl<llvm::Instruction *>::insert(&v71, *(v35 - 32 * (*(v35 + 20) & 0x7FFFFFF)), &v81);
              v81 = v83;
              v82 = 0x400000000;
              v38 = *(v36 - 32);
              v39 = *(v38 + 16) != 9 || v38 == 0;
              if (!v39 && *(*v38 + 12))
              {
                v40 = 0;
                do
                {
                  AggregateElement = llvm::Constant::getAggregateElement(v38);
                  llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v81, AggregateElement);
                  ++v40;
                }

                while (v40 < *(*v38 + 12));
              }

              v42 = v35 + 32;
              for (k = 1; ; ++k)
              {
                v44 = llvm::CallBase::arg_end(v35);
                v45 = *(v35 + 20) & 0x7FFFFFF;
                if (k >= ((v44 - (v35 + 32 * -v45)) >> 5))
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v81, *(v42 - 32 * v45));
                v42 += 32;
              }

              v46 = *(v34 + 24);
              v80[8] = 257;
              v47 = llvm::CallInst::Create(v46, v34, v81, v82, &v78, v35);
              v48 = *(v47 + 18) & 0xFFFC;
              if ((*(v35 + 18) & 3u) - 1 < 2)
              {
                ++v48;
              }

              *(v47 + 18) = v48;
              *(v47 + 64) = *(v34 + 112);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::copyMetadata();
              llvm::Instruction::eraseFromParent(v35);
              if (v81 != v83)
              {
                free(v81);
              }
            }

            else
            {
              llvm::Instruction::eraseFromParent(v35);
            }
          }

          while (v33);
        }

        llvm::Function::eraseFromParent(v32);
        v31 = *v31;
      }

      while (v31);
      v30 = v71;
      v49 = v72;
      v51 = v73;
      LODWORD(v50) = HIDWORD(v73);
    }

    else
    {
      LODWORD(v50) = 0;
      v51 = 4;
      v49 = v75;
    }

    if (v49 == v30)
    {
      v50 = v50;
    }

    else
    {
      v50 = v51;
    }

    v52 = v49;
    if (v50)
    {
      v53 = 8 * v50;
      v52 = v49;
      while (*v52 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v52;
        v53 -= 8;
        if (!v53)
        {
          goto LABEL_80;
        }
      }
    }

    v54 = &v49[v50];
    if (v52 != v54)
    {
      do
      {
        v55 = *v52;
        if ((llvm::GlobalValue::isDeclaration(*v52) & 1) == 0)
        {
          v56 = *(v55 - 4);
          llvm::GlobalVariable::setInitializer();
          if (llvm::isSafeToDestroyConstant())
          {
            llvm::Constant::destroyConstant(v56);
          }
        }

        llvm::Constant::removeDeadConstantUsers(v55);
        llvm::GlobalVariable::dropAllReferences(v55);
        llvm::GlobalVariable::eraseFromParent(v55);
        do
        {
          ++v52;
        }

        while (v52 != v54 && *v52 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v52 != v54);
      v30 = v71;
      v49 = v72;
    }

LABEL_80:
    if (v49 != v30)
    {
      free(v49);
    }

    std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v65);
    std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v68);
    Function = v58;
  }

  return Function != 0;
}

void sub_213C2F0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a29);
  _Unwind_Resume(a1);
}

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<llvm::Function *,llvm::Function *>,std::__unordered_map_hasher<llvm::Function *,std::__hash_value_type<llvm::Function *,llvm::Function *>,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,true>,std::__unordered_map_equal<llvm::Function *,std::__hash_value_type<llvm::Function *,llvm::Function *>,std::equal_to<llvm::Function *>,std::hash<llvm::Function *>,true>,std::allocator<std::__hash_value_type<llvm::Function *,llvm::Function *>>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *&,llvm::Function *&>(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

char *deserializeCompilerOutputData(char *result, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v5 = *a3 + 8;
  v6 = *&result[*a3];
  *a3 = v5;
  if (v6)
  {
    v10 = result;
    do
    {
      v11 = *&v10[v5];
      *a3 = v5 + 8;
      v14 = v11;
      v12 = *&v10[v5 + 8];
      *a3 = v5 + 16;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(a4, &v14);
      if (!result || !*(result + 3))
      {
        if (v12)
        {
          v13 = dispatch_data_create(&v10[*a3], v12, 0, 0);
          result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(a5, &v14, &v14, &v13);
        }
      }

      v5 = *a3 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      *a3 = v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t ***std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(void *a1, char *a2, _BYTE *a3, void *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void ConstantGlobalToArgPass::~ConstantGlobalToArgPass(ConstantGlobalToArgPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t ConstantGlobalToArgPass::runOnModule(llvm::DataLayout **this, llvm::Module *a2)
{
  v123[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  v103[0] = 0;
  v103[1] = 0;
  v104 = 0;
  v4 = this[6];
  v109[0] = "air.global_bindings";
  v110[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v4, v109);
  v9 = NamedMetadata;
  if (NamedMetadata)
  {
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      for (i = 0; i != NumOperands; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(v9);
        v13 = Operand - 8 * *(Operand + 8);
        v14 = *(*(v13 + 8) + 128);
        String = llvm::MDString::getString(*(*(v13 + 16) - 8 * *(*(v13 + 16) + 8) + 8));
        if (v6 == 11)
        {
          if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
          {
            continue;
          }

          if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
          {
            continue;
          }
        }

        Name = llvm::Value::getName(v14);
        v122 = v18;
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(v103, &Name, v109);
      }
    }
  }

  Name = v123;
  v122 = 0x800000000;
  v19 = a2 + 8;
  v20 = *(a2 + 2);
  if (v20 == a2 + 8)
  {
    v32 = 0;
    goto LABEL_140;
  }

  do
  {
    if (v20)
    {
      v21 = v20 - 56;
    }

    else
    {
      v21 = 0;
    }

    if (ConstantGlobalToArgPass::shouldConvertGlobal(this, v21))
    {
      v109[0] = v21;
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&Name, v109);
    }

    else if (*(*v21 + 8) == 15 && MTLBoundsCheck::checkAddressSpace(v21))
    {
      v109[0] = llvm::Value::getName(v21);
      v109[1] = v22;
      v116 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v103, v109, &v116) & 1) == 0)
      {
        MTLBoundsCheck::SharedPassData::skipIndirectionDeep(this[8], v21);
      }
    }

    v20 = *(v20 + 1);
  }

  while (v20 != v19);
  if (!v122)
  {
    v32 = 0;
    goto LABEL_140;
  }

  inserted = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(this[8]);
  v118 = 128;
  v116 = MEMORY[0x21604BA70](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(&v116);
  v119[0] = 0;
  v120 = 0;
  if (v122)
  {
    LODWORD(v24) = 0;
    v25 = Name;
    v26 = 8 * v122;
    do
    {
      v113 = *v25;
      v27 = *(v113 + 3);
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v27);
      v109[0] = llvm::DataLayout::getTypeAllocSize(this[7], v27);
      LODWORD(v109[1]) = v29;
      v30 = llvm::TypeSize::operator unsigned long long();
      LODWORD(v105) = (v24 + PrefTypeAlignment - 1) / PrefTypeAlignment * PrefTypeAlignment;
      HIDWORD(v105) = v30 - v24 + v105;
      llvm::SmallVectorImpl<MTLBoundsCheck::ConstantDataHeader>::emplace_back<MTLBoundsCheck::ConstantDataHeader&>(*(this[8] + 8) + 592, &v105);
      v31 = v105;
      *llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::operator[](&v116, &v113) = v31;
      v24 = (HIDWORD(v105) + v24);
      ++v25;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v24 = 0;
  }

  llvm::SmallVectorImpl<unsigned char>::resizeImpl<false>((*(this[8] + 8) + 608), v24);
  v33 = v116;
  v34 = v118;
  if (v117)
  {
    v109[0] = v116;
    v109[1] = &v116[6 * v118];
    llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(v109);
    v35 = *v109;
    v33 = v116;
    v34 = v118;
  }

  else
  {
    v35 = vdupq_n_s64(&v116[6 * v118]);
  }

  v102 = v35;
  v97 = &v33[6 * v34];
LABEL_38:
  if (v102.i64[0] != v97)
  {
    v36 = *(v102.i64[0] + 24);
    v98 = *(v102.i64[0] + 40);
    ConstantGlobalToArgPass::serializeConstantValue(this, *(v36 - 4), v98);
    v109[0] = v36[1];
    v109[1] = 0;
    llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v113, v109);
    while (1)
    {
      while (1)
      {
        if (!v114)
        {
          llvm::GlobalVariable::dropAllReferences(v36);
          llvm::GlobalVariable::eraseFromParent(v36);
          if (v113 != &v115)
          {
            free(v113);
          }

          v102.i64[0] += 48;
          llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(v102.i64);
          goto LABEL_38;
        }

        v37 = *(v113 + --v114);
        v38 = v37[16];
        v39 = v38 <= 0x1B ? 0 : v37;
        v101 = v39;
        if (!v39)
        {
          break;
        }

        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v109, &v101);
        if (*(v101 + 16) == 83 && v101 != 0)
        {
          v41 = *(v101 + 5);
          v42 = v41 & 0x7FFFFFF;
          if ((v41 & 0x7FFFFFF) != 0)
          {
            v43 = 0;
            while (1)
            {
              v44 = v101 - 32 * v42;
              if ((v41 & 0x40000000) != 0)
              {
                v44 = *(v101 - 1);
              }

              if (*&v44[32 * v43] == v36)
              {
                break;
              }

              if (++v43 == v42)
              {
                goto LABEL_132;
              }
            }

            v82 = *&v44[32 * *(v101 + 15) + 8 * v43];
            v83 = *(v82 + 40);
            if (v83 == v82 + 40)
            {
              v86 = 0;
            }

            else
            {
              v84 = (v83 - 24);
              if (v83)
              {
                v85 = v83 - 24;
              }

              else
              {
                v85 = 0;
              }

              if (*(v85 + 16) - 29 >= 0xB)
              {
                v86 = 0;
              }

              else
              {
                v86 = v84;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(v109, v86);
          }
        }

LABEL_132:
        v88 = *(inserted + 3);
        v108 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v109, v88, inserted, 0, 0, &v105);
        v90 = this[8];
        v91 = llvm::Value::getName(inserted);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v90, v91, v92);
        v108 = 257;
        ConstGEP1_32 = llvm::IRBuilderBase::CreateConstGEP1_32(v109, GVBaseType, AlignedLoad, v98, &v105);
        v95 = *v36;
        v108 = 257;
        llvm::IRBuilderBase::CreateCast(v109, 49, ConstGEP1_32, v95, &v105);
        llvm::User::replaceUsesOfWith();
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v112);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v111);
        v87 = v109[0];
        if (v109[0] != v110)
        {
LABEL_133:
          free(v87);
        }
      }

      if (v38 == 5)
      {
        v45 = v37;
      }

      else
      {
        v45 = 0;
      }

      v100 = v45;
      if (v45)
      {
        v109[0] = v110;
        v109[1] = 0x400000000;
        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v109, &v100);
        v46 = LODWORD(v109[1]);
        if (LODWORD(v109[1]))
        {
          v47 = 0;
          do
          {
            v48 = *(*(v109[0] + v47) + 8);
            if (v48)
            {
              do
              {
                v49 = *(v48 + 24);
                if (v49[16] != 5)
                {
                  v49 = 0;
                }

                v105 = v49;
                if (v49)
                {
                  llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v109, &v105);
                }

                v48 = *(v48 + 8);
              }

              while (v48);
              v46 = LODWORD(v109[1]);
            }

            ++v47;
          }

          while (v46 > v47);
          v50 = v109[0];
          if (v46)
          {
            v51 = v109[0] + 8 * v46;
            do
            {
              v53 = *(v51 - 1);
              v51 -= 8;
              v52 = v53;
              v99[0] = *(v53 + 1);
              v99[1] = 0;
              llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v105, v99);
              v54 = v105;
              if (v106)
              {
                v55 = v105 + 8 * v106;
                do
                {
                  v56 = *v54;
                  AsInstruction = llvm::ConstantExpr::getAsInstruction(v100, 0);
                  v99[0] = AsInstruction;
                  v58 = *(v56 + 16);
                  if (v58 != 83 || v56 == 0)
                  {
                    if (v58 < 0x1C || v56 == 0)
                    {
                      llvm::Value::dump(v52);
                      llvm::Value::dump(v56);
                    }

                    else
                    {
                      llvm::Instruction::insertBefore(AsInstruction, v56);
                    }
                  }

                  else
                  {
                    v61 = *(v56 + 20);
                    v62 = v61 & 0x7FFFFFF;
                    if ((v61 & 0x7FFFFFF) != 0)
                    {
                      v63 = 0;
                      v64 = 0;
                      v65 = 32 * v62;
                      v66 = v56 - 32 * v62;
                      while (1)
                      {
                        v67 = v66;
                        if ((v61 & 0x40000000) != 0)
                        {
                          v67 = *(v56 - 8);
                        }

                        if (*(v67 + v64) == v52)
                        {
                          break;
                        }

                        v64 += 32;
                        v63 += 8;
                        if (v65 == v64)
                        {
                          goto LABEL_110;
                        }
                      }

                      v68 = *(v67 + 32 * *(v56 + 60) + v63);
                      v69 = *(v68 + 40);
                      if (v69 == v68 + 40)
                      {
                        v72 = 0;
                      }

                      else
                      {
                        v70 = (v69 - 24);
                        if (v69)
                        {
                          v71 = v69 - 24;
                        }

                        else
                        {
                          v71 = 0;
                        }

                        if (*(v71 + 16) - 29 >= 0xB)
                        {
                          v72 = 0;
                        }

                        else
                        {
                          v72 = v70;
                        }
                      }

                      llvm::Instruction::insertBefore(AsInstruction, v72);
                      v73 = *(v56 + 20);
                      if ((v73 & 0x40000000) != 0)
                      {
                        v74 = *(v56 - 8);
                      }

                      else
                      {
                        v74 = v56 - 32 * (v73 & 0x7FFFFFF);
                      }

                      v75 = v99[0];
                      v76 = v74 + v64;
                      if (*(v74 + v64))
                      {
                        v77 = *(v76 + 8);
                        **(v76 + 16) = v77;
                        if (v77)
                        {
                          *(v77 + 16) = *(v76 + 16);
                        }
                      }

                      *v76 = v75;
                      if (v75)
                      {
                        v80 = *(v75 + 8);
                        v78 = (v75 + 8);
                        v79 = v80;
                        v81 = v74 + v64;
                        *(v81 + 8) = v80;
                        if (v80)
                        {
                          *(v79 + 16) = v81 + 8;
                        }

                        *(v81 + 16) = v78;
                        *v78 = v76;
                      }
                    }
                  }

LABEL_110:
                  llvm::User::replaceUsesOfWith();
                  if (v52 == v100)
                  {
                    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v113, v99);
                  }

                  v54 += 8;
                }

                while (v54 != v55);
                v54 = v105;
              }

              if (v54 != &v107)
              {
                free(v54);
              }
            }

            while (v51 != v50);
            v50 = v109[0];
          }
        }

        else
        {
          v50 = v109[0];
        }

        if (v50 != v110)
        {
          v87 = v50;
          goto LABEL_133;
        }
      }

      else
      {
        llvm::Value::dump(v37);
      }
    }
  }

  if (v120 == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(v119);
    v120 = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap(&v116);
  v32 = 1;
LABEL_140:
  if (Name != v123)
  {
    free(Name);
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::~DenseMap(v103, v6, v7, v8);
  return v32;
}

void sub_213C30450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (*(v55 - 208) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap((v55 - 232));
    *(v55 - 208) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap((v55 - 256));
  v60 = *(v55 - 192);
  if (v60 != a9)
  {
    free(v60);
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::~DenseMap(&a22, v57, v58, v59);
  _Unwind_Resume(a1);
}

uint64_t ConstantGlobalToArgPass::shouldConvertGlobal(ConstantGlobalToArgPass *this, llvm::GlobalVariable *a2)
{
  if ((*(a2 + 33) & 0x1C) != 0)
  {
    return 0;
  }

  if (*(a2 + 80) & 1) == 0 && (llvm::GlobalValue::isDeclaration(a2) & 1) != 0 || (llvm::GlobalValue::isDeclaration(a2))
  {
    return 0;
  }

  result = llvm::Value::hasNUsesOrMore(a2);
  if (result)
  {
    if ((*(a2 + 80) & 2) != 0)
    {
      return 0;
    }

    result = ConstantGlobalToArgPass::shouldConvertType(this, *a2);
    if (!result)
    {
      return result;
    }

    if ((*(a2 + 23) & 0x10) != 0)
    {
      Name = llvm::Value::getName(a2);
      if (v6 >= 0x13)
      {
        v7 = *Name == 0x61735F7269615F5FLL && Name[1] == 0x74735F72656C706DLL;
        if (v7 && *(Name + 11) == 0x65746174735F7265)
        {
          return 0;
        }
      }
    }

    v9 = *(a2 + 1);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 24);
        if (v10 && *(v10 + 16) == 5 && *(v10 + 9) == 49)
        {
          v12 = *v10;
          if (*(v12 + 8) == 15)
          {
            v13 = **(v12 + 16);
            if (*(v13 + 8) == 16)
            {
              if (*(v13 + 24))
              {
                v14 = llvm::StructType::getName(v13);
                if (v15 >= 0x11)
                {
                  v16 = *v14 == 0x5F2E746375727473 && *(v14 + 8) == 0x5F72656C706D6173;
                  if (v16 && *(v14 + 16) == 116)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        v9 = *(v9 + 8);
        result = 1;
        if (!v9)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::ConstantDataHeader>::emplace_back<MTLBoundsCheck::ConstantDataHeader&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

void *llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t *a1, llvm::Value **a2)
{
  llvm::CallbackVH::CallbackVH(&v5, *a2);
  v5 = &unk_282634628;
  v6[3] = a1;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::FindAndConstruct(a1, &v5);
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  return v3 + 5;
}

uint64_t ConstantGlobalToArgPass::serializeConstantValue(llvm::DataLayout **this, llvm::Type **a2, unint64_t a3)
{
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(this[7], *a2);
  v41 = v6;
  v7 = llvm::TypeSize::operator unsigned long long();
  v8 = *(a2 + 16);
  if ((v8 & 0xFE) == 0xE)
  {
    RawDataValues = llvm::ConstantDataSequential::getRawDataValues(a2);
    v11 = v10;
    v12 = (*(*(this[8] + 8) + 608) + a3);
    p_src = RawDataValues;
    v14 = v11;
LABEL_10:
    memcpy(v12, p_src, v14);
    return v7;
  }

  if (v8 == 17)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v41 = v17 == 1;
    llvm::APFloat::bitcastToAPInt((a2 + 3));
    LimitedValue = llvm::APInt::getLimitedValue(&v37, 0xFFFFFFFFFFFFFFFFLL);
    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x21604C970](v37, 0x1000C8000313F17);
    }

    __src = LimitedValue;
    v19 = *(*(this[8] + 8) + 608);
    v14 = llvm::TypeSize::operator unsigned long long();
    v12 = (v19 + a3);
    p_src = &__src;
    goto LABEL_10;
  }

  if (v8 == 16)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v41 = v15 == 1;
    v37 = llvm::APInt::getLimitedValue(a2 + 3, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(*(this[8] + 8) + 608);
    v14 = llvm::TypeSize::operator unsigned long long();
    v12 = (v16 + a3);
    p_src = &v37;
    goto LABEL_10;
  }

  if ((v8 - 11) <= 2)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v41 = v21 == 1;
    v22 = *(*(this[8] + 8) + 608);
    v23 = llvm::TypeSize::operator unsigned long long();
    bzero((v22 + a3), v23);
    return v7;
  }

  if (v8 != 9)
  {
    if ((v8 - 11) < 0xFDu)
    {
      llvm::Value::dump(a2);
      return v7;
    }

    v31 = *a2;
    v32 = *(*a2 + 8);
    if (v32 == 16)
    {
      v33 = *(v31 + 3);
    }

    else
    {
      if (v32 != 17 && v32 != 18)
      {
        v34 = 1;
LABEL_29:
        for (i = 0; i != v34; ++i)
        {
          AggregateElement = llvm::Constant::getAggregateElement(a2);
          a3 += ConstantGlobalToArgPass::serializeConstantValue(this, AggregateElement, a3);
        }

        return v7;
      }

      v33 = *(v31 + 8);
    }

    if (!v33)
    {
      return v7;
    }

    v34 = v33;
    goto LABEL_29;
  }

  v24 = *a2;
  StructLayout = llvm::DataLayout::getStructLayout();
  v26 = *(v24 + 3);
  if (v26)
  {
    v27 = 0;
    v28 = StructLayout + 16;
    do
    {
      v29 = *(v28 + 8 * v27);
      v30 = llvm::Constant::getAggregateElement(a2);
      ConstantGlobalToArgPass::serializeConstantValue(this, v30, v29 + a3);
      ++v27;
    }

    while (v26 != v27);
  }

  return v7;
}

void sub_213C30AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int a12)
{
  if (a12 >= 0x41)
  {
    ConstantGlobalToArgPass::serializeConstantValue(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateConstGEP1_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, const llvm::Twine *a5)
{
  llvm::Type::getInt32Ty(this[8], a2);
  v12 = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, &v12, 1, 0);
  if (!result)
  {
    v11[16] = 257;
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v12, 1, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, char **a2, void ***a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = v4 - 1;
    v8 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue() & (v4 - 1);
    v9 = v6 + 16 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, a2[1], *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = v6 + 16 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, a2[1], *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

uint64_t llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(char *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 + 2 == 0;
  }

  if (__s2 == -1)
  {
    return a1 + 1 == 0;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

void **llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, char **a3, void **a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 16 * v10;
      do
      {
        *result++ = xmmword_213C7D190;
        v11 -= 16;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(uint64_t result, char **a2, char **a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 16 * v6;
    do
    {
      *v7++ = xmmword_213C7D190;
      v8 -= 16;
    }

    while (v8);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v5, a2, &v9);
      *v9 = *a2;
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t ConstantGlobalToArgPass::shouldConvertType(ConstantGlobalToArgPass *this, llvm::Type *a2)
{
  while (1)
  {
    v4 = *(a2 + 2);
    if (v4 != 15)
    {
      break;
    }

    if ((v4 & 0xFE) == 0x12)
    {
      v4 = *(**(a2 + 2) + 8);
    }

    if ((v4 & 0xFFFFFF00) != 0x200)
    {
      return 0;
    }

LABEL_7:
    a2 = **(a2 + 2);
  }

  if (v4 == 17)
  {
    goto LABEL_7;
  }

  if (v4 != 16)
  {
    return 1;
  }

  if (*(a2 + 3))
  {
    Name = llvm::StructType::getName(a2);
    if (v6 >= 0x15)
    {
      v7 = *Name == 0x6D2E746375727473 && Name[1] == 0x61733A3A6C617465;
      if (v7 && *(Name + 13) == 0x72656C706D61733ALL)
      {
        return 0;
      }
    }
  }

  if (!*(a2 + 3))
  {
    return 1;
  }

  v9 = 0;
  do
  {
    result = ConstantGlobalToArgPass::shouldConvertType(this, *(*(a2 + 2) + 8 * v9));
    if ((result & 1) == 0)
    {
      break;
    }

    ++v9;
  }

  while (v9 < *(a2 + 3));
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(uint64_t *a1)
{
  a1[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v7[2] = -4096;
  v8 = 0;
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 48 * v1;
    v4 = (*a1 + 8);
    do
    {
      v5 = llvm::ValueHandleBase::ValueHandleBase(v4, (LODWORD(v7[0]) >> 1) & 3, v7);
      v6 = v5 - 8;
      *(v5 - 1) = &unk_282634628;
      *(v5 + 3) = v8;
      v4 = (v5 + 48);
      v2 += 48;
    }

    while (v6 + 48 != v3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v7);
}

void llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v4, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v3 = &unk_282634628;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v10 = &unk_282634628;
  v12 = v4;
  v7[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(v4, &v10, v7))
  {
    v5 = v7[0];
  }

  else
  {
    v5 = *v4 + 48 * v4[2].u32[0];
  }

  if (*v12 + 48 * v12[2].u32[0] != v5)
  {
    v6 = *(v5 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(v12, v5);
    v8 = a2;
    v9 = v6;
    llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::insert(v12, &v8, v7);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(int32x2_t *a1, uint64_t a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    v7[0] = 2;
    v7[1] = 0;
    v7[2] = -8192;
    v8 = 0;
    v6 = &unk_282634628;
    llvm::ValueHandleBase::operator=((v4 + 1), v7);
    v4[4] = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v7);
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  return v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v17[0] = 2;
    v17[1] = 0;
    v17[2] = -4096;
    v17[3] = 0;
    v16[3] = 0;
    v16[4] = &unk_282634628;
    v16[0] = 2;
    v16[1] = 0;
    v16[2] = -8192;
    v5 = *(a2 + 24);
    v6 = v3 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v3 - 1);
    v8 = v4 + 48 * v7;
    v9 = *(v8 + 24);
    if (v5 == v9)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      v10 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = v4 + 48 * (v15 & v6);
        v9 = *(v8 + 24);
        if (v5 == v9)
        {
          goto LABEL_4;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }

LABEL_4:
    *a3 = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v16);
    llvm::ValueHandleBase::~ValueHandleBase(v17);
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  return v10;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(int32x2_t *a1, uint64_t a2)
{
  v5[0] = 2;
  v5[1] = 0;
  v5[2] = -8192;
  v6 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v5);
  *(a2 + 32) = v6;
  llvm::ValueHandleBase::~ValueHandleBase(v5);
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

double llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::insert@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  llvm::CallbackVH::CallbackVH(&v7, *a2);
  v7 = &unk_282634628;
  v9 = a1;
  llvm::ValueHandleBase::ValueHandleBase(v11, (LODWORD(v8[0]) >> 1) & 3, v8);
  v10 = &unk_282634628;
  v11[3] = v9;
  v12 = *(a2 + 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::try_emplace<unsigned int>(a1, &v10, &v12, &v13);
  llvm::ValueHandleBase::~ValueHandleBase(v11);
  llvm::ValueHandleBase::~ValueHandleBase(v8);
  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v14;
  return result;
}

void sub_213C316E4(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(uint64_t *a1)
{
  v4[0] = 2;
  v4[1] = 0;
  v4[2] = -4096;
  v4[3] = 0;
  v3[3] = 0;
  v3[4] = &unk_282634628;
  v3[0] = 2;
  v3[1] = 0;
  v3[2] = -8192;
  v2 = *a1;
  v1 = a1[1];
  while (v2 != v1 && (*(v2 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v2 += 48;
    *a1 = v2;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v12);
    result = llvm::ValueHandleBase::operator=((v9 + 1), (a2 + 8));
    v9[4] = *(a2 + 32);
    *(v9 + 10) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 48 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  v11[0] = 2;
  v11[1] = 0;
  v11[2] = -4096;
  v11[3] = 0;
  v10 = &unk_282634628;
  if (a4[3] != -4096)
  {
    --*(a1 + 12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  return a4;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x21604BA70](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 48 * v3);

    llvm::deallocate_buffer(v4, (48 * v3));
  }

  else
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  v13[0] = 2;
  v13[1] = 0;
  v14 = -4096;
  v15 = 0;
  v11 = 0;
  v12 = &unk_282634628;
  v9[0] = 2;
  v9[1] = 0;
  v10 = -8192;
  while (a2 != a3)
  {
    v6 = *(a2 + 24);
    if (v6 != v14 && v6 != v10)
    {
      v16 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v16);
      v8 = v16;
      llvm::ValueHandleBase::operator=((v16 + 8), (a2 + 8));
      *(v8 + 32) = *(a2 + 32);
      *(v8 + 40) = *(a2 + 40);
      ++*(a1 + 8);
    }

    llvm::ValueHandleBase::~ValueHandleBase((a2 + 8));
    a2 += 48;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v9);
  llvm::ValueHandleBase::~ValueHandleBase(v13);
}

void sub_213C31B54(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v7);
    llvm::ValueHandleBase::operator=((v5 + 1), (a2 + 8));
    v5[4] = *(a2 + 32);
    *(v5 + 10) = 0;
  }

  return v5;
}

void llvm::SmallVectorImpl<unsigned char>::resizeImpl<false>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (a1[2] < a2)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (a2 != v2)
      {
        bzero((*a1 + v2), a2 - v2);
      }
    }

    a1[1] = a2;
  }
}

uint64_t *llvm::APFloat::bitcastToAPInt(llvm::APFloat *this)
{
  v1 = this + 8;
  v2 = *(this + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {

    return MEMORY[0x2821F55E8](v1);
  }

  else
  {

    return MEMORY[0x2821F5610](v1);
  }
}

uint64_t *llvm::APInt::getLimitedValue(uint64_t ***this, unint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return a2;
    }

    v5 = **this;
  }

  else
  {
    v5 = *this;
  }

  if (v5 <= a2)
  {
    return v5;
  }

  return a2;
}

unsigned int *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap(unsigned int *a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (48 * a1[4]));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v6[0] = 2;
    v6[1] = 0;
    v6[2] = -4096;
    v6[3] = 0;
    v5[3] = 0;
    v5[4] = &unk_282634628;
    v5[0] = 2;
    v5[1] = 0;
    v5[2] = -8192;
    v2 = 48 * v1;
    v3 = (*a1 + 8);
    do
    {
      llvm::ValueHandleBase::~ValueHandleBase(v3);
      v3 = (v4 + 48);
      v2 -= 48;
    }

    while (v2);
    llvm::ValueHandleBase::~ValueHandleBase(v5);
    llvm::ValueHandleBase::~ValueHandleBase(v6);
  }
}

uint64_t AirReflection::LocalAllocation::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LocalAllocation", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 4u);
}

uint64_t AirReflection::Node::node_as_KernelFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 2) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::KernelFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.KernelFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x11u && (v33 = v32[8]) != 0)
  {
    v34 = v33;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v34);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v35 = (a1 - *a1);
  if (*v35 >= 0x13u && (v36 = v35[9]) != 0)
  {
    v37 = v36;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v37);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VisibleFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunction", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    AirReflection::StitchingInfo::HashImpl((a1 + v12 + *(a1 + v12)), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 5) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunction", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 < 0xBu)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[5];
    if (v24)
    {
      LODWORD(v24) = *(a1 + v24);
    }
  }

  data = v24;
  CC_SHA256_Update(c, &data, 4u);
  v25 = (a1 - *a1);
  if (*v25 < 0xDu)
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    v26 = v25[6];
    if (v26)
    {
      LOBYTE(v26) = *(a1 + v26) != 0;
    }
  }

  LOBYTE(data) = v26;
  CC_SHA256_Update(c, &data, 1u);
  v27 = (a1 - *a1);
  if (*v27 < 0xFu)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v27[7];
    if (v28)
    {
      LOBYTE(v28) = *(a1 + v28) != 0;
    }
  }

  LOBYTE(data) = v28;
  CC_SHA256_Update(c, &data, 1u);
  v29 = (a1 - *a1);
  if (*v29 < 0x11u)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v29[8];
    if (v30)
    {
      LOBYTE(v30) = *(a1 + v30) != 0;
    }
  }

  LOBYTE(data) = v30;
  CC_SHA256_Update(c, &data, 1u);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  CC_SHA256_Update(c, &data, 1u);
  v33 = (a1 - *a1);
  if (*v33 < 0x15u)
  {
    LOBYTE(v34) = 0;
  }

  else
  {
    v34 = v33[10];
    if (v34)
    {
      LOBYTE(v34) = *(a1 + v34) != 0;
    }
  }

  LOBYTE(data) = v34;
  CC_SHA256_Update(c, &data, 1u);
  v35 = (a1 - *a1);
  if (*v35 < 0x17u)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v35[11];
    if (v36)
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  LOBYTE(data) = v36;
  CC_SHA256_Update(c, &data, 1u);
  v37 = (a1 - *a1);
  if (*v37 < 0x19u)
  {
    LOBYTE(v38) = 0;
  }

  else
  {
    v38 = v37[12];
    if (v38)
    {
      LOBYTE(v38) = *(a1 + v38) != 0;
    }
  }

  LOBYTE(data) = v38;
  CC_SHA256_Update(c, &data, 1u);
  v39 = (a1 - *a1);
  if (*v39 < 0x1Bu)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v40 = v39[13];
    if (v40)
    {
      LODWORD(v40) = *(a1 + v40);
    }
  }

  data = v40;
  CC_SHA256_Update(c, &data, 4u);
  v41 = (a1 - *a1);
  if (*v41 < 0x1Du)
  {
    LOBYTE(v42) = 0;
  }

  else
  {
    v42 = v41[14];
    if (v42)
    {
      LOBYTE(v42) = *(a1 + v42) != 0;
    }
  }

  LOBYTE(data) = v42;
  CC_SHA256_Update(c, &data, 1u);
  v43 = (a1 - *a1);
  if (*v43 < 0x1Fu)
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    v44 = v43[15];
    if (v44)
    {
      LOBYTE(v44) = *(a1 + v44) != 0;
    }
  }

  LOBYTE(data) = v44;
  CC_SHA256_Update(c, &data, 1u);
  v45 = (a1 - *a1);
  if (*v45 >= 0x21u && (v46 = v45[16]) != 0)
  {
    v47 = v46;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v47);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 6) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshFunction", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_ObjectFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 7) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ObjectFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ObjectFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x11u && (v33 = v32[8]) != 0)
  {
    v34 = v33;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v34);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_CIFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 8) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIFunction", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VecTypeHintFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 4096)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::VecTypeHintFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VecTypeHintFnAttr", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_WorkgroupSizeFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4097) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupSizeFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupSizeFnAttr", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_WorkgroupSizeHintFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4098) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupSizeHintFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupSizeHintFnAttr", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_WorkgroupMaxSizeFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4099) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupMaxSizeFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupMaxSizeFnAttr", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_PatchFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4100) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PatchFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PatchFnAttr", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v12 = *(a1 + v8);
    v9 = &v12;
  }

  else
  {
    v13 = 0;
    v9 = &v13;
  }

  return CC_SHA256_Update(c, v9, 4u);
}

uint64_t AirReflection::Node::node_as_MaxMeshWorkgroupsFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4101) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MaxMeshWorkgroupsFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MaxMeshWorkgroupsFnAttr", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_UserAnnotationFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4102) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserAnnotationFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserAnnotationFnAttr", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_ClipDistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x20000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ClipDistanceRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ClipDistanceRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 < 9u)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = v9[4];
    if (v10)
    {
      LOBYTE(v10) = *(a1 + v10) != 0;
    }
  }

  LOBYTE(data) = v10;
  CC_SHA256_Update(c, &data, 1u);
  v11 = (a1 - *a1);
  if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    p_data = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v17 = c;
    v16 = 4;
  }

  CC_SHA256_Update(v17, p_data, v16);
  v18 = (a1 - *a1);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = (a1 + v19);
    v21 = *v20;
    v22 = (v20 + v21 + 4);
    v23 = *(v20 + v21);
    v24 = c;
  }

  else
  {
    data = 0;
    v22 = &data;
    v24 = c;
    v23 = 4;
  }

  return CC_SHA256_Update(v24, v22, v23);
}

uint64_t AirReflection::Node::node_as_PointSizeRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131073) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PointSizeRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PointSizeRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131075) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetArrayIndexRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetArrayIndexRet", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131077) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ViewportArrayIndexRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ViewportArrayIndexRet", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_DepthRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135169) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthRet", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_StencilRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135170) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StencilRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StencilRet", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_SampleMaskRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135171) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SampleMaskRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SampleMaskRet", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ImageblockDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135172) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockDataRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = (a1 + v24);
    v26 = *v25;
    p_data = (v25 + v26 + 4);
    v28 = *(v25 + v26);
    v29 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v29 = c;
    v28 = 4;
  }

  CC_SHA256_Update(v29, p_data, v28);
  v30 = (a1 - *a1);
  if (*v30 >= 0x15u && (v31 = v30[10]) != 0)
  {
    v32 = (a1 + v31);
    v33 = *v32;
    v34 = (v32 + v33 + 4);
    v35 = *(v32 + v33);
    v36 = c;
  }

  else
  {
    data = 0;
    v34 = &data;
    v36 = c;
    v35 = 4;
  }

  return CC_SHA256_Update(v36, v34, v35);
}

uint64_t AirReflection::Node::node_as_AcceptIntersectionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 139264)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::AcceptIntersectionRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AcceptIntersectionRet", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ContinueSearchRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139265) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ContinueSearchRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ContinueSearchRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_DistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139266) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DistanceRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DistanceRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_MeshPrimitiveDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 143360)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshPrimitiveDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshPrimitiveDataRet", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_MeshVertexDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143361) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshVertexDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshVertexDataRet", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143362) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveCulledRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveCulledRet", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_PrimitiveIDRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143363) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveIDRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveIDRet", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_CIPointerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 147456)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::CIPointerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIPointerRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = *(a1 + v7);
  }

  else
  {
    v8 = 1;
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  return CC_SHA256_Update(v27, p_data, v26);
}

uint64_t AirReflection::Node::node_as_CIStructRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147457) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIStructRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIStructRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    v16 = *(a1 + v6);
    p_data = &v16;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  CC_SHA256_Update(c, p_data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v18 = 0;
    v12 = &v18;
    v14 = c;
    v13 = 4;
  }

  return CC_SHA256_Update(v14, v12, v13);
}

uint64_t AirReflection::Node::node_as_CITextureRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147458) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CITextureRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CITextureRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 < 7u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[3];
    if (v8)
    {
      LODWORD(v8) = *(a1 + v8);
    }
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (a1 + v10);
    v12 = *v11;
    p_data = (v11 + v12 + 4);
    v14 = *(v11 + v12);
    v15 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v15 = c;
    v14 = 4;
  }

  return CC_SHA256_Update(v15, p_data, v14);
}

uint64_t AirReflection::Node::node_as_CIBuiltinRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147459) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIBuiltinRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIBuiltinRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIMatrixRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147460) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIMatrixRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIMatrixRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CISamplerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147461) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CISamplerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CISamplerRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIImageblockRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147462) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIImageblockRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIImageblockRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_ConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262147) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ConstantArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  CC_SHA256_Update(v27, p_data, v26);
  v28 = (a1 - *a1);
  if (*v28 >= 0x13u && (v29 = v28[9]) != 0)
  {
    v30 = (a1 + v29);
    v31 = *v30;
    v32 = (v30 + v31 + 4);
    v33 = *(v30 + v31);
    v34 = c;
  }

  else
  {
    data = 0;
    v32 = &data;
    v34 = c;
    v33 = 4;
  }

  CC_SHA256_Update(v34, v32, v33);
  v35 = (a1 - *a1);
  if (*v35 < 0x15u)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v35[10];
    if (v36)
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  LOBYTE(data) = v36;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IndirectBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262148) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectBufferArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = *(a1 + v18);
  }

  else
  {
    v19 = 1;
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
  {
    v34 = (a1 + v33);
    v35 = *v34;
    p_data = (v34 + v35 + 4);
    v37 = *(v34 + v35);
    v38 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v38 = c;
    v37 = 4;
  }

  CC_SHA256_Update(v38, p_data, v37);
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = (v41 + v42 + 4);
    v44 = *(v41 + v42);
    v45 = c;
  }

  else
  {
    data = 0;
    v43 = &data;
    v45 = c;
    v44 = 4;
  }

  CC_SHA256_Update(v45, v43, v44);
  v46 = (a1 - *a1);
  if (*v46 < 0x1Du)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[14];
    if (v47)
    {
      LOBYTE(v47) = *(a1 + v47) != 0;
    }
  }

  LOBYTE(data) = v47;
  CC_SHA256_Update(c, &data, 1u);
  v48 = (a1 - *a1);
  if (*v48 >= 0x1Fu && (v49 = v48[15]) != 0)
  {
    v50 = v49;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v50);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IndirectConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262149) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectConstantArg", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_CommandBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262150) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CommandBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CommandBufferArg", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262151) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ComputePipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ComputePipelineStateArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262152) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderPipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderPipelineStateArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_VisibleFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262153) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunctionTableArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262154) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionTableArg", 0x2Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_InstanceAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262155) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceAccelerationStructureArg", 0x2Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262156) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveAccelerationStructureArg", 0x2Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_BufferStrideArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262157) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BufferStrideArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BufferStrideArg", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_DepthStencilStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262158) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthStencilStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthStencilStateArg", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_FunctionHandleArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262159) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionHandleArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionHandleArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_TensorArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262160) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TensorArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TensorArg", 0x17u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  CC_SHA256_Update(v30, v28, v29);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 266240)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ThreadPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInGridArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266241) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerGridArg", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266242) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupPositionInGridArg", 0x2Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266243) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupsPerGridArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266244) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadPositionInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266245) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerThreadgroupArg", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266246) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchThreadsPerThreadgroupArg", 0x2Eu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266247) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadExecutionWidthArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266248) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadExecutionWidthArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadExecutionWidthArg", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266249) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInArg", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266250) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridOriginArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridOriginArg", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridSizeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266251) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridSizeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridSizeArg", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266252) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInSimdgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInSimdgroupArg", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266253) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerSimdgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerSimdgroupArg", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SimdgroupIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266254) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SimdgroupIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SimdgroupIndexInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_SimdgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266255) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SimdgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SimdgroupsPerThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchSimdgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266256) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchSimdgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchSimdgroupsPerThreadgroupArg", 0x31u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266257) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInQuadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInQuadgroupArg", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_QuadgroupIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266258) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::QuadgroupIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.QuadgroupIndexInThreadgroupArg", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_QuadgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266259) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::QuadgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.QuadgroupsPerThreadgroupArg", 0x29u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchQuadgroupsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266260) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchQuadgroupsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchQuadgroupsPerThreadgroupArg", 0x31u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}