void llvm::orc::JITDylib::unlinkMaterializationResponsibility(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  std::recursive_mutex::lock(v4);
  v6 = *(a2 + 8);
  v7 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>((a1 + 264), &v6, &v7))
  {
    v5 = v7;
  }

  else
  {
    v5 = *(a1 + 264) + 32 * *(a1 + 280);
  }

  v7 = a2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v5 + 8, &v7);
  if (!*(v5 + 16))
  {
    v7 = *(a2 + 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>,llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::erase(a1 + 264, &v7);
  }

  std::recursive_mutex::unlock(v4);
}

void llvm::orc::JITDylib::addToLinkOrder(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  std::recursive_mutex::lock(v6);
  *&v7 = a2;
  DWORD2(v7) = a3;
  std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::push_back[abi:nn200100](a1 + 208, &v7);
  std::recursive_mutex::unlock(v6);
}

void llvm::orc::JITDylib::MaterializingInfo::takeQueriesMeeting(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a2 + 48);
  if (*(a2 + 40) != v3)
  {
    do
    {
      v8 = v3 - 16;
      v7 = *(v3 - 16);
      if (*(v7 + 88) > a3)
      {
        break;
      }

      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 >= v10)
      {
        v13 = (v9 - *a1) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v15 = v10 - *a1;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        v24[4] = a1;
        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v16);
        }

        v17 = (16 * v13);
        *v17 = *v8;
        v12 = 16 * v13 + 16;
        *v8 = 0;
        *(v8 + 8) = 0;
        v18 = *(a1 + 8) - *a1;
        v19 = v17 - v18;
        memcpy(v17 - v18, *a1, v18);
        v20 = *a1;
        *a1 = v19;
        *(a1 + 8) = v12;
        v21 = *(a1 + 16);
        *(a1 + 16) = 0;
        v24[2] = v20;
        v24[3] = v21;
        v24[0] = v20;
        v24[1] = v20;
        std::__split_buffer<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::~__split_buffer(v24);
      }

      else
      {
        v11 = *(v3 - 8);
        *v9 = v7;
        v9[1] = v11;
        *v8 = 0;
        *(v8 + 8) = 0;
        v12 = (v9 + 2);
      }

      *(a1 + 8) = v12;
      v22 = *(a2 + 48);
      v23 = *(v22 - 8);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      }

      v3 = v22 - 16;
      *(a2 + 48) = v22 - 16;
    }

    while (*(a2 + 40) != v22 - 16);
  }
}

uint64_t llvm::orc::JITDylib::JITDylib(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = *a3;
  v9[0] = a3[1];
  *(v9 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a1 + 23) = *(v9 + 7);
  v6 = v9[0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 850045863;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 116) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *&v8 = a1;
  DWORD2(v8) = 1;
  std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::push_back[abi:nn200100](a1 + 208, &v8);
  return a1;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>,llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::erase(int32x2_t *a1, uint64_t a2)
{
  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, a1[2].i32[0], a2, &v6))
  {
    v4 = v6;
    v5 = *(v6 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    a1[1] = result;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>,llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::erase(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    MEMORY[0x277C69E30](v6[1], 8);
    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

void *std::vector<llvm::orc::SymbolStringPtr>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(result, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t *llvm::orc::JITDylib::defineImpl@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::orc::JITDylib *this@<X0>, int32x2_t *a3@<X1>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (a3[2].i32[0])
  {
    v6 = a3[3].u32[0];
    if (v6)
    {
      v7 = 16 * v6;
      v8 = a3[1];
      while ((**&v8 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        *&v8 += 16;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v8 = a3[1];
    }

    v9 = *&a3[1] + 16 * v6;
    if (*&v8 != v9)
    {
LABEL_9:
      __dst = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(this + 14), *(this + 32), **&v8, &__dst))
      {
        v10 = __dst == (*(this + 14) + 24 * *(this + 32));
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        if ((*(*&v8 + 9) & 6) != 0)
        {
          v11 = &v39;
        }

        else
        {
          if ((__dst[2] & 0x600) == 0 || (*(__dst + 18) & 0x7E) != 0)
          {
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v45, *&v8, &__dst);
            goto LABEL_19;
          }

          v11 = &v42;
        }

        std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](v11, *&v8);
      }

LABEL_19:
      while (1)
      {
        *&v8 += 16;
        if (*&v8 == v9)
        {
          break;
        }

        if ((**&v8 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          if (*&v8 != v9)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      if (v46)
      {
        v12 = v45;
        if (v47)
        {
          v13 = 8 * v47;
          do
          {
            if ((*v12 | 8) != 0xFFFFFFFFFFFFFFF8)
            {
              goto LABEL_30;
            }

            ++v12;
            v13 -= 8;
          }

          while (v13);
          v12 = &v45[v47];
        }

LABEL_30:
        v15 = *v12 + 2;
        v14 = **v12;
        if (v14 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v14 >= 0x17)
          {
            operator new();
          }

          v49 = **v12;
          if (v14)
          {
            memmove(&__dst, v15, v14);
          }

          *(&__dst + v14) = 0;
          v35 = (*(*a3 + 16))(a3);
          if (!v35)
          {
            v37[0] = 0;
            v37[1] = 0;
            v38 = 0;
            goto LABEL_72;
          }

          v36 = v34;
          if (v34 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v34 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v38) = v34;
            if (v34)
            {
              memmove(v37, v35, v34);
            }

            *(v37 + v36) = 0;
LABEL_72:
            operator new();
          }
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v16 = v39;
      v17 = v40;
      while (v16 != v17)
      {
        llvm::orc::MaterializationUnit::doDiscard(a3, this, v16++);
      }
    }
  }

LABEL_37:
  v18 = v42;
  v19 = v43;
  if (v42 != v43)
  {
    v20 = v42;
    do
    {
      __dst = 0;
      v21 = *v20++;
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(this + 17), *(this + 38), v21, &__dst);
      v23 = __dst;
      if (!v22)
      {
        v23 = (*(this + 17) + 24 * *(this + 38));
      }

      llvm::orc::MaterializationUnit::doDiscard(*v23[1], this, v18);
      v18 = v20;
    }

    while (v20 != v19);
  }

  if (a3[2].i32[0])
  {
    v24 = a3[1];
    v25 = a3[3].u32[0];
    if (v25)
    {
      v26 = 16 * v25;
      v27 = a3[1];
      while ((**&v27 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        *&v27 += 16;
        v26 -= 16;
        if (!v26)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v27 = a3[1];
    }

    v28 = *&v24 + 16 * v25;
    if (*&v27 != v28)
    {
LABEL_50:
      __dst = 0;
      v29 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(this + 14), *(this + 32), **&v27, &__dst);
      v30 = __dst;
      if ((v29 & 1) == 0)
      {
        v31 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(this + 112, *&v27, __dst);
        v30 = v31;
        if (*v31 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(*v31 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v32 = **&v27;
        *v31 = **&v27;
        if ((v32 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v32 + 8), 1uLL);
        }

        v31[1] = 0;
        v31[2] = 0;
      }

      *(v30 + 8) = *(*&v27 + 8);
      *(v30 + 18) = -127;
      while (1)
      {
        *&v27 += 16;
        if (*&v27 == v28)
        {
          break;
        }

        if ((**&v27 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          if (*&v27 != v28)
          {
            goto LABEL_50;
          }

          break;
        }
      }
    }
  }

LABEL_60:
  *a1 = 0;
  __dst = &v39;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&__dst);
  __dst = &v42;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&__dst);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v45);
}

uint64_t llvm::orc::MaterializationUnit::doDiscard(int32x2_t *a1, uint64_t a2, void *a3)
{
  v6.n128_u64[0] = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(a1 + 1, a3);
  v7 = a1[4];
  if (*&v7 == *a3)
  {
    if ((*&v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*&v7 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    a1[4] = 0;
  }

  v8 = *(*a1 + 40);

  return v8(a1, a2, a3, v6);
}

void llvm::orc::JITDylib::installMaterializationUnit(uint64_t a1, std::__shared_weak_count_vtbl **a2, uint64_t a3)
{
  if (*(a1 + 232) != a3)
  {
    v12 = a3;
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::FindAndConstruct(a1 + 240, &v12);
    v5 = v4 + 1;
    std::vector<llvm::orc::SymbolStringPtr>::reserve(v4 + 1, LODWORD((*a2)->__on_zero_shared) + ((v4[2] - v4[1]) >> 3));
    v6 = *a2;
    if (LODWORD((*a2)->__on_zero_shared))
    {
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      if (v8)
      {
        v9 = 16 * v8;
        v10 = v7;
        while ((*v10 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v10 += 2;
          v9 -= 16;
          if (!v9)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v10 = v7;
      }

      v11 = &v7[2 * v8];
LABEL_10:
      if (v10 != v11)
      {
        std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](v5, v10);
        while (1)
        {
          v10 += 2;
          if (v10 == v11)
          {
            break;
          }

          if ((*v10 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_7:
  operator new();
}

llvm::raw_ostream *llvm::orc::MaterializationTask::printDescription(llvm::orc::MaterializationTask *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x15uLL)
  {
    qmemcpy(v4, "Materialization task: ", 22);
    *(a2 + 4) += 22;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Materialization task: ", 0x16uLL);
  }

  v5 = (*(**(this + 1) + 16))(*(this + 1));
  v7 = llvm::raw_ostream::operator<<(a2, v5, v6);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 3uLL)
  {
    *v8 = 544106784;
    *(v7 + 4) += 4;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, " in ", 4uLL);
  }

  v9 = **(this + 2);
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v13 >= 0)
  {
    v15 = *(v10 + 23);
  }

  else
  {
    v15 = *(v10 + 8);
  }

  return llvm::raw_ostream::write(v7, v14, v15);
}

uint64_t **llvm::orc::MaterializationTask::run(llvm::orc::MaterializationTask *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  *(this + 2) = 0;
  v4 = v2;
  (*(*v1 + 24))(v1, &v4);
  return std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](&v4, 0);
}

llvm::raw_ostream *llvm::orc::LookupTask::printDescription(llvm::orc::LookupTask *this, llvm::raw_ostream *a2)
{
  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) <= 0xA)
  {
    return llvm::raw_ostream::write(a2, "Lookup task", 0xBuLL);
  }

  *(v2 + 7) = 1802723700;
  *v2 = *"Lookup task";
  *(a2 + 4) += 11;
  return result;
}

uint64_t llvm::orc::LookupTask::run(llvm::orc::InProgressLookupState **this)
{
  v3 = 0;
  llvm::orc::LookupState::continueLookup(this + 1, &v3);
  result = v3;
  if (v3)
  {
    v2 = *(*v3 + 8);

    return v2();
  }

  return result;
}

uint64_t llvm::orc::ExecutionSession::ExecutionSession(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x277C69C30]();
  *(v4 + 64) = 1;
  v5 = *a2;
  *a2 = 0;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0;
  *(v4 + 88) = llvm::orc::ExecutionSession::logErrorsToStdErr;
  *(v4 + 112) = llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallbacksHolder<void (*)(llvm::Error),void (*)(llvm::Error),void>::Callbacks + 2;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  MEMORY[0x277C69C30](v4 + 168);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 850045863;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 324) = 0u;
  *(*(a1 + 72) + 32) = a1;
  return a1;
}

const void **llvm::orc::ExecutionSession::logErrorsToStdErr(llvm *a1)
{
  v5 = *a1;
  *a1 = 0;
  v1 = llvm::errs(a1);
  v3 = "JIT session error: ";
  v4 = 259;
  llvm::logAllUnhandledErrors(&v5, v1, &v3);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 1))(v5);
  }

  return result;
}

void llvm::orc::ExecutionSession::~ExecutionSession(llvm::orc::ExecutionSession *this)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::destroyAll(this + 80);
  MEMORY[0x277C69E30](*(this + 40), 8);
  std::mutex::~mutex(this + 4);
  v5 = (this + 232);
  std::vector<std::pair<std::unique_ptr<llvm::orc::MaterializationUnit>,std::unique_ptr<llvm::orc::MaterializationResponsibility>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::recursive_mutex::~recursive_mutex((this + 168));
  v5 = (this + 144);
  std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(this + 11);
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::recursive_mutex::~recursive_mutex(this);
}

void llvm::orc::ExecutionSession::endSession(const void ***__return_ptr a1@<X8>, std::recursive_mutex *this@<X0>)
{
  std::recursive_mutex::lock(this);
  LOBYTE(this[1].__m_.__sig) = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = *&this[2].__m_.__opaque[8];
  v5 = *&this[2].__m_.__opaque[16];
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if (!((v6 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v6 >> 3);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  std::recursive_mutex::unlock(this);
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0;
  v14 = 0;
  llvm::orc::ExecutionSession::removeJITDylibs(this, v11, a1);
  v16 = v11;
  std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v7 = *a1;
  (*(**this[1].__m_.__opaque + 48))(&v9);
  v15 = v9;
  v16 = v7;
  v9 = 0;
  llvm::ErrorList::join(&v16, &v15, &v10);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v16)
  {
    ((*v16)[1])(v16);
  }

  v8 = v9;
  *a1 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v16 = &v12;
  std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::__destroy_vector::operator()[abi:nn200100](&v16);
}

void llvm::orc::ExecutionSession::removeJITDylibs(uint64_t a1@<X0>, atomic_uint ***a2@<X1>, const void ***a3@<X8>)
{
  std::recursive_mutex::lock(a1);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *(a1 + 152);
    do
    {
      v9 = *v6;
      (*v6)[10] = 1;
      v10 = v8;
      if (*(a1 + 144) != v8)
      {
        v10 = *(a1 + 144);
        while (*v10 != v9)
        {
          if (++v10 == v8)
          {
            v10 = v8;
            break;
          }
        }
      }

      v11 = v10 + 1;
      if (v10 + 1 == v8)
      {
        v13 = v8;
        v8 = v10;
      }

      else
      {
        do
        {
          v12 = *(v11 - 1);
          *(v11 - 1) = *v11;
          *v11 = 0;
          if (v12)
          {
            llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v12);
          }

          ++v11;
        }

        while (v11 != v8);
        v13 = *(a1 + 152);
        v8 = v11 - 1;
      }

      while (v13 != v8)
      {
        v15 = *--v13;
        v14 = v15;
        if (v15)
        {
          llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v14);
        }
      }

      *(a1 + 152) = v8;
      ++v6;
    }

    while (v6 != v7);
  }

  std::recursive_mutex::unlock(a1);
  v16 = *a2;
  v17 = a2[1];
  if (*a2 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v16;
      if (*v16)
      {
        atomic_fetch_add_explicit(v19, 1u, memory_order_relaxed);
      }

      llvm::orc::JITDylib::clear(v19, &v26);
      v28 = v26;
      v29 = v18;
      v26 = 0;
      llvm::ErrorList::join(&v29, &v28, &v27);
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      if (v29)
      {
        (*(*v29 + 1))(v29);
      }

      v18 = v27;
      v20 = *(a1 + 80);
      if (v20)
      {
        (*(*v20 + 24))(&v25);
        v28 = v25;
        v29 = v18;
        v25 = 0;
        llvm::ErrorList::join(&v29, &v28, &v27);
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        if (v29)
        {
          (*(*v29 + 1))(v29);
        }

        v18 = v27;
        v27 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      if (v19)
      {
        llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v19);
      }

      ++v16;
    }

    while (v16 != v17);
  }

  *a3 = v18;
  std::recursive_mutex::lock(a1);
  v22 = *a2;
  for (i = a2[1]; v22 != i; *(v24 + 216) = *(v24 + 208))
  {
    v23 = *v22;
    v23[10] = 2;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](v23 + 23);
    v24 = *v22++;
  }

  std::recursive_mutex::unlock(a1);
}

void llvm::orc::ExecutionSession::registerResourceManager(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (v5 >= v4)
  {
    v7 = *(a1 + 120);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1 + 120, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 120);
    v14 = *(a1 + 128) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 120);
    *(a1 + 120) = v15;
    *(a1 + 128) = v6;
    *(a1 + 136) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(a1 + 128) = v6;

  std::recursive_mutex::unlock(a1);
}

void llvm::orc::ExecutionSession::deregisterResourceManager(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock(a1);
  v4 = *(a1 + 128);
  v5 = v4 - 8;
  if (*(v4 - 1) != a2)
  {
    for (i = *(a1 + 120); i != v4; i += 8)
    {
      if (*i == a2)
      {
        goto LABEL_7;
      }
    }

    i = *(a1 + 128);
LABEL_7:
    v7 = v4 - (i + 8);
    if (v4 != i + 8)
    {
      memmove(i, i + 8, v4 - (i + 8));
    }

    v5 = &i[v7];
  }

  *(a1 + 128) = v5;

  std::recursive_mutex::unlock(a1);
}

void llvm::orc::ExecutionSession::createJITDylib(std::recursive_mutex *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
  }

  else
  {
    v4 = *a2;
  }

  llvm::orc::ExecutionSession::createBareJITDylib(a1, &v4);
}

void llvm::orc::ExecutionSession::dispatchOutstandingMUs(llvm::orc::ExecutionSession *this)
{
  do
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    std::recursive_mutex::lock((this + 168));
    v2 = *(this + 30);
    if (*(this + 29) != v2)
    {
      if (v6 == 1)
      {
        std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](&v5 + 1, 0);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v3 = *(v2 - 16);
      *(v2 - 16) = 0;
      *(v2 - 8) = 0;
      v5 = v3;
      v6 = 1;
      v4 = *(this + 30) - 16;
      std::allocator<std::pair<std::unique_ptr<llvm::orc::MaterializationUnit>,std::unique_ptr<llvm::orc::MaterializationResponsibility>>>::destroy[abi:nn200100](this + 232, v4);
      *(this + 30) = v4;
    }

    std::recursive_mutex::unlock((this + 168));
    if (v6 == 1)
    {
      operator new();
    }
  }

  while ((v6 & 1) != 0);
}

void llvm::orc::ExecutionSession::lookup(llvm::orc::ExecutionSession *a1, __int128 **a2, uint64_t *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = *a3;
  if ((v8[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v8[0] + 8), 1uLL);
  }

  llvm::orc::SymbolLookupSet::SymbolLookupSet(&v5, v8, 1uLL, 0);
  if ((v8[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v8[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = 0uLL;
  v6 = 0;
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__value_func[abi:nn200100](v7, &llvm::orc::NoDependenciesToRegister);
  llvm::orc::ExecutionSession::lookup();
}

void llvm::orc::ExecutionSession::lookup(llvm::orc::ExecutionSession *a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  memset(__p, 0, sizeof(__p));
  std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::reserve(__p, a3);
  if (a3)
  {
    v10 = 8 * a3;
    do
    {
      v11 = *a2++;
      *&v15 = v11;
      DWORD2(v15) = 0;
      std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::push_back[abi:nn200100](__p, &v15);
      v10 -= 8;
    }

    while (v10);
  }

  v12 = *a4;
  v13 = v12;
  if ((v12 - 1) < 0xFFFFFFFFFFFFFFE0)
  {
    atomic_fetch_add((v12 + 8), 1uLL);
    llvm::orc::ExecutionSession::lookup(a1, __p, &v13);
  }

  llvm::orc::ExecutionSession::lookup(a1, __p, &v13);
}

void llvm::orc::ExecutionSession::lookup(llvm::orc::ExecutionSession *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, size_t a5)
{
  v12 = *(*(a1 + 9) + 8);
  std::mutex::lock(v12);
  v15 = 0;
  v13 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v12[1], a4, a5, &v15);
  v14 = v13;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v13 + 1, 1uLL);
  }

  std::mutex::unlock(v12);
  llvm::orc::ExecutionSession::lookup(a1, a2, a3, &v14);
}

void llvm::orc::ExecutionSession::runJITDispatchHandler(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26 = a3;
  std::mutex::lock((a1 + 256));
  v17[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*(a1 + 320), *(a1 + 336), a3, v17))
  {
    v10 = v17[0] == *(a1 + 320) + 24 * *(a1 + 336);
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    std::mutex::unlock((a1 + 256));
    v11 = 0;
  }

  else
  {
    v12 = *(v17[0] + 8);
    v11 = *(v17[0] + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::mutex::unlock((a1 + 256));
    if (v12)
    {
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v27, a2);
      v13 = v12[3];
      if ((v13 & 2) == 0)
      {
        v12 = *v12;
      }

      (*(v13 & 0xFFFFFFFFFFFFFFF8))(v12, v27, a4, a5);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v27);
      goto LABEL_25;
    }
  }

  v17[0] = "{0:x16}";
  v17[1] = 7;
  v17[2] = &v19;
  v17[3] = 1;
  v18[0] = &unk_2883EBA18;
  v18[1] = &v26;
  v19 = v18;
  v20[0] = "No function registered for tag ";
  v20[2] = v17;
  v21 = 1539;
  llvm::Twine::str(v20, __p);
  if (v23 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v24, v14);
  v15 = *(a2 + 3);
  if ((v15 & 2) == 0)
  {
    a2 = *a2;
  }

  (*(v15 & 0xFFFFFFFFFFFFFFF8))(a2, &v24);
  if (v25 >= 9)
  {
    v16 = v24;
LABEL_22:
    free(v16);
    goto LABEL_23;
  }

  if (!v25)
  {
    v16 = v24;
    if (v24)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_25:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::ExecutionSession::destroyResourceTracker(llvm::orc::ResourceTracker &)::$_0>(std::recursive_mutex *a1, llvm::orc::ResourceTracker **a2)
{
  std::recursive_mutex::lock(a1);
  v4 = a2[1];
  v5 = atomic_load(*a2 + 1);
  if ((v5 & 1) == 0)
  {
    v6 = atomic_load(*a2 + 1);
    llvm::orc::JITDylib::getDefaultResourceTracker(&v8, (v6 & 0xFFFFFFFFFFFFFFFELL));
    v7 = v8;
    llvm::orc::ExecutionSession::transferResourceTracker(v4, v8, *a2);
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v7);
  }

  std::recursive_mutex::unlock(a1);
}

void llvm::orc::ExecutionSession::IL_updateCandidatesFor(void *a1, uint64_t a2, uint64_t a3, int a4, llvm::orc::SymbolLookupSet *a5, uint64_t *a6)
{
  v6 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v7 = *a5;
  if (*(a5 + 1) != *a5)
  {
    v12 = 0;
    do
    {
      v13 = v7 + 16 * v12;
      v14 = *(v13 + 8);
      v24 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(a3 + 112), *(a3 + 128), *v13, &v24))
      {
        v15 = v24 == *(a3 + 112) + 24 * *(a3 + 128);
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        ++v12;
      }

      else
      {
        v16 = *(v24 + 17);
        if (a4 | v16 & 0x10)
        {
          if (v14 != 1 && (v16 & 0x40) != 0)
          {
            v19 = *(a2 + 72);
            v21 = *(v19 + 8);
            v20 = *(v19 + 16);
            v26 = v21;
            v27 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            if ((*v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v13 + 8), 1uLL);
            }

            operator new();
          }

          if (*(v24 + 17))
          {
            operator new();
          }
        }

        else if (a6)
        {
          v17 = *v13;
          if ((*v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v17 + 8), 1uLL);
          }

          v24 = v17;
          LODWORD(v25) = v14;
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::push_back[abi:nn200100](a6, &v24);
          if ((v24 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        llvm::orc::SymbolLookupSet::remove(a5, v12);
      }

      v7 = *a5;
    }

    while (v12 != (*(a5 + 1) - *a5) >> 4);
    v6 = a1;
  }

  *v6 = 0;
}

void llvm::orc::ExecutionSession::OL_resumeLookupAfterGeneration(llvm::orc::ExecutionSession *this, llvm::orc::InProgressLookupState *a2)
{
  *(a2 + 34) = 0;
  v2 = *(a2 + 19);
  v3 = *(v2 - 8);
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(v2 - 16);
  if (v7)
  {
    v8 = *(a2 + 19);
    v9 = *(v8 - 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    *(a2 + 19) = v8 - 16;
    std::mutex::lock((v7 + 8));
    v10 = *(v7 + 120);
    if (v10)
    {
      v11 = *(v7 + 88);
      v12 = *(v7 + 112);
      v13 = (v12 >> 6) & 0x3FFFFFFFFFFFFF8;
      v14 = *(v11 + v13);
      v15 = *(v14 + 8 * (v12 & 0x1FF));
      *(v14 + 8 * (v12 & 0x1FF)) = 0;
      v16 = *(v11 + v13);
      v17 = *(v16 + 8 * (v12 & 0x1FF));
      *(v16 + 8 * (v12 & 0x1FF)) = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
        v12 = *(v7 + 112);
        v10 = *(v7 + 120);
      }

      v18 = v12 + 1;
      *(v7 + 112) = v18;
      *(v7 + 120) = v10 - 1;
      if (v18 >= 0x400)
      {
        operator delete(**(v7 + 88));
        *(v7 + 88) += 8;
        *(v7 + 112) -= 512;
      }

      std::mutex::unlock((v7 + 8));
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      if (v15)
      {
        *(v15 + 136) = 1;
        operator new();
      }

      return;
    }

    *(v7 + 72) = 0;
    std::mutex::unlock((v7 + 8));
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v6);
}

void *llvm::orc::SymbolLookupSet::getSymbolNames(llvm::orc::SymbolLookupSet *this, char **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = std::vector<llvm::orc::SymbolStringPtr>::reserve(this, (a2[1] - *a2) >> 4);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    result = std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](this, v5);
    v5 += 16;
  }

  return result;
}

uint64_t llvm::orc::ExecutionSession::simplifyDepGroups@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v88 = *a1;
  *a4 = 0;
  a4[1] = 0;
  *(a4 + 4) = 0;
  if (a3)
  {
    v8 = (4 * a3 / 3u + 1) | ((4 * a3 / 3u + 1) >> 1);
    v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
    llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::grow(a4, (((v9 | (v9 >> 8)) >> 16) | v9 | (v9 >> 8)) + 1);
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v90 = v5 + 48 * a3;
    goto LABEL_4;
  }

  v99 = 0;
  v100 = 0;
  v101 = 0;
  v90 = a2 + 48 * a3;
  if (a3)
  {
LABEL_4:
    v10 = v5;
    do
    {
      if (*(v10 + 32))
      {
        operator new();
      }

      v10 += 48;
    }

    while (v10 != v90);
    v11 = 0;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:
  v96 = 0uLL;
  LODWORD(v97) = 0;
  v14 = a1[2];
  v13 = a1 + 2;
  v12 = v14;
  if (!*(v13 + 2))
  {
    goto LABEL_29;
  }

  v15 = *(v13 + 4);
  if (v15)
  {
    v16 = 16 * v15;
    v17 = v12;
    while ((*v17 | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      v17 += 16;
      v16 -= 16;
      if (!v16)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v17 = v12;
  }

  v18 = v12 + 16 * v15;
  if (v17 == v18)
  {
LABEL_29:
    v24 = 0;
  }

  else
  {
    v19 = v99;
    v20 = v101;
LABEL_18:
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v19, v20, *v17, v104) & 1) == 0)
    {
      v103 = *v17;
      v21 = v103;
      v104[0] = 0;
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v96, v97, v103, v104);
      v23 = v104[0];
      if ((v22 & 1) == 0)
      {
        v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(&v96, &v103, v104[0]);
        *v23 = v21;
        *(v23 + 4) = 0;
      }

      *(v23 + 4) = *(v17 + 8);
    }

    while (1)
    {
      v17 += 16;
      if (v17 == v18)
      {
        break;
      }

      if ((*v17 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        if (v17 != v18)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    if (DWORD2(v96))
    {
      operator new();
    }

    v24 = v96;
  }

  MEMORY[0x277C69E30](v24, 8);
  if ((v11 & 1) == 0)
  {
    do
    {
      if (*(v5 + 32))
      {
        v56 = *llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(v5);
        *&v96 = 0;
        v57 = v99;
        v58 = v101;
        v59 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v99, v101, v56, &v96);
        v60 = v96;
        if (!v59)
        {
          v60 = v57 + 16 * v58;
        }

        if (*(v5 + 32))
        {
          v61 = *(v60 + 8);
          v62 = *(v5 + 40);
          if (v62)
          {
            v63 = 32 * v62;
            v64 = *(v5 + 24);
            while ((*v64 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v64 += 4;
              v63 -= 32;
              if (!v63)
              {
                goto LABEL_85;
              }
            }
          }

          else
          {
            v64 = *(v5 + 24);
          }

          v65 = *(v5 + 24) + 32 * v62;
LABEL_89:
          if (v64 != v65)
          {
            memset(v104, 0, 20);
            v66 = *v64;
            v67 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin((v64 + 1));
            v68 = v67;
            v70 = v69;
            v71 = v64[1] + 8 * *(v64 + 6);
            if (v66 == v88)
            {
              if (v71 != v67)
              {
                do
                {
                  v103 = *v68;
                  *&v96 = 0;
                  v73 = v99;
                  v74 = v101;
                  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v99, v101, v103, &v96))
                  {
                    v75 = v96 == v73 + 16 * v74;
                  }

                  else
                  {
                    v75 = 1;
                  }

                  if (v75)
                  {
                    *&v96 = 0;
                    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v13, v68, &v96) & 1) == 0)
                    {
                      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v96, v104, &v103);
                    }
                  }

                  else if (*(v96 + 8) != v61)
                  {
                    v76 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(a4, (v96 + 8));
                    v102 = v61;
                    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v96, (v76 + 3), &v102);
                  }

                  do
                  {
                    ++v68;
                  }

                  while (v68 != v70 && (*v68 | 8) == 0xFFFFFFFFFFFFFFF8);
                }

                while (v68 != v71);
              }
            }

            else if (v71 != v67)
            {
              do
              {
                v103 = *v68;
                v72 = v103;
                *&v96 = 0;
                if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(v104[0], v104[2], v103, &v96) & 1) == 0)
                {
                  *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::NonOwningSymbolStringPtr>(v104, &v103, v96) = v72;
                }

                do
                {
                  ++v68;
                }

                while (v68 != v70 && (*v68 | 8) == 0xFFFFFFFFFFFFFFF8);
              }

              while (v68 != v71);
            }

            v77 = v104[1];
            if (LODWORD(v104[1]))
            {
              v78 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(v61 + 32, v64);
              MEMORY[0x277C69E30](v78[1], 8);
              v79 = 0;
              v78[1] = v104[0];
              *(v78 + 4) = v77;
              v80 = *(&v104[1] + 4);
              v104[0] = 0;
              v104[1] = 0;
              *(v78 + 20) = v80;
            }

            else
            {
              v79 = v104[0];
            }

            MEMORY[0x277C69E30](v79, 8);
            while (1)
            {
              v64 += 4;
              if (v64 == v65)
              {
                break;
              }

              if ((*v64 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                goto LABEL_89;
              }
            }
          }
        }
      }

LABEL_85:
      v5 += 48;
    }

    while (v5 != v90);
  }

  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v25 = a4;
  if (*(a4 + 2))
  {
    v26 = *a4;
    v27 = *(a4 + 4);
    v28 = *a4;
    if (v27)
    {
      v29 = 72 * v27;
      v28 = *a4;
      while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v28 += 9;
        v29 -= 72;
        if (!v29)
        {
          goto LABEL_36;
        }
      }
    }

    v81 = (v26 + 72 * v27);
LABEL_119:
    if (v28 != v81)
    {
      v82 = *v28;
      if (*(*v28 + 40))
      {
        v104[0] = 0;
        v83 = !llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(v26, v27, v82, v104) || v104[0] == v81;
        if (!v83 && *(v104[0] + 32))
        {
          v84 = *v28 + 32;
          if (v84 != v104[0] + 48)
          {
            llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::copyFrom((v104[0] + 48), v84);
          }

          std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(&v96, v28);
        }
      }

      while (1)
      {
        v28 += 9;
        if (v28 == v81)
        {
          break;
        }

        if ((*v28 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_119;
        }
      }
    }
  }

LABEL_36:
  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::deque(v92, &v96);
  for (i = v95; v95; i = v95)
  {
    v31 = (*(v93 + ((v94 >> 6) & 0x3FFFFFFFFFFFFF8)))[v94 & 0x1FF];
    ++v94;
    v95 = i - 1;
    if (v94 >= 0x400)
    {
      operator delete(*v93++);
      v94 -= 512;
    }

    v104[0] = v31;
    v32 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v25, v104);
    v33 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v32 + 3));
    v35 = v32[3];
    v36 = (v35 + 8 * *(v32 + 10));
    if (v36 != v33)
    {
      v37 = v33;
      v38 = v34;
      v85 = (v35 + 8 * *(v32 + 10));
      v86 = v32;
      do
      {
        v103 = *v37;
        v104[0] = 0;
        v39 = *v25;
        v40 = *(v25 + 4);
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*v25, v40, v103, v104))
        {
          v41 = v104[0];
        }

        else
        {
          v41 = v39 + 72 * v40;
        }

        v42 = v41 + 8;
        if (v41 == v39 + 72 * v40)
        {
          v42 = 0;
        }

        v89 = v42;
        v91 = v39 + 72 * v40;
        if (*(v32 + 14))
        {
          v43 = *(v32 + 16);
          if (v43)
          {
            v44 = 32 * v43;
            v45 = v32[6];
            while ((*v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v45 += 32;
              v44 -= 32;
              if (!v44)
              {
                goto LABEL_72;
              }
            }
          }

          else
          {
            v45 = v32[6];
          }

          v46 = v32[6] + 32 * v43;
          while (v45 != v46)
          {
            v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(v103 + 32, v45);
            v48 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(v45 + 8);
            v50 = *(v45 + 8) + 8 * *(v45 + 24);
            if (v50 != v48)
            {
              v51 = v48;
              v52 = v49;
              v53 = 0;
              do
              {
                v102 = *v51;
                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v104, (v47 + 1), &v102);
                if (LOBYTE(v104[2]) == 1 && v41 != v91)
                {
                  if (!v53)
                  {
                    if (!*(v89 + 48))
                    {
                      std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(v92, &v103);
                    }

                    v53 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(v89 + 40, v45) + 1;
                  }

                  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v104, v53, &v102);
                }

                do
                {
                  ++v51;
                }

                while (v51 != v52 && (*v51 | 8) == 0xFFFFFFFFFFFFFFF8);
              }

              while (v51 != v50);
            }

            v45 += 32;
            v32 = v86;
            v25 = a4;
            v36 = v85;
            if (v45 == v46)
            {
              break;
            }

            while ((*v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v45 += 32;
              if (v45 == v46)
              {
                goto LABEL_72;
              }
            }
          }
        }

        do
        {
LABEL_72:
          ++v37;
        }

        while (v37 != v38 && (*v37 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v37 != v36);
    }

    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::clear(v32 + 12);
  }

  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](v92);
  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](&v96);
  return MEMORY[0x277C69E30](v99, 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::find(uint64_t a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 16 * *(a1 + 16);
  }
}

void std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
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
      if (v5 - v4 < v11)
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

      v15 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v13);
    }

    a1[4] = v8 - 512;
    *&v14 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_back<llvm::orc::JITDylib::EmissionDepUnit **&>(a1, &v14);
    v4 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::erase(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  {
    v4 = v5;
    MEMORY[0x277C69E30](v5[1], 8);
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void llvm::orc::ExecutionSession::makeJDClosedError(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(a2 + 8);
      while ((*v7 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = *(a2 + 8) + 16 * v5;
    while (v7 != v8)
    {
      v9 = *v7;
      v31 = v9;
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v9 + 8), 1uLL);
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v29, &v31, &v32);
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        v7 += 2;
        if (v7 == v8)
        {
          goto LABEL_16;
        }
      }

      while ((*v7 | 8) == 0xFFFFFFFFFFFFFFF8);
    }
  }

LABEL_16:
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v32 = a3;
  v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(a2 + 32, &v32);
  v11 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin((v10 + 1));
  v13 = v10[1] + 8 * *(v10 + 6);
  if (v13 != v11)
  {
    v14 = v11;
    v15 = v12;
    do
    {
      v31 = a3;
      v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct(v27, &v31);
      v17 = *v14;
      __p = v17;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(v17 + 1, 1uLL);
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>((v16 + 1), &__p, &v32);
      if (__p - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(__p + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v14;
      }

      while (v14 != v15 && (*v14 | 8) == 0xFFFFFFFFFFFFFFF8);
    }

    while (v14 != v13);
  }

  v18 = *(*(*(a3 + 32) + 72) + 16);
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 31) >= 0)
  {
    v19 = *(a3 + 31);
  }

  else
  {
    v19 = *(a3 + 16);
  }

  p_p = &__p;
  std::string::basic_string[abi:nn200100](&__p, v19 + 10);
  if (v26 < 0)
  {
    p_p = __p;
  }

  if (v19)
  {
    v23 = *(a3 + 8);
    v22 = (a3 + 8);
    v21 = v23;
    if (v22[23] >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    memmove(p_p, v24, v19);
  }

  strcpy(p_p + v19, " is closed");
  operator new();
}

void llvm::orc::ExecutionSession::IL_emit(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v241 = *MEMORY[0x277D85DE8];
  v5 = atomic_load((a1[1] + 8));
  if (v5)
  {
    operator new();
  }

  v6 = *a1;
  if (*(*a1 + 40))
  {
    std::operator+<char>();
    v7 = std::string::append(v227, " is defunct");
    v8 = v7->__r_.__value_.__r.__words[2];
    *__p = *&v7->__r_.__value_.__l.__data_;
    v237[0] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    getErrorErrorCat();
    operator new();
  }

  v9 = a2;
  v228 = 0u;
  memset(v227, 0, sizeof(v227));
  v196 = a3;
  if (!*(a2 + 2))
  {
    goto LABEL_182;
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    v11 = 72 * v10;
    v12 = *a2;
    while ((*v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v12 += 9;
      v11 -= 72;
      if (!v11)
      {
        goto LABEL_182;
      }
    }
  }

  else
  {
    v12 = *a2;
  }

  v13 = *a2 + 72 * v10;
  if (v12 == v13)
  {
LABEL_182:
    v14 = 0;
LABEL_183:
    v15 = v14;
    goto LABEL_184;
  }

LABEL_13:
  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(v227, v12);
  while (1)
  {
    v12 += 9;
    if (v12 == v13)
    {
      break;
    }

    if ((*v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (v12 != v13)
      {
        goto LABEL_13;
      }

      break;
    }
  }

  v14 = *&v227[8];
  v15 = *&v227[16];
  if (*&v227[16] == *&v227[8])
  {
    goto LABEL_183;
  }

  v16 = (*&v227[8] + 8 * (v228 >> 9));
  v3 = *v16 + 8 * (v228 & 0x1FF);
  v202 = *(*&v227[8] + (((*(&v228 + 1) + v228) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v228 + 1) + v228) & 0x1FF);
  if (v3 != v202)
  {
    v209 = v6;
    v197 = v9;
    do
    {
      v226 = *v3;
      v17 = v226;
      v213 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v9, &v226) + 1;
      v238 = v240;
      v239 = 0x600000000;
      if (*(v17 + 40))
      {
        v18 = *(v17 + 48);
        if (v18)
        {
          v19 = 32 * v18;
          v20 = *(v17 + 32);
          while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v20 += 32;
            v19 -= 32;
            if (!v19)
            {
              goto LABEL_128;
            }
          }

          v206 = v3;
        }

        else
        {
          v206 = v3;
          v20 = *(v17 + 32);
        }

        v21 = *(v17 + 32) + 32 * v18;
        if (v20 == v21)
        {
          goto LABEL_127;
        }

        v199 = v16;
LABEL_30:
        if (*(*v20 + 40))
        {
          llvm::orc::ExecutionSession::makeJDClosedError(&v225, v226, *v20);
        }

        v223 = 0;
        memset(v224, 0, 12);
        __p[0] = v237;
        __p[1] = 0x600000000;
        v22 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(v20 + 8);
        v24 = *(v20 + 8) + 8 * *(v20 + 24);
        if (v24 != v22)
        {
          v25 = v22;
          v26 = v23;
          do
          {
            v27 = *v20;
            v28 = *v25;
            v29 = *v25 - 1;
            if (v29 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v28 + 8), 1uLL);
            }

            *&v235 = 0;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(v27 + 112), *(v27 + 128), v28, &v235))
            {
              v30 = v235;
            }

            else
            {
              v30 = *(v27 + 112) + 24 * *(v27 + 128);
            }

            if (v29 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            if (v30 == *(*v20 + 112) + 24 * *(*v20 + 128) || (*(v30 + 16) & 0x100) != 0)
            {
              v46 = *v25;
              *&v234 = v46;
              if ((v46 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v46 + 8), 1uLL);
              }

              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v223, &v234, &v235);
              if ((v234 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v234 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }
            }

            else if ((*(v30 + 18) & 0x7C) != 0)
            {
              v31 = *v25;
              v32 = LODWORD(__p[1]);
              if (LODWORD(__p[1]) >= HIDWORD(__p[1]))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(__p, v237, LODWORD(__p[1]) + 1, 8);
                v32 = LODWORD(__p[1]);
              }

              *(__p[0] + v32) = v31;
              ++LODWORD(__p[1]);
              if ((*(v30 + 18) & 0x7F) != 0x3F)
              {
                v33 = *v20;
                v34 = *v25;
                *&v235 = v34;
                if ((v34 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v34 + 8), 1uLL);
                }

                v35 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct((v33 + 160), &v235);
                v36 = v35;
                if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                }

                *&v235 = v35[1];
                v37 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v9, &v235);
                if (!v37[1])
                {
                  v38 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v9, &v226);
                  v40 = v36[1];
                  v39 = v36[2];
                  if (v39)
                  {
                    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
                  }

                  v41 = v37[2];
                  v37[1] = v40;
                  v37[2] = v39;
                  if (v41)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                    v40 = v37[1];
                  }

                  v213 = v38 + 1;
                  if (*(v40 + 40))
                  {
                    v42 = *(v40 + 32);
                    v43 = *(v40 + 48);
                    if (v43)
                    {
                      v44 = 32 * v43;
                      v45 = v42;
                      while ((*v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
                      {
                        v45 += 32;
                        v44 -= 32;
                        if (!v44)
                        {
                          goto LABEL_60;
                        }
                      }
                    }

                    else
                    {
                      v45 = v42;
                    }

                    v48 = v42 + 32 * v43;
LABEL_73:
                    if (v45 != v48)
                    {
                      if (*v45 == v209)
                      {
                        v50 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(v45 + 8);
                        v195 = *(v45 + 8) + 8 * *(v45 + 24);
                        if (v195 != v50)
                        {
                          v52 = v50;
                          v53 = v51;
                          do
                          {
                            v54 = *v52;
                            *&v234 = v54;
                            if ((v54 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                            {
                              atomic_fetch_add((v54 + 8), 1uLL);
                            }

                            *&v235 = 0;
                            v55 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1 + 2, &v234, &v235);
                            if ((v234 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                            {
                              atomic_fetch_add((v234 + 8), 0xFFFFFFFFFFFFFFFFLL);
                            }

                            if ((v55 & 1) == 0)
                            {
                              v56 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct((v37 + 6), v45);
                              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v235, (v56 + 1), v52);
                            }

                            do
                            {
                              ++v52;
                            }

                            while (v52 != v53 && (*v52 | 8) == 0xFFFFFFFFFFFFFFF8);
                          }

                          while (v52 != v195);
                        }
                      }

                      else
                      {
                        v49 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct((v37 + 6), v45);
                        if (v45 != v49)
                        {
                          llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::copyFrom((v49 + 1), v45 + 8);
                        }
                      }

                      while (1)
                      {
                        v45 += 32;
                        if (v45 == v48)
                        {
                          break;
                        }

                        if ((*v45 | 0x1000) != 0xFFFFFFFFFFFFF000)
                        {
                          goto LABEL_73;
                        }
                      }
                    }

LABEL_60:
                    v9 = v197;
                  }
                }

                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v235, (v37 + 3), &v226);
              }
            }

            else
            {
              v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct((v213 + 5), v20);
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v235, (v47 + 1), v25);
            }

            do
            {
              ++v25;
            }

            while (v25 != v26 && (*v25 | 8) == 0xFFFFFFFFFFFFFFF8);
          }

          while (v25 != v24);
          if (LODWORD(v224[0]))
          {
            v57 = *v20;
            v220 = v223;
            v221 = v224[0];
            v58 = *(v224 + 4);
            v223 = 0;
            memset(v224, 0, 12);
            v222 = v58;
            v232 = 0;
            v231 = 0uLL;
            if (*(v226 + 16))
            {
              v59 = *(v226 + 24);
              if (v59)
              {
                v60 = 16 * v59;
                v61 = *(v226 + 8);
                while ((*v61 | 8) == 0xFFFFFFFFFFFFFFF8)
                {
                  v61 += 2;
                  v60 -= 16;
                  if (!v60)
                  {
                    goto LABEL_114;
                  }
                }
              }

              else
              {
                v61 = *(v226 + 8);
              }

              v65 = *(v226 + 8) + 16 * v59;
              if (v61 != v65)
              {
                v66 = *v61;
                do
                {
                  *&v234 = v66;
                  if ((v66 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v66 + 8), 1uLL);
                  }

                  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v231, &v234, &v235);
                  if ((v234 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v234 + 8), 0xFFFFFFFFFFFFFFFFLL);
                  }

                  do
                  {
                    v61 += 2;
                    if (v61 == v65)
                    {
                      goto LABEL_114;
                    }

                    v66 = *v61;
                  }

                  while ((*v61 | 8) == 0xFFFFFFFFFFFFFFF8);
                }

                while (v61 != v65);
              }
            }

LABEL_114:
            v229[0] = 0;
            v229[1] = 0;
            v230 = 0;
            *&v235 = v57;
            v67 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct(v229, &v235);
            llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::operator=(v67 + 1, &v220);
            v68 = *(*(*(v57 + 32) + 72) + 16);
            if (v68)
            {
              atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        v6 = v209;
        v16 = v199;
        if (LODWORD(__p[1]))
        {
          v62 = __p[0];
          v63 = 8 * LODWORD(__p[1]);
          do
          {
            v64 = *v62++;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::erase(v20 + 8, v64);
            v63 -= 8;
          }

          while (v63);
        }

        if (!*(v20 + 16))
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v238, *v20);
        }

        if (__p[0] != v237)
        {
          free(__p[0]);
        }

        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v223);
        while (1)
        {
          v20 += 32;
          if (v20 == v21)
          {
            break;
          }

          if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v20 != v21)
            {
              goto LABEL_30;
            }

            break;
          }
        }

        v17 = v226;
        if (!v239)
        {
LABEL_127:
          v3 = v206;
        }

        else
        {
          v69 = v238;
          v70 = 8 * v239;
          v3 = v206;
          do
          {
            v71 = *v69++;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::erase(v17 + 32, v71);
            v70 -= 8;
          }

          while (v70);
        }
      }

LABEL_128:
      if (*(v17 + 16))
      {
        v72 = *(v17 + 24);
        if (v72)
        {
          v73 = 16 * v72;
          v74 = *(v17 + 8);
          while ((*v74 | 8) == 0xFFFFFFFFFFFFFFF8)
          {
            v74 += 2;
            v73 -= 16;
            if (!v73)
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          v74 = *(v17 + 8);
        }

        v75 = *(v17 + 8) + 16 * v72;
        while (v74 != v75)
        {
          v207 = v3;
          v76 = *v74;
          *&v235 = v76;
          if ((v76 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v76 + 8), 1uLL);
          }

          __p[0] = 0;
          v77 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v6 + 20, &v235, __p);
          v78 = v6[20];
          v79 = *(v6 + 44);
          if (v77)
          {
            v80 = __p[0];
          }

          else
          {
            v80 = (v78 + 72 * v79);
          }

          if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
            v78 = v6[20];
            v79 = *(v6 + 44);
          }

          if (v80 != (v78 + 72 * v79) && v80[8])
          {
            v200 = v16;
            v81 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v80 + 6));
            v83 = *(v80 + 3) + 8 * v80[10];
            if (v83 != v81)
            {
              v84 = v81;
              v85 = v82;
              do
              {
                v86 = *v84;
                v87 = *v74;
                __p[0] = v209;
                v88 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct((v86 + 4), __p);
                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::erase((v88 + 1), v87);
                if (!*(v88 + 4))
                {
                  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::erase((v86 + 4), v209);
                  if (!*(v86 + 10))
                  {
                    __p[0] = v86;
                    v89 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v197, __p);
                    if (!v89[1])
                    {
                      v90 = v89;
                      v91 = v86[1];
                      v92 = *(v86 + 6);
                      v93 = &v91[2 * v92];
                      if (*(v86 + 4))
                      {
                        if (v92)
                        {
                          v94 = 16 * v92;
                          while ((*v91 | 8) == 0xFFFFFFFFFFFFFFF8)
                          {
                            v91 += 2;
                            v94 -= 16;
                            if (!v94)
                            {
                              goto LABEL_156;
                            }
                          }
                        }
                      }

                      else
                      {
LABEL_156:
                        v91 = v93;
                      }

                      v95 = *v86;
                      v96 = *v91;
                      *&v235 = v96;
                      if ((v96 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                      {
                        atomic_fetch_add((v96 + 8), 1uLL);
                      }

                      __p[0] = 0;
                      v97 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v95 + 160), &v235, __p);
                      v98 = __p[0];
                      if (!v97)
                      {
                        v98 = (*(v95 + 160) + 72 * *(v95 + 176));
                      }

                      if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                      {
                        atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                      }

                      v100 = v98[1];
                      v99 = v98[2];
                      if (v99)
                      {
                        atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
                      }

                      v101 = v90[2];
                      v90[1] = v100;
                      v90[2] = v99;
                      if (v101)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
                      }

                      v213 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v197, &v226) + 1;
                    }
                  }
                }

                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(__p, (v213 + 2), v84);
                do
                {
                  ++v84;
                }

                while (v84 != v85 && (*v84 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v84 != v83);
            }

            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::clear(v80 + 24);
            v9 = v197;
            v16 = v200;
            v6 = v209;
          }

          v74 += 2;
          v3 = v207;
          if (v74 == v75)
          {
            break;
          }

          while ((*v74 | 8) == 0xFFFFFFFFFFFFFFF8)
          {
            v74 += 2;
            if (v74 == v75)
            {
              goto LABEL_176;
            }
          }
        }
      }

LABEL_176:
      if (v238 != v240)
      {
        free(v238);
      }

      v3 += 8;
      if (v3 - *v16 == 4096)
      {
        v102 = v16[1];
        ++v16;
        v3 = v102;
      }
    }

    while (v3 != v202);
    v14 = *&v227[8];
    v15 = *&v227[16];
  }

LABEL_184:
  *(&v228 + 1) = 0;
  v103 = v15 - v14;
  if (v103 >= 3)
  {
    do
    {
      operator delete(*v14);
      v14 = (*&v227[8] + 8);
      *&v227[8] = v14;
      v103 = (*&v227[16] - v14) >> 3;
    }

    while (v103 > 2);
  }

  if (v103 == 1)
  {
    v104 = 256;
  }

  else
  {
    if (v103 != 2)
    {
      goto LABEL_191;
    }

    v104 = 512;
  }

  *&v228 = v104;
LABEL_191:
  if (*(v9 + 2))
  {
    v105 = *(v9 + 4);
    if (v105)
    {
      v106 = 72 * v105;
      v107 = *v9;
      while ((*v107 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v107 += 72;
        v106 -= 72;
        if (!v106)
        {
          goto LABEL_196;
        }
      }
    }

    else
    {
      v107 = *v9;
    }

    v141 = *v9 + 72 * v105;
LABEL_251:
    if (v107 != v141)
    {
      if (*(v107 + 32))
      {
        v142 = *v107;
        if (*(*v107 + 40))
        {
          if (v142 + 32 != v107 + 48 && *(v107 + 56) == 0)
          {
            llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::copyFrom((v107 + 48), v142 + 32);
          }

          std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(v227, v107);
        }
      }

      while (1)
      {
        v107 += 72;
        if (v107 == v141)
        {
          break;
        }

        if ((*v107 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_251;
        }
      }
    }
  }

LABEL_196:
  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::deque(&v216, v227);
  v108 = v219;
  if (v219)
  {
    v198 = v9;
    do
    {
      v109 = (*(v217 + ((v218 >> 6) & 0x3FFFFFFFFFFFFF8)))[v218 & 0x1FF];
      ++v218;
      v219 = v108 - 1;
      if (v218 >= 0x400)
      {
        operator delete(*v217++);
        v218 -= 512;
      }

      v238 = v109;
      v110 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(v9, &v238);
      v111 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v110 + 3));
      v113 = v110[3];
      v114 = (v113 + 8 * *(v110 + 10));
      if (v114 != v111)
      {
        v3 = v111;
        v115 = v112;
        v201 = (v113 + 8 * *(v110 + 10));
        v203 = v110;
        do
        {
          *&v234 = *v3;
          v238 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*v9, *(v9 + 4), v234, &v238))
          {
            v116 = v238;
          }

          else
          {
            v116 = (*v9 + 72 * *(v9 + 4));
          }

          v210 = v116;
          v214 = *v9 + 72 * *(v9 + 4);
          if (v116 == v214)
          {
            v117 = 0;
          }

          else
          {
            v117 = v116 + 1;
          }

          if (*(v110 + 14))
          {
            v118 = *(v110 + 16);
            if (v118)
            {
              v119 = 32 * v118;
              v120 = v110[6];
              while ((*v120 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v120 += 32;
                v119 -= 32;
                if (!v119)
                {
                  goto LABEL_238;
                }
              }
            }

            else
            {
              v120 = v110[6];
            }

            v121 = v110[6] + 32 * v118;
            if (v120 != v121)
            {
              v205 = v121;
              v208 = v117;
              do
              {
                v122 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct(v234 + 32, v120);
                v123 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(v120 + 8);
                v125 = *(v120 + 8) + 8 * *(v120 + 24);
                if (v125 != v123)
                {
                  v126 = v123;
                  v127 = v124;
                  v128 = 0;
                  do
                  {
                    v129 = *v126;
                    v233 = *v126;
                    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v238, (v122 + 1), &v233);
                    if (v240[0] == 1)
                    {
                      v130 = v234;
                      v131 = *v120;
                      __p[0] = v129;
                      if (v129 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                      {
                        atomic_fetch_add(v129 + 1, 1uLL);
                      }

                      v132 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct((v131 + 160), __p);
                      *&v235 = v130;
                      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v238, (v132 + 3), &v235);
                      if (__p[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                      {
                        atomic_fetch_add(__p[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
                      }

                      if (v210 != v214)
                      {
                        if (!v128)
                        {
                          if (!*(v208 + 12))
                          {
                            std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::push_back(&v216, &v234);
                          }

                          v128 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::FindAndConstruct((v208 + 5), v120) + 1;
                        }

                        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>,llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v238, v128, &v233);
                      }
                    }

                    do
                    {
                      ++v126;
                    }

                    while (v126 != v127 && (*v126 | 8) == 0xFFFFFFFFFFFFFFF8);
                  }

                  while (v126 != v125);
                }

                v120 += 32;
                v110 = v203;
                v9 = v198;
                v114 = v201;
                if (v120 == v205)
                {
                  break;
                }

                while ((*v120 | 0x1000) == 0xFFFFFFFFFFFFF000)
                {
                  v120 += 32;
                  if (v120 == v205)
                  {
                    goto LABEL_238;
                  }
                }
              }

              while (v120 != v205);
            }
          }

          do
          {
LABEL_238:
            v3 += 8;
          }

          while (v3 != v115 && (*v3 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v3 != v114);
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::clear(v110 + 12);
      v108 = v219;
    }

    while (v219);
  }

  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](&v216);
  __p[1] = 0;
  v237[0] = 0;
  __p[0] = &__p[1];
  if (*(v9 + 2))
  {
    v133 = *(v9 + 4);
    v134 = v196;
    if (v133)
    {
      v135 = 72 * v133;
      v136 = *v9;
      while ((*v136 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v136 += 9;
        v135 -= 72;
        if (!v135)
        {
          goto LABEL_378;
        }
      }
    }

    else
    {
      v136 = *v9;
    }

    v144 = *v9 + 72 * v133;
    if (v136 == v144)
    {
LABEL_378:
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = &__p[1];
    }

    else
    {
      do
      {
        v145 = v136[1];
        v146 = *(*v136 + 40);
        v147 = v136[2];
        v136[1] = 0;
        v136[2] = 0;
        v148 = *(v145 + 16);
        v149 = *(v145 + 8);
        v215 = *v145;
        v150 = *(v145 + 24);
        v151 = &v149[2 * v150];
        if (v146)
        {
          if (v148)
          {
            if (v150)
            {
              v152 = 16 * v150;
              while ((*v149 | 8) == 0xFFFFFFFFFFFFFFF8)
              {
                v149 += 2;
                v152 -= 16;
                if (!v152)
                {
                  goto LABEL_312;
                }
              }
            }

            if (v149 != v151)
            {
              v154 = *v149;
              v211 = v147;
              do
              {
                v238 = v154;
                if (v154 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v154 + 1, 1uLL);
                }

                v155 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::FindAndConstruct(v215 + 112, &v238);
                v156 = v155;
                if (v238 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v238 + 1, 0xFFFFFFFFFFFFFFFFLL);
                }

                v157 = *(v155 + 18);
                v147 = v211;
                if ((v157 & 0x7F) == 4)
                {
                  break;
                }

                *(v156 + 18) = v157 & 0x80 | 4;
                v238 = *v149;
                if (v238 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v238 + 1, 1uLL);
                }

                v158 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct((v215 + 160), &v238);
                v159 = v158;
                if (v238 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v238 + 1, 0xFFFFFFFFFFFFFFFFLL);
                }

                if (v211)
                {
                  atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v160 = v158[2];
                v159[1] = v145;
                v159[2] = v211;
                if (v160)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v160);
                }

                llvm::orc::JITDylib::MaterializingInfo::takeQueriesMeeting(&v238, (v159 + 1), 4u);
                v162 = v238;
                v161 = v239;
                while (v162 != v161)
                {
                  v163 = *v162;
                  v164 = *v149;
                  *&v235 = v164;
                  if (v164 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add(v164 + 1, 1uLL);
                  }

                  v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v156 + 8);
                  llvm::orc::AsynchronousSymbolQuery::notifySymbolMetRequiredState(v163, &v235, v156[1], v3);
                  if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                  }

                  v165 = *v162;
                  if (!*(*v162 + 80))
                  {
                    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::__emplace_unique_key_args<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> const&>(__p, v165, v162);
                    v165 = *v162;
                  }

                  v166 = *v149;
                  *&v235 = v166;
                  if (v166 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add(v166 + 1, 1uLL);
                  }

                  llvm::orc::AsynchronousSymbolQuery::removeQueryDependence(v165, v215, &v235);
                  if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                  }

                  v162 += 2;
                }

                *&v235 = &v238;
                std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v235);
                v149 += 2;
                v147 = v211;
                if (v149 == v151)
                {
                  break;
                }

                while (1)
                {
                  v154 = *v149;
                  if ((*v149 | 8) != 0xFFFFFFFFFFFFFFF8)
                  {
                    break;
                  }

                  v149 += 2;
                  if (v149 == v151)
                  {
                    goto LABEL_312;
                  }
                }
              }

              while (v149 != v151);
            }
          }

LABEL_312:
          if (*(v145 + 40))
          {
            v167 = *(v145 + 48);
            if (v167)
            {
              v168 = 32 * v167;
              v169 = *(v145 + 32);
              while ((*v169 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v169 += 4;
                v168 -= 32;
                if (!v168)
                {
                  goto LABEL_370;
                }
              }
            }

            else
            {
              v169 = *(v145 + 32);
            }

            v3 = *(v145 + 32) + 32 * v167;
            while (v169 != v3)
            {
              v170 = v147;
              v171 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin((v169 + 1));
              v173 = v169[1] + 8 * *(v169 + 6);
              if (v173 != v171)
              {
                v174 = v171;
                v175 = v172;
                do
                {
                  v176 = *v169;
                  v177 = *v174;
                  *&v235 = v177;
                  if ((v177 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v177 + 8), 1uLL);
                  }

                  v178 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::FindAndConstruct((v176 + 160), &v235);
                  *&v234 = v145;
                  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v238, (v178 + 3), &v234);
                  if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                  {
                    atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                  }

                  do
                  {
                    ++v174;
                  }

                  while (v174 != v175 && (*v174 | 8) == 0xFFFFFFFFFFFFFFF8);
                }

                while (v174 != v173);
              }

              v169 += 4;
              v147 = v170;
              if (v169 == v3)
              {
                break;
              }

              while ((*v169 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v169 += 4;
                if (v169 == v3)
                {
                  goto LABEL_370;
                }
              }
            }
          }
        }

        else if (v148)
        {
          if (v150)
          {
            v153 = 16 * v150;
            while ((*v149 | 8) == 0xFFFFFFFFFFFFFFF8)
            {
              v149 += 2;
              v153 -= 16;
              if (!v153)
              {
                goto LABEL_370;
              }
            }
          }

          if (v149 != v151)
          {
            v179 = *v149;
            v212 = v147;
LABEL_336:
            v238 = v179;
            if (v179 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v179 + 1, 1uLL);
            }

            v180 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::FindAndConstruct(v215 + 112, &v238);
            v181 = v180;
            if (v238 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v238 + 1, 0xFFFFFFFFFFFFFFFFLL);
            }

            *(v180 + 18) = *(v180 + 18) & 0x80 | 0x3F;
            v182 = *v149;
            *&v235 = v182;
            if (v182 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v182 + 1, 1uLL);
            }

            v238 = 0;
            v183 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v215 + 160), &v235, &v238);
            v184 = *(v215 + 160);
            v185 = *(v215 + 176);
            if (v183)
            {
              v186 = v238;
            }

            else
            {
              v186 = (v184 + 72 * v185);
            }

            if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
              v184 = *(v215 + 160);
              v185 = *(v215 + 176);
            }

            if ((v184 + 72 * v185) != v186)
            {
              llvm::orc::JITDylib::MaterializingInfo::takeQueriesMeeting(&v238, (v186 + 1), 0x3Fu);
              v187 = v238;
              v188 = v239;
              while (v187 != v188)
              {
                v189 = *v187;
                v190 = *v149;
                *&v235 = v190;
                if (v190 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v190 + 1, 1uLL);
                }

                v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v181 + 8);
                llvm::orc::AsynchronousSymbolQuery::notifySymbolMetRequiredState(v189, &v235, v181[1], v3);
                if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                }

                v191 = *v187;
                if (!*(*v187 + 80))
                {
                  std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::__emplace_unique_key_args<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> const&>(__p, v191, v187);
                  v191 = *v187;
                }

                v192 = *v149;
                *&v235 = v192;
                if (v192 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add(v192 + 1, 1uLL);
                }

                llvm::orc::AsynchronousSymbolQuery::removeQueryDependence(v191, v215, &v235);
                if ((v235 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v235 + 8), 0xFFFFFFFFFFFFFFFFLL);
                }

                v187 += 2;
              }

              *&v235 = &v238;
              std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v235);
              v238 = (v186 + 6);
              std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v238);
              MEMORY[0x277C69E30](v186[3], 8);
              v193 = v186[2];
              if (v193)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v193);
              }

              if (*v186 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add(*v186 + 1, 0xFFFFFFFFFFFFFFFFLL);
              }

              *v186 = -16;
              *(v215 + 168) = vadd_s32(*(v215 + 168), 0x1FFFFFFFFLL);
            }

            v147 = v212;
            while (1)
            {
              v149 += 2;
              if (v149 == v151)
              {
                break;
              }

              v179 = *v149;
              if ((*v149 | 8) != 0xFFFFFFFFFFFFFFF8)
              {
                if (v149 != v151)
                {
                  goto LABEL_336;
                }

                break;
              }
            }
          }
        }

LABEL_370:
        if (v147)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v147);
        }

        v136 += 9;
        v134 = v196;
        if (v136 == v144)
        {
          break;
        }

        while ((*v136 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v136 += 9;
          if (v136 == v144)
          {
            goto LABEL_377;
          }
        }
      }

      while (v136 != v144);
LABEL_377:
      v140 = __p[0];
      v137 = __p[1];
      v138 = v237[0];
      v139 = __p[1];
    }
  }

  else
  {
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = &__p[1];
    v134 = v196;
  }

  *(v134 + 24) &= ~1u;
  *v134 = v140;
  *(v134 + 8) = v139;
  v194 = v134 + 8;
  *(v134 + 16) = v138;
  if (v138)
  {
    v137 = 0;
    v139[2] = v194;
    __p[0] = &__p[1];
    __p[1] = 0;
    v237[0] = 0;
  }

  else
  {
    *v134 = v194;
  }

  std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(__p, v137);
  std::deque<llvm::orc::JITDylib::EmissionDepUnit *>::~deque[abi:nn200100](v227);
}

uint64_t llvm::orc::ExecutionSession::OL_notifyEmitted@<X0>(std::recursive_mutex *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  llvm::orc::ExecutionSession::simplifyDepGroups(a2, a3, a4, v10);
  std::recursive_mutex::lock(a1);
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::copyFrom(v11, v10);
  llvm::orc::ExecutionSession::IL_emit(a2, v11, &v13);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::destroyAll(v11);
  MEMORY[0x277C69E30](v11[0], 8);
  std::recursive_mutex::unlock(a1);
  if (v14[16])
  {
    v8 = v13;
    v13 = 0;
  }

  else
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::clear(a2 + 16);
    if (v13 != v14)
    {
      llvm::orc::AsynchronousSymbolQuery::handleComplete(*(v13 + 32), a1);
    }

    v8 = 0;
  }

  *a5 = v8;
  llvm::Expected<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>>::~Expected(&v13);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::destroyAll(v10);
  return MEMORY[0x277C69E30](v10[0], 8);
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::clear(char *result)
{
  if (*(result + 1))
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = *result;
        v3 = 16 * v1;
        do
        {
          if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v2 = -8;
          v2 += 16;
          v3 -= 16;
        }

        while (v3);
      }

      *(result + 1) = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::shrink_and_clear(result);
    }
  }

  return result;
}

uint64_t llvm::orc::ExecutionSession::OL_defineMaterializing@<X0>(int32x2_t **a1@<X1>, size_t ***a2@<X2>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v12[0] = *a2;
  v12[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v13 = *(a2 + 4);
  *(a2 + 4) = 0;
  llvm::orc::JITDylib::defineMaterializing(v5, a1, v12, &v14);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v12);
  if (v17)
  {
    v6 = v14;
    v14 = 0;
  }

  else
  {
    if (v15)
    {
      if (v16)
      {
        v7 = 16 * v16;
        v8 = v14;
        while ((*v8 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v8 += 16;
          v7 -= 16;
          if (!v7)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v8 = v14;
      }

      v9 = v14 + 16 * v16;
      if (v8 != v9)
      {
LABEL_11:
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::try_emplace<llvm::JITSymbolFlags const&>((a1 + 2), v8, (v8 + 8), v11);
        while (1)
        {
          v8 += 16;
          if (v8 == v9)
          {
            break;
          }

          if ((*v8 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            v6 = 0;
            if (v8 != v9)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }
      }
    }

LABEL_16:
    v6 = 0;
  }

LABEL_17:
  *a3 = v6;
  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>>::~Expected(&v14);
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::erase(int32x2_t *a1, void *a2)
{
  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v6))
  {
    v4 = v6;
    v6 += 6;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v6);
    MEMORY[0x277C69E30](v4[3], 8);
    v5 = v4[2];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (*v4 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(*v4 + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    a1[1] = result;
  }

  return result;
}

void llvm::orc::ExecutionSession::OL_notifyFailed(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    memset(v22, 0, sizeof(v22));
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = *(a2 + 16);
      while ((*v6 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v6 += 2;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *(a2 + 16);
    }

    v11 = *(a2 + 16) + 16 * v4;
LABEL_20:
    if (v6 != v11)
    {
      std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](v22, v6);
      while (1)
      {
        v6 += 2;
        if (v6 == v11)
        {
          break;
        }

        if ((*v6 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_6:
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::clear((a2 + 16));
    v21[0] = 0;
    v21[1] = 0;
    v19 = 0;
    v20 = v21;
    v18 = 0;
    std::recursive_mutex::lock(a1);
    v7 = atomic_load((*(a2 + 8) + 8));
    if ((v7 & 1) == 0)
    {
      llvm::orc::ExecutionSession::IL_failSymbols(&v14, *a2, v22);
    }

    *&v14 = &v14 + 8;
    *(&v14 + 1) = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    std::recursive_mutex::unlock(a1);
    v13[0] = &v20;
    v13[1] = &v18;
    std::tuple<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>> &,std::shared_ptr<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>> &>::operator=[abi:nn200100]<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>,std::shared_ptr<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>>,0>(v13, &v14);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(&v14, *(&v14 + 1));
    if (v20 != v21)
    {
      v8 = *(a1 + 72);
      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
      *&v14 = v10;
      *(&v14 + 1) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      llvm::make_error<llvm::orc::FailedToMaterialize,std::shared_ptr<llvm::orc::SymbolStringPool>,std::shared_ptr<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>> &>(&v12, &v14, &v18);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(&v20, v21[0]);
    *&v14 = v22;
    std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v14);
  }
}

uint64_t *std::tuple<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>> &,std::shared_ptr<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>> &>::operator=[abi:nn200100]<std::set<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>,std::shared_ptr<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>>,0>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*a1 + 8);
  std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(*a1, *v5);
  *v4 = *a2;
  v6 = (a2 + 8);
  v7 = *(a2 + 8);
  *v5 = v7;
  v8 = *(a2 + 16);
  v4[2] = v8;
  if (v8)
  {
    v7[2] = v5;
    *a2 = v6;
    *v6 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *v4 = v5;
  }

  v9 = a1[1];
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v11 = *(v9 + 8);
  *v9 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return a1;
}

void llvm::orc::ExecutionSession::OL_replace(void x0_0, int32x2_t *a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(*a2 + 16))
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = *(v5 + 8);
      while ((*v8 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v8 += 2;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(v5 + 8) + 16 * v6;
    if (v8 != v9)
    {
      do
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(a1 + 2, v8);
        do
        {
          v8 += 2;
          if (v8 == v9)
          {
            goto LABEL_13;
          }
        }

        while ((*v8 | 8) == 0xFFFFFFFFFFFFFFF8);
      }

      while (v8 != v9);
LABEL_13:
      v5 = *a2;
    }
  }

LABEL_14:
  v10 = *(v5 + 32);
  v11 = a1[5];
  if (v10 == *&v11)
  {
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*&v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    a1[5] = 0;
    v5 = *a2;
  }

  v12 = *a1;
  *a2 = 0;
  v13 = v5;
  llvm::orc::JITDylib::replace(v12, a1, &v13);
}

void llvm::orc::ExecutionSession::OL_delegate(void x0_0, uint64_t *a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(a2);
  v7 = *a2 + 8 * *(a2 + 16);
  if (v7 == v5)
  {
    v15 = 0;
    v13 = 0;
    v10 = 0;
    v14 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = 0;
    do
    {
      v26[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1 + 2, v8, v26))
      {
        v11 = v26[0];
      }

      else
      {
        v11 = (a1[2] + 16 * *(a1 + 8));
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v22, v8)[4] = v11[4];
      v12 = a1[5];
      if (*v8 == v12)
      {
        a1[5] = v10;
        v10 = v12;
      }

      if ((*v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      *v11 = -16;
      a1[3] = vadd_s32(a1[3], 0x1FFFFFFFFLL);
      do
      {
        ++v8;
      }

      while (v8 != v9 && (*v8 | 8) == 0xFFFFFFFFFFFFFFF8);
    }

    while (v8 != v7);
    v13 = v22;
    v14 = v23;
    v15 = v24;
  }

  v16 = *a1;
  v19 = v13;
  v22 = 0;
  v23 = 0;
  v20 = v14;
  v21 = v15;
  v24 = 0;
  std::recursive_mutex::lock(*(v16 + 32));
  v17 = atomic_load((a1[1] + 8));
  if ((v17 & 1) == 0)
  {
    v18 = a1[1];
    v25 = v10;
    v26[0] = v19;
    v26[1] = v20;
    v19 = 0;
    v20 = 0;
    v27 = v21;
    v21 = 0;
    llvm::orc::ExecutionSession::createMaterializationResponsibility(&v28, v18, v26, &v25);
  }

  operator new();
}

void llvm::orc::MissingSymbolDefinitions::~MissingSymbolDefinitions(void **this)
{
  *this = &unk_2883EBC30;
  v3 = this + 6;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

{
  *this = &unk_2883EBC30;
  v3 = this + 6;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x277C69E40](this, 0x10B3C40D2FB38E6);
}

void llvm::orc::UnexpectedSymbolDefinitions::~UnexpectedSymbolDefinitions(void **this)
{
  *this = &unk_2883EBC80;
  v3 = this + 6;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

{
  *this = &unk_2883EBC80;
  v3 = this + 6;
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x277C69E40](this, 0x10B3C40D2FB38E6);
}

void llvm::orc::MaterializationTask::~MaterializationTask(uint64_t **this)
{
  *this = &unk_2883EBD10;
  std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](this + 2, 0);
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2883EBD10;
  std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](this + 2, 0);
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::orc::LookupTask::~LookupTask(llvm::orc::LookupTask *this)
{
  v2 = *(this + 1);
  *this = &unk_2883EBD58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_2883EBD58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::orc::ResourceTrackerDefunct::~ResourceTrackerDefunct(llvm::orc::ResourceTrackerDefunct *this)
{
  *this = &unk_2883EBA48;
  v1 = *(this + 1);
  if (v1)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v1);
  }
}

{
  *this = &unk_2883EBA48;
  v1 = *(this + 1);
  if (v1)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v1);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::orc::UnsatisfiedSymbolDependencies::~UnsatisfiedSymbolDependencies(llvm::orc::UnsatisfiedSymbolDependencies *this)
{
  *this = &unk_2883EBAE8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(this + 7);
  MEMORY[0x277C69E30](*(this + 7), 8);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(this + 4);
  v2 = *(this + 3);
  if (v2)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

{
  *this = &unk_2883EBAE8;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(this + 7);
  MEMORY[0x277C69E30](*(this + 7), 8);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(this + 4);
  v2 = *(this + 3);
  if (v2)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::orc::SymbolsNotFound::~SymbolsNotFound(llvm::orc::SymbolsNotFound *this)
{
  *this = &unk_2883EBB38;
  v3 = (this + 24);
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

{
  *this = &unk_2883EBB38;
  v3 = (this + 24);
  std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x277C69E40](this, 0xA1C4084DA3AFDLL);
}

void llvm::orc::AbsoluteSymbolsMaterializationUnit::~AbsoluteSymbolsMaterializationUnit(llvm::orc::AbsoluteSymbolsMaterializationUnit *this)
{
  *this = &unk_2883EBB88;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(this + 5);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EBB88;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(this + 5);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);

  JUMPOUT(0x277C69E40);
}

void llvm::orc::ReExportsMaterializationUnit::~ReExportsMaterializationUnit(llvm::orc::ReExportsMaterializationUnit *this)
{
  *this = &unk_2883EBBC8;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(this + 56);
  MEMORY[0x277C69E30](*(this + 7), 8);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EBBC8;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(this + 56);
  MEMORY[0x277C69E30](*(this + 7), 8);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);

  JUMPOUT(0x277C69E40);
}

uint64_t *std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v12[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(result, v10);
    }

    v11 = 16 * v7;
    v12[0] = 0;
    v12[1] = v11;
    v12[3] = 0;
    *v11 = 0;
    *v11 = *a2;
    *a2 = 0;
    *(v11 + 8) = *(a2 + 8);
    v12[2] = 16 * v7 + 16;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__swap_out_circular_buffer(result, v12);
    v6 = v3[1];
    result = std::__split_buffer<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::~__split_buffer(v12);
  }

  else
  {
    *v4 = 0;
    *v4 = *a2;
    *a2 = 0;
    *(v4 + 8) = *(a2 + 8);
    v6 = v4 + 16;
  }

  v3[1] = v6;
  return result;
}

uint64_t *std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(result, a2);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>>::push_back[abi:nn200100](uint64_t a1, atomic_uint **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * v7);
    v12 = &v11[-((v4 - *a1) >> 3)];
    *v11 = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = v12;
      do
      {
        *v14++ = *v13;
        *v13++ = 0;
      }

      while (v13 != v4);
      do
      {
        if (*v6)
        {
          llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(*v6);
        }

        ++v6;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -16;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -8;
        }

        if (v14.i8[4])
        {
          result[3] = -8;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          if ((*v24 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v24 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v18 = 0;
          *v18 = *v16;
          *v16 = 0;
          *(v18 + 8) = *(v16 + 8);
          ++*(a1 + 8);
          v17 = *v16;
        }

        if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v17 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -8;
      }

      if (v23.i8[4])
      {
        result[3] = -8;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = operator new(16 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -8;
        }

        if (v12.i8[4])
        {
          *v11 = -8;
        }

        v6 += 2;
        v11 += 32;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::copyFrom(void **a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  if (v4)
  {
    v6 = 16 * v4;
    do
    {
      if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v5 += 16;
      v6 -= 16;
    }

    while (v6);
    v5 = *a1;
  }

  result = MEMORY[0x277C69E30](v5, 8);
  v8 = *(a2 + 16);
  *(a1 + 4) = v8;
  if (v8)
  {
    *a1 = operator new(16 * v8, 8uLL);

    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::copyFrom<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>>(a1, a2);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::copyFrom<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>>(uint64_t *result, void *a2)
{
  result[1] = a2[1];
  if (*(result + 4))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *result;
      v5 = *(*a2 + v2);
      *(*result + v2) = v5;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 1uLL);
        v4 = *result;
        v5 = *(*result + v2);
      }

      if ((v5 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        *(v4 + v2 + 8) = *(*a2 + v2 + 8);
      }

      ++v3;
      v2 += 16;
    }

    while (v3 < *(result + 4));
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>,llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>::InsertIntoBucketImpl<llvm::orc::MaterializationResponsibility *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>::grow(uint64_t a1, int a2)
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
  result = operator new(8 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, v19, &v28);
          *v28 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0x1FFFFFFFFFFFFFFFLL;
    v23 = v22 & 0x1FFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0x1FFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 8;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v27.i8[0])
      {
        *(v26 - 1) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 16;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t **std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::orc::JITDylib::unlinkMaterializationResponsibility(*v2, v2);
    v3 = v2[5];
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v2 + 2);
    v4 = v2[1];
    if (v4)
    {
      llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v4);
    }

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::find(uint64_t a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 72 * *(a1 + 16);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 72 * v6);
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
      while (v8 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 72 * (v13 & v5));
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

uint64_t *std::__split_buffer<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry,std::allocator<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry> &>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *a1 = 0;
  a1[1] = 32 * a3;
  a1[2] = 32 * a3;
  a1[3] = 0;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>::push_back[abi:nn200100](uint64_t a1, atomic_uint **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v10);
    }

    v11 = (8 * v7);
    v12 = &v11[-((v4 - *a1) >> 3)];
    *v11 = *a2;
    v5 = v11 + 1;
    *a2 = 0;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = v12;
      do
      {
        *v14++ = *v13;
        *v13++ = 0;
      }

      while (v13 != v4);
      do
      {
        if (*v6)
        {
          llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(*v6);
        }

        ++v6;
      }

      while (v6 != v4);
      v6 = *a1;
    }

    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(a1);
  }

  return a1;
}

uint64_t *llvm::orc::SymbolLookupSet::SymbolLookupSet(uint64_t *a1, uint64_t *a2, unint64_t a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::reserve(a1, a3);
  if (a3)
  {
    v8 = 8 * a3;
    do
    {
      v9 = *a2;
      if ((*a2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v9 + 8), 1uLL);
      }

      v11 = v9;
      v12 = a4;
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::push_back[abi:nn200100](a1, &v11);
      if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++a2;
      v8 -= 8;
    }

    while (v8);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::weak_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *llvm::orc::SymbolLookupSet::remove(void *this, uint64_t a2)
{
  v2 = this[1];
  v3 = *this + 16 * a2;
  v4 = *v3;
  *v3 = 0;
  *v3 = *(v2 - 16);
  *(v2 - 16) = v4;
  LODWORD(v4) = *(v3 + 8);
  *(v3 + 8) = *(v2 - 8);
  *(v2 - 8) = v4;
  v5 = this[1];
  v8 = *(v5 - 16);
  v6 = v5 - 16;
  v7 = v8;
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  this[1] = v6;
  return this;
}

uint64_t llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::DenseSetImpl(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = (a3 - 1) | ((a3 - 1) >> 1) | (((a3 - 1) | ((a3 - 1) >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    LODWORD(v7) = ((v7 | (v7 >> 16)) >> 32) | v7 | (v7 >> 16);
    v8 = __CFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    else
    {
      v10 = (4 * v9 / 3u + 1) | ((4 * v9 / 3u + 1) >> 1);
      v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
      LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
      *(a1 + 16) = v11;
      v12 = operator new(8 * v11, 8uLL);
      *a1 = v12;
      *(a1 + 8) = 0;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
        v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
        v18 = vdupq_n_s64(v16);
        v19 = v12 + 8;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_2750C1210)));
          if (v20.i8[0])
          {
            *(v19 - 1) = -8;
          }

          if (v20.i8[4])
          {
            *v19 = -8;
          }

          v14 += 2;
          v19 += 2;
        }

        while (v17 != v14);
      }
    }

    v21 = 8 * a3;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2++, &v23);
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return a1;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = *v19;
          v21[1] = 0;
          v21[2] = 0;
          v21[3] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          ++*(a1 + 8);
          v30 = (v19 + 8);
          std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>::__destroy_vector::operator()[abi:nn200100](&v30);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

void std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -8)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::grow(uint64_t a1, int a2)
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
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -8;
        }

        if (v14.i8[4])
        {
          result[9] = -8;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 72 * v3;
      v16 = v4;
      do
      {
        if ((*v16 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, v16, &v26);
          v17 = v26;
          if (*v26 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(*v26 + 1, 0xFFFFFFFFFFFFFFFFLL);
          }

          *v17 = 0;
          *v17 = *v16;
          *v16 = 0;
          *(v17 + 1) = *(v16 + 8);
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          v17[3] = 0;
          v17[4] = 0;
          *(v17 + 10) = 0;
          v17[3] = *(v16 + 24);
          *(v16 + 24) = 0;
          *(v17 + 8) = *(v16 + 32);
          *(v16 + 32) = 0;
          v18 = *(v17 + 9);
          *(v17 + 9) = *(v16 + 36);
          *(v16 + 36) = v18;
          v19 = *(v17 + 10);
          *(v17 + 10) = *(v16 + 40);
          *(v16 + 40) = v19;
          v17[6] = 0;
          v17[7] = 0;
          v17[8] = 0;
          *(v17 + 3) = *(v16 + 48);
          v17[8] = *(v16 + 64);
          *(v16 + 48) = 0;
          *(v16 + 56) = 0;
          *(v16 + 64) = 0;
          ++*(a1 + 8);
          v26 = (v16 + 48);
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v26);
          MEMORY[0x277C69E30](*(v16 + 24), 8);
          v20 = *(v16 + 16);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }
        }

        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v16 += 72;
        v15 -= 72;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 72 * v21 - 72;
    v24 = vdupq_n_s64(v23 / 0x48);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v25.i8[0])
      {
        *result = -8;
      }

      if (v25.i8[4])
      {
        result[9] = -8;
      }

      v22 += 2;
      result += 18;
    }

    while (((v23 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

uint64_t std::allocator<std::pair<std::unique_ptr<llvm::orc::MaterializationUnit>,std::unique_ptr<llvm::orc::MaterializationResponsibility>>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100]((a2 + 8), 0);
  result = *a2;
  *a2 = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
    v5 = *a1;
  }

  MEMORY[0x277C69E30](v5, 8);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = 0;
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return a1;
}

void *llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::copyFrom(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277C69E30](*a1, 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    v6 = operator new(8 * v5, 8uLL);
    *a1 = v6;
    *(a1 + 8) = *(a2 + 8);
    v7 = *a2;
    v8 = 8 * *(a1 + 16);

    return memcpy(v6, v7, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

void *llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::copyFrom(unsigned int *a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::destroyAll(a1);
  result = MEMORY[0x277C69E30](*a1, 8);
  v5 = *(a2 + 16);
  a1[4] = v5;
  if (v5)
  {
    *a1 = operator new(72 * v5, 8uLL);

    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::copyFrom<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>>(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 72 * v1;
    v3 = (*a1 + 48);
    do
    {
      if ((*(v3 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(v3);
        MEMORY[0x277C69E30](*v3, 8);
        MEMORY[0x277C69E30](*(v3 - 3), 8);
        v4 = *(v3 - 4);
        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        }
      }

      v3 += 18;
      v2 -= 72;
    }

    while (v2);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::copyFrom<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>>(void *result, uint64_t *a2)
{
  result[1] = a2[1];
  v2 = *(result + 4);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 48;
    do
    {
      *(*v4 + v6 - 48) = *(*a2 + v6 - 48);
      v7 = *v4;
      v8 = *v4 + v6;
      if ((*(v8 - 48) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v9 = *a2;
        v10 = *a2 + v6;
        v11 = *(v10 - 32);
        *(v8 - 40) = *(v10 - 40);
        *(v8 - 32) = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = v7 + v6;
        *(v7 + v6 - 24) = 0;
        v13 = (v7 + v6 - 24);
        *(v12 - 16) = 0;
        *(v12 - 8) = 0;
        MEMORY[0x277C69E30](0, 8);
        v14 = *(v10 - 8);
        *(v12 - 8) = v14;
        if (v14)
        {
          v15 = operator new(8 * v14, 8uLL);
          *v13 = v15;
          *(v12 - 16) = *(v9 + v6 - 16);
          memcpy(v15, *(v9 + v6 - 24), 8 * *(v12 - 8));
        }

        else
        {
          *v13 = 0;
          *(v7 + v6 - 16) = 0;
        }

        v16 = v7 + v6;
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        result = llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::copyFrom((v7 + v6), v9 + v6);
        v2 = *(v4 + 16);
      }

      ++v5;
      v6 += 72;
    }

    while (v5 < v2);
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = MEMORY[0x277C69E30](*v3, 8);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

void *llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::copyFrom(unsigned int *a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(a1);
  result = MEMORY[0x277C69E30](*a1, 8);
  v5 = *(a2 + 16);
  a1[4] = v5;
  if (v5)
  {
    result = operator new(32 * v5, 8uLL);
    *a1 = result;
    *(a1 + 1) = *(a2 + 8);
    v6 = a1[4];
    if (v6)
    {
      v7 = 0;
      for (i = 0; i < v6; ++i)
      {
        *(*a1 + v7) = *(*a2 + v7);
        v9 = *a1;
        if ((*(*a1 + v7) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v10 = v9 + v7;
          v11 = *a2 + v7;
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          v12 = v9 + v7 + 8;
          *(v12 + 16) = 0;
          result = llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::NonOwningSymbolStringPtr>>::copyFrom(v12, v11 + 8);
          v6 = a1[4];
        }

        v7 += 32;
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

const void **std::vector<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::push_back[abi:nn200100](const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    *(v3 + 1) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 16;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::__split_buffer<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>,llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::FindAndConstruct(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v8);
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
    llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, v19, &v30);
          v20 = v30;
          v21 = *v19;
          *(v30 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = v21;
          *(v20 + 8) = *(v19 + 8);
          *(v19 + 8) = 0;
          *(v20 + 16) = *(v19 + 16);
          *(v19 + 16) = 0;
          LODWORD(v21) = *(v20 + 20);
          *(v20 + 20) = *(v19 + 20);
          *(v19 + 20) = v21;
          LODWORD(v21) = *(v20 + 24);
          *(v20 + 24) = *(v19 + 24);
          *(v19 + 24) = v21;
          ++*(a1 + 8);
          MEMORY[0x277C69E30](0, 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::orc::MaterializationResponsibility>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100](a1, 0);
  }

  return a1;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = operator new(32 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x7FFFFFFFFFFFFFFLL;
      v8 = v7 & 0x7FFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x7FFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 32;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 4) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 64;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 32 * v1;
    result = (*result + 8);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(result);
      }

      result += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

void *llvm::orc::AsynchronousSymbolQuery::handleComplete(llvm::orc::ExecutionSession &)::RunQueryCompleteTask::~RunQueryCompleteTask(void *a1)
{
  *a1 = &unk_2883EBDA0;
  v2 = a1 + 1;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a1 + 4);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v2);
  return a1;
}

void llvm::orc::AsynchronousSymbolQuery::handleComplete(llvm::orc::ExecutionSession &)::RunQueryCompleteTask::~RunQueryCompleteTask(void *a1)
{
  *a1 = &unk_2883EBDA0;
  v1 = a1 + 1;
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a1 + 4);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v1);

  JUMPOUT(0x277C69E40);
}

llvm::raw_ostream *llvm::orc::AsynchronousSymbolQuery::handleComplete(llvm::orc::ExecutionSession &)::RunQueryCompleteTask::printDescription(uint64_t a1, llvm::raw_ostream *this)
{
  v3 = *(this + 4);
  if (*(this + 3) - v3 > 0x23uLL)
  {
    qmemcpy(v3, "Execute query complete callback for ", 36);
    *(this + 4) += 36;
  }

  else
  {
    llvm::raw_ostream::write(this, "Execute query complete callback for ", 0x24uLL);
  }

  return llvm::orc::operator<<(this);
}

uint64_t *llvm::orc::AsynchronousSymbolQuery::handleComplete(llvm::orc::ExecutionSession &)::RunQueryCompleteTask::run(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v7 = 0;
  v5[0] = *(a1 + 8);
  v5[1] = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  v3 = *(a1 + 56);
  if ((v3 & 2) == 0)
  {
    v2 = *v2;
  }

  (*(v3 & 0xFFFFFFFFFFFFFFF8))(v2, v5);
  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v5);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::moveFromOldBuckets(a1, v4, &v4[4 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
    v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 32;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 4) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 64;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  result[1] = 0;
  v6 = *(result + 4);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 32);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 4) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(v5, a2, &v16);
      v14 = v16;
      v15 = *a2;
      *(v16 + 24) = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = v15;
      *(v14 + 8) = a2[1];
      a2[1] = 0;
      *(v14 + 16) = *(a2 + 4);
      *(a2 + 4) = 0;
      LODWORD(v15) = *(v14 + 20);
      *(v14 + 20) = *(a2 + 5);
      *(a2 + 5) = v15;
      LODWORD(v15) = *(v14 + 24);
      *(v14 + 24) = *(a2 + 6);
      *(a2 + 6) = v15;
      ++*(v5 + 2);
      result = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(a2 + 1);
    }

    a2 += 4;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, a2, v10);
    v7 = result;
    if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *result = 0;
    *result = *a2;
    *a2 = 0;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

void std::allocator_traits<std::allocator<std::pair<llvm::orc::SymbolLookupSet,std::shared_ptr<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo>>>>::destroy[abi:nn200100]<std::pair<llvm::orc::SymbolLookupSet,std::shared_ptr<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1;
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void std::__shared_ptr_emplace<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBDE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t **std::__shared_ptr_emplace<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::OnResolveInfo>>::__on_zero_shared(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<llvm::orc::SymbolDependenceGroup>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(a1 + 32);
  MEMORY[0x277C69E30](*(a1 + 32), 8);
  return std::unique_ptr<llvm::orc::MaterializationResponsibility>::reset[abi:nn200100]((a1 + 24), 0);
}

void std::vector<llvm::orc::SymbolDependenceGroup>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 6;
        std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::destroy[abi:nn200100]<llvm::orc::SymbolDependenceGroup,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::destroy[abi:nn200100]<llvm::orc::SymbolDependenceGroup,0>(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(a2 + 3);
  MEMORY[0x277C69E30](a2[3], 8);

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(a2);
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_1>(uint64_t **a1, uint64_t a2, __n128 a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = *(a2 + 24) & 1;
  v4 = *a2;
  if (v27)
  {
    *a2 = 0;
    v25[0] = v4;
    v5 = *(***a1 + 32);
    v25[0] = 0;
    v19 = v4;
    llvm::orc::ExecutionSession::reportError(v5, &v19);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    llvm::orc::ExecutionSession::OL_notifyFailed(*(***a1 + 32), **a1);
  }

  else
  {
    a3.n128_u64[0] = 0;
    v25[1] = *(a2 + 8);
    v26 = *(a2 + 16);
    *(a2 + 16) = 0;
    *a2 = a3;
    v25[0] = v4;
    v6 = *a1;
    v7 = **a1;
    v8 = *v7;
    v9 = *(*v7 + 32);
    v24 = 0;
    v23[0] = 0;
    v23[1] = 0;
    if (*(v6 + 4))
    {
      v10 = v6[1];
      v11 = *(v6 + 6);
      if (v11)
      {
        v12 = 24 * v11;
        v13 = v10;
        while ((*v13 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v13 += 24;
          v12 -= 24;
          if (!v12)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v13 = v10;
      }

      v14 = v10 + 24 * v11;
      if (v13 != v14)
      {
LABEL_13:
        if ((*(v13 + 17) & 0x40) == 0)
        {
          v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(v25, (v13 + 8))[1];
          v16 = *(v13 + 16);
          v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(v23, v13);
          v17[1] = v15;
          *(v17 + 8) = v16;
        }

        while (1)
        {
          v13 += 24;
          if (v13 == v14)
          {
            break;
          }

          if ((*v13 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v13 != v14)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        v7 = **a1;
        v8 = *v7;
      }
    }

LABEL_19:
    llvm::orc::JITDylib::resolve(v8, v7, v23, &v22);
    if (v22)
    {
      v21 = v22;
      v22 = 0;
      llvm::orc::ExecutionSession::reportError(v9, &v21);
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      llvm::orc::ExecutionSession::OL_notifyFailed(*(***a1 + 32), **a1);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    else
    {
      llvm::orc::ExecutionSession::OL_notifyEmitted(*(***a1 + 32), **a1, (*a1)[4], 0xAAAAAAAAAAAAAAABLL * (((*a1)[5] - (*a1)[4]) >> 4), &v22);
      if (v22)
      {
        v20 = v22;
        llvm::orc::ExecutionSession::reportError(v9, &v20);
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }

        llvm::orc::ExecutionSession::OL_notifyFailed(*(***a1 + 32), **a1);
      }
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v23);
  }

  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v25);
}

__n128 llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_1>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::DestroyImpl<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_1>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2883EBE20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__func(void *a1)
{
  *a1 = &unk_2883EBE20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x277C69E40);
}

void *std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2883EBE20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0,std::allocator<llvm::orc::ReExportsMaterializationUnit::materialize(std::unique_ptr<llvm::orc::MaterializationResponsibility>)::$_0>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::operator()(uint64_t result, uint64_t a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = *(result + 24);
    v23[0] = 0;
    v5 = result ? v23[0] : *a2 + 32 * *(a2 + 16);
    v6 = *(v3 + 8);
    if (*(v6 + 16))
    {
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      if (v8)
      {
        v9 = 24 * v8;
        for (i = v7; (*i | 8) == 0xFFFFFFFFFFFFFFF8; i += 3)
        {
          v9 -= 24;
          if (!v9)
          {
            return result;
          }
        }
      }

      else
      {
        i = v7;
      }

      v11 = &v7[3 * v8];
      if (i != v11)
      {
LABEL_13:
        v23[0] = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v5 + 8), i + 1, v23);
        if (result)
        {
          v12 = *(v3 + 8);
          v31[0] = *i;
          if ((v31[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v31[0] + 8), 1uLL);
          }

          llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::DenseSetImpl(v23, v31, 1);
          v13 = *(v3 + 24);
          v14 = i[1];
          v27 = v14;
          if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v14 + 8), 1uLL);
          }

          llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::DenseSetImpl(v22, &v27, 1);
          v28 = v13;
          v29[0] = 0;
          v29[1] = 0;
          v30 = 0;
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::copyFrom(v29, v22);
          v25 = 4;
          v15 = operator new(0x80uLL, 8uLL);
          v24[0] = v15;
          v24[1] = 0;
          if (v25)
          {
            v16 = 0;
            v17 = ((v25 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((v25 - 1) & 1) + 2;
            v18 = vdupq_n_s64((v25 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
            v19 = v15 + 32;
            do
            {
              v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v16), xmmword_2750C1210)));
              if (v20.i8[0])
              {
                *(v19 - 4) = -4096;
              }

              if (v20.i8[4])
              {
                *v19 = -4096;
              }

              v16 += 2;
              v19 += 8;
            }

            while (v17 != v16);
          }

          v26 = 0;
          if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(v24, &v28, &v26) & 1) == 0)
          {
            v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(v24, &v28, &v28, v26);
            *v21 = v28;
            v21[2] = 0;
            *(v21 + 6) = 0;
            v21[1] = 0;
            llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::copyFrom(v21 + 1, v29);
          }

          std::vector<llvm::orc::SymbolDependenceGroup>::push_back[abi:nn200100](v12 + 32, v23);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(v24);
          MEMORY[0x277C69E30](v24[0], 8);
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v23);
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v29);
          result = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v22);
          if ((v27 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if ((v31[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v31[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        while (1)
        {
          i += 3;
          if (i == v11)
          {
            break;
          }

          if ((*i | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (i != v11)
            {
              goto LABEL_13;
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

unint64_t std::vector<llvm::orc::SymbolDependenceGroup>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<llvm::orc::SymbolDependenceGroup>::__emplace_back_slow_path<llvm::orc::SymbolDependenceGroup>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::construct[abi:nn200100]<llvm::orc::SymbolDependenceGroup,llvm::orc::SymbolDependenceGroup,0>(a1, *(a1 + 8), a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

unint64_t std::vector<llvm::orc::SymbolDependenceGroup>::__emplace_back_slow_path<llvm::orc::SymbolDependenceGroup>(uint64_t **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::SymbolDependenceGroup>>(a1, v6);
  }

  v7 = 48 * v2;
  std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::construct[abi:nn200100]<llvm::orc::SymbolDependenceGroup,llvm::orc::SymbolDependenceGroup,0>(a1, v7, a2);
  v8 = v7 + 48;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::SymbolDependenceGroup>,llvm::orc::SymbolDependenceGroup*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<llvm::orc::SymbolDependenceGroup>::~__split_buffer(v14);
  return v8;
}

void std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::construct[abi:nn200100]<llvm::orc::SymbolDependenceGroup,llvm::orc::SymbolDependenceGroup,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *a3 = 0;
  *(a2 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  v3 = *(a2 + 12);
  *(a2 + 12) = *(a3 + 12);
  *(a3 + 12) = v3;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = 0;
  *(a2 + 32) = *(a3 + 32);
  *(a3 + 32) = 0;
  v5 = *(a2 + 36);
  *(a2 + 36) = *(a3 + 36);
  *(a3 + 36) = v5;
  v6 = *(a2 + 40);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 40) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::SymbolDependenceGroup>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::SymbolDependenceGroup>,llvm::orc::SymbolDependenceGroup*>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    v8 = a2;
    do
    {
      std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::construct[abi:nn200100]<llvm::orc::SymbolDependenceGroup,llvm::orc::SymbolDependenceGroup,0>(v7, a4, v8);
      v8 += 6;
      a4 += 48;
    }

    while (v8 != a3);
    do
    {
      result = std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::destroy[abi:nn200100]<llvm::orc::SymbolDependenceGroup,0>(v7, v6);
      v6 += 6;
    }

    while (v6 != a3);
  }

  return result;
}

void **std::__split_buffer<llvm::orc::SymbolDependenceGroup>::~__split_buffer(void **a1)
{
  std::__split_buffer<llvm::orc::SymbolDependenceGroup>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__split_buffer<llvm::orc::SymbolDependenceGroup>::clear[abi:nn200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = v3[4];
      v3[2] = v1 - 48;
      result = std::allocator_traits<std::allocator<llvm::orc::SymbolDependenceGroup>>::destroy[abi:nn200100]<llvm::orc::SymbolDependenceGroup,0>(v4, (v1 - 48));
      v1 = v3[2];
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::copyFrom(void **a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
    v5 = *a1;
  }

  result = MEMORY[0x277C69E30](v5, 8);
  v8 = *(a2 + 16);
  *(a1 + 4) = v8;
  if (v8)
  {
    *a1 = operator new(8 * v8, 8uLL);

    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::copyFrom<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>>(a1, a2);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::copyFrom<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>>(uint64_t result, void *a2)
{
  *(result + 8) = a2[1];
  v2 = *(result + 16);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a2 + 8 * i);
      *(*result + 8 * i) = v4;
      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v4 + 8), 1uLL);
        v2 = *(result + 16);
      }
    }
  }

  return result;
}

uint64_t std::deque<llvm::orc::LookupState>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 512;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>,llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *a1;
    v3 = 24 * v1;
    do
    {
      v4 = *v2;
      if ((*v2 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v5 = v2[2];
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
          v4 = *v2;
        }
      }

      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 3;
      v3 -= 24;
    }

    while (v3);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 72 * v1;
    v3 = (*a1 + 48);
    do
    {
      if ((*(v3 - 6) | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v6 = v3;
        std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v6);
        MEMORY[0x277C69E30](*(v3 - 3), 8);
        v4 = *(v3 - 4);
        if (v4)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        }
      }

      v5 = *(v3 - 6);
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 += 9;
      v2 -= 72;
    }

    while (v2);
  }
}

void std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3;
        std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v4);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void std::__shared_ptr_emplace<llvm::orc::JITDylib::UnmaterializedInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__shared_ptr_emplace<llvm::orc::JITDylib::UnmaterializedInfo>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>,llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), *a2, &v10);
  result = v10;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_13;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_13:
    llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::grow(a1, v7);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), *a2, &v10);
    result = v10;
  }

  ++*(a1 + 8);
  v8 = *result;
  if (*result != -8)
  {
    --*(a1 + 12);
  }

  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v8 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = *a2;
  *result = *a2;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v9 + 8), 1uLL);
  }

  result[1] = 0;
  result[2] = 0;
  return result;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -8;
        }

        if (v14.i8[4])
        {
          result[3] = -8;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          if ((*v24 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v24 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v17 = 0;
          *v18 = 0;
          *v18 = *v16;
          *v16 = 0;
          *(v18 + 8) = *(v16 + 8);
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          ++*(a1 + 8);
        }

        if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v17 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -8;
      }

      if (v23.i8[4])
      {
        result[3] = -8;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

void std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBEA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>>::__on_zero_shared(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll((a1 + 24));

  JUMPOUT(0x277C69E30);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      ++v5;
      a3 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<llvm::orc::SymbolStringPtr>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
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
    llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::grow(a1, v7);
    v8 = 0;
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::grow(uint64_t a1, int a2)
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
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = *v19;
          v21[1] = 0;
          v21[2] = 0;
          v21[3] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          ++*(a1 + 8);
          v30 = (v19 + 8);
          std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v30);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

void std::__shared_ptr_emplace<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::TriggerOnComplete,std::allocator<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::TriggerOnComplete>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::TriggerOnComplete,std::allocator<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::TriggerOnComplete>>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 96);
  v6 = *(a1 + 88);
  *(a1 + 88) = 0;
  v3 = *(a1 + 120);
  v4 = a1 + 96;
  if ((v3 & 2) == 0)
  {
    v4 = *v2;
  }

  (*(v3 & 0xFFFFFFFFFFFFFFF8))(v4, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);
  v5 = *(a1 + 88);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::$_0>(std::mutex **a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 24) & 1;
  v2 = *a2;
  if (v12)
  {
    v3 = 0;
  }

  else
  {
    v10[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    v11 = *(a2 + 16);
    *(a2 + 16) = 0;
    v3 = v2;
    v2 = 0;
  }

  *a2 = 0;
  v4 = *a1;
  v10[0] = v3;
  std::mutex::lock(v4);
  sig = v4[1].__m_.__sig;
  v4[1].__m_.__sig = 0;
  v8 = v2;
  v9 = sig;
  llvm::ErrorList::join(&v9, &v8, &v7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v9)
  {
    (*(*v9 + 1))(v9);
  }

  v4[1].__m_.__sig = v7;
  std::mutex::unlock(v4);
  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v10);
}

__n128 llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::$_0>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::DestroyImpl<llvm::orc::Platform::lookupInitSymbolsAsync(llvm::unique_function<void ()(llvm::Error)>,llvm::orc::ExecutionSession &,llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>> const&)::$_0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<void (*)(llvm::Error)>(void (**a1)(uint64_t *), uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  v2(&v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void std::vector<std::pair<std::unique_ptr<llvm::orc::MaterializationUnit>,std::unique_ptr<llvm::orc::MaterializationResponsibility>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 16;
        std::allocator<std::pair<std::unique_ptr<llvm::orc::MaterializationUnit>,std::unique_ptr<llvm::orc::MaterializationResponsibility>>>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 24 * v1;
    v3 = (*a1 + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*v3)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v3);
        }
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }
}

uint64_t llvm::orc::InProgressLookupState::InProgressLookupState(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = &unk_2883EBF10;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *a4;
  *(a1 + 56) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 88) = 0u;
  v6 = (a1 + 88);
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8 != v7)
  {
    v9 = (v8 - v7) >> 4;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vdeallocate((a1 + 88));
    if (!(v9 >> 60))
    {
      v10 = *(a1 + 104) - *(a1 + 88);
      v11 = v10 >> 3;
      if (v10 >> 3 <= v9)
      {
        v11 = (v8 - v7) >> 4;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](v6, v12);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v13 = std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,0>(*(a1 + 40), v8, 0);
  for (i = *(a1 + 96); i != v13; i -= 4)
  {
    v16 = *(i - 2);
    v15 = v16;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  *(a1 + 96) = v13;
  return a1;
}

_DWORD *std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags> *,0>(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  for (; a1 != a2; a3 += 4)
  {
    if ((*a3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*a3 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    v3 = *a1;
    *a3 = *a1;
    if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v3 + 8), 1uLL);
    }

    a3[2] = *(a1 + 2);
    a1 += 2;
  }

  return a3;
}

void llvm::orc::InProgressLookupState::~InProgressLookupState(llvm::orc::InProgressLookupState *this)
{
  *this = &unk_2883EBF10;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    v4 = *(this + 18);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 18);
    }

    *(this + 19) = v2;
    operator delete(v4);
  }

  v7 = (this + 112);
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = (this + 88);
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = (this + 40);
  std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void std::__shared_ptr_emplace<llvm::orc::AsynchronousSymbolQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void *std::__shared_ptr_emplace<llvm::orc::AsynchronousSymbolQuery>::__on_zero_shared(void *a1)
{
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(a1 + 10);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(a1 + 7);
  MEMORY[0x277C69E30](a1[7], 8);

  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a1 + 3);
}

void llvm::orc::InProgressFullLookupState::~InProgressFullLookupState(llvm::orc::InProgressFullLookupState *this)
{
  *this = &unk_2883EBF78;
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__value_func[abi:nn200100](this + 184);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  llvm::orc::InProgressLookupState::~InProgressLookupState(this);
}

{
  *this = &unk_2883EBF78;
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__value_func[abi:nn200100](this + 184);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  llvm::orc::InProgressLookupState::~InProgressLookupState(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::InProgressFullLookupState::complete(uint64_t a1, char ***a2)
{
  v135 = *MEMORY[0x277D85DE8];
  v2 = *(**(a1 + 16) + 32);
  v3 = *a2;
  *a2 = 0;
  v5 = *(a1 + 168);
  v4 = *(a1 + 176);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__value_func[abi:nn200100](v133, a1 + 184);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v110 = v2;
  std::recursive_mutex::lock(v2);
  v116 = v3[2];
  v118 = v5;
  v111 = v3[3];
  v112 = v3;
  v114 = v4;
  if (v116 != v111)
  {
    while (1)
    {
      v6 = v3[5];
      if (v3[6] != v6)
      {
        break;
      }

LABEL_115:
      v119 = 0;
      v116 += 16;
      if (v116 == v111)
      {
        goto LABEL_123;
      }
    }

    v7 = 0;
    v8 = *v116;
    v9 = *(v116 + 2);
    v115 = v9;
    while (1)
    {
      v10 = &v6[16 * v7];
      v11 = *(v10 + 2);
      *&v131 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(v8 + 112), *(v8 + 128), *v10, &v131) && v131 != *(v8 + 112) + 24 * *(v8 + 128))
      {
        v13 = *(v131 + 16);
        if ((v13 >> 8) & 0x10 | v9)
        {
          break;
        }
      }

      ++v7;
LABEL_110:
      v6 = v3[5];
      if (v7 == (v3[6] - v6) >> 4)
      {
        goto LABEL_115;
      }
    }

    if (v11 != 1 && (v13 & 0x4000) != 0)
    {
      v85 = *v110[1].__m_.__opaque;
      v87 = *(v85 + 8);
      v86 = *(v85 + 16);
      *&v128 = v87;
      *(&v128 + 1) = v86;
      if (v86)
      {
        atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
      }

      if ((*v10 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v10 + 8), 1uLL);
      }

      operator new();
    }

    if ((v13 & 0x100) != 0)
    {
      operator new();
    }

    if ((*(v131 + 18) & 0x7Fu) >= *(v5 + 88))
    {
      llvm::orc::AsynchronousSymbolQuery::notifySymbolMetRequiredState(v5, v10, *(v131 + 8), v13);
LABEL_109:
      llvm::orc::SymbolLookupSet::remove(v3 + 5, v7);
      goto LABEL_110;
    }

    if ((*(v131 + 18) & 0x80) == 0)
    {
LABEL_58:
      *&v131 = 0;
      v44 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v8 + 160), v10, &v131);
      v45 = v131;
      if ((v44 & 1) == 0)
      {
        v46 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(v8 + 160, v10, v131);
        v45 = v46;
        if ((*v46 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v46 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v47 = *v10;
        *v46 = *v10;
        if ((v47 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v47 + 8), 1uLL);
        }

        *(v46 + 7) = 0u;
        *(v46 + 5) = 0u;
        *(v46 + 3) = 0u;
        *(v46 + 1) = 0u;
      }

      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = v45[6];
      v48 = v45[7];
      v50 = v48 - v49;
      if (v48 == v49)
      {
        v53 = v45[7];
      }

      else
      {
        v51 = *(v5 + 88);
        v52 = v50 >> 4;
        v53 = v45[7];
        do
        {
          v54 = v52 >> 1;
          v55 = &v53[-2 * (v52 >> 1)];
          v57 = *(v55 - 2);
          v56 = v55 - 2;
          v52 += ~(v52 >> 1);
          if (*(v57 + 88) <= v51)
          {
            v53 = v56;
          }

          else
          {
            v52 = v54;
          }
        }

        while (v52);
      }

      v58 = v45[8];
      if (v48 >= v58)
      {
        v61 = (v50 >> 4) + 1;
        if (v61 >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v62 = v58 - v49;
        v63 = (v58 - v49) >> 3;
        if (v63 > v61)
        {
          v61 = v63;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF0)
        {
          v64 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v61;
        }

        v130 = v45 + 6;
        if (v64)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v64);
        }

        v65 = v53 - v49;
        v66 = (v53 - v49) >> 4;
        v67 = 16 * v66;
        *(&v129 + 1) = 0;
        if (v66)
        {
          v69 = (16 * v66);
        }

        else
        {
          if (v65 < 1)
          {
            v76 = v65 >> 3;
            if (v53 == v49)
            {
              v77 = 1;
            }

            else
            {
              v77 = v76;
            }

            v132 = v45 + 6;
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v77);
          }

          v68 = v67 - (((v65 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0);
          v69 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *>(0, 0, v68);
          v67 = v68;
        }

        *v69 = v118;
        v69[1] = v114;
        memcpy(v69 + 2, v53, v45[7] - v53);
        v78 = v45[6];
        *&v129 = v69 + v45[7] - v53 + 16;
        v45[7] = v53;
        v79 = (v67 - (v53 - v78));
        v4 = v114;
        memcpy(v79, v78, v53 - v78);
        v80 = v45[6];
        v45[6] = v79;
        v81 = v45[8];
        *(v45 + 7) = v129;
        *&v129 = v80;
        *(&v129 + 1) = v81;
        *&v128 = v80;
        *(&v128 + 1) = v80;
        std::__split_buffer<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::~__split_buffer(&v128);
        v3 = v112;
      }

      else
      {
        if (v53 != v48)
        {
          v59 = (v48 - 16);
          if (v48 < 0x10)
          {
            v60 = v45[7];
          }

          else
          {
            *v48 = *v59;
            v60 = v48 + 16;
            *v59 = 0;
            *(v48 - 8) = 0;
          }

          v45[7] = v60;
          if (v48 != v53 + 2)
          {
            v70 = (v48 - 8);
            v71 = v48 - 32;
            v72 = v53 - v48 + 16;
            do
            {
              v73 = *v71;
              *v71 = 0;
              *(v71 + 8) = 0;
              v74 = *v70;
              *(v70 - 1) = v73;
              if (v74)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v74);
              }

              v70 -= 2;
              v71 -= 16;
              v72 += 16;
            }

            while (v72);
          }

          v75 = v53[1];
          *v53 = v118;
          v53[1] = v4;
          v9 = v115;
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v75);
          }

          goto LABEL_105;
        }

        *v48 = v118;
        *(v48 + 8) = v4;
        v45[7] = v48 + 16;
      }

      v9 = v115;
LABEL_105:
      v82 = *v10;
      v127 = v82;
      if ((v82 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v82 + 8), 1uLL);
      }

      *&v128 = v8;
      v5 = v118;
      v83 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct(v118 + 4, &v128);
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>((v83 + 1), &v127, &v131);
      if ((v127 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v127 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      goto LABEL_109;
    }

    *&v131 = 0;
    v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(v8 + 136), *(v8 + 152), *v10, &v131);
    v16 = v131;
    if (!v15)
    {
      v16 = *(v8 + 136) + 24 * *(v8 + 152);
    }

    v17 = *(v16 + 8);
    v113 = v17;
    v18 = *(v16 + 16);
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *v17;
    if (*(*v17 + 16))
    {
      v20 = *(v19 + 8);
      v21 = *(v19 + 24);
      if (v21)
      {
        v22 = 16 * v21;
        v23 = v20;
        while ((*v23 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v23 += 2;
          v22 -= 16;
          if (!v22)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v23 = v20;
      }

      v36 = &v20[2 * v21];
LABEL_47:
      if (v23 != v36)
      {
        *&v131 = 0;
        v37 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(v8 + 112), *(v8 + 128), *v23, &v131);
        v38 = v131;
        if (!v37)
        {
          v38 = *(v8 + 112) + 24 * *(v8 + 128);
        }

        *(v38 + 18) = 2;
        v39 = *v23;
        v23 += 2;
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>,llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::erase((v8 + 136), v39);
        while (v23 != v36)
        {
          if ((*v23 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_47;
          }

          v23 += 2;
        }
      }
    }

LABEL_27:
    *&v131 = 0;
    v24 = v122;
    v26 = v131;
    if (v25)
    {
LABEL_33:
      v28 = v26[2];
      v27 = v26[3];
      if (v28 >= v27)
      {
        v30 = v26[1];
        v31 = v28 - v30;
        v32 = (v28 - v30) >> 4;
        v33 = v32 + 1;
        if ((v32 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v34 = v27 - v30;
        if (v34 >> 3 > v33)
        {
          v33 = v34 >> 3;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v35 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v33;
        }

        v4 = v114;
        if (v35)
        {
          if (!(v35 >> 60))
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v40 = v32;
        v41 = (16 * v32);
        v42 = &v41[-v40];
        *v41 = v113;
        v29 = v41 + 1;
        memcpy(v42, v30, v31);
        v43 = v26[1];
        v26[1] = v42;
        v26[2] = v29;
        v26[3] = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v3 = v112;
      }

      else
      {
        *v28 = v113;
        *(v28 + 1) = v18;
        v29 = v28 + 16;
        v4 = v114;
      }

      v26[2] = v29;
      goto LABEL_58;
    }

    if (4 * v121 + 4 >= 3 * v24)
    {
      v84 = 2 * v24;
    }

    else
    {
      if (v24 + ~v121 - HIDWORD(v121) > v24 >> 3)
      {
LABEL_30:
        LODWORD(v121) = v121 + 1;
        if (*v26 != -4096)
        {
          --HIDWORD(v121);
        }

        *v26 = v8;
        v26[1] = 0;
        v26[2] = 0;
        v26[3] = 0;
        goto LABEL_33;
      }

      v84 = v24;
    }

    llvm::DenseMap<llvm::orc::JITDylib *,std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>>::grow(&v120, v84);
    *&v131 = 0;
    v26 = v131;
    goto LABEL_30;
  }

LABEL_123:
  v89 = v3[5];
  v88 = v3[6];
  if (v88 != v89)
  {
    v90 = 0;
    do
    {
      v91 = &v89[16 * v90];
      if (*(v91 + 2) == 1)
      {
        *&v131 = 0;
        v92 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v5 + 56), v91, &v131);
        v93 = v131;
        if (!v92)
        {
          v93 = *(v5 + 56) + 24 * *(v5 + 72);
        }

        if ((*v93 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v93 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v93 = -16;
        *(v5 + 64) = vadd_s32(*(v5 + 64), 0x1FFFFFFFFLL);
        --*(v5 + 80);
        llvm::orc::SymbolLookupSet::remove(v3 + 5, v90);
        v89 = v3[5];
        v88 = v3[6];
      }

      else
      {
        ++v90;
      }
    }

    while (v90 != (v88 - v89) >> 4);
    if (v89 != v88)
    {
      v94 = *v110[1].__m_.__opaque;
      v96 = *(v94 + 8);
      v95 = *(v94 + 16);
      *&v128 = v96;
      *(&v128 + 1) = v95;
      if (v95)
      {
        atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
      }

      llvm::orc::SymbolLookupSet::getSymbolNames(&v131, v3 + 5);
      llvm::make_error<llvm::orc::SymbolsNotFound,std::shared_ptr<llvm::orc::SymbolStringPool>,std::vector<llvm::orc::SymbolStringPtr>>(&v119, &v128, &v131);
    }
  }

  v97 = *(v5 + 80);
  if (v121)
  {
    std::recursive_mutex::lock((v110 + 168));
    if (v122)
    {
      v98 = 32 * v122;
      v99 = v120;
      while ((*v99 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v99 += 4;
        v98 -= 32;
        if (!v98)
        {
          goto LABEL_153;
        }
      }
    }

    else
    {
      v99 = v120;
    }

    v100 = &v120[4 * v122];
    if (v99 != v100)
    {
      v117 = v97;
      do
      {
        v101 = v99[1];
        if (v101 != v99[2])
        {
          v103 = **v101;
          v102 = (*v101)[1];
          v126 = 0;
          v125 = 0;
          v124 = *(v103 + 8);
          *(v103 + 8) = 0;
          v125 = *(v103 + 16);
          *(v103 + 16) = 0;
          v104 = v126;
          v126 = *(v103 + 24);
          *(v103 + 24) = v104;
          v105 = **v101;
          v123 = *(v105 + 32);
          *(v105 + 32) = 0;
          llvm::orc::ExecutionSession::createMaterializationResponsibility(&v128, v102, &v124, &v123);
        }

        v99 += 4;
        v97 = v117;
        if (v99 == v100)
        {
          break;
        }

        while ((*v99 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v99 += 4;
          if (v99 == v100)
          {
            goto LABEL_153;
          }
        }
      }

      while (v99 != v100);
    }

LABEL_153:
    std::recursive_mutex::unlock((v110 + 168));
    v5 = v118;
  }

  if (v134 && *(v5 + 40))
  {
    (*(*v134 + 48))();
  }

  std::recursive_mutex::unlock(v110);
  if (!v97)
  {
    llvm::orc::AsynchronousSymbolQuery::handleComplete(v5, v110);
  }

  llvm::orc::ExecutionSession::dispatchOutstandingMUs(v110);
  v106 = v120;
  if (v122)
  {
    v107 = v120 + 1;
    v108 = 32 * v122;
    do
    {
      if ((*(v107 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *&v131 = v107;
        std::vector<std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>::__destroy_vector::operator()[abi:nn200100](&v131);
      }

      v107 += 4;
      v108 -= 32;
    }

    while (v108);
  }

  MEMORY[0x277C69E30](v106, 8);
  std::__function::__value_func<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::~__value_func[abi:nn200100](v133);
  if (v114)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v114);
  }

  result = v112;
  if (v112)
  {
    return (*(*v112 + 8))(v112);
  }

  return result;
}

uint64_t llvm::orc::InProgressFullLookupState::fail(uint64_t a1, uint64_t *a2)
{
  llvm::orc::AsynchronousSymbolQuery::detach(*(a1 + 168));
  v4 = *(a1 + 168);
  v7 = *a2;
  *a2 = 0;
  llvm::orc::AsynchronousSymbolQuery::handleFailed(v4, &v7);
  result = v7;
  if (v7)
  {
    v6 = *(*v7 + 8);

    return v6();
  }

  return result;
}

void std::__assoc_state<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__assoc_state<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap((a1 + 144));
  }

  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::ExecutionSession::lookup(std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>> const&,llvm::orc::SymbolLookupSet,llvm::orc::LookupKind,llvm::orc::SymbolState,std::function<void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>)::$_0>(uint64_t **a1, uint64_t a2, __n128 a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24) & 1;
  v3 = *a2;
  if (v10)
  {
    *a2 = 0;
    v8[0] = 0;
    v4 = *a1;
    *a1[1] = v3;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    std::promise<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::set_value(*v4, v6);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(v6);
  }

  else
  {
    a3.n128_u64[0] = 0;
    v8[1] = *(a2 + 8);
    v9 = *(a2 + 16);
    *(a2 + 16) = 0;
    *a2 = a3;
    v8[0] = v3;
    std::promise<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::set_value(**a1, v8);
  }

  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v8);
}

void std::promise<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::set_value(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    std::mutex::lock((a1 + 24));
    if ((*(a1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v4 = *(a1 + 16);
      std::exception_ptr::~exception_ptr(&v11);
      if (!v4)
      {
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 144) = *a2;
        *a2 = 0;
        *(a1 + 152) = *(a2 + 8);
        *(a2 + 8) = 0;
        v5 = *(a1 + 156);
        *(a1 + 156) = *(a2 + 12);
        *(a2 + 12) = v5;
        v6 = *(a1 + 160);
        *(a1 + 160) = *(a2 + 16);
        *(a2 + 16) = v6;
        *(a1 + 136) |= 5u;
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 24));
        return;
      }
    }

    std::__throw_future_error[abi:nn200100]();
  }

  std::__throw_future_error[abi:nn200100]();
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(v7, v8, v9, v10);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
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

void *llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[3] = -1;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4 + 8;
      do
      {
        v17 = *(v16 - 8);
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *(v16 - 8);
          *(v18 + 1) = *v16;
          *v16 = 0;
          *(v16 + 8) = 0;
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -1;
      }

      if (v23.i8[4])
      {
        result[3] = -1;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

void std::__shared_ptr_emplace<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EBFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__split_buffer<llvm::orc::LookupState *>::emplace_back<llvm::orc::LookupState *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void *llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 72 * v3;
      v16 = (v4 + 32);
      do
      {
        v17 = *(v16 - 4);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 4), v17, &v29);
          v18 = v29;
          *v29 = *(v16 - 4);
          *(v18 + 1) = *(v16 - 6);
          *(v16 - 3) = 0;
          *(v16 - 2) = 0;
          v18[3] = 0;
          v18[4] = 0;
          *(v18 + 10) = 0;
          v18[3] = *(v16 - 1);
          *(v16 - 1) = 0;
          *(v18 + 8) = *v16;
          *v16 = 0;
          v19 = *(v18 + 9);
          *(v18 + 9) = v16[1];
          v16[1] = v19;
          v20 = *(v18 + 10);
          *(v18 + 10) = v16[2];
          v16[2] = v20;
          v18[6] = 0;
          v18[7] = 0;
          *(v18 + 16) = 0;
          v18[6] = *(v16 + 2);
          *(v16 + 2) = 0;
          *(v18 + 14) = v16[6];
          v16[6] = 0;
          v21 = *(v18 + 15);
          *(v18 + 15) = v16[7];
          v16[7] = v21;
          v22 = *(v18 + 16);
          *(v18 + 16) = v16[8];
          v16[8] = v22;
          ++*(a1 + 2);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(v16 + 4);
          MEMORY[0x277C69E30](*(v16 + 2), 8);
          MEMORY[0x277C69E30](*(v16 - 1), 8);
          v23 = *(v16 - 2);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v23);
          }
        }

        v16 += 18;
        v15 -= 72;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v24 = *(a1 + 4);
  if (v24)
  {
    v25 = 0;
    v26 = 72 * v24 - 72;
    v27 = vdupq_n_s64(v26 / 0x48);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_2750C1210)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[9] = -4096;
      }

      v25 += 2;
      result += 18;
    }

    while (((v26 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

void std::__shared_ptr_emplace<llvm::orc::JITDylib::EmissionDepUnit>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EC010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

void std::__shared_ptr_emplace<llvm::orc::JITDylib::EmissionDepUnit>::__on_zero_shared(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll((a1 + 56));
  MEMORY[0x277C69E30](*(a1 + 56), 8);

  JUMPOUT(0x277C69E30);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 7) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 1) = 0u;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::InsertIntoBucketImpl<llvm::orc::JITDylib::EmissionDepUnit *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib::EmissionDepUnit *,llvm::orc::JITDylib::EmissionDepUnitInfo>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -16;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
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