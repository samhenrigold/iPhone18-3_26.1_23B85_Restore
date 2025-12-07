void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
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
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      *(v14 + 2) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::StackElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitChildren(uint64_t a1)
{
  v1 = *(a1 + 88);
  for (i = *(v1 - 24); i != *(*(v1 - 32) + 24); i = *(v1 - 24))
  {
    v4 = *(v1 - 16);
    *(v1 - 24) = i + 40;
    v7[0] = i;
    v7[1] = v4;
    v5 = llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(v7);
    v8 = v5;
    v7[0] = 0;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>((a1 + 8), &v8, v7) || v7[0] == *(a1 + 8) + 16 * *(a1 + 24))
    {
      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitOne(a1, v5);
      v1 = *(a1 + 88);
    }

    else
    {
      v6 = *(v7[0] + 8);
      v1 = *(a1 + 88);
      if (*(v1 - 8) > v6)
      {
        *(v1 - 8) = v6;
      }
    }
  }
}

uint64_t llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v5, *a1);
  v6 = *(v1 + 32);
  v3 = v2(v5);
  if (v5[24] == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v5);
  }

  return v3;
}

void sub_2579C2390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(&a10);
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(llvm::ValueHandleBase *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(a1, a2);
  }

  return a1;
}

void sub_2579C23F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v1);
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(llvm::ValueHandleBase *a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(a1);
    *(a1 + 24) = 0;
  }

  result = llvm::ValueHandleBase::ValueHandleBase(a1, 3u, a2);
  *(result + 24) = 1;
  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v9 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A280](v9, this, a2, a3, a4);
  return v9;
}

uint64_t llvm::IRBuilderBase::CreatePHI(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v10 = 257;
  v7 = llvm::PHINode::Create(a2, a3, v9, 0, a5);
  if (llvm::FPMathOperator::classof(v7))
  {
    llvm::IRBuilderBase::setFPAttrs(this, v7, 0, *(this + 24));
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

llvm::PHINode *llvm::PHINode::addIncoming(llvm::PHINode *this, llvm::Value *a2, llvm::BasicBlock *a3)
{
  v5 = this;
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFF) == *(this + 15))
  {
    this = llvm::PHINode::growOperands(this);
    v6 = *(v5 + 5);
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  *(v5 + 5) = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = v5 - 32 * v7;
  }

  v9 = &v8[32 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 8;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = *(v5 + 5);
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = v5 - 32 * v15;
  }

  *&v16[32 * *(v5 + 15) + 8 * (v15 - 1)] = a3;
  return this;
}

llvm::BranchInst *llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v3 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  return v3;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

llvm::PHINode *llvm::PHINode::Create(llvm::PHINode *this, llvm::Type *a2, const llvm::Twine *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v7 = a2;
  v9 = llvm::User::operator new(0x40);
  llvm::PHINode::PHINode(v9, this, v7, a3, a4);
  return v9;
}

llvm::PHINode *llvm::PHINode::PHINode(llvm::PHINode *this, llvm::Type *a2, int a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  llvm::User::allocHungoffUses(this);
  return this;
}

void MTLForceInlinerPass::~MTLForceInlinerPass(MTLForceInlinerPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLForceInlinerPass::runOnModule(MTLForceInlinerPass *this, llvm::Module *a2)
{
  v137[4] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 4) + 20) & 0x10) == 0)
  {
    return 0;
  }

  MTLBoundsCheck::getMetalMetadata(v88, a2);
  result = v89;
  if (v89 == 1)
  {
    v74 = v89;
    v5 = v88[1];
    v7 = *(this + 4);
    v6 = *(this + 5);
    MEMORY[0x259C6B090](v111, a2);
    v76 = v6;
    v77 = a2;
    v75 = v5;
    v135 = v137;
    v136 = 0x400000000;
    llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(&v103, v112);
    v102 = 0;
    v100 = 0u;
    *__p = 0u;
    *v98 = 0u;
    *v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v78 = v7;
    while (1)
    {
      if (!llvm::iterator_facade_base<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>,std::forward_iterator_tag,std::vector<llvm::CallGraphNode *> const,long,std::vector<llvm::CallGraphNode *> const*,std::vector<llvm::CallGraphNode *> const&>::operator!=(&v103, v97))
      {
        llvm::GlobalValue::setLinkage(*(*(v75 - 8 * *(v75 + 8)) + 128), 0);
        if (v136)
        {
          v68 = v135;
          v69 = 8 * v136;
          do
          {
            v70 = *v68;
            if ((llvm::Value::hasNUsesOrMore(*v68) & 1) == 0 && (*(v70 + 32) & 0xF) != 0)
            {
              llvm::Function::dropAllReferences(v70);
              llvm::Function::eraseFromParent(v70);
            }

            ++v68;
            v69 -= 8;
          }

          while (v69);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v99[1])
        {
          *&v100 = v99[1];
          operator delete(v99[1]);
        }

        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(v97 + 8, v65, v66, v67);
        if (v109)
        {
          v110 = v109;
          operator delete(v109);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        if (v105)
        {
          v106 = v105;
          operator delete(v105);
        }

        llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&v104, v71, v72, v73);
        if (v135 != v137)
        {
          free(v135);
        }

        MEMORY[0x259C6B0A0](v111);
        return v74;
      }

      v9 = v107;
      v8 = v108;
      v83 = v108;
      while (v9 != v8)
      {
        v10 = *v9;
        if (*v9 == v112)
        {
          goto LABEL_150;
        }

        v84 = v9;
        v11 = v10[1];
        v96 = v11;
        if (v11 && (llvm::GlobalValue::isDeclaration(v11) & 1) == 0 && (*(v96 + 8) & 0xE) != 4)
        {
          Name = llvm::Value::getName(v96);
          if (v13 >= 0x10)
          {
            if (*Name == 0x61725F7269615F5FLL && Name[1] == 0x676E696361727479)
            {
              goto LABEL_149;
            }

            if (v13 >= 0x17)
            {
              if (*Name == 0x697265776F6C5F5FLL && Name[1] == 0x6E692E62696C676ELL && *(Name + 15) == 0x2E6C616E7265746ELL)
              {
                goto LABEL_149;
              }
            }

            else if (v13 == 16 && *Name == 0x5F7465672E6C746DLL && Name[1] == 0x64695F6567616D69)
            {
              goto LABEL_149;
            }
          }

          if (!v7 || (*(v7 + 22) & 4) == 0)
          {
            goto LABEL_15;
          }

          v58 = *(v96 + 3);
          v59 = *(v58 + 12);
          if (v59 != 1)
          {
            v60 = *(v58 + 16) + 8;
            v61 = 8 * v59 - 8;
            while (1)
            {
              if (*(*v60 + 8) == 15)
              {
                v62 = **(*v60 + 16);
                if (*(v62 + 8) != 16 || !isSpecialStructType(v62))
                {
                  break;
                }
              }

              v60 += 8;
              v61 -= 8;
              if (!v61)
              {
                goto LABEL_149;
              }
            }

LABEL_15:
            if (v76)
            {
              ++*(v76 + 100);
            }

            v15 = v10[2];
            v14 = v10[3];
            v79 = v14;
            if (v15 != v14)
            {
              while (1)
              {
                llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v92, v15);
                v95 = *(v15 + 32);
                v123 = 0u;
                v125 = 0;
                v126 = 0;
                v124 = 0;
                v127 = v129;
                v128 = 0x400000000;
                v130[0] = &v131;
                v130[1] = 0x800000000;
                v132 = v134;
                v133 = 0x800000000;
                v134[64] = 1;
                v16 = *(v93 - 32);
                if (!v16)
                {
                  break;
                }

                if (*(v16 + 16))
                {
                  break;
                }

                if (*(v16 + 24) != *(v93 + 72))
                {
                  break;
                }

                v17 = llvm::Value::getName(v16);
                if (v18 < 0x10)
                {
                  break;
                }

                if (*v17 != 0x61725F7269615F5FLL || v17[1] != 0x676E696361727479)
                {
                  if (v18 >= 0x17)
                  {
                    if (*v17 != 0x697265776F6C5F5FLL || v17[1] != 0x6E692E62696C676ELL || *(v17 + 15) != 0x2E6C616E7265746ELL)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v18 != 16)
                    {
                      break;
                    }

                    if (*v17 != 0x5F7465672E6C746DLL || v17[1] != 0x64695F6567616D69)
                    {
                      break;
                    }
                  }
                }

LABEL_92:
                if (v132 != v134)
                {
                  free(v132);
                }

                llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(v130);
                if (v127 != v129)
                {
                  free(v127);
                }

                if (v94 == 1)
                {
                  llvm::ValueHandleBase::~ValueHandleBase(v92);
                }

                v15 += 40;
                if (v15 == v14)
                {
                  goto LABEL_121;
                }
              }

              llvm::InlineFunction();
              if ((*(v7 + 22) & 8) != 0)
              {
                v120 = v122;
                v121 = 0x800000000;
                v117 = v119;
                v118 = 0x800000000;
                if (v128)
                {
                  v80 = v15;
                  v19 = v127;
                  v20 = (v127 + 8 * v128);
                  do
                  {
                    v21 = **(**v19 + 16);
                    if (*(v21 + 8) == 17)
                    {
                      v22 = **(v21 + 16);
                      if (*(v22 + 8) == 15 && MTLBoundsCheck::checkAddressSpace((*(v22 + 8) >> 8)))
                      {
                        v86 = **(v22 + 16);
                        if (*(v86 + 8) == 16)
                        {
                          if (*(v86 + 3))
                          {
                            v23 = llvm::StructType::getName(v86);
                            if (v24 >= 0x10)
                            {
                              v25 = *v23 == 0x5F2E746375727473 && *(v23 + 8) == 0x5F65727574786574;
                              if (v25 || v24 != 16 && (*v23 == 0x5F2E746375727473 ? (v26 = *(v23 + 8) == 0x5F72656C706D6173) : (v26 = 0), v26 ? (v27 = *(v23 + 16) == 116) : (v27 = 0), v27))
                              {
                                Int8PtrTy = llvm::Type::getInt8PtrTy(*v77, 0);
                                LODWORD(v121) = 0;
                                llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v120, v120, *(*v19 + 1), 0);
                                if (v121)
                                {
                                  v29 = v120;
                                  v85 = v120 + 8 * v121;
                                  do
                                  {
                                    v87 = *v29;
                                    if (*v29)
                                    {
                                      if (*(v87 + 16) == 77 && *v87 == Int8PtrTy)
                                      {
                                        LODWORD(v118) = 0;
                                        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v117, v117, *(v87 + 8), 0);
                                        if (v118)
                                        {
                                          v30 = v117;
                                          v31 = v117 + 8 * v118;
                                          do
                                          {
                                            v32 = *v30;
                                            if (*v30 && *(v32 + 16) == 84)
                                            {
                                              v33 = *(v32 - 32);
                                              if (!v33 || *(v33 + 16) || *(v33 + 24) != *(v32 + 72))
                                              {
                                                v33 = 0;
                                              }

                                              v34 = llvm::Value::getName(v33);
                                              if (v35 >= 0xC && *v34 == 0x6D656D2E6D766C6CLL && *(v34 + 8) == 779710563)
                                              {
                                                v37 = (v32 - 32 * (*(v32 + 20) & 0x7FFFFFF));
                                                v38 = *v37;
                                                v39 = v37[4];
                                                if (*(v39 + 16) != 77)
                                                {
                                                  v39 = 0;
                                                }

                                                v40 = v37[8];
                                                if (*(v40 + 16) == 16)
                                                {
                                                  v41 = v40;
                                                }

                                                else
                                                {
                                                  v41 = 0;
                                                }

                                                if (v39)
                                                {
                                                  v42 = v41 == 0;
                                                }

                                                else
                                                {
                                                  v42 = 1;
                                                }

                                                v43 = !v42 && v38 == v87;
                                                if (v43 && *v39 == Int8PtrTy && **(v39 - 32) == **v19)
                                                {
                                                  v82 = *(v39 - 32);
                                                  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v113, v32, 0, 0, 0);
                                                  v44 = (v41 + 24);
                                                  if (*(v41 + 32) >= 0x41u)
                                                  {
                                                    v44 = *v44;
                                                  }

                                                  v45 = *v44;
                                                  if (v45 >= 8)
                                                  {
                                                    v46 = 0;
                                                    v81 = v45 >> 3;
                                                    do
                                                    {
                                                      v91 = 257;
                                                      ConstGEP2_32 = llvm::IRBuilderBase::CreateConstGEP2_32(v113, v86, v82, 0, v46, v90);
                                                      v48 = *v19;
                                                      v91 = 257;
                                                      v49 = llvm::IRBuilderBase::CreateConstGEP2_32(v113, v86, v48, 0, v46, v90);
                                                      v50 = **(*ConstGEP2_32 + 16);
                                                      v91 = 257;
                                                      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v113, v50, ConstGEP2_32, 0, 0, v90);
                                                      llvm::IRBuilderBase::CreateAlignedStore(v113, AlignedLoad, v49, 0, 0);
                                                      ++v46;
                                                    }

                                                    while (v81 != v46);
                                                  }

                                                  llvm::Instruction::eraseFromParent(v32);
                                                  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v116);
                                                  llvm::IRBuilderFolder::~IRBuilderFolder(&v115);
                                                  if (v113[0] != &v114)
                                                  {
                                                    free(v113[0]);
                                                  }
                                                }
                                              }
                                            }

                                            v30 += 8;
                                          }

                                          while (v30 != v31);
                                        }
                                      }
                                    }

                                    v29 += 8;
                                  }

                                  while (v29 != v85);
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    ++v19;
                  }

                  while (v19 != v20);
                  v7 = v78;
                  v14 = v79;
                  v15 = v80;
                  if (v117 != v119)
                  {
                    free(v117);
                  }
                }

                if (v120 != v122)
                {
                  free(v120);
                }
              }

              goto LABEL_92;
            }

LABEL_121:
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v135, &v96);
          }
        }

LABEL_149:
        v9 = v84;
LABEL_150:
        ++v9;
        v8 = v83;
      }

      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(&v103);
    }
  }

  return result;
}

void sub_2579C32D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&a46, a2, a3, a4);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&a59, v71, v72, v73);
  v74 = *(v69 - 160);
  if (v74 != a11)
  {
    free(v74);
  }

  MEMORY[0x259C6B0A0](&a69);
  _Unwind_Resume(a1);
}

char *llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a3, a4);
    return (*a1 + v8);
  }

  else
  {
    if (a3 == a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v12 = a3;
      do
      {
        ++v10;
        v12 = *(v12 + 8);
      }

      while (v12 != a4);
    }

    if (v10 + v9 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v7 + v8);
    v13 = 8 * v9;
    v14 = (v7 + 8 * v9);
    v15 = 8 * v9 - v8;
    v16 = v15 >> 3;
    if (v15 >> 3 >= v10)
    {
      llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(a1, &v14[-v10], (v7 + 8 * v9));
      if (&v14[-v10] != v11)
      {
        memmove(&v11[8 * v10], v11, &v14[-v10] - v11);
      }

      if (v5 != a4)
      {
        v19 = v11;
        do
        {
          *v19++ = *(v5 + 24);
          v5 = *(v5 + 8);
        }

        while (v5 != a4);
      }
    }

    else
    {
      v17 = v9 + v10;
      *(a1 + 2) = v17;
      if (v13 != v8)
      {
        memcpy((v7 + 8 * v17 - 8 * v16), v11, v15);
        v18 = v11;
        do
        {
          *v18++ = *(v5 + 24);
          v5 = *(v5 + 8);
          --v16;
        }

        while (v16);
      }

      while (v5 != a4)
      {
        *v14++ = *(v5 + 24);
        v5 = *(v5 + 8);
      }
    }
  }

  return v11;
}

uint64_t llvm::IRBuilderBase::CreateConstGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, unsigned int a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 0);
  if (!result)
  {
    v13[16] = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2, v13, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  return result;
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

char ***llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[3 * v3 - 3];
    do
    {
      llvm::ValueHandleBase::~ValueHandleBase(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(uint64_t result, char *a2, char *a3)
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

uint64_t llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(uint64_t a1, llvm::Value *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Context = llvm::Value::getContext(this);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x200000000;
  *(a1 + 64) = Context;
  *(a1 + 72) = a1 + 120;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 100) = 512;
  *(a1 + 102) = 7;
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 120) = MEMORY[0x277D821C8] + 16;
  *(a1 + 128) = MEMORY[0x277D82210] + 16;
  llvm::IRBuilderBase::SetInsertPoint(a1, this);
  return a1;
}

void sub_2579C3920(_Unwind_Exception *a1)
{
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v3);
  llvm::IRBuilderFolder::~IRBuilderFolder(v2);
  if (*v1 != v4)
  {
    free(*v1);
  }

  _Unwind_Resume(a1);
}

void MTLHoistStaticAllocasPass::~MTLHoistStaticAllocasPass(MTLHoistStaticAllocasPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLHoistStaticAllocasPass::runOnModule(MTLHoistStaticAllocasPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = a2 + 24;
  v5 = *(a2 + 4);
  if (v5 == v4)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (v5)
      {
        v7 = (v5 - 56);
      }

      else
      {
        v7 = 0;
      }

      v6 |= MTLHoistStaticAllocasPass::runOnFunction(this, v7);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  return v6 & 1;
}

BOOL MTLHoistStaticAllocasPass::runOnFunction(MTLHoistStaticAllocasPass *this, llvm::Function *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 10);
  if (v2 == (a2 + 72))
  {
    return 0;
  }

  v17 = v19;
  v18 = 0x400000000;
  if (v2)
  {
    v3 = (v2 - 24);
  }

  else
  {
    v3 = 0;
  }

  FirstNonPHIOrDbgOrLifetime = llvm::BasicBlock::getFirstNonPHIOrDbgOrLifetime(v3);
  if (!FirstNonPHIOrDbgOrLifetime)
  {
    goto LABEL_36;
  }

  v5 = v3 + 40;
  for (i = FirstNonPHIOrDbgOrLifetime + 24; i != v5; i = *(i + 8))
  {
    if (i)
    {
      v7 = i - 24;
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 16) == 59)
    {
      v8 = 0;
      if (!i)
      {
        continue;
      }
    }

    else
    {
      if (!llvm::isa_impl_wrap<llvm::DbgInfoIntrinsic,llvm::Instruction const,llvm::Instruction const>::doit(v7))
      {
        break;
      }

      v8 = *(v7 + 16) != 59;
      if (!i)
      {
        continue;
      }
    }

    if (!v8 && (llvm::AllocaInst::isStaticAlloca((i - 24)) & 1) == 0)
    {
      break;
    }
  }

  if (i != v5)
  {
    v9 = i;
    do
    {
      if (v9)
      {
        v10 = v9 - 24;
      }

      else
      {
        v10 = 0;
      }

      if (v9 && *(v10 + 16) == 59 && llvm::AllocaInst::isStaticAlloca((v9 - 24)))
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v17, v9 - 24);
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v5);
    v11 = i ? (i - 24) : 0;
    if (v18)
    {
      v12 = v17;
      v13 = 8 * v18;
      do
      {
        v14 = *v12;
        llvm::Instruction::removeFromParent(*v12);
        llvm::Instruction::insertBefore(v14, v11);
        ++v12;
        v13 -= 8;
      }

      while (v13);
      v15 = v18 != 0;
      goto LABEL_37;
    }
  }

LABEL_36:
  v15 = 0;
LABEL_37:
  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

void sub_2579C3CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLVertexOutputPackingPass::vertexOutputPacking(MTLCompilerErrorObject **a1, llvm::Module *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(a1, a12, a13))
  {
    return 0;
  }

  v77 = a3;
  v16 = a3[1] - *a3;
  v17 = (v16 >> 5);
  LODWORD(v89.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v85, v17, &v89);
  v89.__r_.__value_.__r.__words[0] = "air.vertex";
  v90 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &v89);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v73 = v16;
  v79 = *(Operand - 8 * *(Operand + 8) + 8);
  v20 = *(v79 + 8);
  v89.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::vector(&__p, v20, &v89);
  v74 = *a2;
  v82 = 0;
  v83 = 0;
  __src = 0;
  v71 = a2;
  v72 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v70 = *(v72 + 3);
  v22 = **(v70 + 16);
  if (v20)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v79 - 8 * *(v79 + 8) + 8 * v23);
      String = llvm::MDString::getString(*(v24 - 8 * *(v24 + 8)));
      if (v26 <= 16)
      {
        if (v26 == 12)
        {
          if (!memcmp(String, "air.position", 0xCuLL))
          {
            ++a8;
            a9 += 4;
          }
        }

        else if (v26 == 14 && !memcmp(String, "air.point_size", 0xEuLL))
        {
          ++a8;
          ++a9;
        }

        goto LABEL_32;
      }

      if (v26 == 29)
      {
        break;
      }

      if (v26 != 17)
      {
        goto LABEL_32;
      }

      if (*String != 0x747265762E726961 || String[1] != 0x757074756F5F7865 || *(String + 16) != 116)
      {
        if (!memcmp(String, "air.clip_distance", 0x11uLL))
        {
          if (*(v22 + 8) == 16 && (v29 = *(*(v22 + 16) + 8 * v23)) != 0 && *(v29 + 8) == 17)
          {
            v30 = *(v29 + 32);
            v31 = (v30 + 3) >> 2;
          }

          else
          {
            LODWORD(v30) = 1;
            LODWORD(v31) = 1;
          }

          a8 += v31;
          a9 += v30;
        }

        goto LABEL_32;
      }

      LODWORD(v89.__r_.__value_.__l.__data_) = 0;
      MatchingFragmentInput = MTLFrameworkPass::findMatchingFragmentInput(a1, &v89, v22, v23, v24, v77, a5);
      if (MatchingFragmentInput == 1)
      {
        *(v85[0] + LODWORD(v89.__r_.__value_.__l.__data_)) = v23 + 1;
        goto LABEL_44;
      }

      if (MatchingFragmentInput == 2)
      {
        v68 = 0;
        goto LABEL_94;
      }

LABEL_45:
      if (v20 == ++v23)
      {
        goto LABEL_49;
      }
    }

    if (!memcmp(String, "air.render_target_array_index", 0x1DuLL))
    {
      dataTypeFromMetadata(1u, v24);
    }

LABEL_32:
    v33 = v82;
    if (v82 >= v83)
    {
      v35 = __src;
      v36 = v82 - __src;
      v37 = (v82 - __src) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v39 = v83 - __src;
      if ((v83 - __src) >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      v40 = v39 >= 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v40)
      {
        v41 = v38;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v41);
      }

      v42 = (4 * v37);
      v43 = &v42[-((v82 - __src) >> 2)];
      *v42 = v23;
      v34 = (v42 + 1);
      memcpy(v43, v35, v36);
      v44 = __src;
      __src = v43;
      v82 = v34;
      v83 = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v82 = v23;
      v34 = v33 + 4;
    }

    v82 = v34;
LABEL_44:
    *(__p + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    goto LABEL_45;
  }

LABEL_49:
  if ((v73 & 0x1FFFFFFFE0) != 0)
  {
    v45 = 0;
    while (*(v85[0] + v45))
    {
      v45 += 4;
      if (!--v17)
      {
        goto LABEL_53;
      }
    }

    v48 = *v77 + 8 * v45;
    v49 = *(v48 + 8);
    if (v49)
    {
      v50 = *(v48 + 16);
      if (v50 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v87) = *(v48 + 16);
      if (v50)
      {
        memmove(__dst, v49, v50);
      }

      *(__dst + v50) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v87 = 0;
    }

    MTLFrameworkPass::attribute_name(__dst, &v89);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__dst[0]);
    }

    v63 = &v89;
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v89.__r_.__value_.__r.__words[0];
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: fragment input %s was not found in vertex shader outputs", v63);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_53:
    v46 = a10;
    if (a8 <= a10)
    {
      v46 = a11;
      if (a9 <= a11)
      {
        v51 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v69 = v82 - __src;
        v52 = (v82 - __src) >> 2;
        v53 = v52 - 1431655765 * ((a4[1] - *a4) >> 3);
        if (v53)
        {
          v54 = (*(v70 + 12) - 1);
          std::vector<llvm::Type *>::vector[abi:ne200100](&v80, v54);
          if (v54)
          {
            v55 = 0;
            do
            {
              *(v80 + v55) = *(*(v70 + 16) + v55 + 8);
              v55 += 8;
            }

            while (8 * v54 != v55);
          }

          v89.__r_.__value_.__r.__words[0] = &v89.__r_.__value_.__r.__words[2];
          v89.__r_.__value_.__l.__size_ = 0x1000000000;
          if (v51)
          {
            v56 = 0;
            do
            {
              v57 = *a4;
              v58 = *(v22 + 8);
              v59 = v22;
              if (v58 == 16)
              {
                v59 = *(*(v22 + 16) + 8 * (*(v85[0] + *(v57 + v56 + 6)) - 1));
                v58 = *(v59 + 8);
              }

              if ((v58 & 0xFE) == 0x12)
              {
                v59 = **(v59 + 16);
              }

              v60 = v57 + v56;
              *(v60 + 16) = v59;
              if (*(v60 + 2) >= 2uLL)
              {
                v59 = llvm::VectorType::get();
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v89, v59);
              v56 += 24;
            }

            while (24 * v51 != v56);
          }

          if (v52)
          {
            v61 = 0;
            do
            {
              v62 = v22;
              if (*(v22 + 8) == 16)
              {
                v62 = *(*(v22 + 16) + 8 * *(__src + v61));
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v89, v62);
              v61 += 4;
            }

            while ((v69 & 0x3FFFFFFFCLL) != v61);
          }

          if (v53 != 1)
          {
            llvm::StructType::get();
          }

          v65 = llvm::FunctionType::get();
          *(v72 + 8) = *(v72 + 8) & 0xFFFFBFC0 | 0x4007;
          __dst[0] = "air.packedVertexFunction";
          v88 = 259;
          v66 = llvm::Function::Create(v65, 0, __dst, v71);
          __dst[0] = "Body";
          v88 = 259;
          llvm::BasicBlock::Create(v74, __dst, v66, 0, v67);
        }

        v68 = 1;
        goto LABEL_94;
      }

      v47 = "varying components";
      a8 = a9;
    }

    else
    {
      v47 = "varyings";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: number of shader %s (%u) exceeds limit (%u). Note that on macOS the following attributes count towards the limit: [[position]], [[clip_distance]], [[point_size]], [[point_coord]], and, when read in the fragment shader, [[viewport_array_index]] & [[render_target_array_index]].", v47, a8, v46);
  }

  v68 = 0;
LABEL_94:
  if (__src)
  {
    v82 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  return v68;
}

void sub_2579C4DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a60);
  if (STACK[0x220] != a18)
  {
    free(STACK[0x220]);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a2[16] > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractValueInst::Create(a2, a3, a4, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, a5);
  }

  v7 = (*(**(a1 + 72) + 344))(*(a1 + 72));
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a5);
}

uint64_t llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v13 = 257;
    v11 = llvm::InsertValueInst::Create(a2, a3, a4, a5, v12, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a6);
  }

  v8 = (*(**(a1 + 72) + 352))(*(a1 + 72));
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a6);
}

llvm::UnaryInstruction *llvm::ExtractValueInst::Create(llvm::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Instruction *a5)
{
  v7 = llvm::User::operator new(0x60);
  IndexedType = llvm::ExtractValueInst::getIndexedType();
  llvm::UnaryInstruction::UnaryInstruction(v7, IndexedType, 64, a1, a5);
  *(v7 + 8) = v7 + 80;
  *(v7 + 9) = 0x400000000;
  llvm::ExtractValueInst::init();
  return v7;
}

void sub_2579C5210(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, uint64_t a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v6 = (this - 32);
  result = llvm::Instruction::Instruction();
  if (*(result - 32))
  {
    v8 = *(result - 24);
    **(result - 16) = v8;
    if (v8)
    {
      *(v8 + 16) = *(result - 16);
    }
  }

  *v6 = a4;
  if (a4)
  {
    v11 = *(a4 + 1);
    v10 = (a4 + 8);
    v9 = v11;
    *(result - 24) = v11;
    if (v11)
    {
      *(v9 + 16) = result - 24;
    }

    *(result - 16) = v10;
    *v10 = v6;
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateExtractElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractElementInst::Create(a2, a3, v11, 0, a5);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a4);
  }

  v7 = (*(*this[9] + 320))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateInsertElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u || !a4 || *(a4 + 16) > 0x14u)
  {
    v13 = 257;
    v11 = llvm::InsertElementInst::Create(a2, a3, a4, v12, 0, a6);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v11, a5);
  }

  v8 = (*(*this[9] + 328))(this[9]);
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v8, a5);
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v5 = llvm::User::operator new(0x40);
  llvm::ExtractElementInst::ExtractElementInst();
  return v5;
}

uint64_t llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A960](v11, this, a2, a3, a4, a5);
  return v11;
}

uint64_t llvm::InsertValueInst::Create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = llvm::User::operator new(0x60);
  llvm::Instruction::Instruction();
  *(v6 + 64) = v6 + 80;
  *(v6 + 72) = 0x400000000;
  llvm::InsertValueInst::init();
  return v6;
}

void sub_2579C5654(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579C5780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *std::vector<llvm::Type *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579C5ABC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<llvm::Type *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<llvm::Value *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579C5B70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<llvm::Metadata *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579C5BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLBoundsCheck::isLibraryModule(MTLBoundsCheck *this, llvm::Module *a2)
{
  v4[0] = "air.vertex";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.fragment";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.kernel";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.object";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.mesh";
  v5 = 259;
  return llvm::Module::getNamedMetadata(this, v4) == 0;
}

void MTLBoundsCheck::getMangledTypeStr(std::string *__return_ptr a1@<X8>, MTLBoundsCheck *this@<X0>, llvm::Type *a3@<X1>, BOOL a4@<W2>)
{
  v68 = *MEMORY[0x277D85DE8];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v6 = *(this + 2);
  v7 = *(this + 2);
  if (this && v7 == 15)
  {
    if (v6 >= 0x100)
    {
      v14 = v6 >> 8;
      v8 = &v67.__r_.__value_.__s.__data_[21];
      do
      {
        *--v8 = (v14 % 0xA) | 0x30;
        v11 = v14 > 9;
        v14 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v8 = &v67.__r_.__value_.__s.__data_[20];
      v67.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v8, &v67.__r_.__value_.__s.__data_[21], &v67.__r_.__value_.__r.__words[2] + 5 - v8);
    v15 = std::string::insert(&__dst, 0, "p");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, **(this + 2), v17, v18);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v67;
    }

    else
    {
      v19 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v67.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v65, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_68;
  }

  if (this && v7 == 17)
  {
    v9 = *(this + 4);
    if (v9)
    {
      v10 = &v67.__r_.__value_.__s.__data_[21];
      do
      {
        *--v10 = (v9 % 0xA) | 0x30;
        v11 = v9 > 9;
        v9 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v10 = &v67.__r_.__value_.__s.__data_[20];
      v67.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v10, &v67.__r_.__value_.__s.__data_[21], &v67.__r_.__value_.__r.__words[2] + 5 - v10);
    v34 = std::string::insert(&__dst, 0, "a");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, *(this + 3), v36, v37);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v67;
    }

    else
    {
      v38 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v67.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v65, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_68;
  }

  if (this && v7 == 16)
  {
    if ((v6 & 0x400) != 0)
    {
      std::string::append(a1, "sl_");
      v53 = *(this + 3);
      if (v53)
      {
        v54 = *(this + 2);
        v55 = 8 * v53;
        do
        {
          MTLBoundsCheck::getMangledTypeStr(&__p, *v54, v51, v52);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &__p;
          }

          else
          {
            v56 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(a1, v56, v57);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v54;
          v55 -= 8;
        }

        while (v55);
      }
    }

    else
    {
      std::string::append(a1, "s_");
      Name = llvm::StructType::getName(this);
      std::string::append(a1, Name, v13);
    }

    std::string::append(a1, "s");
    return;
  }

  if (this && v7 == 14)
  {
    MTLBoundsCheck::getMangledTypeStr(&v65, **(this + 2), a3, a4);
    v25 = std::string::insert(&v65, 0, "f_");
    v26 = *&v25->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v27, v28);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (*(this + 3) != 1)
    {
      v31 = 0;
      do
      {
        MTLBoundsCheck::getMangledTypeStr(&__p, *(*(this + 2) + 8 * v31 + 8), v29, v30);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &__p;
        }

        else
        {
          v32 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v32, v33);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v31;
      }

      while (v31 < (*(this + 3) - 1));
    }

    if (*(this + 2) > 0xFFu)
    {
      std::string::append(a1, "vararg");
    }

    std::string::append(a1, "f");
    return;
  }

  if (this && v7 == 18)
  {
    llvm::utostr(&__dst, *(this + 8), 0);
    v43 = std::string::insert(&__dst, 0, "v");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v67, *(this + 3), v45, v46);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v67;
    }

    else
    {
      v47 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v67.__r_.__value_.__l.__size_;
    }

    v49 = std::string::append(&v65, v47, v48);
    v50 = *&v49->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
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
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

LABEL_68:
    std::string::append(a1, p_p, v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v42 = __dst.__r_.__value_.__r.__words[0];
LABEL_76:
      operator delete(v42);
      return;
    }

    return;
  }

  v58 = *(this + 2);
  if (v58 <= 4)
  {
    if (*(this + 2) <= 1u)
    {
      if (*(this + 2))
      {
        v59 = "bf16";
      }

      else
      {
        v59 = "f16";
      }
    }

    else if (v58 == 2)
    {
      v59 = "f32";
    }

    else if (v58 == 3)
    {
      v59 = "f64";
    }

    else
    {
      v59 = "f80";
    }

    goto LABEL_124;
  }

  if (*(this + 2) <= 8u)
  {
    if (v58 == 5)
    {
      v59 = "f128";
    }

    else if (v58 == 6)
    {
      v59 = "ppcf128";
    }

    else
    {
      v59 = "isVoid";
    }

    goto LABEL_124;
  }

  if (v58 == 9)
  {
    v59 = "Metadata";
    goto LABEL_124;
  }

  if (v58 == 10)
  {
    v59 = "x86mmx";
LABEL_124:
    std::string::append(a1, v59);
    return;
  }

  llvm::utostr(&v65, (v6 >> 8), 0);
  v60 = std::string::insert(&v65, 0, "i");
  v61 = *&v60->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v62, v63);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    v42 = v65.__r_.__value_.__r.__words[0];
    goto LABEL_76;
  }
}

void sub_2579C638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::utostr@<X0>(void *__return_ptr a1@<X8>, llvm *this@<X0>, int a3@<W1>)
{
  v4 = this;
  v9 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v5 = &v8;
    v8 = 48;
    if (!a3)
    {
      return std::string::__init_with_size[abi:ne200100]<char *,char *>(a1, v5, &v9, &v9 - v5);
    }

    goto LABEL_5;
  }

  v5 = &v9;
  do
  {
    *--v5 = (v4 % 0xA) | 0x30;
    v6 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v6);
  if (a3)
  {
LABEL_5:
    *--v5 = 45;
  }

  return std::string::__init_with_size[abi:ne200100]<char *,char *>(a1, v5, &v9, &v9 - v5);
}

void MTLBoundsCheck::gatherMemoryArguments(uint64_t a1, uint64_t *a2)
{
  v43[10] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *v4;
  llvm::Module::getDataLayout(v4);
  if ((*(a1 + 18) & 1) == 0)
  {
    v6 = *(a1 + 88);
LABEL_4:
    v7 = v6;
    goto LABEL_6;
  }

  llvm::Function::BuildLazyArguments(a1);
  v6 = *(a1 + 88);
  if ((*(a1 + 18) & 1) == 0)
  {
    goto LABEL_4;
  }

  llvm::Function::BuildLazyArguments(a1);
  v7 = *(a1 + 88);
LABEL_6:
  v8 = *(a1 + 96);
  Name = llvm::Value::getName(a1);
  v40[1] = Name;
  v40[2] = v10;
  if (v10 < 0xB)
  {
    if (v10 == 10)
    {
      if (*Name != 0x6D6F74612E726961 || *(Name + 8) != 25449)
      {
        goto LABEL_52;
      }

      goto LABEL_63;
    }

    if (v10 < 9)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v13 = *Name != 0x6D656D2E6D766C6CLL || *(Name + 3) != 0x7970636D656D2E6DLL;
  v14 = 0x6C6C766D2E6D656DLL;
  v15 = bswap64(*Name);
  if (v15 == 0x6C6C766D2E6D656DLL && (v14 = 0x6D2E6D656D636D70, v15 = bswap64(*(Name + 3)), v15 == 0x6D2E6D656D636D70))
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v15 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (!v13)
    {
      goto LABEL_47;
    }
  }

  if (!v16)
  {
LABEL_47:
    v41 = v6;
    v21 = v16 == 0;
    v37 = v6 + 40;
    v40[0] = (v6 + 80);
    LODWORD(v38) = 1;
    v39 = 1;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v37, v40, &v38, &v39);
    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    LODWORD(v38) = v22;
    v39 = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v41, v40, &v38, &v39);
    return;
  }

  if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
  {
    v41 = v6;
    v37 = v6 + 80;
    LODWORD(v40[0]) = 2;
    LODWORD(v38) = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v41, &v37, v40, &v38);
    return;
  }

  if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
  {
LABEL_63:
    v40[0] = v6;
    v41 = v43;
    v42 = 0x500000000;
    llvm::StringRef::split();
    llvm::StringRef::find();
    v36 = v41;
    if (v41 == v43)
    {
      return;
    }

LABEL_107:
    free(v36);
    return;
  }

  if (v10 >= 0x14)
  {
    v19 = *Name == 0x646D69732E726961 && *(Name + 8) == 0x616D5F70756F7267;
    if (v19 && *(Name + 16) == 2020176500)
    {
      v41 = v43;
      v42 = 0x500000000;
      llvm::StringRef::split();
      if (llvm::StringRef::find() == -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          goto LABEL_104;
        }

        v35 = 2;
        v34 = 1;
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      LODWORD(v38) = v34;
      v39 = v35;
      v37 = &v6[40 * v34];
      llvm::Type::getInt32Ty(v5, v33);
      v40[0] = llvm::ConstantInt::get();
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v37, v40, &v39, &v38);
LABEL_104:
      v36 = v41;
      if (v41 == v43)
      {
        return;
      }

      goto LABEL_107;
    }
  }

LABEL_52:
  if (*Name != 0x776172642E726961 || *(Name + 8) != 95)
  {
LABEL_56:
    LODWORD(v40[0]) = 0;
    while (v6 != &v7[40 * v8])
    {
      v41 = v6;
      if (*(*v6 + 8) == 15)
      {
        v24 = **(*v6 + 16);
        if (*(v24 + 8) != 16 || !isSpecialStructType(v24))
        {
          llvm::Type::getInt32Ty(v5, v10);
          v37 = llvm::ConstantInt::get();
          LODWORD(v38) = 0;
          llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v41, &v37, &v38, v40);
        }
      }

      v6 += 40;
      ++LODWORD(v40[0]);
    }

    return;
  }

  v41 = 0;
  v42 = 0;
  v43[0] = 0;
  if (v10 < 0x1B)
  {
    if (v10 < 0x10)
    {
      goto LABEL_94;
    }

LABEL_78:
    if (*Name == 0x776172642E726961 && *(Name + 8) == 0x736568637461705FLL)
    {
      LODWORD(v37) = 5;
      std::vector<int>::push_back[abi:ne200100](&v41, &v37);
      LODWORD(v37) = 8;
      std::vector<int>::push_back[abi:ne200100](&v41, &v37);
    }

    else if (v10 >= 0x18)
    {
      v29 = *Name == 0x776172642E726961 && *(Name + 8) == 0x64657865646E695FLL;
      if (v29 && *(Name + 16) == 0x736568637461705FLL)
      {
        LODWORD(v37) = 5;
        std::vector<int>::push_back[abi:ne200100](&v41, &v37);
        LODWORD(v37) = 9;
        std::vector<int>::push_back[abi:ne200100](&v41, &v37);
      }
    }

    goto LABEL_94;
  }

  if (*Name != 0x776172642E726961 || *(Name + 8) != 0x64657865646E695FLL || *(Name + 16) != 0x6974696D6972705FLL || *(Name + 19) != 0x7365766974696D69)
  {
    goto LABEL_78;
  }

  LODWORD(v37) = 4;
  std::vector<int>::push_back[abi:ne200100](&v41, &v37);
LABEL_94:
  v31 = v41;
  v32 = v42;
  if (v41 != v42)
  {
    do
    {
      LODWORD(v38) = *v31;
      v37 = &v6[40 * v38];
      llvm::Type::getInt32Ty(v5, v10);
      v40[0] = llvm::ConstantInt::get();
      v39 = 1;
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v37, v40, &v39, &v38);
      ++v31;
    }

    while (v31 != v32);
    v31 = v41;
  }

  if (v31)
  {
    v42 = v31;
    operator delete(v31);
  }
}

void sub_2579C6F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t *a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = *(a1 + 2);
  if (v5 >= *(a1 + 3))
  {
    return llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a1, a2, a3, a4, a5);
  }

  v6 = *a1;
  v7 = *a1 + 24 * v5;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 20) = v10;
  v11 = v5 + 1;
  *(a1 + 2) = v11;
  return v6 + 24 * v11 - 24;
}

llvm::FixedVectorType *getPtrTypeFromIntrinsicNameSuffix(uint64_t a1, llvm::LLVMContext *a2, llvm::Type *this)
{
  Int32Ty = llvm::Type::getInt32Ty(this, a2);
  Int16Ty = llvm::Type::getInt16Ty(this, v7);
  FloatTy = llvm::Type::getFloatTy(this, v9);
  Int64Ty = llvm::Type::getInt64Ty(this, v11);
  HalfTy = llvm::Type::getHalfTy(this, v13);
  v15 = llvm::FixedVectorType::get();
  v16 = llvm::FixedVectorType::get();
  if (a2 >= 4)
  {
    v17 = a2 + a1;
    if (*(a2 + a1 - 4) == 842230062 || *(v17 - 1) == 1952805727)
    {
      return Int32Ty;
    }

    v18 = a2 < 6;
    if (a2 >= 6)
    {
      v19 = *(v17 - 6);
      v20 = *(v17 - 1);
      if (v19 == 1701602094 && v20 == 29281)
      {
        return Int32Ty;
      }

      v18 = 0;
    }
  }

  else
  {
    if (a2 < 2)
    {
      return Int16Ty;
    }

    v18 = 1;
  }

  v22 = a2 + a1;
  if (*(a2 + a1 - 2) != 29998 && *(v22 - 1) != 29486)
  {
    if (a2 >= 4)
    {
      if (*(v22 - 1) == 842229294)
      {
        return FloatTy;
      }

      if (*(v22 - 1) == 875981102)
      {
        return Int64Ty;
      }

      if (v18)
      {
        return Int16Ty;
      }
    }

    else if (v18)
    {
      return Int16Ty;
    }

    if (*(v22 - 6) == 909207086 && *(v22 - 1) == 31060)
    {
      return HalfTy;
    }

    if (*(v22 - 6) == 1765045806 && *(v22 - 1) == 12851)
    {
      return v15;
    }

    v25 = *(v22 - 6);
    v26 = *(v22 - 1);
    if (v25 == 1714714158 && v26 == 12851)
    {
      return v16;
    }

    return Int16Ty;
  }

  return Int32Ty;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void MTLBoundsCheck::gatherMemoryOperands(uint64_t a1, uint64_t a2)
{
  Module = llvm::Instruction::getModule(a1);
  v5 = *Module;
  DataLayout = llvm::Module::getDataLayout(Module);
  v8 = *(a1 + 16);
  if (a1 && v8 == 84)
  {
    v9 = *(a1 - 32);
    if (v9)
    {
      if (!*(v9 + 16) && *(v9 + 24) == *(a1 + 72))
      {
        v10 = *(a2 + 8);
        MTLBoundsCheck::gatherMemoryArguments(v9, a2);
        v11 = *(a2 + 8);
        if (v11 != v10)
        {
          v12 = 0;
          v13 = v11 - v10;
          v14 = *a2 + 24 * v10;
          do
          {
            *(v14 + 20) = v12;
            if (*v14)
            {
              v15 = *(*v14 + 16) == 21;
            }

            else
            {
              v15 = 0;
            }

            if (v15)
            {
              *v14 = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(*v14 + 32));
            }

            v16 = *(v14 + 8);
            if (v16)
            {
              v17 = *(v16 + 16) == 21;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              *(v14 + 8) = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(v16 + 32));
            }

            ++v12;
            v14 += 24;
          }

          while (v13 != v12);
        }
      }
    }
  }

  else
  {
    if (v8 == 61)
    {
      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v19 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 1;
      v21 = 2;
    }

    else
    {
      if (v8 != 60)
      {
        return;
      }

      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v18 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 0;
      v21 = 1;
    }

    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v24, &v22, &v21, &v20);
  }
}

uint64_t MTLBoundsCheck::lookThroughPointerOps(uint64_t result, uint64_t *a2)
{
  v2 = 0;
  v3 = *(result + 16);
  if (result && v3 >= 0x1C)
  {
    v2 = 0;
    while (v3 - 77 < 2)
    {
      v4 = *(result + 20);
      if ((v4 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      v5 = *(result - 8);
LABEL_10:
      v2 = result;
      result = *v5;
LABEL_11:
      v3 = *(result + 16);
      if (!result || v3 <= 0x1B)
      {
        goto LABEL_13;
      }
    }

    if (v3 != 62)
    {
      goto LABEL_11;
    }

    v4 = *(result + 20);
LABEL_9:
    v5 = (result - 32 * (v4 & 0x7FFFFFF));
    goto LABEL_10;
  }

LABEL_13:
  if (v3 == 5)
  {
    do
    {
      v6 = *(result + 18);
      v7 = v6 > 0x32;
      v8 = (1 << v6) & 0x6000400000000;
      if (!v7 && v8 != 0)
      {
        v2 = result;
        result = *(result - 32 * (*(result + 20) & 0x7FFFFFF));
      }
    }

    while (result && *(result + 16) == 5);
  }

  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

BOOL MTLBoundsCheck::checkAddressSpace(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if ((v1 & 0xFE) == 0x12)
  {
    v1 = *(**(*a1 + 16) + 8);
  }

  return (v1 >> 8) - 1 < 2;
}

uint64_t MTLBoundsCheck::gpuOperationToResourceUsage(unsigned int a1)
{
  if (a1 > 4)
  {
    return 3;
  }

  else
  {
    return dword_257A6DA80[a1];
  }
}

llvm::NamedMDNode *MTLBoundsCheck::getQualifiedFunctionsMetadata@<X0>(MTLBoundsCheck *this@<X0>, llvm::Module *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = 1;
  v12 = 1;
  if (*a2)
  {
    v10[0] = a2;
    v4 = 3;
  }

  v11 = v4;
  result = llvm::Module::getNamedMetadata(this, v10);
  v6 = result;
  if (result)
  {
    result = llvm::NamedMDNode::getNumOperands(result);
    v7 = result;
    if (result)
    {
      v8 = 0;
      do
      {
        Operand = llvm::NamedMDNode::getOperand(v6);
        v10[0] = *(*(Operand - 8 * *(Operand + 8)) + 128);
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a3, v10);
        *(result + 1) = Operand;
        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

llvm::NamedMDNode *MTLBoundsCheck::getMetalMetadata@<X0>(uint64_t *__return_ptr a1@<X8>, MTLBoundsCheck *this@<X0>)
{
  v13[0] = "air.vertex";
  v14 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.kernel";
  v14 = 259;
  v5 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.fragment";
  v14 = 259;
  v6 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.intersection";
  v14 = 259;
  v7 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.visible";
  v14 = 259;
  v8 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.mesh";
  v14 = 259;
  v9 = llvm::Module::getNamedMetadata(this, v13);
  v13[0] = "air.object";
  v14 = 259;
  result = llvm::Module::getNamedMetadata(this, v13);
  if (NamedMetadata)
  {
    result = llvm::NamedMDNode::getOperand(NamedMetadata);
    *a1 = 0;
  }

  else
  {
    if (v5)
    {
      result = llvm::NamedMDNode::getOperand(v5);
      v11 = 2;
    }

    else
    {
      if (v6)
      {
        result = llvm::NamedMDNode::getOperand(v6);
        v12 = 1;
        *a1 = 1;
        a1[1] = result;
        goto LABEL_7;
      }

      if (v7)
      {
        result = llvm::NamedMDNode::getOperand(v7);
        v11 = 3;
      }

      else if (v8)
      {
        result = llvm::NamedMDNode::getOperand(v8);
        v11 = 4;
      }

      else if (v9)
      {
        result = llvm::NamedMDNode::getOperand(v9);
        v11 = 5;
      }

      else
      {
        if (!result)
        {
          v12 = 0;
          *a1 = 0;
          goto LABEL_7;
        }

        result = llvm::NamedMDNode::getOperand(result);
        v11 = 6;
      }
    }

    *a1 = v11;
  }

  a1[1] = result;
  v12 = 1;
LABEL_7:
  *(a1 + 16) = v12;
  return result;
}

uint64_t MTLBoundsCheck::SerializedData::fromMetaData(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 - 8 * *(a2 + 8));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(*v3 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = (*(v9 - 8 * v7) - 8 * *(*(v9 - 8 * v7) + 8));
      v11 = *(*v10 + 128);
      v12 = (v11 + 24);
      if (*(v11 + 32) >= 0x41u)
      {
        v12 = *v12;
      }

      LODWORD(String) = *v12;
      v13 = *(v10[1] + 128);
      v14 = (v13 + 24);
      if (*(v13 + 32) >= 0x41u)
      {
        v14 = *v14;
      }

      HIDWORD(String) = *v14;
      v15 = *(v10[2] + 128);
      v16 = (v15 + 24);
      if (*(v15 + 32) >= 0x41u)
      {
        v16 = *v16;
      }

      LODWORD(v34) = *v16;
      v17 = *(v10[3] + 128);
      v18 = (v17 + 24);
      if (*(v17 + 32) >= 0x41u)
      {
        v18 = *v18;
      }

      HIDWORD(v34) = *v18;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(v2 + 112, &String);
      ++v8;
      v7 = *(v5 + 8);
      v9 += 8;
    }

    while (v8 < v7);
  }

  v19 = *(v4 + 8);
  if (v19)
  {
    v20 = 0;
    v21 = v4;
    do
    {
      v22 = (*(v21 - 8 * v19) - 8 * *(*(v21 - 8 * v19) + 8));
      v23 = *(*v22 + 128);
      v24 = (v23 + 24);
      if (*(v23 + 32) >= 0x41u)
      {
        v24 = *v24;
      }

      LODWORD(String) = *v24;
      v25 = *(v22[1] + 128);
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      HIDWORD(String) = *v26;
      v27 = *(v22[2] + 128);
      v28 = (v27 + 24);
      if (*(v27 + 32) >= 0x41u)
      {
        v28 = *v28;
      }

      LODWORD(v34) = *v28;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(v2 + 384, &String);
      ++v20;
      v19 = *(v4 + 8);
      v21 += 8;
    }

    while (v20 < v19);
  }

  v29 = *(v6 + 8);
  if (v29)
  {
    v30 = 0;
    v31 = v6;
    do
    {
      String = llvm::MDString::getString(*(v31 - 8 * v29));
      v34 = v32;
      result = llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(v2, &String);
      ++v30;
      v29 = *(v6 + 8);
      v31 += 8;
    }

    while (v30 < v29);
  }

  *(v2 + 650) = 1;
  return result;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, a2[1]);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 16 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 16 * v4 - 16;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(a1, *a2, *(a2 + 2));
    v6 = *(a1 + 8);
  }

  else
  {
    v4 = *a1 + 12 * v3;
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
  }

  return *a1 + 12 * v6 - 12;
}

uint64_t llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<std::string,false>::growAndEmplaceBack<llvm::StringRef>(a1, a2);
  }

  v4 = a2[1];
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = (*a1 + 24 * v3);
  v6 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v5[23] = v4;
  if (v4)
  {
    memmove(v5, v6, v4);
  }

  v5[v4] = 0;
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

uint64_t MTLBoundsCheck::SerializedData::dump(MTLBoundsCheck::SerializedData *this)
{
  result = printf("threadgroupArgumentOffset: %d\nthreadgroupArgumentMask: %X\nserializedFromMetadata: %d\n", *(this + 158), *(this + 159), *(this + 650));
  v3 = *(this + 30);
  if (v3)
  {
    v4 = *(this + 14);
    v5 = &v4[4 * v3];
    do
    {
      v6 = (*(this + 48) + 12 * *v4);
      v7 = *this + 24 * *v6;
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = *this + 24 * v6[1];
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      result = printf("Location: %s:%d  :: %s, line: %d, col: %d, inlinedAt: %d\n", v7, v6[2], v8, v4[1], v4[2], v4[3]);
      v4 += 4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t MTLBoundsCheck::SerializedData::toMetaData(MTLBoundsCheck::SerializedData *this, llvm::LLVMContext *a2, unsigned int a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  llvm::IntegerType::get();
  v25[0] = v26;
  v25[1] = 0x1000000000;
  v23[0] = v24;
  v23[1] = 0x1000000000;
  v21[0] = v22;
  v21[1] = 0x1000000000;
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(this + 14);
    v6 = v5 + 16 * v4;
    do
    {
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v16 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v17 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v18 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(&v19, &Impl, 4);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v25, &Impl);
      if (v19 != v20)
      {
        free(v19);
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  v7 = *(this + 98);
  if (v7)
  {
    v8 = *(this + 48);
    v9 = v8 + 12 * v7;
    do
    {
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v16 = llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      v17 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v19, &Impl, 3);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v21, &Impl);
      if (v19 != v20)
      {
        free(v19);
      }

      v8 += 12;
    }

    while (v8 != v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    v11 = *this;
    v12 = 24 * v10;
    do
    {
      v19 = llvm::MDString::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v19);
      v11 += 24;
      v12 -= 24;
    }

    while (v12);
  }

  Impl = llvm::MDTuple::getImpl();
  v16 = llvm::MDTuple::getImpl();
  v17 = llvm::MDTuple::getImpl();
  llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v19, &Impl, 3);
  v13 = llvm::MDTuple::getImpl();
  if (v19 != v20)
  {
    free(v19);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v13;
}

void sub_2579C8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a14 != &a16)
  {
    free(a14);
  }

  if (a20 != v40)
  {
    free(a20);
  }

  if (a38 != v39)
  {
    free(a38);
  }

  v43 = *(v41 - 232);
  if (v43 != v38)
  {
    free(v43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::getLocationIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 18)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974 && *(String + 16) == 30821;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::getAddressSpace(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 17)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x726464612E726961 && *(String + 8) == 0x636170735F737365 && *(String + 16) == 101;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::setLocationIndex(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a1 - 8 * v2 + 8 * v4);
    if (!*v5)
    {
      String = llvm::MDString::getString(v5);
      if (v7 == 18)
      {
        v8 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
        if (v8 && *(String + 16) == 30821)
        {
          break;
        }
      }
    }

    ++v4;
    v2 = *(a1 + 8);
    if (v4 >= v2)
    {
      return 0;
    }
  }

  v11 = *(a1 + 16);
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 4) != 0)
  {
    v12 = *v12;
  }

  llvm::Type::getInt32Ty(v12, 0x12);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDNode::replaceOperandWith();
  return 1;
}

uint64_t MTLBoundsCheck::getArgTypeName@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *(v8 - 8 * v5);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 17)
        {
          v11 = *result == 0x5F6772612E726961 && *(result + 8) == 0x6D616E5F65707974 && *(result + 16) == 101;
          v5 = *(v6 + 8);
          if (v11)
          {
            result = llvm::MDString::getString(*(v8 - 8 * v5 + 8));
            *a3 = result;
            *(a3 + 8) = v12;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = *(v6 + 8);
        }
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

llvm::MDString *MTLBoundsCheck::getArgName@<X0>(llvm::MDString *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 2);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *(v8 - v5);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 12)
        {
          v10 = *result == 0x5F6772612E726961 && *(result + 2) == 1701667182;
          v5 = *(v6 + 2);
          if (v10)
          {
            result = llvm::MDString::getString((v8 - v5)[1]);
            *a3 = result;
            *(a3 + 8) = v11;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = *(v6 + 2);
        }
      }

      ++v7;
      v8 = (v8 + 8);
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

__n128 MTLBoundsCheck::getArgAccessType@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * v5);
      if (!*v9)
      {
        String = llvm::MDString::getString(v9);
        v13 = String;
        v14 = v11;
        if (v11 == 14)
        {
          if (!memcmp(String, "air.read_write", 0xEuLL) || (*v13 == 0x746972772E726961 ? (v15 = *(v13 + 6) == 0x796C6E6F5F657469) : (v15 = 0), v15))
          {
LABEL_19:
            *a3 = v13;
            *(a3 + 8) = v14;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else if (v11 == 9)
        {
          if (!memcmp(String, "air.write", 9uLL))
          {
            goto LABEL_19;
          }
        }

        else if (v11 == 8 && *String == 0x646165722E726961)
        {
          goto LABEL_19;
        }
      }

      ++v7;
      v5 = *(a1 + 8);
      v8 += 8;
    }

    while (v7 < v5);
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[1].n128_u64[0];
  return result;
}

uint64_t MTLBoundsCheck::getStructTypeInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1;
  do
  {
    v5 = *(v4 - 8 * v1);
    if (!*v5)
    {
      String = llvm::MDString::getString(v5);
      if (v7 == 20)
      {
        v9 = *String == 0x757274732E726961 && *(String + 8) == 0x5F657079745F7463 && *(String + 16) == 1868983913;
        v1 = *(a1 + 8);
        if (v9)
        {
          return *(v4 - 8 * v1 + 8);
        }
      }

      else
      {
        v1 = *(a1 + 8);
      }
    }

    ++v3;
    v4 += 8;
  }

  while (v3 < v1);
  return 0;
}

void sub_2579CFCEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  MEMORY[0x259C6B890](v42, 0x10F3C404E915695, a3, a4, a5, a6, a7, a8);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN14MTLBoundsCheck29MTLAddBoundsCheckPipelineToPMERN4llvm6legacy11PassManagerEPNS_14SharedPassDataERKNS_7OptionsEPNS_10StatisticsE_block_invoke()
{
  v0 = getenv("MTL_BOUNDS_PRINT_PASSES");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::printPasses = result != 0;
  return result;
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  result = 16;
  switch(*(a2 + 2))
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
      return result;
    case 8u:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 2) >> 8;
    case 0xFu:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v7 = *llvm::DataLayout::getStructLayout();
      goto LABEL_14;
    case 0x11u:
      v8 = *(a2 + 4);
      v7 = v8 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_14:
      result = 8 * v7;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x259C6B350](a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v5);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

void IndirectNameRenamePass::~IndirectNameRenamePass(IndirectNameRenamePass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t IndirectNameRenamePass::runOnModule(IndirectNameRenamePass *this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 == a2 + 24)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v3)
      {
        v6 = (v3 - 56);
      }

      else
      {
        v6 = 0;
      }

      v5 |= IndirectNameRenamePass::runOnFunction(this, v6);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return v5 & 1;
}

uint64_t IndirectNameRenamePass::runOnFunction(IndirectNameRenamePass *this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  if (v3 < 0x11)
  {
    return 0;
  }

  v4 = *Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572;
  if (!v4 || *(Name + 16) != 46)
  {
    return 0;
  }

  v11[0] = (Name + 17);
  v11[1] = (v3 - 17);
  llvm::StringRef::str(v11, __p);
  v10 = 260;
  v9 = __p;
  llvm::Value::setName();
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_2579D06B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    v4[a2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void MTLVertexFetchAnalysisPass::~MTLVertexFetchAnalysisPass(MTLVertexFetchAnalysisPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLVertexFetchAnalysisPass::runOnModule(MTLVertexFetchAnalysisPass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(&v17, a2);
  v3 = v18 == 1 && v17 == 0;
  if (!v3 || (*(*(this + 4) + 20) & 0x80) == 0)
  {
    return 0;
  }

  result = llvm::Module::getFunction();
  if (result)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 257;
    v5 = result + 72;
    for (i = *(result + 80); i != v5; i = *(i + 8))
    {
      v7 = i - 24;
      if (!i)
      {
        v7 = 0;
      }

      v8 = v7 + 40;
      for (j = *(v7 + 48); j != v8; j = *(j + 8))
      {
        if (j)
        {
          v10 = j - 24;
        }

        else
        {
          v10 = 0;
        }

        if (*(v10 + 16) == 60)
        {
          MetalModulePass::cacheStaticBoundsInfo(this, v10, &v11);
        }
      }
    }

    return 1;
  }

  return result;
}

void MTLGEPAnalysisPass::~MTLGEPAnalysisPass(MTLGEPAnalysisPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGEPAnalysisPass::runOnModule(MTLGEPAnalysisPass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(v25, a2);
  v4 = v26;
  if (v26 == 1)
  {
    v5 = v25[1];
    std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(*(this + 8) + 168);
    MTLGEPAnalysisPass::trackGlobals(this);
    v6 = a2 + 24;
    for (i = *(a2 + 4); i != v6; i = *(i + 8))
    {
      if (i)
      {
        v8 = (i - 56);
      }

      else
      {
        v8 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v8) & 1) == 0)
      {
        MTLGEPAnalysisPass::trackArguments(this, v8);
        MTLGEPAnalysisPass::trackAllocas(this, v8);
        if (*(*(this + 4) + 21))
        {
          v9 = *(this + 24);
          v33 = *(this + 8);
          v34 = v9;
          llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(v27, v8);
        }
      }
    }

    v10 = (v5 - 8 * *(v5 + 8));
    v11 = *(*v10 + 128);
    if (*(v11 + 96))
    {
      v12 = 0;
      v13 = 0;
      v14 = v10[2];
      v15 = v14;
      do
      {
        v16 = *(v15 - 8 * *(v14 + 8));
        if (*(v11 + 18))
        {
          llvm::Function::BuildLazyArguments(v11);
        }

        v17 = *(v11 + 88);
        MetalModulePass::getStaticBoundsInfo(this, (v17 + v12), v27);
        if (v32 == 1)
        {
          String = llvm::MDString::getString(*(v16 - 8 * *(v16 + 8) + 8));
          if (v19 == 10)
          {
            if (*String == 0x666675622E726961 && *(String + 8) == 29285)
            {
              LocationIndex = MTLBoundsCheck::getLocationIndex(v16);
              if ((v29 & 1) == 0)
              {
                v29 = 1;
              }

              v28 = LocationIndex;
            }
          }

          else if (v19 == 19)
          {
            v20 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
            if (v20 && *(String + 11) == 0x7265666675625F74)
            {
              v30 = 1;
              v31 = 1;
            }
          }

          MetalModulePass::cacheStaticBoundsInfo(this, v17 + v12, v27);
        }

        ++v13;
        v15 += 8;
        v12 += 40;
      }

      while (*(v11 + 96) > v13);
    }
  }

  return v4;
}

void MTLGEPAnalysisPass::trackGlobals(MTLGEPAnalysisPass *this)
{
  v1 = *(this + 6);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      v13 = v17;
      v14 = v17;
      v15 = 8;
      v16 = 0;
      if (*(*v5 + 2) == 15 && ((*(*v5 + 2) >> 8) - 1) <= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 256;
        v12 = 0;
        v6 = (*(*(this + 4) + 20) & 0x100000u) >> 20;
        LOBYTE(v11) = (*(*(this + 4) + 20) & 0x100000) == 0;
        HIBYTE(v11) = v6;
        v7 = v5;
        llvm::DataLayout::getTypeAllocSize(*(this + 7), v5[3]);
        v8 = llvm::TypeSize::operator unsigned long long();
        MetalModulePass::cacheStaticBoundsInfo(this, v5, &v7);
        MTLGEPAnalysisPass::trackSource(this, v5);
        if (v14 != v13)
        {
          free(v14);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void sub_2579D0E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (a16 != a15)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLGEPAnalysisPass::trackArguments(MTLGEPAnalysisPass *this, llvm::Function *a2)
{
  v3 = llvm::Function::args(a2);
  if (v3 != v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if (*(*v5 + 8) == 15 && ((*(*v5 + 8) >> 8) - 1) <= 1)
      {
        MTLGEPAnalysisPass::trackSource(this, v5);
        *v9 = 0;
        *&v9[8] = 0;
        v9[12] = 0;
        v9[16] = 0;
        *&v9[20] = 256;
        v9[22] = 0;
        MetalModulePass::getStaticBoundsInfo(this, v5, v7);
        if (v8 == 1)
        {
          *v9 = *v7;
          *&v9[15] = *&v7[15];
        }

        *v9 = v5;
        *&v9[8] = llvm::Argument::getDereferenceableBytes(v5);
        if ((v9[22] & 1) == 0)
        {
          *&v9[20] = 256;
        }

        MetalModulePass::cacheStaticBoundsInfo(this, v5, v9);
      }

      v5 = (v5 + 40);
    }

    while (v5 != v6);
  }
}

void MTLGEPAnalysisPass::trackAllocas(llvm::DataLayout **this, llvm::Function *a2)
{
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v6 = v5 + 40;
      for (i = *(v5 + 6); i != v6; i = i[1])
      {
        if (i)
        {
          v8 = (i - 3);
        }

        else
        {
          v8 = 0;
        }

        if (*(v8 + 16) == 59)
        {
          MTLGEPAnalysisPass::trackSource(this, v8);
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 256;
          v14 = 0;
          v9 = v8;
          llvm::DataLayout::getTypeAllocSize(this[7], *(v8 + 64));
          v10 = llvm::TypeSize::operator unsigned long long();
          v13 = 1;
          MetalModulePass::cacheStaticBoundsInfo(this, v8, &v9);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void MTLGEPAnalysisPass::trackSource(MTLGEPAnalysisPass *this, llvm::Value *a2)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v22 = a2;
  v24[0] = *(a2 + 1);
  v24[1] = 0;
  llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v25, v24);
  v7 = *(a2 + 16);
  v8 = v7 > 0x3B;
  v9 = (1 << v7) & 0x800000000200008;
  if (!v8 && v9 != 0)
  {
    v11 = *(this + 8);
    v24[0] = &v22;
    v12 = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v11 + 168), &v22, &std::piecewise_construct, v24);
    v24[0] = v22;
    std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(v12 + 3, v24, v24);
  }

  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  for (i = v26; v26; i = v26)
  {
    v14 = *(v25 + i - 1);
    v26 = i - 1;
    v19 = v14;
    v23 = 0;
    v24[0] = v14;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(v20, v24, &v23) & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v20, &v19, v24);
      v15 = *(this + 8);
      v23 = v19;
      v24[0] = &v23;
      v16 = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value *&&>,std::tuple<>>((v15 + 168), &v23, &std::piecewise_construct, v24);
      v24[0] = v22;
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(v16 + 3, v24, v24);
      v5 = v19;
      v17 = *(v19 + 16);
      if (!v19 || (v4 = v17 - 28, v17 < 0x1C))
      {
        if (!v19)
        {
          continue;
        }

        if (v17 != 5)
        {
          continue;
        }

        v18 = *(v19 + 9);
        if (v18 > 0x37 || ((1 << v18) & 0x83800430022000) == 0)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (MTLGEPAnalysisPass::shouldFollowInstruction(this, v4, v19))
      {
        v5 = v19;
LABEL_16:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v25, v25 + 8 * v26, *(v5 + 1), 0);
      }
    }
  }

  llvm::DenseMap<llvm::User *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::User *,void>,llvm::detail::DenseSetPair<llvm::User *>>::~DenseMap(v20, v4, v5, v6);
  if (v25 != v27)
  {
    free(v25);
  }
}

void sub_2579D12C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  if (a20 != &a22)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGEPAnalysisPass::shouldFollowInstruction(MTLGEPAnalysisPass *this, int a2, llvm::Instruction *a3)
{
  if (a3 && *(a3 + 16) == 84)
  {
    result = *(a3 - 4);
    if (!result)
    {
      return result;
    }

    if (*(result + 16))
    {
      return 0;
    }

    if (*(result + 24) != *(a3 + 9))
    {
      return 0;
    }

    Name = llvm::Value::getName(result);
    if (v5 < 7)
    {
      return 0;
    }

    if (*Name != 779250017 || *(Name + 3) != 1684300078)
    {
      if (v5 < 0xB)
      {
        return 0;
      }

      v7 = 0x626F756E64732E66;
      v8 = bswap64(*Name);
      if (v8 == 0x626F756E64732E66 && (v7 = 0x6E64732E666F6C64, v8 = bswap64(*(Name + 3)), v8 == 0x6E64732E666F6C64))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 < v7 ? -1 : 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return (a2 - 13) <= 0x2A && ((0x41C00218011uLL >> (a2 - 13)) & 1) != 0;
}

void *llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579D1460(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

void sub_2579D1714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(void *a1, void *a2, void *a3)
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

void *std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value *&&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
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

void sub_2579D1C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t llvm::Function::args(llvm::Function *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    return *(this + 11);
  }

  llvm::Function::BuildLazyArguments(this);
  v2 = *(this + 11);
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
  }

  return v2;
}

uint64_t llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *a1 = v4;
  DataLayout = llvm::Module::getDataLayout(v4);
  v6 = **a1;
  *(a1 + 8) = v6;
  *(a1 + 16) = DataLayout;
  *(a1 + 24) = llvm::Type::getInt32Ty(v6, v7);
  v8 = *(a2 + 80);

  return llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(a1, v8, a2 + 72);
}

{
  v2 = *(a2 + 16);
  if ((v2 - 61) > 0x22)
  {
    if ((v2 - 29) >= 0x1F)
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitLoadInst(a1, a2);
    }
  }

  else if (((1 << (v2 - 61)) & 0x7FF7FFFFELL) == 0)
  {
    if (v2 == 61)
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitStoreInst(a1, a2);
    }

    else
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitCallInst(a1, a2);
    }
  }

  return a1;
}

uint64_t llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 48);
      v8 = v6 + 40;
      if (v7 != v6 + 40)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitLoadInst(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16));
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

void *MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v11 = a3;
  v4 = *(*a3 + 8);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(*a3 + 16) + 8);
  }

  if ((v4 >> 8) - 1 <= 1)
  {
    v5 = result[4];
    ++*(result[5] + 8);
    v12 = &v11;
    result = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v5 + 168), &v11, &std::piecewise_construct, &v12);
    v6 = result[6];
    if (v6 < 2)
    {
      v8 = v3[5];
      v9 = (v8 + 16);
      v10 = (v8 + 12);
      if (v6)
      {
        v7 = v9;
      }

      else
      {
        v7 = v10;
      }
    }

    else
    {
      v7 = (v3[5] + 12);
    }

    ++*v7;
  }

  return result;
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitStoreInst(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16));
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitCallInst(uint64_t a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (!result || *(result + 16) || result[3] != *(a2 + 72))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xB)
  {
    if (v5 != 10)
    {
      return result;
    }

    if (*result != 0x6D6F74612E726961 || *(result + 4) != 25449)
    {
      return result;
    }

    goto LABEL_45;
  }

  v8 = *result != 0x6D656D2E6D766C6CLL || *(result + 3) != 0x7970636D656D2E6DLL;
  v9 = 0x6C6C766D2E6D656DLL;
  v10 = bswap64(*result);
  if (v10 == 0x6C6C766D2E6D656DLL && (v9 = 0x6D2E6D656D636D70, v10 = bswap64(*(result + 3)), v10 == 0x6D2E6D656D636D70))
  {
    v11 = 0;
  }

  else if (v10 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 || v11 == 0)
  {
    v13 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v14 = v13[4];
    MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *v13);
    v15 = a1;
    v16 = a2;
    v17 = v14;
LABEL_48:

    return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(v15, v16, v17);
  }

  if (*result == 0x6D656D2E6D766C6CLL && *(result + 3) == 0x7465736D656D2E6DLL)
  {
    v17 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v15 = a1;
    v16 = a2;
    goto LABEL_48;
  }

  if (*result == 0x6D6F74612E726961 && *(result + 4) == 25449)
  {
LABEL_45:
    v21 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(result, v5, *(a1 + 8));
    goto LABEL_46;
  }

  if (*result == 0x662E73646E756F62 && *(result + 3) == 0x646C6F662E73646ELL)
  {
    v21 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = **(*v21 + 16);
LABEL_46:
    llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), PtrTypeFromIntrinsicNameSuffix);
    llvm::TypeSize::operator unsigned long long();
    llvm::ConstantInt::get();
    return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, v21);
  }

  return result;
}

void MTLBoundsCheckPass::~MTLBoundsCheckPass(void **this)
{
  *this = &unk_2868EC018;
  if (*(this + 839) < 0)
  {
    operator delete(this[102]);
  }

  v2 = this[68];
  if (v2 != this + 70)
  {
    free(v2);
  }

  v3 = this[34];
  if (v3 != this + 36)
  {
    free(v3);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((this + 29));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 20), v4, v5, v6);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 17), v7, v8, v9);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC018;
  if (*(this + 839) < 0)
  {
    operator delete(this[102]);
  }

  v2 = this[68];
  if (v2 != this + 70)
  {
    free(v2);
  }

  v3 = this[34];
  if (v3 != this + 36)
  {
    free(v3);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((this + 29));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 20), v4, v5, v6);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 17), v7, v8, v9);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLBoundsCheckPass::runOnModule(MTLBoundsCheckPass *this, llvm::Module *a2, unsigned int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((*(*(*(this + 8) + 64) + 651) & 1) == 0)
  {
    MTLBoundsCheckPass::initLocalsWithModule(this, a2, a3);
    MetalMetadata = MTLBoundsCheck::getMetalMetadata(v51, a2);
    if (v52 == 1)
    {
      *(this + 23) = v51[1];
      v6 = llvm::dbgs(MetalMetadata);
      v7 = llvm::raw_ostream::operator<<(v6, "Bounds checking ", 0x10uLL);
      if (*(this + 839) >= 0)
      {
        v8 = this + 816;
      }

      else
      {
        v8 = *(this + 102);
      }

      v9 = llvm::raw_ostream::write(v7, v8);
      llvm::raw_ostream::operator<<(v9, "\n", 1uLL);
      v10 = *(this + 23);
      v11 = *(v10 + 8);
      v12 = -v11;
      v50 = *(*(v10 - 8 * v11) + 128);
      *(this + 840) = 1;
      for (i = *(a2 + 2); i != (a2 + 8); i = i[1])
      {
        v14 = i - 7;
        if (!i)
        {
          v14 = 0;
        }

        v15 = *(*v14 + 8);
        if ((v15 & 0xFE) == 0x12)
        {
          v15 = *(**(*v14 + 16) + 8);
        }

        v16 = (v15 >> 8) - 1;
        if (v16 < 2 || (v14[33] & 0x1C) != 0)
        {
          *(this + 840) = 0;
          v17 = *(*(this + 8) + 64);
          v18 = *(v17 + 648);
          v19 = (v18 >> 1) & 1;
          if (v16 < 2)
          {
            v19 = 1;
          }

          if (v19)
          {
            v20 = 2;
          }

          else
          {
            v20 = 0;
          }

          *(v17 + 648) = v20 | v18 & 0xFD;
          v10 = *(this + 23);
          v12 = -*(v10 + 8);
          break;
        }
      }

      v21 = *(v10 + 8 * v12 + 16);
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = v21;
        do
        {
          String = llvm::MDString::getString(*(*(v26 - 8 * v22) - 8 * *(*(v26 - 8 * v22) + 8) + 8));
          if (v28 == 10)
          {
            if (*String == 0x666675622E726961 && *(String + 8) == 29285)
            {
              v32 = v50;
              if (*(v50 + 9))
              {
                llvm::Function::BuildLazyArguments(v50);
                v32 = v50;
              }

              String = llvm::Value::hasNUsesOrMore((*(v32 + 11) + v23));
              v25 |= String;
            }
          }

          else if (v28 == 19)
          {
            v29 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
            if (v29 && *(String + 11) == 0x7265666675625F74)
            {
              *(this + 840) = 0;
              *(*(*(this + 8) + 64) + 648) |= 4u;
              v25 = 1;
            }
          }

          ++v24;
          v22 = *(v21 + 8);
          v26 += 8;
          v23 += 40;
        }

        while (v24 < v22);
        if (v25)
        {
          v33 = *(*(*(this + 8) + 64) + 648);
          if ((v33 & 4) != 0)
          {
            v34 = llvm::dbgs(String);
            String = llvm::raw_ostream::operator<<(v34, "Instrumentation failure: argumentBuffer\n", 0x28uLL);
            v33 = *(*(*(this + 8) + 64) + 648);
          }

          if ((v33 & 2) != 0)
          {
            v35 = llvm::dbgs(String);
            llvm::raw_ostream::operator<<(v35, "Instrumentation failure: globalConstants\n", 0x29uLL);
          }

          for (j = *(a2 + 4); j != (a2 + 24); j = j[1])
          {
            if (j)
            {
              v37 = (j - 7);
            }

            else
            {
              v37 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v37) & 1) == 0 && !llvm::Value::getMetadata())
            {
              MTLBoundsCheckPass::instrumentFunction(this, v37);
            }
          }

          v38 = *(this + 70);
          if (v38)
          {
            v39 = *(this + 34);
            v40 = 8 * v38;
            do
            {
              v39 += 8;
              llvm::Instruction::setMetadata();
              v40 -= 8;
            }

            while (v40);
          }

          *(this + 70) = 0;
          v41 = *(this + 138);
          if (v41)
          {
            v42 = *(this + 68);
            v43 = 8 * v41;
            do
            {
              v44 = *v42++;
              llvm::Instruction::eraseFromParent(v44);
              v43 -= 8;
            }

            while (v43);
          }

          *(this + 138) = 0;
          v45 = *(v50 + 3);
          v53[0] = "mtl.instrument_wrapper";
          v54 = 259;
          v46 = llvm::Function::Create(v45, 0, v53, *(this + 6));
          *(v50 + 8) = *(v50 + 8) & 0xFFFFBFC0 | 0x4007;
          llvm::GlobalValue::setLinkage(v46, 0);
          *(v46 + 14) = *(v50 + 14);
          v47 = *(this + 5);
          v53[0] = "entry";
          v54 = 259;
          llvm::BasicBlock::Create(v47, v53, v46, 0, v48);
        }
      }
    }
  }

  return 0;
}

void sub_2579D2A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a18 != v28)
  {
    free(a18);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a28);
  _Unwind_Resume(a1);
}

void MTLBoundsCheckPass::initLocalsWithModule(MTLBoundsCheckPass *this, llvm::Module *a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  *(this + 24) = llvm::PointerType::get();
  *(this + 25) = llvm::PointerType::get();
  *(this + 26) = llvm::PointerType::get();
  *(this + 27) = llvm::PointerType::get();
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 29);
  std::string::operator=(this + 34, (*(this + 6) + 192));
  v4 = *(this + 6);
  v19.__r_.__value_.__r.__words[0] = "air.requestHash";
  v20 = 259;
  if (llvm::Module::getNamedMetadata(v4, &v19))
  {
    v5 = *(this + 6);
    v19.__r_.__value_.__r.__words[0] = "air.requestHash";
    v20 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v5, &v19);
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    *&v21 = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    *(&v21 + 1) = v8;
    llvm::StringRef::str(&v21, __p);
    if (*(this + 839) >= 0)
    {
      v9 = *(this + 839);
    }

    else
    {
      v9 = *(this + 103);
    }

    v10 = &v19;
    std::string::basic_string[abi:ne200100](&v19, v9 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v19.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (*(this + 839) >= 0)
      {
        v11 = this + 816;
      }

      else
      {
        v11 = *(this + 102);
      }

      memmove(v10, v11, v9);
    }

    *(&v10->__r_.__value_.__l.__data_ + v9) = 58;
    if ((v18 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = __p[1];
    }

    v14 = std::string::append(&v19, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    *&v21 = v14->__r_.__value_.__l.__size_;
    *(&v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 839) < 0)
    {
      operator delete(*(this + 102));
    }

    *(this + 102) = v15;
    *(this + 103) = v21;
    *(this + 831) = *(&v21 + 7);
    *(this + 839) = v16;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2579D2D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTLBoundsCheckPass::instrumentFunction(llvm::DataLayout **this, llvm::Function *a2)
{
  v72[32] = *MEMORY[0x277D85DE8];
  v70 = v72;
  v71 = 0x800000000;
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 == a2 + 72)
  {
    goto LABEL_109;
  }

  v54 = **(a2 + 5);
  do
  {
    v5 = v3 - 24;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = v5 + 40;
    for (i = *(v5 + 6); i != v6; i = i[1])
    {
      if (i)
      {
        v8 = i - 3;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v8 + 16);
      if (i && v9 == 60)
      {
        if (*(this[4] + 8))
        {
          v59 = *(v8 - 4);
          v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], **(*v59 + 2)) + 7) >> 3);
          v66 = v10 == 1;
          v11 = *(*v59 + 2);
          if ((v11 & 0xFE) == 0x12)
          {
            v11 = *(**(*v59 + 2) + 8);
          }

          if ((v11 >> 8) - 1 <= 1)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (i && v9 == 61)
        {
          if ((*(this[4] + 8) & 2) != 0)
          {
            v59 = *(v8 - 4);
            v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], **(*v59 + 2)) + 7) >> 3);
            v66 = v12 == 1;
            v13 = *(*v59 + 2);
            if ((v13 & 0xFE) == 0x12)
            {
              v13 = *(**(*v59 + 2) + 8);
            }

            if ((v13 >> 8) - 1 <= 1)
            {
              v55[0] = (i - 3);
              LOBYTE(v64) = 0;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(&v70, v55, &v59, &v65, &v64);
            }
          }

          continue;
        }

        if (!i)
        {
          continue;
        }

        if (v9 != 84)
        {
          continue;
        }

        v14 = *(v8 - 4);
        if (!v14 || *(v14 + 16) || *(v14 + 24) != v8[9])
        {
          continue;
        }

        Name = llvm::Value::getName(v14);
        if (v16 >= 0xB)
        {
          v17 = *Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7970636D656D2E6DLL;
          v18 = !v17;
          v19 = *Name ^ 0x6D656D2E6D766C6CLL | *(Name + 3) ^ 0x706D636D656D2E6DLL;
          v17 = v19 == 0;
          v20 = v19 != 0;
          v21 = v17;
          LOBYTE(v63) = v21;
          if (v18)
          {
            v22 = !v20;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = &v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
            v65 = *v23;
            v24 = v23[4];
            v59 = v24;
            v55[0] = v23[8];
            v25 = *(*v65 + 8);
            if ((v25 & 0xFE) == 0x12)
            {
              v25 = *(**(*v65 + 16) + 8);
            }

            if ((v25 >> 8) - 1 <= 1)
            {
              v64 = (i - 3);
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, &v64, &v65, v55, &v63);
              v24 = v59;
            }

            v26 = *v24;
            v27 = *(*v24 + 2);
            if ((v27 & 0xFE) == 0x12)
            {
              v27 = *(**(v26 + 2) + 8);
            }

            if ((v27 >> 8) - 1 <= 1)
            {
              v64 = (i - 3);
              LOBYTE(v58) = 1;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, &v64, &v59, v55, &v58);
            }

            continue;
          }

          if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
          {
            v33 = &v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
            v65 = *v33;
            v59 = v33[8];
            v34 = *(*v65 + 8);
            if ((v34 & 0xFE) == 0x12)
            {
              v34 = *(**(*v65 + 16) + 8);
            }

            if ((v34 >> 8) - 1 <= 1)
            {
              v55[0] = (i - 3);
              LOBYTE(v64) = 0;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, v55, &v65, &v59, &v64);
            }

            continue;
          }
        }

        else
        {
          LOBYTE(v63) = 0;
          if (v16 != 10)
          {
            continue;
          }
        }

        if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
        {
          v59 = v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
          if (*(*v59 + 8) != 15)
          {
            goto LABEL_109;
          }

          PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(Name, v16, v54);
          v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], PtrTypeFromIntrinsicNameSuffix) + 7) >> 3);
          v66 = v31 == 1;
          v32 = *(*v59 + 2);
          if ((v32 & 0xFE) == 0x12)
          {
            v32 = *(**(*v59 + 2) + 8);
          }

          if ((v32 >> 8) - 1 <= 1)
          {
LABEL_16:
            v55[0] = (i - 3);
            LOBYTE(v64) = 1;
            llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(&v70, v55, &v59, &v65, &v64);
            continue;
          }
        }
      }
    }

    v3 = *(v3 + 1);
  }

  while (v3 != v2);
  v35 = v71;
  v36 = v70;
  *this[106] += v71;
  if (v35)
  {
    v37 = &v36[4 * v35];
    do
    {
      v64 = *v36;
      MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(&v65, &v64);
      v38 = *v64;
      v63 = v36[1];
      v39 = **(*v63 + 16);
      if (v39)
      {
        v40 = *(v39 + 8) == 15;
      }

      else
      {
        v40 = 0;
      }

      if (!v40 || ((v41 = **(v39 + 16)) != 0 ? (v42 = *(v41 + 8) == 16) : (v42 = 0), !v42 || !isSpecialStructType(v41)))
      {
        if ((*(this[4] + 20) & 0x20) != 0)
        {
          v43 = this[8];
          v59 = &v63;
          for (j = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(v43 + 21, &v63, &std::piecewise_construct, &v59)[5]; j; j = *j)
          {
            MetalModulePass::getStaticBoundsInfo(this, j[2], &v59);
          }
        }

        MetalModulePass::getStaticBoundsInfo(this, v64, &v59);
        if (v62 != 1 || (v61 & 1) == 0)
        {
          MetalModulePass::getStaticBoundsInfo(this, v63, &v59);
          if (v62 != 1 || (v61 & 1) == 0)
          {
            MTLBoundsCheckPass::emitPointerCheck(&v59, this, &v65, v63, v36[2]);
            if ((v59 & 1) == 0)
            {
              v45 = this[106];
              if (*(v60 + 16) >= 0x15u)
              {
                ++*(v45 + 24);
              }

              ++*(v45 + 1);
              llvm::IRBuilderBase::SetInsertPoint(&v65, v64);
              v47 = this[4];
              if (*(v47 + 3) == 1)
              {
                v57 = 0;
                v58 = 0;
                if (llvm::Value::hasNUsesOrMore(*v36))
                {
                  v56 = 257;
                  PHI = llvm::IRBuilderBase::CreatePHI(&v65, v38, 0, v55, v48);
                  llvm::SplitBlockAndInsertIfThenElse();
                  llvm::Value::replaceAllUsesWith();
                  llvm::IRBuilderBase::SetInsertPoint(&v65, v57);
                  MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
                  llvm::Instruction::moveBefore();
                  llvm::PHINode::addIncoming(PHI, v64, *(v58 + 40));
                  NullValue = llvm::Constant::getNullValue(v38, v50);
                  llvm::PHINode::addIncoming(PHI, NullValue, *(v57 + 5));
                }

                else
                {
                  llvm::SplitBlockAndInsertIfThenElse();
                  llvm::IRBuilderBase::SetInsertPoint(&v65, v57);
                  MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
                  llvm::Instruction::moveBefore();
                }
              }

              else if ((*(v47 + 20) & 2) != 0)
              {
                v56 = 257;
                llvm::IRBuilderBase::CreateNot(&v65, v60, v55, v46);
                inserted = llvm::SplitBlockAndInsertIfThen();
                llvm::IRBuilderBase::SetInsertPoint(&v65, inserted);
                MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
              }

              llvm::IRBuilderBase::SetInsertPoint(&v65, v64);
              v53 = MTLBoundsCheckPass::emitPointerConvert(this, &v65, &v59, v63);
              if (v53 && v53 != v63)
              {
                llvm::User::replaceUsesOfWith();
              }
            }
          }
        }
      }

      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v69);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v68);
      if (v65 != &v67)
      {
        free(v65);
      }

      v36 += 4;
    }

    while (v36 != v37);
  }

LABEL_109:
  if (v70 != v72)
  {
    free(v70);
  }
}

void sub_2579D35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  if (a53 != a11)
  {
    free(a53);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t a3)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (a3 <= v6 - v5)
  {
    if (a3)
    {
      memcpy(v5, a2, a3);
      *(this + 4) += a3;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2);
  }
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(uint64_t a1, llvm::Instruction **a2, llvm::Value **a3, uint64_t a4, BOOL *a5)
{
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(a1, a2, a3, a4, a5);
  }

  else
  {
    v8 = (*a1 + 32 * v7);
    v9 = *a2;
    v10 = *a3;
    v11 = llvm::TypeSize::operator unsigned long long();
    MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(v8, v9, v10, v11, *a5);
    v12 = (*(a1 + 8) + 1);
    *(a1 + 8) = v12;
    return *a1 + 32 * v12 - 32;
  }
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v5 = *(a1 + 2);
  if (v5 >= *(a1 + 3))
  {
    return llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(a1, a2, a3, a4, a5);
  }

  v6 = *a1;
  v7 = *a1 + 32 * v5;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  v11 = (v5 + 1);
  *(a1 + 2) = v11;
  return v6 + 32 * v11 - 32;
}

void MTLBoundsCheckPass::emitPointerCheck(uint64_t *__return_ptr a1@<X8>, MTLBoundsCheckPass *this@<X0>, MTLIRBuilder *a3@<X1>, llvm::Value *a4@<X3>, llvm::Value *a5@<X4>)
{
  *(a1 + 1) = 0u;
  v6 = a1 + 1;
  *(a1 + 52) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0;
  v7 = *(this + 4);
  if (!*(v7 + 4))
  {
    return;
  }

  if ((*(v7 + 20) & 0x20) == 0)
  {
    goto LABEL_53;
  }

  v12 = MTLBoundsCheckPass::backtracePointer(this, a4);
  if (!v12)
  {
    ++*(*(this + 106) + 12);
    goto LABEL_53;
  }

  getStaticBoundsInfo(v12, &v136);
  if (v139 == 1)
  {
    *a1 = 1;
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = llvm::ConstantInt::get();
    a1[5] = 0;
    return;
  }

  v132 = a3;
  if (v138 == 1)
  {
    v13 = llvm::ConstantInt::get();
  }

  else
  {
    v13 = 0;
  }

  a1[5] = v13;
  v14 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>(this + 29, &v136);
  if (v14)
  {
    goto LABEL_38;
  }

  v141 = 0uLL;
  v143 = 0;
  UDiv = 0;
  v15 = *(a3 + 6);
  v129 = (a3 + 48);
  v130 = *(a3 + 7);
  v16 = *(*(v15 + 56) + 80);
  if (v16)
  {
    v17 = (v16 - 24);
  }

  else
  {
    v17 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v17);
  for (i = *(FirstNonPHIOrDbg + 16); i == 59; i = *(v23 + 16))
  {
    v20 = *(FirstNonPHIOrDbg + 32);
    v21 = *(FirstNonPHIOrDbg + 40) + 40;
    FirstNonPHIOrDbg = v20 - 24;
    if (v20)
    {
      v22 = v20 == v21;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20 - 24;
    }
  }

  llvm::IRBuilderBase::SetInsertPoint(a3, FirstNonPHIOrDbg);
  v24 = *(v136 + 16);
  if (v24 < 4 || v24 == 59)
  {
    v25 = *(this + 9);
    WORD4(v147) = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a3, 47, v136, v25, &v145);
    *&v141 = Cast;
    v27 = llvm::ConstantInt::get();
    WORD4(v147) = 257;
    *(&v141 + 1) = llvm::IRBuilderBase::CreateAdd(v132, Cast, v27, &v145, 0, 0);
    UDiv = llvm::ConstantInt::get();
LABEL_26:
    v143 = 1;
    goto LABEL_27;
  }

  if (v138 == 1)
  {
    v105 = MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(*(this + 8));
    v106 = *(v105 + 3);
    WORD4(v147) = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a3, v106, v105, 0, 0, &v145);
    v109 = *(*(this + 4) + 20);
    if ((v109 & 0x2000) == 0)
    {
      Int64Ty = llvm::Type::getInt64Ty(**(this + 6), v107);
      WORD4(v147) = 257;
      ConstGEP1_32 = llvm::IRBuilderBase::CreateConstGEP1_32(v132, Int64Ty, AlignedLoad, 2 * v137, &v145);
      WORD4(v147) = 257;
      v127 = llvm::IRBuilderBase::CreateConstGEP1_32(v132, Int64Ty, AlignedLoad, (2 * v137) | 1, &v145);
      WORD4(v147) = 257;
      *&v141 = llvm::IRBuilderBase::CreateAlignedLoad(v132, Int64Ty, ConstGEP1_32, 0, 0, &v145);
      WORD4(v147) = 257;
      *(&v141 + 1) = llvm::IRBuilderBase::CreateAlignedLoad(v132, Int64Ty, v127, 0, 0, &v145);
      v109 = *(*(this + 4) + 20);
    }

    if ((v109 & 0x100) != 0)
    {
      if ((v109 & 0x2000) != 0)
      {
        Int32Ty = llvm::Type::getInt32Ty(**(this + 6), v107);
        WORD4(v147) = 257;
        ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(v132, Int32Ty, AlignedLoad, v137, &v145);
        WORD4(v147) = 257;
        v113 = llvm::IRBuilderBase::CreateAlignedLoad(v132, Int32Ty, ConstGEP1_64, 0, 0, &v145);
      }

      else
      {
        WORD4(v147) = 257;
        Sub = llvm::IRBuilderBase::CreateSub(v132, *(&v141 + 1), v141, &v145, 0, 0);
        v112 = *(this + 10);
        v157 = 257;
        v113 = llvm::IRBuilderBase::CreateCast(v132, 38, Sub, v112, v156);
      }

      UDiv = v113;
    }

    if (*(*(this + 4) + 21))
    {
      v118 = *(v136 + 8);
      if (!v118)
      {
        goto LABEL_26;
      }

      v119 = -1;
      do
      {
        v120 = *(v118 + 24);
        v156[0] = 0;
        if (v120)
        {
          v121 = MTLBoundsCheck::lookThroughPointerOps(v120, 0);
          v146 = xmmword_257A6DA40;
          v147 = xmmword_257A6DA50;
          v145 = "bounds.fold";
          v148 = 3;
          v149 = v156;
          if (llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v145, v121))
          {
            v122 = (v156[0] + 24);
            if (*(v156[0] + 32) >= 0x41u)
            {
              v122 = *v122;
            }

            v123 = *v122;
            if (v119 >= v123)
            {
              v119 = v123;
            }
          }
        }

        v118 = *(v118 + 8);
      }

      while (v118);
      if (v119 == -1)
      {
        goto LABEL_26;
      }

      v143 = v119;
      v124 = UDiv;
      v125 = llvm::ConstantInt::get();
      WORD4(v147) = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv(v132, v124, v125, &v145, 0);
      v126 = *(this + 106) + 4 * log2(v119);
      ++*(v126 + 36);
    }
  }

LABEL_27:
  if (v15)
  {
    llvm::IRBuilderBase::SetInsertPoint(v132, v15, v130);
  }

  else
  {
    *v129 = 0;
    v129[1] = 0;
  }

  if (*(&v141 + 1))
  {
    v28 = v141 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28 || UDiv)
  {
    v14 = std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *&,MTLBoundsCheckPass::KnownBufferData&>(this + 29, &v136, &v136, &v141);
  }

  if (v14)
  {
LABEL_38:
    v30 = v14[3];
    v29 = v14[4];
    v31 = v14[5];
    v32 = *(v14 + 12);
    a1[2] = v30;
    a1[3] = v29;
    a1[4] = v31;
    v33 = *(*(this + 4) + 20);
    if ((v33 & 0x100) != 0)
    {
      v134[0] = 0;
      v154 = 0;
      v155 = 0;
      v153 = 0;
      v34 = MTLBoundsCheck::lookThroughPointerOps(a4, 0);
      v146 = xmmword_257A6DA40;
      v145 = "bounds.fold";
      *&v147 = v134;
      *(&v147 + 1) = 1;
      v148 = &v155;
      v149 = 2;
      v150 = &v153;
      v151 = 3;
      v152 = &v154;
      if (llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v145, v34))
      {
        v35 = v155;
        WORD4(v147) = 257;
        v36 = llvm::IRBuilderBase::CreateUDiv(v132, v153, v154, &v145, 0);
        AddSat = MTLIRBuilder::CreateAddSat(v132, v35, v36);
        a1[6] = v134[0];
        a1[7] = AddSat;
        v38 = v154 + 3;
        if (*(v154 + 8) >= 0x41u)
        {
          v38 = *v38;
        }

        if (*v38 != v32)
        {
          v39 = v155;
          v40 = *(this + 10);
          WORD4(v147) = 257;
          v41 = llvm::IRBuilderBase::CreateCast(v132, 38, v153, v40, &v145);
          v157 = 257;
          v42 = llvm::IRBuilderBase::CreateUDiv(v132, v41, v154, v156, 0);
          v43 = llvm::ConstantInt::get();
          v144 = 257;
          v44 = llvm::IRBuilderBase::CreateSub(v132, v42, v43, &v141, 0, 0);
          v155 = MTLIRBuilder::CreateAddSat(v132, v39, v44);
        }

        WORD4(v147) = 257;
        ICmp = llvm::IRBuilderBase::CreateICmp(v132, 35, v31, AddSat, &v145);
        *v6 = ICmp;
        if (*(ICmp + 16) == 16)
        {
          v46 = *(ICmp + 32);
          if (v46 > 0x40)
          {
            v47 = llvm::APInt::countLeadingZerosSlowCase((ICmp + 24)) == v46 - 1;
          }

          else
          {
            v47 = *(ICmp + 24) == 1;
          }

          v114 = v47;
          *a1 = v114;
        }

        *(a1 + 1) = 1;
        v115 = v154 + 3;
        if (*(v154 + 8) >= 0x41u)
        {
          v115 = *v115;
        }

        *(a1 + 16) = *v115;
        ++*(*(this + 106) + 20);
        return;
      }

      ++*(*(this + 106) + 56);
      v33 = *(*(this + 4) + 20);
    }

    if ((v33 & 0x100) == 0)
    {
      v48 = *(this + 9);
      WORD4(v147) = 257;
      v49 = llvm::IRBuilderBase::CreateCast(v132, 47, a4, v48, &v145);
      if ((*(*(this + 4) + 20) & 4) != 0)
      {
        WORD4(v147) = 257;
        v49 = llvm::IRBuilderBase::CreateAnd(v132, v49, 0x3FFFFFFFFFFFFLL, &v145);
      }

      WORD4(v147) = 257;
      NSWFoldAdd = MTLIRBuilder::CreateNSWFoldAdd(v132, v49, a5, &v145);
      WORD4(v147) = 257;
      v51 = llvm::IRBuilderBase::CreateICmp(v132, 35, NSWFoldAdd, v30, &v145);
      v157 = 257;
      v52 = llvm::IRBuilderBase::CreateICmp(v132, 37, NSWFoldAdd, v29, v156);
      v144 = 257;
      *v6 = llvm::IRBuilderBase::CreateAnd(v132, v51, v52, &v141);
      return;
    }
  }

  a3 = v132;
LABEL_53:
  if ((*(*(this + 4) + 21) & 0x10) != 0)
  {
    *a1 = 1;
  }

  else
  {
    v53 = *(this + 9);
    WORD4(v147) = 257;
    v54 = llvm::IRBuilderBase::CreateCast(a3, 47, a4, v53, &v145);
    if (*(this + 840) == 1)
    {
      v55 = llvm::ConstantInt::get();
    }

    else
    {
      WORD4(v147) = 257;
      v56 = llvm::ConstantInt::get();
      LShr = llvm::IRBuilderBase::CreateLShr(a3, v54, v56, &v145, 0);
      v58 = *(this + 13);
      v157 = 257;
      v55 = llvm::IRBuilderBase::CreateCast(a3, 38, LShr, v58, v156);
    }

    v59 = v55;
    WORD4(v147) = 257;
    v60 = llvm::ConstantInt::get();
    v61 = llvm::IRBuilderBase::CreateLShr(a3, v54, v60, &v145, 0);
    WORD4(v147) = 257;
    v62 = llvm::ConstantInt::get();
    v63 = llvm::IRBuilderBase::CreateAnd(a3, v61, v62, &v145);
    WORD4(v147) = 257;
    v64 = llvm::ConstantInt::get();
    a1[5] = llvm::IRBuilderBase::CreateLShr(a3, v63, v64, &v145, 0);
    if ((*(*(this + 4) + 20) & 4) != 0)
    {
      WORD4(v147) = 257;
      v65 = llvm::ConstantInt::get();
      v54 = llvm::IRBuilderBase::CreateAnd(a3, v54, v65, &v145);
    }

    WORD4(v147) = 257;
    v133 = MTLIRBuilder::CreateNSWFoldAdd(a3, v54, a5, &v145);
    v66 = *(this + 9);
    WORD4(v147) = 257;
    PHI = llvm::IRBuilderBase::CreatePHI(a3, v66, 0, &v145, v67);
    v69 = *(this + 9);
    WORD4(v147) = 257;
    v71 = llvm::IRBuilderBase::CreatePHI(a3, v69, 0, &v145, v70);
    v154 = 0;
    v155 = 0;
    v131 = PHI;
    llvm::SplitBlockAndInsertIfThenElse();
    if (*(v59 + 16) >= 0x15u)
    {
      ++*(*(this + 106) + 96);
    }

    llvm::IRBuilderBase::SetInsertPoint(a3, v155);
    v72 = MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(*(this + 8));
    v73 = *(v72 + 3);
    WORD4(v147) = 257;
    v74 = llvm::IRBuilderBase::CreateAlignedLoad(a3, v73, v72, 0, 0, &v145);
    v75 = a3;
    v76 = *(this + 8);
    Name = llvm::Value::getName(v72);
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v76, Name, v78);
    WORD4(v147) = 257;
    v80 = llvm::IRBuilderBase::CreateInBoundsGEP(v75, GVBaseType, v74, v63, &v145);
    v81 = *(this + 8);
    v82 = llvm::Value::getName(v72);
    v84 = MTLBoundsCheck::SharedPassData::getGVBaseType(v81, v82, v83);
    v85 = llvm::ConstantInt::get();
    WORD4(v147) = 257;
    v86 = MTLIRBuilder::CreateNSWFoldAdd(v75, v63, v85, &v145);
    v157 = 257;
    v87 = llvm::IRBuilderBase::CreateInBoundsGEP(v75, v84, v74, v86, v156);
    v88 = *(v80 + 72);
    WORD4(v147) = 257;
    v89 = llvm::IRBuilderBase::CreateAlignedLoad(v75, v88, v80, 0, 0, &v145);
    v90 = *(v87 + 72);
    WORD4(v147) = 257;
    v91 = llvm::IRBuilderBase::CreateAlignedLoad(v75, v90, v87, 0, 0, &v145);
    llvm::PHINode::addIncoming(v131, v89, v155[5]);
    NullValue = llvm::Constant::getNullValue(*v89, v92);
    llvm::PHINode::addIncoming(v131, NullValue, v154[5]);
    llvm::PHINode::addIncoming(v71, v91, v155[5]);
    AllOnesValue = llvm::Constant::getAllOnesValue(*v91, v94);
    llvm::PHINode::addIncoming(v71, AllOnesValue, v154[5]);
    v96 = *(v71 + 4);
    if (v96)
    {
      v97 = v96 == *(v71 + 5) + 40;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      v98 = 0;
    }

    else
    {
      v98 = (v96 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint(v75, v98);
    a1[2] = v131;
    a1[3] = v71;
    v99 = a1[5];
    v100 = llvm::ConstantInt::get();
    WORD4(v147) = 257;
    v101 = llvm::IRBuilderBase::CreateICmp(v75, 37, v99, v100, &v145);
    v157 = 257;
    v102 = llvm::IRBuilderBase::CreateICmp(v75, 35, v133, v131, v156);
    v144 = 257;
    v103 = llvm::IRBuilderBase::CreateICmp(v75, 37, v133, v71, &v141);
    v140 = 257;
    v104 = llvm::IRBuilderBase::CreateAnd(v75, v102, v103, &v136);
    v135 = 257;
    a1[1] = llvm::IRBuilderBase::CreateAnd(v75, v101, v104, v134);
  }
}

uint64_t MTLBoundsCheckPass::emitBadAccessNotice(uint64_t result, llvm::Constant **a2, uint64_t a3, llvm::Instruction *a4, uint64_t *a5, uint64_t a6)
{
  if ((*(*(result + 32) + 20) & 2) != 0)
  {
    v9 = result;
    MTLBoundsCheck::SharedPassData::indexForInstruction(*(result + 64), a4);
    v10 = llvm::ConstantInt::get();
    llvm::ConstantInt::get();
    v11 = *(a3 + 40);
    if (!v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v50 = 0;
      llvm::raw_string_ostream::raw_string_ostream(v52, __p);
      llvm::Value::print(*(a3 + 48), v52);
      v11 = llvm::ConstantInt::get();
      llvm::raw_ostream::~raw_ostream(v52);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v48 = v10;
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(*(v9 + 64));
    v13 = *(inserted + 3);
    v53 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v13, inserted, 0, 0, v52);
    v15 = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(*(v9 + 64));
    v16 = *(v15 + 3);
    v53 = 257;
    v17 = llvm::IRBuilderBase::CreateAlignedLoad(a2, v16, v15, 0, 0, v52);
    if ((*(*(v9 + 32) + 21) & 2) != 0)
    {
      v20 = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(*(v9 + 64));
      v21 = *(v20 + 3);
      v53 = 257;
      result = llvm::IRBuilderBase::CreateAlignedLoad(a2, v21, v20, 0, 0, v52);
    }

    else
    {
      Int8PtrTy = llvm::Type::getInt8PtrTy(*(v9 + 40), 0);
      result = llvm::ConstantPointerNull::get(Int8PtrTy, v19);
    }

    v22 = result;
    v23 = *(*(v9 + 32) + 20);
    if (*(a3 + 1) == 1)
    {
      if ((v23 & 0x2000) != 0)
      {
        v24 = *(a3 + 56);
        v25 = *(v9 + 72);
        v53 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a2, 39, v24, v25, v52);
        ImageIDFunction = MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(*(v9 + 64));
        if (ImageIDFunction)
        {
          v28 = *(ImageIDFunction + 3);
        }

        else
        {
          v28 = 0;
        }

        v53 = 257;
        v44 = llvm::IRBuilderBase::CreateCall(a2, v28, ImageIDFunction, 0, 0, v52, 0);
        v45 = *(v9 + 88);
        v51 = 257;
        v46 = llvm::IRBuilderBase::CreateCast(a2, 38, v11, v45, __p);
        v47 = llvm::ConstantInt::get();
        return MTLIRBuilder::CreateBadAccessCall(a2, AlignedLoad, v17, v22, v44, Cast, v46, v47, v10, 0);
      }
    }

    else
    {
      if ((v23 & 8) != 0)
      {
        v29 = *a5;
        v30 = *(v9 + 72);
        v53 = 257;
        v31 = llvm::IRBuilderBase::CreateCast(a2, 47, a5, v30, v52);
        v53 = 257;
        v32 = llvm::ConstantInt::get();
        v33 = llvm::IRBuilderBase::CreateAnd(a2, v31, v32, v52);
        v53 = 257;
        a5 = llvm::IRBuilderBase::CreateCast(a2, 48, v33, v29, v52);
      }

      v34 = *(v9 + 72);
      v53 = 257;
      v35 = llvm::IRBuilderBase::CreateCast(a2, 47, a5, v34, v52);
      v36 = *(a3 + 16);
      v51 = 257;
      Sub = llvm::IRBuilderBase::CreateSub(a2, v35, v36, __p, 0, 0);
      v38 = MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(*(v9 + 64));
      if (v38)
      {
        v39 = *(v38 + 3);
      }

      else
      {
        v39 = 0;
      }

      v53 = 257;
      v40 = llvm::IRBuilderBase::CreateCall(a2, v39, v38, 0, 0, v52, 0);
      v41 = *(v9 + 88);
      v51 = 257;
      v42 = llvm::IRBuilderBase::CreateCast(a2, 38, v11, v41, __p);
      v43 = llvm::ConstantInt::get();
      return MTLIRBuilder::CreateBadAccessCall(a2, AlignedLoad, v17, v22, v40, Sub, v42, v43, v48, 0);
    }
  }

  return result;
}

void sub_2579D4934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateNot(unsigned int **this, llvm::Value *a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    Not = llvm::BinaryOperator::CreateNot();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
  }

  v6 = (*(*this[9] + 208))(this[9], a2, a3, a4);
  if (v6)
  {
    v7 = *(v6 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return v6;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a3);
}

uint64_t *MTLBoundsCheckPass::emitPointerConvert(uint64_t a1, llvm::IRBuilderBase *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if ((*(v7 + 20) & 8) != 0)
  {
    v9 = *a4;
    v10 = *(a1 + 72);
    v18 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2, 47, v4, v10, v17);
    v18 = 257;
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateAnd(a2, Cast, v12, v17);
    v18 = 257;
    v4 = llvm::IRBuilderBase::CreateCast(a2, 48, v13, v9, v17);
    v7 = *(a1 + 32);
  }

  if (*(v7 + 4) && *(v7 + 12) == 2)
  {
    v14 = *(a3 + 48);
    v15 = *v4;
    v18 = 257;
    return llvm::IRBuilderBase::CreateCast(a2, 49, v14, v15, v17);
  }

  return v4;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(uint64_t a1, llvm::Instruction **a2, llvm::Value **a3, uint64_t a4, BOOL *a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = llvm::TypeSize::operator unsigned long long();
  MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(v15, v7, v8, v9, *a5);
  v10 = llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(a1, v15, 1);
  v11 = (*a1 + 32 * *(a1 + 8));
  v12 = v10[1];
  *v11 = *v10;
  v11[1] = v12;
  v13 = (*(a1 + 8) + 1);
  *(a1 + 8) = v13;
  return *a1 + 32 * v13 - 32;
}

MTLBoundsCheckPass::MemoryAccessInfo *MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(MTLBoundsCheckPass::MemoryAccessInfo *this, llvm::Instruction *a2, llvm::Value *a3, llvm::IntegerType *a4, char a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 24) = a5;
  llvm::Instruction::getModule(a2);
  llvm::IntegerType::get();
  *(this + 2) = llvm::ConstantInt::get();
  return this;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 32 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v14[0] = *a2;
  v14[1] = v6;
  v14[2] = v7;
  v15 = v8;
  v9 = llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(a1, v14, 1);
  v10 = (*a1 + 32 * *(a1 + 8));
  v11 = v9[1];
  *v10 = *v9;
  v10[1] = v11;
  v12 = (*(a1 + 8) + 1);
  *(a1 + 8) = v12;
  return *a1 + 32 * v12 - 32;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t MTLBoundsCheckPass::backtracePointer(MTLBoundsCheckPass *this, llvm::Value *a2)
{
  v11 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((*(this + 8) + 128), &v11);
  if (v3)
  {
    return v3[3];
  }

  v5 = *(v11 + 16);
  if (v5 <= 0x1B)
  {
    v6 = 0;
  }

  else
  {
    v6 = v11;
  }

  v10 = v6;
  if (!v6)
  {
    if (v5 == 5)
    {
      PointerOperand = getPointerOperand(v11);
      return MTLBoundsCheckPass::backtracePointer(this, PointerOperand);
    }

    else
    {
      MetadataImpl = 0;
      ++*(*(this + 106) + 92);
    }

    return MetadataImpl;
  }

  if (!*(v6 + 6) && (*(v6 + 23) & 0x20) == 0 || (MetadataImpl = llvm::Instruction::getMetadataImpl()) == 0)
  {
    v7 = getPointerOperand(v6);
    if (v7)
    {
      MetadataImpl = MTLBoundsCheckPass::backtracePointer(this, v7);
      if (MetadataImpl)
      {
        llvm::Instruction::setMetadata();
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(this + 272, &v10);
      }

      return MetadataImpl;
    }

    return 0;
  }

  return MetadataImpl;
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

uint64_t llvm::IRBuilderBase::CreateConstGEP1_64(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, llvm::IntegerType *a4, const llvm::Twine *a5)
{
  llvm::Type::getInt64Ty(this[8], a2);
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

uint64_t llvm::IRBuilderBase::CreateUDiv(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 104))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::ConstantInt **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  v7 = llvm::ConstantInt::get();

  return llvm::IRBuilderBase::CreateAnd(this, a2, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateInBoundsGEP(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12[0] = a4;
  result = (*(**(this + 9) + 48))(*(this + 9), a2, a3, v12, 1, 1);
  if (!result)
  {
    v13 = 257;
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v11, 1, v12, 0);
    llvm::GetElementPtrInst::setIsInBounds(v10);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>::match<llvm::Value>(unsigned int *a1, uint64_t a2)
{
  v2 = 84;
  if (a2)
  {
    v3 = *(a2 + 16) == 84;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *a1);
    if (v5)
    {
      v6 = *(v5 + 16) == 16;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      **(a1 + 1) = v5;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v4 & v2;
}

BOOL call_match<llvm::StringRef>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 16) != 84)
  {
    return 0;
  }

  v3 = *(a2 - 32);
  if (!v3 || *(v3 + 16) || *(v3 + 24) != *(a2 + 72))
  {
    v3 = 0;
  }

  Name = llvm::Value::getName(v3);
  v5 = *(a1 + 8);
  return v6 >= v5 && (!v5 || !memcmp(Name, *a1, v5));
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *&,MTLBoundsCheckPass::KnownBufferData&>(void *a1, void *a2, void *a3, _OWORD *a4)
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

BOOL llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  result = llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(a1, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (*(a2 + 16) == 84)
      {
        v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *(a1 + 32));
        if (v5)
        {
          **(a1 + 40) = v5;
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  result = call_match<llvm::StringRef>::match<llvm::Value>(a1, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (*(a2 + 16) == 84)
      {
        v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *(a1 + 16));
        if (v5)
        {
          **(a1 + 24) = v5;
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateLShr(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 160))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D821F8] + 16;
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

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v13[0] = *a2;
  v13[1] = v6;
  v14 = v7;
  v15 = v8;
  v9 = llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(a1, v13, 1);
  v10 = *a1 + 24 * *(a1 + 8);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 16);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 24 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  ++*(result + 8);
  return result;
}

void llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(__int128 **a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      a2 += 24;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 24 * v6 - 1;
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 24;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 24;
      }

      while (v8);
    }
  }
}

uint64_t llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579D604C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579D60AC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DumpModulePass::DumpModulePass(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = &DumpModulePass::ID;
  *(a1 + 24) = 4;
  *a1 = &unk_2868EC0B8;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  v5 = (a1 + 32);
  *(a1 + 55) = a3;
  if (a3)
  {
    memmove(v5, a2, a3);
  }

  *(v5 + a3) = 0;
  return a1;
}

void DumpModulePass::~DumpModulePass(void **this)
{
  *this = &unk_2868EC0B8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC0B8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t DumpModulePass::runOnModule(DumpModulePass *this, llvm::Module *a2)
{
  v3 = MTLGetShaderCachePath();
  v27[0] = "air.requestHash";
  LOWORD(v30[0].__locale_) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, v27);
  if (NamedMetadata)
  {
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    v27[0] = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    v27[1] = v6;
    llvm::StringRef::str(v27, &v33);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v27);
    v7 = [v3 UTF8String];
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "/bounds-logs", 12);
    std::stringbuf::str();
    v26 = 260;
    v25.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "/", 1);
    if ((v35 & 0x80u) == 0)
    {
      v10 = &v33;
    }

    else
    {
      v10 = v33;
    }

    if ((v35 & 0x80u) == 0)
    {
      v11 = v35;
    }

    else
    {
      v11 = v34;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    std::stringbuf::str();
    v26 = 260;
    v25.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    v27[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v27 + *(v27[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v28 = v12;
    v29 = MEMORY[0x277D82878] + 16;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    v29 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v30);
    std::iostream::~basic_iostream();
    MEMORY[0x259C6B820](&v32);
    if (v35 < 0)
    {
      operator delete(v33);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, &unk_257A6F51A);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v22.__r_.__value_.__l.__size_)
    {
LABEL_35:
      operator delete(v22.__r_.__value_.__l.__data_);
      return 0;
    }
  }

  else if (!*(&v22.__r_.__value_.__s + 23))
  {
    return 0;
  }

  LODWORD(v33) = 0;
  v34 = std::system_category();
  std::operator+<char>();
  v13 = std::string::append(&v25, ".ll");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28 = v13->__r_.__value_.__r.__words[2];
  *v27 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v15 = v27;
  }

  else
  {
    v15 = v27[0];
  }

  if (v28 >= 0)
  {
    v16 = HIBYTE(v28);
  }

  else
  {
    v16 = v27[1];
  }

  std::string::append(&v22, v15, v16);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v17 = llvm::raw_fd_ostream::raw_fd_ostream();
  v18 = llvm::dbgs(v17);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v22;
  }

  else
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  v20 = llvm::raw_ostream::write(v18, v19);
  llvm::raw_ostream::operator<<(v20, "\n", 1uLL);
  llvm::Module::print();
  MEMORY[0x259C6A800](v27);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

  return 0;
}

void sub_2579D66B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2579D69EC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C6B820](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C6B7D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2579D6AA8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C6B720](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C6B730](v13);
  return a1;
}

void sub_2579D6D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C6B730](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2579D6CF8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2579D6F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::__function::__value_func<BOOL ()(llvm::Function const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void CallingConvFixPass::~CallingConvFixPass(CallingConvFixPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t CallingConvFixPass::runOnFunction(CallingConvFixPass *this, Function *a2)
{
  v2 = *(a2 + 10);
  if (v2 == (a2 + 72))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if (v2)
      {
        v4 = v2 - 24;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4 + 40;
      for (i = *(v4 + 48); i != v5; i = *(i + 8))
      {
        if (i)
        {
          if (*(i - 8) == 84)
          {
            v7 = *(i - 56);
            if (v7)
            {
              if (!*(v7 + 16) && *(v7 + 24) == *(i + 48))
              {
                v8 = (*(v7 + 18) >> 4) & 0x3FF;
                v9 = *(i - 6);
                if (v8 != ((v9 >> 2) & 0x3FF))
                {
                  *(i - 6) = v9 & 0xF003 | (4 * v8);
                  v3 = 1;
                }
              }
            }
          }
        }
      }

      v2 = *(v2 + 8);
    }

    while (v2 != (a2 + 72));
  }

  return v3 & 1;
}

void MemoryIndirectionPass::~MemoryIndirectionPass(MemoryIndirectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EC1F8;
  v5 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216, a2, a3, a4);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192, v6, v7, v8);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v9, v10, v11);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v12, v13, v14);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC1F8;
  v5 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216, a2, a3, a4);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192, v6, v7, v8);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v9, v10, v11);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v12, v13, v14);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MemoryIndirectionPass::runOnModule(MTLBoundsCheck **this, llvm::Module *a2)
{
  v2 = a2;
  v112[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 24, v4, v5, v6);
  this[31] = 0;
  *(this + 60) = llvm::Module::getMDKindID();
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 27, v7, v8, v9);
  this[23] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
  MemoryIndirectionPass::replaceGlobalBindings(this);
  MemoryIndirectionPass::markGlobalsForSkip(this);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v11 = GlobalVariable;
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
    this[31] = inserted;
    v13 = this[8];
    Operand = inserted;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13 + 208, &Operand, &v103);
    if ((*(*(this[8] + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(this[6], v14))
    {
      v15 = llvm::Module::getOrInsertNamedMetadata();
      *&v103 = v104;
      *(&v103 + 1) = 0x400000000;
      NumOperands = llvm::NamedMDNode::getNumOperands(v15);
      if (HIDWORD(v103) < NumOperands)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = llvm::NamedMDNode::getNumOperands(v15);
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          Operand = llvm::NamedMDNode::getOperand(v15);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v103, &Operand);
        }
      }

      llvm::NamedMDNode::clearOperands(v15);
      v19 = DWORD2(v103);
      if (DWORD2(v103))
      {
        v20 = 0;
        do
        {
          if (*(*(*(v103 + 8 * v20) - 8 * *(*(v103 + 8 * v20) + 8) + 8) + 128) != v11)
          {
            llvm::NamedMDNode::addOperand();
            v19 = DWORD2(v103);
          }

          ++v20;
        }

        while (v20 < v19);
      }

      if (v103 != v104)
      {
        free(v103);
      }
    }

    v103 = v11[1];
    llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&Operand, &v103);
    v21 = Operand;
    if (v111)
    {
      v22 = v2;
      v23 = 8 * v111;
      do
      {
        v24 = *v21;
        if (*v21 && v24[16] == 60)
        {
          v25 = llvm::User::operator new(0x40);
          LOWORD(v105) = 257;
          llvm::LoadInst::LoadInst();
          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&v103, v24, 0, 0, 0);
          v26 = *v24;
          v102[8] = 257;
          llvm::IRBuilderBase::CreateCast(&v103, 48, v25, v26, v101);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v24);
          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v109);
          llvm::IRBuilderFolder::~IRBuilderFolder(&v108);
          if (v103 != v104)
          {
            free(v103);
          }
        }

        else
        {
          llvm::UndefValue::get();
          llvm::User::replaceUsesOfWith();
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
          if (v24[16] >= 0x1Cu)
          {
            llvm::Instruction::eraseFromParent(v24);
          }
        }

        ++v21;
        v23 -= 8;
      }

      while (v23);
      v21 = Operand;
      v2 = v22;
    }

    if (v21 != v112)
    {
      free(v21);
    }

    llvm::GlobalVariable::eraseFromParent(v11);
  }

  else
  {
    this[31] = 0;
  }

  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (EntryFunction && !MTLBoundsCheck::isLibraryModule(this[6], v27))
  {
    *&v103 = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
    *(&v103 + 1) = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(this[8]);
    v104[0] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
    v104[1] = MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(this[8]);
    v105 = MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(this[8]);
    v106 = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
    v107 = MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(this[8]);
    llvm::appendToUsed();
    if ((*(*(this[8] + 9) + 20) & 0x200000001) != 0)
    {
      *&v103 = MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(this[8]);
      *(&v103 + 1) = MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(this[8]);
      llvm::appendToUsed();
    }

    v88 = *(EntryFunction + 24);
    Operand = v112;
    v111 = 0x800000000;
    v101[0] = v102;
    v101[1] = 0x800000000;
    v99[0] = &v100;
    v99[1] = 0x800000000;
    v97[0] = &v98;
    v97[1] = 0x800000000;
    v95[0] = &v96;
    v95[1] = 0x800000000;
    LODWORD(v89) = 0;
    if (!*(EntryFunction + 96))
    {
LABEL_89:
      if (!*(this + 30) && *(**(v88 + 16) + 8) != 7)
      {
        *(*(this[8] + 8) + 640) &= 0x5555555555555555uLL;
      }

      v56 = v111;
      v57 = llvm::ArrayType::get(this[9], 0x1F);
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(this[7], v57);
      v60 = v59;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v57);
      *&v103 = MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, v56, "air.buffer", "air.location_index", 0x32u, 1, "air.read", "air.address_space", 2, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v60 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.user_arguments_int");
      v93.n128_u64[0] = llvm::PointerType::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &v93);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v97, &v103);
      v62 = llvm::ArrayType::get(this[9], 0x1F);
      v63 = llvm::DataLayout::getTypeSizeInBits(this[7], v62);
      LODWORD(TypeSizeInBits) = v64;
      v65 = llvm::DataLayout::getPrefTypeAlignment(this[7], v62);
      *&v103 = MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, (v56 + 1), "air.buffer", "air.location_index", 0x35u, 1, "air.read", "air.arg_type_size", (v63 + 7) >> 3, TypeSizeInBits == 1, "air.arg_type_align_size", v65, "air.arg_type_name", "int", "air.arg_name", "debug.user_argument_strides_int");
      v93.n128_u64[0] = llvm::PointerType::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &v93);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v97, &v103);
      v66 = llvm::FunctionType::get();
      v67 = *(EntryFunction + 32);
      *&v103 = "mtl.indirection_wrapper";
      LOWORD(v105) = 259;
      v68 = llvm::Function::Create(v66, v67 & 0xF, &v103, this[6]);
      llvm::GlobalObject::copyMetadata();
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
      llvm::Function::setSubprogram();
      *(EntryFunction + 32) = *(EntryFunction + 32) & 0xFFFFBFC0 | 0x4007;
      *&v103 = *(EntryFunction + 112);
      Attributes = llvm::AttributeList::getAttributes(&v103);
      v69 = llvm::AttributeSet::begin(&Attributes);
      v70 = llvm::AttributeSet::end(&Attributes);
      while (v69 != v70)
      {
        llvm::Function::addFnAttr();
        v69 += 8;
      }

      *&v103 = *(EntryFunction + 112);
      v90 = llvm::AttributeList::getAttributes(&v103);
      v71 = llvm::AttributeSet::begin(&v90);
      v72 = llvm::AttributeSet::end(&v90);
      while (v71 != v72)
      {
        llvm::compat::addAttribute();
        v71 += 8;
      }

      MetalModulePass::getMetadata(this, v68);
      llvm::MDNode::replaceOperandWith();
      llvm::MDTuple::getImpl();
      llvm::MDNode::replaceOperandWith();
      v73 = this[5];
      *&v103 = "entry";
      LOWORD(v105) = 259;
      llvm::BasicBlock::Create(v73, &v103, v68, 0, v74);
    }

    v30 = 0;
    while (1)
    {
      if (*(EntryFunction + 18))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v30 = v89;
      }

      v31 = (*(EntryFunction + 88) + 40 * v30);
      Attributes = *v31;
      v32 = (this[16] - *(this[16] + 2))[2];
      v90 = *(v32 - 8 * *(v32 + 8) + 8 * v30);
      String = llvm::MDString::getString(v90[-*(v90 + 2) + 1]);
      v35 = v34;
      v36 = v111;
      if (!isBufferMetadata(v90))
      {
        goto LABEL_42;
      }

      v37 = *(Attributes + 8);
      if ((v37 & 0xFE) == 0x12)
      {
        v37 = *(**(Attributes + 16) + 8);
      }

      if ((v37 & 0xFFFFFF00) != 0x300)
      {
        v93.n128_u64[0] = &unk_257A6F51A;
        v93.n128_u64[1] = 0;
        v94 = 1;
        MTLBoundsCheck::getArgName(v90, &v93, &v103);
        if (*(&v103 + 1) >= 6uLL && *v103 == 1969382756 && *(v103 + 4) == 11879)
        {
          goto LABEL_87;
        }

        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v101, &v90);
        LocationIndex = MTLBoundsCheck::getLocationIndex(v90);
        if (llvm::Value::hasNUsesOrMore(v31))
        {
          v93.n128_u64[0] = "air.read_write";
          v93.n128_u64[1] = 14;
          v94 = 1;
          MTLBoundsCheck::getArgAccessType(v90, &v93, &v103);
          v92 = v103;
          v52 = 2 * LocationIndex;
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 1 << v52;
          }

          goto LABEL_75;
        }
      }

      else
      {
LABEL_42:
        v38 = v90[-*(v90 + 2) + 1];
        if (*v38 || (v39 = llvm::MDString::getString(v38), v40 != 17) || (*v39 == 0x666675622E726961 ? (v41 = *(v39 + 8) == 0x64697274735F7265) : (v41 = 0), v41 ? (v42 = *(v39 + 16) == 101) : (v42 = 0), !v42))
        {
          if (v35 == 30)
          {
            v43 = *String == 0x746E6F632E726961 && String[1] == 0x6E696F705F6C6F72;
            v44 = v43 && String[2] == 0x5F7865646E695F74;
            if (v44 && *(String + 22) == 0x7265666675625F78)
            {
              v46 = v89;
              v47 = llvm::DataLayout::getTypeSizeInBits(this[7], **(Attributes + 16));
              if (v48 == 1)
              {
                v2 = (v2 & 0xFFFFFFFF00000000) + 1;
              }

              else
              {
                v2 &= 0xFFFFFFFF00000000;
              }

              ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this[7], **(Attributes + 16));
              v90 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, v46, "air.buffer", "air.location_index", 0x2Bu, 1, "air.read", "air.address_space", 1, "air.arg_type_size", (v47 + 7) >> 3, v2, "air.arg_type_align_size", ABITypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.control_point_index_buffer");
              Attributes = llvm::PointerType::get();
            }
          }

LABEL_87:
          llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v95, &v89);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &Attributes);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v97, &v90);
          MetalModulePass::getMetadata<unsigned long long>(this, v36, v55);
          llvm::MDNode::replaceOperandWith();
          goto LABEL_88;
        }

        v93.n128_u64[0] = &unk_257A6F51A;
        v93.n128_u64[1] = 0;
        v94 = 1;
        MTLBoundsCheck::getArgName(v90, &v93, &v103);
        if (*(&v103 + 1) >= 6uLL && *v103 == 1969382756 && *(v103 + 4) == 11879)
        {
          goto LABEL_87;
        }

        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v99, &v90);
        v54 = MTLBoundsCheck::getLocationIndex(v90);
        if (llvm::Value::hasNUsesOrMore(v31))
        {
          v93.n128_u64[0] = "air.read_write";
          v93.n128_u64[1] = 14;
          v94 = 1;
          MTLBoundsCheck::getArgAccessType(v90, &v93, &v103);
          v92 = v103;
          v52 = 2 * v54;
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 1 << v52;
          }

LABEL_75:
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 2 << v52;
          }
        }
      }

LABEL_88:
      LODWORD(v89) = v89 + 1;
      v30 = v89;
      if (*(EntryFunction + 96) <= v89)
      {
        goto LABEL_89;
      }
    }
  }

  MemoryIndirectionPass::fixupIntersectionFunctions(this, v27, v28);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v103, *(v2 + 32), v2 + 24);
  v75 = v103;
  if (DWORD2(v103))
  {
    v76 = 8 * DWORD2(v103);
    do
    {
      v77 = *v75;
      Name = llvm::Value::getName(*v75);
      if (v79 >= 0x11 && (*Name == 0x726575712E6C746DLL ? (v80 = *(Name + 8) == 0x79726F6D656D5F79) : (v80 = 0), v80 ? (v81 = *(Name + 16) == 46) : (v81 = 0), v81))
      {
        MemoryIndirectionPass::handleMemoryQueryFunction(this, v77);
      }

      else if (MemoryIndirectionPass::shouldModifyFunction(this, v77))
      {
        MemoryIndirectionPass::fixupInstructions(this, v77);
      }

      ++v75;
      v76 -= 8;
    }

    while (v76);
    v75 = v103;
  }

  if (v75 != v104)
  {
    free(v75);
  }

  for (j = *(v2 + 32); j != v2 + 24; j = *(j + 8))
  {
    llvm::Value::setMetadata();
  }

  if (*(this + 56))
  {
    v83 = *(this + 58);
    if (v83)
    {
      v84 = 16 * v83;
      for (k = this[27]; (*k | 0x1000) == 0xFFFFFFFFFFFFF000; k = (k + 16))
      {
        v84 -= 16;
        if (!v84)
        {
          return 1;
        }
      }
    }

    else
    {
      k = this[27];
    }

    v87 = (this[27] + 16 * v83);
    while (k != v87)
    {
      llvm::UndefValue::get();
      llvm::Value::replaceNonMetadataUsesWith();
      **k = **(k + 1);
      llvm::ValueAsMetadata::handleRAUW();
      llvm::Function::eraseFromParent(*k);
      do
      {
        k = (k + 16);
      }

      while (k != v87 && (*k | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

  return 1;
}

void sub_2579D87F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a38 != &a40)
  {
    free(a38);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&STACK[0x258]);
  if (a48 != a21)
  {
    free(a48);
  }

  if (a54 != a22)
  {
    free(a54);
  }

  if (a64 != a23)
  {
    free(a64);
  }

  if (STACK[0x208] != a24)
  {
    free(STACK[0x208]);
  }

  v66 = *(v64 - 176);
  if (v66 != a25)
  {
    free(v66);
  }

  _Unwind_Resume(a1);
}

void *llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::init(void *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = MEMORY[0x259C6A8D0](16 * v4, 8);
    *v2 = result;
    *(v2 + 8) = 0;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 2;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result[1])
  {
    v4 = *(result + 4);
    if (v4 <= 4 * *(result + 2) || v4 < 0x41)
    {
      if (v4)
      {
        v5 = 0;
        v6 = v4 + 0xFFFFFFFFFFFFFFFLL;
        v7 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v8 = (v6 & 0xFFFFFFFFFFFFFFFLL) - (v6 & 1) + 2;
        v9 = vdupq_n_s64(v7);
        v10 = (*result + 16);
        do
        {
          v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v5), xmmword_257A6D000)));
          if (v11.i8[0])
          {
            *(v10 - 2) = -4096;
          }

          if (v11.i8[4])
          {
            *v10 = -4096;
          }

          v5 += 2;
          v10 += 4;
        }

        while (v8 != v5);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::shrink_and_clear(result, a2, a3, a4);
    }
  }

  return result;
}

void MemoryIndirectionPass::replaceGlobalBindings(MemoryIndirectionPass *this)
{
  v81[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v76 = 0;
  v77 = 0;
  v2 = *(this + 6);
  v78[0] = "air.global_bindings";
  v79[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v78);
  v4 = NamedMetadata;
  if (NamedMetadata)
  {
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    v66 = v4;
    if (NumOperands)
    {
      v64 = 0;
      v65 = NumOperands;
      v6 = 0;
      while (1)
      {
        Operand = llvm::NamedMDNode::getOperand(v66);
        v7 = Operand - 8 * *(Operand + 8);
        v8 = *(v7 + 16);
        v9 = *(*(v7 + 8) + 128);
        LocationIndex = MTLBoundsCheck::getLocationIndex(v8);
        String = llvm::MDString::getString(*(v8 - 8 * *(v8 + 8) + 8));
        v13 = v12;
        if (*(v9 + 8))
        {
          v71.n128_u64[0] = "air.read_write";
          v71.n128_u64[1] = 14;
          LOBYTE(v72) = 1;
          MTLBoundsCheck::getArgAccessType(v8, &v71, v78);
          v68[0] = *v78;
          v14 = 2 * LocationIndex;
          if (llvm::StringRef::find() != -1)
          {
            *(*(*(this + 8) + 64) + 640) |= 1 << v14;
          }

          if (llvm::StringRef::find() != -1)
          {
            *(*(*(this + 8) + 64) + 640) |= 2 << v14;
          }
        }

        if (v13 != 11 || (*String == 0x747865742E726961 ? (v15 = *(String + 3) == 0x657275747865742ELL) : (v15 = 0), !v15 && (*String == 0x706D61732E726961 ? (v16 = *(String + 3) == 0x72656C706D61732ELL) : (v16 = 0), !v16)))
        {
          if (MTLBoundsCheck::getAddressSpace(v8) != 3)
          {
            break;
          }
        }

        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Operand);
        v64 = 1;
LABEL_80:
        if (++v6 == v65)
        {
          goto LABEL_83;
        }
      }

      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v17 = *(v9 + 8);
      if (!v17)
      {
        goto LABEL_79;
      }

      do
      {
        v18 = *(v17 + 24);
        v78[0] = v18;
        v19 = v18[16];
        if (v18)
        {
          v20 = v19 >= 0x1C;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          std::deque<llvm::User *>::push_back(v71.n128_u64, v78);
        }

        else
        {
          if (v18)
          {
            v21 = v19 == 5;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            llvm::ConstantExpr::isCast(v18);
            v18 = v78[0];
          }

          for (i = *(v18 + 1); i; i = *(i + 8))
          {
            *&v68[0] = *(i + 24);
            if (*&v68[0])
            {
              v23 = *(*&v68[0] + 16) >= 0x1Cu;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              std::deque<llvm::User *>::push_back(v71.n128_u64, v68);
            }
          }
        }

        v17 = *(v17 + 8);
      }

      while (v17);
      v24 = *(&v73 + 1);
      if (!*(&v73 + 1))
      {
LABEL_79:
        std::deque<llvm::User *>::~deque[abi:ne200100](&v71);
        goto LABEL_80;
      }

      while (1)
      {
        v25 = *(*(v71.n128_u64[1] + ((v73 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v73 & 0x1FF));
        *&v73 = v73 + 1;
        *(&v73 + 1) = v24 - 1;
        if (v73 >= 0x400)
        {
          operator delete(*v71.n128_u64[1]);
          v71.n128_u64[1] += 8;
          *&v73 = v73 - 512;
        }

        if (*(v25 + 16) <= 0x1Bu)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        v70 = v26;
        if (!v26)
        {
          goto LABEL_78;
        }

        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v78, &v70);
        inserted = MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
        v28 = *(inserted + 3);
        v69 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v78, v28, inserted, 0, 0, v68);
        v30 = *(this + 8);
        v67 = AlignedLoad;
        llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v30 + 208, &v67, v68);
        v31 = *(this + 8);
        Name = llvm::Value::getName(inserted);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v31, Name, v33);
        v69 = 257;
        ConstInBoundsGEP2_64 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_64(v78, GVBaseType, AlignedLoad, 0, LocationIndex, v68);
        v36 = *(this + 8);
        v37 = llvm::Value::getName(inserted);
        v39 = **(MTLBoundsCheck::SharedPassData::getGVBaseType(v36, v37, v38) + 16);
        v69 = 257;
        v40 = llvm::IRBuilderBase::CreateAlignedLoad(v78, v39, ConstInBoundsGEP2_64, 259, 0, v68);
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        if (*(v25 + 16) != 84)
        {
          goto LABEL_75;
        }

        v41 = *(v25 - 32);
        if (!v41 || *(v41 + 16) || *(v41 + 24) != *(v25 + 72))
        {
          v41 = 0;
        }

        *&v68[0] = llvm::Value::getName(v41);
        *(&v68[0] + 1) = v42;
        v43 = llvm::StringRef::find();
        if (v43 != -1)
        {
          v44 = **(v25 - 32 * (*(v25 + 20) & 0x7FFFFFF) + 32);
          v69 = 257;
          BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v78, v40, v44, v68);
          v46 = v25 - 32 * (*(v25 + 20) & 0x7FFFFFF);
          v47 = (v46 + 32);
          if (*(v46 + 32))
          {
            v48 = *(v46 + 40);
            **(v46 + 48) = v48;
            if (v48)
            {
              *(v48 + 16) = *(v46 + 48);
            }
          }

          *v47 = BitOrPointerCast;
          if (BitOrPointerCast)
          {
            v51 = BitOrPointerCast[1];
            v49 = (BitOrPointerCast + 1);
            v50 = v51;
            *(v46 + 40) = v51;
            if (v51)
            {
              *(v50 + 2) = v46 + 40;
            }

            *(v46 + 48) = v49;
            *v49 = v47;
          }
        }

        v52 = *(v25 - 32);
        if (!v52 || *(v52 + 16) || *(v52 + 24) != *(v25 + 72))
        {
          v52 = 0;
        }

        *&v68[0] = llvm::Value::getName(v52);
        *(&v68[0] + 1) = v53;
        if (llvm::StringRef::find() != -1)
        {
          v54 = **(v25 - 32 * (*(v25 + 20) & 0x7FFFFFF));
          v69 = 257;
          v55 = llvm::IRBuilderBase::CreateBitOrPointerCast(v78, v40, v54, v68);
          v56 = v25 - 32 * (*(v25 + 20) & 0x7FFFFFF);
          if (*v56)
          {
            v57 = *(v56 + 8);
            **(v56 + 16) = v57;
            if (v57)
            {
              *(v57 + 16) = *(v56 + 16);
            }
          }

          *v56 = v55;
          if (v55)
          {
            v60 = v55[1];
            v58 = v55 + 1;
            v59 = v60;
            *(v56 + 8) = v60;
            if (v60)
            {
              *(v59 + 2) = v56 + 8;
            }

            *(v56 + 16) = v58;
            *v58 = v56;
          }

          goto LABEL_76;
        }

        if (v43 == -1)
        {
LABEL_75:
          v61 = *v70;
          v69 = 257;
          llvm::IRBuilderBase::CreateBitOrPointerCast(v78, v40, v61, v68);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v70);
        }

LABEL_76:
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v81);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v80);
        if (v78[0] != v79)
        {
          free(v78[0]);
        }

LABEL_78:
        v24 = *(&v73 + 1);
        if (!*(&v73 + 1))
        {
          goto LABEL_79;
        }
      }
    }

    v64 = 0;
LABEL_83:
    llvm::NamedMDNode::clearOperands(v66);
    v62 = __p;
    v63 = v76;
    while (v62 != v63)
    {
      llvm::NamedMDNode::addOperand();
      v62 += 8;
    }

    if ((v64 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v66);
      llvm::NamedMDNode::eraseFromParent(v66);
    }
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }
}

void sub_2579D92F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MemoryIndirectionPass::markGlobalsForSkip(MemoryIndirectionPass *this)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x400000000;
  v1 = *(this + 6);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    do
    {
      if (v3)
      {
        v5 = v3 - 56;
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 33) & 0x1C) == 0 && MemoryIndirectionPass::indirectAddressSpace(this, *(v5 + 24)))
      {
        v12[0] = v5;
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v13, v12);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    while (1)
    {
      do
      {
        if (!v14)
        {
          goto LABEL_18;
        }

        v6 = *(v13 + v14 - 1);
        LODWORD(v14) = v14 - 1;
        v10 = v6;
        v11 = 0;
        v7 = *(this + 8);
        v12[0] = v6;
      }

      while ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v7 + 208), v12, &v11) & 1) != 0);
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(this + 8) + 208, &v10, v12);
      v8 = v10;
      v9 = *(v10 + 16);
      if (v9 == 61)
      {
        v12[0] = *(v10 - 64);
        if (*(v12[0] + 16) == 59)
        {
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v13, v12);
          v8 = v10;
        }

LABEL_16:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v13, v13 + 8 * v14, *(v8 + 8), 0);
      }

      else if (v9 != 84)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v13 != v15)
  {
    free(v13);
  }
}

void sub_2579D9524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MetalModulePass::getMDTuple<unsigned int,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, unsigned int a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, unsigned int a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, int a9, llvm::LLVMContext *a10, uint64_t a11, uint64_t a12, llvm::LLVMContext *a13, llvm::IntegerType *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v20 = a6;
  v40[18] = *MEMORY[0x277D85DE8];
  v40[0] = a11;
  v40[1] = a12;
  v40[2] = MetalModulePass::getMetadata<unsigned int>(a1, a2, a3);
  v40[3] = MetalModulePass::getMetadata(a1, a3, v25);
  v40[4] = MetalModulePass::getMetadata(a1, a4, v26);
  v40[5] = MetalModulePass::getMetadata<unsigned int>(a1, a5, v27);
  v40[6] = MetalModulePass::getMetadata<int>(a1, v20, v28);
  v40[7] = MetalModulePass::getMetadata(a1, a7, v29);
  v40[8] = MetalModulePass::getMetadata(a1, a8, v30);
  v40[9] = MetalModulePass::getMetadata<int>(a1, a9, v31);
  v40[10] = MetalModulePass::getMetadata(a1, a10, v32);
  v40[11] = MetalModulePass::getMetadata(a1, v40);
  v40[12] = MetalModulePass::getMetadata(a1, a13, v33);
  v40[13] = MetalModulePass::getMetadata<unsigned long long>(a1, a14, v34);
  v40[14] = MetalModulePass::getMetadata(a1, a15, v35);
  v40[15] = MetalModulePass::getMetadata(a1, a16, v36);
  v40[16] = MetalModulePass::getMetadata(a1, a17, v37);
  v40[17] = MetalModulePass::getMetadata(a1, a18, v38);
  return llvm::MDTuple::getImpl();
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(uint64_t *a1, int *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = *(a1 + 2) + 1;
    *(a1 + 2) = v5;
  }

  return v4 + 4 * v5 - 4;
}

uint64_t MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::IntegerType *a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, unsigned int a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, int a9, llvm::LLVMContext *a10, uint64_t a11, uint64_t a12, llvm::LLVMContext *a13, llvm::IntegerType *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v20 = a6;
  v40[18] = *MEMORY[0x277D85DE8];
  v40[0] = a11;
  v40[1] = a12;
  v40[2] = MetalModulePass::getMetadata<unsigned long long>(a1, a2, a3);
  v40[3] = MetalModulePass::getMetadata(a1, a3, v25);
  v40[4] = MetalModulePass::getMetadata(a1, a4, v26);
  v40[5] = MetalModulePass::getMetadata<unsigned int>(a1, a5, v27);
  v40[6] = MetalModulePass::getMetadata<int>(a1, v20, v28);
  v40[7] = MetalModulePass::getMetadata(a1, a7, v29);
  v40[8] = MetalModulePass::getMetadata(a1, a8, v30);
  v40[9] = MetalModulePass::getMetadata<int>(a1, a9, v31);
  v40[10] = MetalModulePass::getMetadata(a1, a10, v32);
  v40[11] = MetalModulePass::getMetadata(a1, v40);
  v40[12] = MetalModulePass::getMetadata(a1, a13, v33);
  v40[13] = MetalModulePass::getMetadata<unsigned long long>(a1, a14, v34);
  v40[14] = MetalModulePass::getMetadata(a1, a15, v35);
  v40[15] = MetalModulePass::getMetadata(a1, a16, v36);
  v40[16] = MetalModulePass::getMetadata(a1, a17, v37);
  v40[17] = MetalModulePass::getMetadata(a1, a18, v38);
  return llvm::MDTuple::getImpl();
}

uint64_t MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::IntegerType *a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, unsigned int a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, uint64_t a10, llvm::LLVMContext *a11, llvm::IntegerType *a12, llvm::LLVMContext *a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16)
{
  v18 = a6;
  v36[16] = *MEMORY[0x277D85DE8];
  v36[0] = a9;
  v36[1] = a10;
  v36[2] = MetalModulePass::getMetadata<unsigned long long>(a1, a2, a3);
  v36[3] = MetalModulePass::getMetadata(a1, a3, v23);
  v36[4] = MetalModulePass::getMetadata(a1, a4, v24);
  v36[5] = MetalModulePass::getMetadata<unsigned int>(a1, a5, v25);
  v36[6] = MetalModulePass::getMetadata<int>(a1, v18, v26);
  v36[7] = MetalModulePass::getMetadata(a1, a7, v27);
  v36[8] = MetalModulePass::getMetadata(a1, a8, v28);
  v36[9] = MetalModulePass::getMetadata(a1, v36);
  v36[10] = MetalModulePass::getMetadata(a1, a11, v29);
  v36[11] = MetalModulePass::getMetadata<unsigned long long>(a1, a12, v30);
  v36[12] = MetalModulePass::getMetadata(a1, a13, v31);
  v36[13] = MetalModulePass::getMetadata(a1, a14, v32);
  v36[14] = MetalModulePass::getMetadata(a1, a15, v33);
  v36[15] = MetalModulePass::getMetadata(a1, a16, v34);
  return llvm::MDTuple::getImpl();
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP2_64(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, llvm::IntegerType *a4, llvm::IntegerType *a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt64Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt64Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!result)
  {
    v13[16] = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2, v13, 0);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::ReturnInst **this, uint64_t a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], 0, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::ReturnInst **this, llvm::Value *a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], a2, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

void MemoryIndirectionPass::fixupIntersectionFunctions(llvm::Module **this, uint64_t a2, unsigned int a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  MemoryIndirectionPass::fixIntersectCalls(this, this[6], a3);
  if (*(this + 42))
  {
    v4 = *(this + 44);
    if (v4)
    {
      v5 = 16 * v4;
      for (i = this[20]; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i = (i + 16))
      {
        v5 -= 16;
        if (!v5)
        {
          return;
        }
      }
    }

    else
    {
      i = this[20];
    }

    v7 = (this[20] + 16 * v4);
    while (i != v7)
    {
      v43 = *i;
      PrimitiveDataArgIndex = MemoryIndirectionPass::getPrimitiveDataArgIndex(this, *(i + 1));
      v9 = v43;
      if ((PrimitiveDataArgIndex & 0x80000000) == 0)
      {
        v10 = *(v43 + 10);
        if (v10)
        {
          v11 = (v10 - 24);
        }

        else
        {
          v11 = 0;
        }

        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v11);
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v50, FirstNonPHI, 0, 0, 0);
        v13 = llvm::PointerType::get();
        inserted = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
        v9 = v43;
        v15 = *(inserted + 3);
        v49 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v50, v15, inserted, 0, 0, &v46);
        v17 = *AlignedLoad;
        v49 = 257;
        PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(v50, AlignedLoad, v13, &v46, v18);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        MemoryIndirectionPass::unpackAccelerationStructureValue(this, PointerBitCastOrAddrSpaceCast, v50, &v46);
        v20 = v46;
        BVHDataPointerIntrinsic = MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(this, v50, v43, v47, v17);
        if (*(v43 + 9))
        {
          llvm::Function::BuildLazyArguments(v43);
        }

        v22 = *(v43 + 11);
        v23 = *(BVHDataPointerIntrinsic + 32);
        if (v23)
        {
          v24 = v23 == *(BVHDataPointerIntrinsic + 40) + 40;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = (v23 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(v50, v25);
        MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(this, v50, (v22 + 40 * PrimitiveDataArgIndex), v20, BVHDataPointerIntrinsic);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v53);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v52);
        if (v50[0] != v51)
        {
          free(v50[0]);
        }
      }

      v26 = llvm::Function::args(v9);
      v28 = v27;
      if (v26 != v27)
      {
        v29 = (v26 + 8);
        do
        {
          if (PrimitiveDataArgIndex && *(*(v29 - 1) + 8) == 15 && MemoryIndirectionPass::indirectAddressSpace(this, *(v29 - 1)))
          {
            v30 = *(v43 + 10);
            if (v30)
            {
              v31 = (v30 - 24);
            }

            else
            {
              v31 = 0;
            }

            llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v50, v31, 0, 0, 0);
            v32 = llvm::BasicBlock::getFirstNonPHI(v31);
            llvm::IRBuilderBase::SetInsertPoint(v50, v32);
            v33 = this[8];
            BitOrPointerCast = v29 - 1;
            llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v33 + 208, &BitOrPointerCast, &v46);
            v34 = llvm::PointerType::get();
            v49 = 257;
            BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v50, v29 - 1, v34, &v46);
            llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this[8] + 208, &BitOrPointerCast, &v46);
            v35 = **(*BitOrPointerCast + 2);
            v49 = 257;
            v36 = llvm::IRBuilderBase::CreateAlignedLoad(v50, v35, BitOrPointerCast, 259, 0, &v46);
            v37 = this[8];
            v44 = v36;
            llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v37 + 208, &v44, &v46);
            llvm::Value::replaceAllUsesWith();
            v38 = BitOrPointerCast;
            v39 = BitOrPointerCast - 4;
            if (*(BitOrPointerCast - 4))
            {
              v40 = *(BitOrPointerCast - 3);
              **(BitOrPointerCast - 2) = v40;
              if (v40)
              {
                *(v40 + 16) = *(v38 - 2);
              }
            }

            *(v38 - 4) = (v29 - 1);
            v41 = *v29;
            *(v38 - 3) = *v29;
            if (v41)
            {
              *(v41 + 2) = v38 - 3;
            }

            *(v38 - 2) = v29;
            *v29 = v39;
            llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v53);
            llvm::IRBuilderFolder::~IRBuilderFolder(&v52);
            if (v50[0] != v51)
            {
              free(v50[0]);
            }
          }

          --PrimitiveDataArgIndex;
          v42 = v29 + 4;
          v29 += 5;
        }

        while (v42 != v28);
      }

      do
      {
        i = (i + 16);
      }

      while (i != v7 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }
}