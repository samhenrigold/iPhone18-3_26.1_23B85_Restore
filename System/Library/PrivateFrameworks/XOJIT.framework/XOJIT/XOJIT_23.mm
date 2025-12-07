uint64_t llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMDString(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  if (*(this + 2) <= a2 || (v4 = *(*this + 8 * a2)) == 0)
  {
    v5 = *(this + 84) + 16 * a2;
    v6 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(this + 26) + 312), *v5, *(v5 + 8));
    if (v7)
    {
      *(v6 + 16) = v6;
    }

    v4 = v6 + 8;
  }

  return v4;
}

void anonymous namespace::BitcodeReaderMetadataList::assignValue(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  v14 = a3;
  v6 = llvm::MDNode::classof(a2);
  if (a2 && v6 && ((a2[1] & 0x7F) == 2 || *(a2 - 2)))
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 48), &v14, v15);
    v3 = v14;
  }

  v7 = *(a1 + 8);
  if (v3 == v7)
  {
    v15[0] = a2;
    if (v3 >= *(a1 + 12))
    {
      llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::growAndEmplaceBack<llvm::Metadata *&>(a1, v15);
    }

    else
    {
      v8 = (*a1 + 8 * v3);
      *v8 = a2;
      if (a2)
      {
        llvm::MetadataTracking::track(v8, a2, 2);
        v3 = *(a1 + 8);
      }

      *(a1 + 8) = v3 + 1;
    }
  }

  else
  {
    if (v3 >= v7)
    {
      llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(a1, v3 + 1);
      v3 = v14;
    }

    v9 = (*a1 + 8 * v3);
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v10 + 1);
      if ((v11 & 4) != 0)
      {
        llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v11 & 0xFFFFFFFFFFFFFFF8, a2);
        v3 = v14;
      }

      v15[0] = 0;
      if (llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1 + 24, v3, v15))
      {
        *v15[0] = -2;
        v13 = *(a1 + 28) + 1;
        *(a1 + 24) -= 2;
        *(a1 + 28) = v13;
      }

      llvm::MDNode::deleteTemporary(v10, v12);
    }

    else
    {
      llvm::TrackingMDRef::reset(v9, a2);
    }
  }
}

llvm::MDNode *llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  v2 = a2;
  v4 = (*(this + 85) - *(this + 84)) >> 4;
  if (v4 > a2)
  {

    return llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMDString(this, a2);
  }

  if (*(this + 2) > a2)
  {
    v6 = *(*this + 8 * a2);
    if (v6)
    {
      return v6;
    }
  }

  if (v4 + ((*(this + 88) - *(this + 87)) >> 3) > a2)
  {
    memset(v7, 0, sizeof(v7));
    llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(this, a2, v7);
    llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(this, v7);
    if (*(this + 2) <= v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(*this + 8 * v2);
    }

    std::deque<llvm::DistinctMDOperandPlaceholder>::~deque[abi:nn200100](v7);
    return v6;
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataAttachment(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33[64] = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(a4, *(a1 + 200), 0, 16);
  if (!*a4)
  {
    v23 = a3;
    v31 = v33;
    v32 = 0x4000000000;
    memset(v25, 0, sizeof(v25));
    while (1)
    {
      llvm::BitstreamCursor::advanceSkippingSubblocks(&v28, *(a1 + 200), 0);
      if (v29)
      {
        v10 = v28;
        *a4 = v28;
        if (v10)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v5 = v28;
        v4 = HIDWORD(v28);
        *a4 = 0;
      }

      if (v5 == 2)
      {
LABEL_49:
        v28 = "Malformed block";
        v30 = 259;
        error(a4, &v28);
      }

      if (v5 == 1)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_49;
      }

      LODWORD(v32) = 0;
      llvm::BitstreamCursor::readRecord(&v26, *(a1 + 200), v4, &v31, 0);
      if (v27)
      {
        v11 = v26;
        v26 = 0;
        *a4 = v11;
        v12 = 1;
        goto LABEL_22;
      }

      if (v26 == 11)
      {
        v13 = v32;
        if (!v32)
        {
          v14 = "Invalid record";
          goto LABEL_19;
        }

        if ((v32 & 1) == 0)
        {
          llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(a4, a1, a2, v31, v32);
          if (*a4)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          goto LABEL_22;
        }

        if (v32 != 1)
        {
          v16 = *(v23 + 8 * *v31);
          v17 = 1;
          while (1)
          {
            v24 = *(v31 + v17);
            v28 = 0;
            if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>((a1 + 1016), &v24, &v28) || (v18 = v28, v28 == (*(a1 + 1016) + 8 * *(a1 + 1032))))
            {
              v14 = "Invalid ID";
              goto LABEL_19;
            }

            if (*(v28 + 1) != 1 || (*(a1 + 1040) & 1) == 0)
            {
              break;
            }

LABEL_45:
            v12 = 0;
            v17 += 2;
            if (v13 == v17)
            {
              goto LABEL_22;
            }
          }

          v19 = *(v31 + v17 + 1);
          if (v19 < ((*(a1 + 704) - *(a1 + 696)) >> 3) + ((*(a1 + 680) - *(a1 + 672)) >> 4) && (*(a1 + 8) <= v19 || !*(*a1 + 8 * v19)))
          {
            llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(a1, *(v31 + v17 + 1), v25);
            llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(a1, v25);
          }

          if (*MetadataFwdRef == 2)
          {
            goto LABEL_21;
          }

          v21 = MetadataFwdRef;
          if ((llvm::MDNode::classof(MetadataFwdRef) & 1) == 0)
          {
            v14 = "Invalid metadata attachment";
LABEL_19:
            v28 = v14;
            v30 = 259;
            error(a4, &v28);
          }

          if (*(a1 + 1041) == 1)
          {
            v22 = *(v18 + 1);
            if (v22 == 18)
            {
              v21 = llvm::upgradeInstructionLoopAttachment(v21, v22);
              goto LABEL_41;
            }
          }

          else
          {
LABEL_41:
            v22 = *(v18 + 1);
          }

          if (v22 == 1)
          {
            v21 = llvm::UpgradeTBAANode(v21, v22);
            LODWORD(v22) = *(v18 + 1);
          }

          llvm::Instruction::setMetadata(v16, v22, v21);
          goto LABEL_45;
        }
      }

LABEL_21:
      v12 = 0;
LABEL_22:
      if (v27)
      {
        v15 = v26;
        v26 = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      if ((v12 | 2) != 2)
      {
        goto LABEL_51;
      }
    }

    llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(a1, v25);
    *a4 = 0;
LABEL_51:
    std::deque<llvm::DistinctMDOperandPlaceholder>::~deque[abi:nn200100](v25);
    if (v31 != v33)
    {
      free(v31);
    }
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v27[64] = *MEMORY[0x277D85DE8];
  v21 = a2;
  if (*(a1 + 8) > a2)
  {
    v5 = *(*a1 + 8 * a2);
    if (v5)
    {
      if ((*(v5 + 1) & 0x7F) != 2)
      {
        return;
      }
    }
  }

  v26[0] = v27;
  v26[1] = 0x4000000000;
  v19 = 0;
  v20 = 0;
  llvm::SimpleBitstreamCursor::JumpToBit(&v22, (a1 + 328), *(*(a1 + 696) + 8 * (a2 - ((*(a1 + 680) - *(a1 + 672)) >> 4))));
  if (v22)
  {
    v17 = "lazyLoadOneMetadata failed jumping: ";
    v18 = 259;
    v13 = v22;
    v22 = 0;
    v7 = &v13;
    goto LABEL_18;
  }

  llvm::BitstreamCursor::advanceSkippingSubblocks(&v24, (a1 + 328), 0);
  if (v25)
  {
    v17 = "lazyLoadOneMetadata failed advanceSkippingSubblocks: ";
    v18 = 259;
    v12 = v24;
    v7 = &v12;
    goto LABEL_18;
  }

  llvm::BitstreamCursor::readRecord(&v22, (a1 + 328), SHIDWORD(v24), v26, &v19);
  if (v23)
  {
    v17 = "Can't lazyload MD: ";
    v18 = 259;
    v8 = v22;
    v22 = 0;
    v9 = v8;
    v7 = &v9;
    goto LABEL_18;
  }

  llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(&v11, a1, v26, v22, a3, v19, v20, &v21);
  if (v11)
  {
    v17 = "Can't lazyload MD, parseOneMetadata: ";
    v18 = 259;
    v10 = v11;
    v7 = &v10;
LABEL_18:
    llvm::toString(v7, &v14);
    v16 = 260;
    v15 = &v14;
    llvm::operator+(&v17, &v15, &v24);
    llvm::report_fatal_error(&v24, 1);
  }

  if (v23)
  {
    v6 = v22;
    v22 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::getMetadataFwdRef(_anonymous_namespace_::BitcodeReaderMetadataList *this, unsigned int a2)
{
  v6 = a2;
  if (*(this + 46) <= a2)
  {
    return 0;
  }

  if (*(this + 2) <= a2)
  {
    llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(this, a2 + 1);
  }

  Impl = *(*this + 8 * a2);
  if (!Impl)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 6, &v6, v7);
    Impl = llvm::MDTuple::getImpl(*(this + 22), 0, 0, 2, 1);
    llvm::TrackingMDRef::reset((*this + 8 * v6), Impl);
  }

  return Impl;
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKindRecord(llvm::Twine *a1, uint64_t a2, char *a3, unsigned int a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v11[0] = "Invalid record";
    v13 = 259;
    error(a1, v11);
  }

  v6 = *a3;
  v14 = v16;
  v15 = xmmword_2750C12B0;
  llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v14, a3 + 8, &a3[8 * a4]);
  v7 = ***(a2 + 216);
  v8 = *(v7 + 2492);
  v11[0] = v14;
  v11[1] = v15;
  v12[0] = v8;
  v10 = v6 | (*(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((v7 + 2480), v14, v15, v12) + 8) << 32);
  v11[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>((a2 + 1016), &v10, v11))
  {
    v11[0] = "Conflicting METADATA_KIND records";
    v13 = 259;
    error(a1, v11);
  }

  inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a2 + 1016, &v10, &v10, v11[0]);
  *inserted = v10;
  *a1 = 0;
  if (v14 != v16)
  {
    free(v14);
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKinds(llvm::BitstreamCursor **this@<X0>, uint64_t *a2@<X8>)
{
  v14[64] = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(a2, this[25], 0, 22);
  if (!*a2)
  {
    v12 = v14;
    v13 = 0x4000000000;
    while (1)
    {
      do
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(&v9, this[25], 0);
        if (v10)
        {
          v6 = v9;
          *a2 = v9;
          if (v6)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v3 = v9;
          v2 = HIDWORD(v9);
          *a2 = 0;
        }

        switch(v3)
        {
          case 2:
LABEL_16:
            v9 = "Malformed block";
            v11 = 259;
            error(a2, &v9);
          case 1:
            *a2 = 0;
            goto LABEL_19;
          case 0:
            goto LABEL_16;
        }

        LODWORD(v13) = 0;
        llvm::BitstreamCursor::readRecord(&v9, this[25], v2, &v12, 0);
        if (v10)
        {
          *a2 = v9;
          goto LABEL_19;
        }
      }

      while (v9 != 6);
      llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKindRecord(a2, this, v12, v13);
      if (*a2)
      {
        break;
      }

      if (v10)
      {
        v7 = v9;
        v9 = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }
    }

    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

LABEL_19:
    if (v12 != v14)
    {
      free(v12);
    }
  }
}

uint64_t llvm::MetadataLoader::lookupSubprogramForFunction(llvm::MetadataLoader *this, llvm::Function *a2)
{
  v2 = *this;
  v5 = 0;
  v6 = a2;
  v3 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::LookupBucketFor<llvm::Function const*>(v2 + 752, &v6, &v5);
  result = 0;
  if (v3)
  {
    return *(v5 + 8);
  }

  return result;
}

uint64_t **llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(uint64_t **a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v8 = std::__copy_impl::operator()[abi:nn200100]<llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block*>(*a2, *a2 + 32 * v4, *a1);
        v9 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v9 = *a1;
        v8 = *a1;
      }

      v15 = &v9[4 * v5];
      if (v15 != v8)
      {
        do
        {
          v16 = v15 - 4;
          v18 = (v15 - 3);
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v18);
          v15 = v16;
        }

        while (v16 != v8);
      }

      goto LABEL_20;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        std::__copy_impl::operator()[abi:nn200100]<llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block*>(*a2, *a2 + 32 * v5, *a1);
        goto LABEL_13;
      }
    }

    else
    {
      if (v5)
      {
        v6 = &(*a1)[4 * v5 - 3];
        v7 = -32 * v5;
        do
        {
          v18 = v6;
          std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v18);
          v6 -= 4;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::BitstreamCursor::Block,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_13:
    v10 = *(a2 + 2);
    if (v5 != v10)
    {
      v11 = *a2;
      v12 = *a2 + 32 * v10;
      v13 = &(*a1)[4 * v5];
      v14 = v11 + 32 * v5;
      do
      {
        *v13 = *v14;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 8) = 0;
        std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__init_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>((v13 + 8), *(v14 + 8), *(v14 + 16), (*(v14 + 16) - *(v14 + 8)) >> 4);
        v14 += 32;
        v13 += 32;
      }

      while (v14 != v12);
    }

LABEL_20:
    *(a1 + 2) = v4;
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block const*,llvm::BitstreamCursor::Block*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (v5 != a3)
      {
        std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__assign_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(a3 + 1, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 4);
      }

      v5 += 32;
      a3 += 4;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__init_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::grow(a1, a2);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }

      *(a1 + 8) = a2;
    }

    else
    {

      llvm::SmallVectorImpl<llvm::TrackingMDRef>::truncate(a1, a2);
    }
  }
}

unsigned __int8 *llvm::SmallVectorImpl<llvm::TrackingMDRef>::truncate(unsigned __int8 *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  if (v4 != a2)
  {
    v5 = 8 * a2 - 8 * v4;
    v6 = (*result + 8 * v4 - 8);
    do
    {
      if (*v6)
      {
        result = llvm::MetadataTracking::untrack(v6, *v6);
      }

      --v6;
      v5 += 8;
    }

    while (v5);
  }

  *(v3 + 2) = v2;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

unsigned __int8 *llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::moveElementsForGrow(unsigned __int8 *result, unsigned __int8 **a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = 8 * v2;
    do
    {
      v7 = *v5;
      *a2 = *v5;
      if (v7)
      {
        result = llvm::MetadataTracking::retrack(v5, v7, a2);
        *v5 = 0;
      }

      ++a2;
      ++v5;
      v6 -= 8;
    }

    while (v6);
    v8 = *(v4 + 8);
    if (v8)
    {
      v9 = -8 * v8;
      v10 = (*v4 + 8 * v8 - 8);
      do
      {
        if (*v10)
        {
          result = llvm::MetadataTracking::untrack(v10, *v10);
        }

        --v10;
        v9 += 8;
      }

      while (v9);
    }
  }

  return result;
}

void llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUSubprograms(uint64_t this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(this + 728);
  v6 = *(this + 736);
  if (v5 != v6)
  {
    while (1)
    {
      v7 = *(v5 + 8);
      if (v7 && *v7 == 4)
      {
        v8 = *(v7 - 2);
        if ((v8 & 2) != 0)
        {
          v9 = *(v7 - 4);
          v10 = *(v7 - 6);
          if (v10)
          {
LABEL_8:
            v11 = *v5;
            v12 = 8 * v10;
            do
            {
              v13 = *v9;
              if (*v9 && *v13 == 17)
              {
                llvm::MDNode::replaceOperandWith(v13, 5u, v11, a4);
              }

              ++v9;
              v12 -= 8;
            }

            while (v12);
          }
        }

        else
        {
          v9 = &v7[-8 * ((v8 >> 2) & 0xF) - 16];
          v10 = (v8 >> 6) & 0xF;
          if (v10)
          {
            goto LABEL_8;
          }
        }
      }

      v5 += 16;
      if (v5 == v6)
      {
        v5 = *(this + 728);
        break;
      }
    }
  }

  *(this + 736) = v5;
}

void llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUVariables(llvm::MetadataLoader::MetadataLoaderImpl *this)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(this + 1042) == 1)
  {
    v2 = *(this + 27);
    v31 = "llvm.dbg.cu";
    v33[8] = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v2, &v31);
    if (NamedMetadata)
    {
      v4 = NamedMetadata;
      v5 = *(*(NamedMetadata + 48) + 8);
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v7 = *(**(v4 + 48) + 8 * i);
          v10 = *(v7 - 16);
          v8 = v7 - 16;
          v9 = v10;
          if ((v10 & 2) != 0)
          {
            v11 = *(*(**(v4 + 48) + 8 * i) - 32);
          }

          else
          {
            v11 = v8 - 8 * ((v9 >> 2) & 0xF);
          }

          v12 = *(v11 + 48);
          if (v12 && *v12 == 4)
          {
            v13 = 0;
            v14 = (v12 - 16);
            while (1)
            {
              v15 = *v14;
              if ((*v14 & 2) != 0)
              {
                if (v13 >= *(v12 - 6))
                {
                  break;
                }

                v16 = *(v12 - 4);
              }

              else
              {
                if (v13 >= ((v15 >> 6) & 0xF))
                {
                  break;
                }

                v16 = &v14[-((v15 >> 2) & 0xF)];
              }

              v17 = v16[v13];
              if (v17)
              {
                if (*v17 == 24)
                {
                  v18 = *(this + 26);
                  Impl = llvm::DIExpression::getImpl(v18, 0, 0, 0, 1);
                  v20 = llvm::DIGlobalVariableExpression::getImpl(v18, v17, Impl, 1, 1);
                  llvm::MDNode::replaceOperandWith(v12, v13, v20, v21);
                }
              }

              ++v13;
            }
          }
        }
      }
    }

    v22 = *(this + 27);
    v23 = v22 + 8;
    v24 = *(v22 + 16);
    if (v24 != v22 + 8)
    {
      do
      {
        if (v24)
        {
          v25 = (v24 - 56);
        }

        else
        {
          v25 = 0;
        }

        v31 = v33;
        v32 = 0x100000000;
        llvm::Value::getMetadata(v25, 0, &v31);
        llvm::Value::eraseMetadata(v25, 0);
        v26 = v31;
        if (v32)
        {
          v27 = 8 * v32;
          do
          {
            v28 = *v26;
            if (**v26 == 24)
            {
              v29 = *(this + 26);
              v30 = llvm::DIExpression::getImpl(v29, 0, 0, 0, 1);
              v28 = llvm::DIGlobalVariableExpression::getImpl(v29, v28, v30, 1, 1);
            }

            llvm::Value::addMetadata(v25, 0, v28);
            ++v26;
            v27 -= 8;
          }

          while (v27);
          v26 = v31;
        }

        if (v26 != v33)
        {
          free(v26);
        }

        v24 = *(v24 + 8);
      }

      while (v24 != v23);
    }
  }
}

uint64_t std::deque<llvm::DistinctMDOperandPlaceholder>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          *v10 = 0;
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, *a2, &v17);
  v7 = v17;
  v8 = *a1;
  if (result)
  {
    if (v8)
    {
      v9 = a1 + 2;
      v10 = 1;
    }

    else
    {
      v9 = *(a1 + 1);
      v10 = a1[4];
    }

    v13 = 0;
    v14 = &v9[v10];
    goto LABEL_17;
  }

  v11 = v8 >> 1;
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1[4];
  }

  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_19;
  }

  if (v12 + ~v11 - a1[1] <= v12 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(a1, v12);
    v17 = 0;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(a1, *a2, &v17);
    v7 = v17;
  }

  *a1 += 2;
  if (*v7 != -1)
  {
    --a1[1];
  }

  *v7 = *a2;
  v15 = a1 + 2;
  if (*a1)
  {
    v16 = 1;
  }

  else
  {
    v15 = *(a1 + 1);
    v16 = a1[4];
  }

  v14 = &v15[v16];
  v13 = 1;
LABEL_17:
  *a3 = v7;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 1;
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
  v6 = (v4 - 1) & (37 * a2);
  v7 = (v3 + 4 * v6);
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
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 4 * (v13 & v5));
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

_DWORD *llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(int *a1, unsigned int a2)
{
  if (a2 >= 2)
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

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 1)
    {
      v12 = a2;
      *(a1 + 1) = operator new(4 * a2, 4uLL);
      *(a1 + 2) = v12;
    }

    else
    {
      *a1 = v6 | 1;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(a1, v7, &v7[v8]);

    JUMPOUT(0x277C69E30);
  }

  v9 = &v13;
  if (a1[2] <= 0xFFFFFFFD)
  {
    v13 = a1[2];
    v9 = &v14;
  }

  if (a2 >= 2)
  {
    *a1 = v6 & 0xFFFFFFFE;
    v10 = a2;
    *(a1 + 1) = operator new(4 * a2, 4uLL);
    *(a1 + 2) = v10;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(a1, &v13, v9);
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::moveFromOldBuckets(_DWORD *result, int *a2, int *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v7 = 1;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(result + 1);
  }

  result = memset(v8, 255, 4 * v7);
LABEL_9:
  while (a2 != a3)
  {
    v9 = *a2;
    if (*a2 <= 0xFFFFFFFD)
    {
      v10 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v5, v9, &v10);
      *v10 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::growAndEmplaceBack<llvm::Metadata *&>(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v9);
  v6 = &v5[*(a1 + 8)];
  v7 = *a2;
  *v6 = *a2;
  if (v7)
  {
    llvm::MetadataTracking::track(v6, v7, 2);
  }

  llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::moveElementsForGrow(a1, v5);
  v8 = v9;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v8;
}

void *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::init(void *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = operator new(4 * v4, 4uLL);
    *v2 = result;
    v2[1] = 0;
    v5 = *(v2 + 4);
    if (v5)
    {

      return memset(result, 255, 4 * v5);
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::clear(_DWORD *result)
{
  v1 = result;
  if (*(result + 1))
  {
    v2 = result[4];
    if (v2 <= 4 * result[2] || v2 < 0x41)
    {
      if (v2)
      {
        result = memset(*result, 255, 4 * v2);
      }

      *(v1 + 1) = 0;
    }

    else
    {

      return llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::shrink_and_clear(result);
    }
  }

  return result;
}

void *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::shrink_and_clear(void *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result[1] = 0;
    if (v2)
    {
      v6 = *result;

      return memset(v6, 255, 4 * v2);
    }
  }

  else
  {
    MEMORY[0x277C69E30](*result, 4);

    return llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::init(v1, v5);
  }

  return result;
}

_DWORD *llvm::detail::DenseSetImpl<unsigned int,llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,llvm::DenseMapInfo<unsigned int,void>>::begin(_DWORD *a1)
{
  v2 = *a1;
  if (*a1 > 1u)
  {
    if (v2)
    {
      result = a1 + 2;
      v5 = a1 + 3;
LABEL_8:
      while (*result >= 0xFFFFFFFE)
      {
        if (++result == v5)
        {
          return v5;
        }
      }
    }

    else
    {
      result = *(a1 + 1);
      v4 = a1[4];
      v5 = &result[v4];
      if (v4)
      {
        goto LABEL_8;
      }
    }
  }

  else if (v2)
  {
    return a1 + 3;
  }

  else
  {
    return (*(a1 + 1) + 4 * a1[4]);
  }

  return result;
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::resolveTypeRefArray(uint64_t a1, llvm::MDNode *a2)
{
  Impl = a2;
  v15[32] = *MEMORY[0x277D85DE8];
  if (!a2 || *a2 != 4 || (*(a2 + 1) & 0x7F) == 1)
  {
    return Impl;
  }

  v13 = v15;
  v14 = 0x2000000000;
  v5 = (a2 - 16);
  v4 = *(a2 - 2);
  if ((v4 & 2) != 0)
  {
    v6 = *(a2 - 6);
    if (v6 >= 0x21)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v6, 8);
      v4 = *v5;
    }
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(Impl - 4);
    v8 = *(Impl - 6);
    if (!*(Impl - 6))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = &v5[-((v4 >> 2) & 0xF)];
    v8 = (v4 >> 6) & 0xF;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v9 = 8 * v8;
  do
  {
    v10 = *v7++;
    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v13, v11);
    v9 -= 8;
  }

  while (v9);
LABEL_13:
  Impl = llvm::MDTuple::getImpl(*(a1 + 176), v13, v14, 0, 1);
  if (v13 != v15)
  {
    free(v13);
  }

  return Impl;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 1;
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
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 16 * v6);
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
      v7 = (v3 + 16 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::MDString *>(int *a1, uint64_t *a2, void *a3)
{
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1, *a2, &v8);
  a3 = v8;
LABEL_6:
  *a1 += 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

int *llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::grow(int *a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
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

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 1)
    {
      v13 = a2;
      *(a1 + 1) = operator new(16 * a2, 8uLL);
      *(a1 + 2) = v13;
    }

    else
    {
      *a1 = v6 | 1;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::moveFromOldBuckets(a1, v7, &v7[2 * v8]);

    JUMPOUT(0x277C69E30);
  }

  v9 = v14;
  if ((*(a1 + 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 2);
    v14[0] = *(a1 + 1);
    v14[1] = v10;
    v9 = &v15;
  }

  if (a2 >= 2)
  {
    *a1 = v6 & 0xFFFFFFFE;
    v11 = a2;
    *(a1 + 1) = operator new(16 * a2, 8uLL);
    *(a1 + 2) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
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
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::upgradeTypeRef(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2)
  {
    return a2;
  }

  v12 = 0;
  if ((llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 96, a2, &v12) & 1) == 0 || (result = *(v12 + 8)) == 0)
  {
    v12 = 0;
    v5 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 72, a2, &v12);
    v6 = v12;
    if (v5)
    {
      result = *(v12 + 8);
      if (result)
      {
        return result;
      }

      goto LABEL_19;
    }

    v7 = *(a1 + 72);
    v8 = v7 >> 1;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(a1 + 88);
    }

    if (4 * v8 + 4 >= 3 * v9)
    {
      v9 *= 2;
    }

    else if (v9 + ~v8 - *(a1 + 76) > v9 >> 3)
    {
LABEL_16:
      *(a1 + 72) += 2;
      if (*v6 != -4096)
      {
        --*(a1 + 76);
      }

      *v6 = a2;
      v6[1] = 0;
LABEL_19:
      result = llvm::MDTuple::getImpl(*(a1 + 176), 0, 0, 2, 1);
      v11 = v6[1];
      v6[1] = result;
      if (v11)
      {
        llvm::MDNode::deleteTemporary(v11, v10);
        return v6[1];
      }

      return result;
    }

    llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::grow((a1 + 72), v9);
    v12 = 0;
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 72, a2, &v12);
    v6 = v12;
    goto LABEL_16;
  }

  return result;
}

void llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::grow(int *a1, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 >= 2)
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

  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    if (a2 > 1)
    {
      v12 = a2;
      *(a1 + 1) = operator new(16 * a2, 8uLL);
      *(a1 + 2) = v12;
    }

    else
    {
      *a1 = v6 | 1;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::moveFromOldBuckets(a1, v7, &v7[2 * v8]);

    JUMPOUT(0x277C69E30);
  }

  v9 = v13;
  if ((*(a1 + 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 2);
    v13[0] = *(a1 + 1);
    v13[1] = v10;
    v9 = &v14;
    *(a1 + 2) = 0;
  }

  if (a2 >= 2)
  {
    *a1 = v6 & 0xFFFFFFFE;
    v11 = a2;
    *(a1 + 1) = operator new(16 * a2, 8uLL);
    *(a1 + 2) = v11;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::moveFromOldBuckets(a1, v13, v9);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
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
      goto LABEL_16;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_16:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v20 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(result, v15, &v20);
      v17 = v20;
      *v20 = *a2;
      v18 = a2[1];
      a2[1] = 0;
      v17[1] = v18;
      *result += 2;
      v19 = a2[1];
      a2[1] = 0;
      if (v19)
      {
        llvm::MDNode::deleteTemporary(v19, v16);
      }
    }

    a2 += 2;
  }
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::destroy_range(llvm::MDNode *result, llvm::MDNode *a2)
{
  if (a2 != result)
  {
    v3 = (a2 - 16);
    do
    {
      v4 = *(v3 + 1);
      *(v3 + 1) = 0;
      if (v4)
      {
        llvm::MDNode::deleteTemporary(v4, a2);
      }

      a2 = *v3;
      if (*v3)
      {
        llvm::MetadataTracking::untrack(v3, a2);
      }

      v5 = v3 == result;
      v3 = (v3 - 16);
    }

    while (!v5);
  }
}

void llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::destroyAll(uint64_t result, llvm::MDNode *a2)
{
  if (*result)
  {
    v3 = result + 8;
    v2 = 1;
  }

  else
  {
    v2 = *(result + 16);
    if (!v2)
    {
      return;
    }

    v3 = *(result + 8);
  }

  v4 = 16 * v2;
  v5 = (v3 + 8);
  do
  {
    if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        llvm::MDNode::deleteTemporary(v6, a2);
      }
    }

    v5 += 2;
    v4 -= 16;
  }

  while (v4);
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(llvm::SmallVectorImpl<unsigned long long> &,unsigned int,anonymous namespace::anonymous namespace::PlaceholderQueue &,llvm::StringRef,unsigned int &)::$_6::operator()(unsigned int **a1)
{
  v2 = *a1;
  Impl = llvm::MDTuple::getImpl(*(*a1 + 26), 0, 0, 0, 1);
  ++*a1[1];
}

uint64_t std::function<llvm::Type * ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
}

llvm::MDNode *llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(llvm::SmallVectorImpl<unsigned long long> &,unsigned int,anonymous namespace::anonymous namespace::PlaceholderQueue &,llvm::StringRef,unsigned int &)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = (*(*a1 + 680) - *(*a1 + 672)) >> 4;
  if (v4 > a2)
  {
    v5 = *a1;

    return llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMDString(v5, a2);
  }

  v8 = *(v3 + 8);
  if (**(a1 + 8))
  {
    if (v8 <= a2 || (v9 = *(*v3 + 8 * a2)) == 0 || llvm::MDNode::classof(*(*v3 + 8 * a2)) && ((*(v9 + 1) & 0x7F) == 2 || *(v9 - 8)))
    {
      v10 = *(a1 + 24);
      v11 = v10[2];
      v12 = v10[1];
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 32 * (v11 - v12) - 1;
      }

      v14 = v10[4];
      v15 = v10[5] + v14;
      if (v13 == v15)
      {
        if (v14 < 0x100)
        {
          v17 = v10[3];
          v18 = v17 - *v10;
          if (v11 - v12 < v18)
          {
            operator new();
          }

          v19 = v18 >> 2;
          if (v17 == *v10)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v20);
        }

        v10[4] = v14 - 256;
        v24 = *v12;
        v10[1] = (v12 + 8);
        std::__split_buffer<llvm::orc::LookupState *>::emplace_back<llvm::orc::LookupState *&>(v10, &v24);
        v12 = v10[1];
        v15 = v10[5] + v10[4];
      }

      v21 = *&v12[(v15 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v15;
      *(v21 + 8) = 0;
      *v21 = 259;
      *(v21 + 4) = v2;
      v23 = v10[4];
      v22 = v10[5];
      v10[5] = v22 + 1;
      return (*(v10[1] + (((v23 + v22) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v23 + v22));
    }

    return v9;
  }

  if (v8 > a2)
  {
    v9 = *(*v3 + 8 * a2);
    if (v9)
    {
      return v9;
    }
  }

  if (v4 + ((*(v3 + 704) - *(v3 + 696)) >> 3) > a2)
  {
    llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(v3, v2, *(a1 + 24));
    if (*(v3 + 8) <= v2)
    {
      return 0;
    }

    else
    {
      return *(*v3 + 8 * v2);
    }
  }

  v16 = *a1;
}

void *anonymous namespace::BitcodeReaderMetadataList::addTypeRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 20) & 4) != 0)
  {
    v6 = a2;
    v7 = a3;
    v3 = a1 + 120;
  }

  else
  {
    v6 = a2;
    v7 = a3;
    v3 = a1 + 96;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::try_emplace<llvm::DICompositeType *>(v5, v3, &v6, &v7);
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::upgradeTypeRefArray(uint64_t a1, llvm::MDNode *a2)
{
  if (!a2)
  {
    return a2;
  }

  if (*a2 != 4)
  {
    return a2;
  }

  v14 = a2;
  v2 = *(a2 + 1) & 0x7F;
  if (v2 == 1)
  {
    return a2;
  }

  if (v2 == 2)
  {
    v13 = &v14;
    Impl = llvm::MDTuple::getImpl(*(a1 + 176), 0, 0, 2, 1);
    v11 = Impl;
    v12 = &v11;
    v5 = *(a1 + 152);
    if (v5 >= *(a1 + 156))
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::MDTuple*&>,std::tuple<std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>&&>>(a1 + 144, &v13, &v12);
    }

    else
    {
      v6 = *(a1 + 144);
      v7 = (v6 + 16 * v5);
      v8 = v14;
      *v7 = v14;
      if (v8)
      {
        llvm::MetadataTracking::track(v6 + 16 * v5, v8, 2);
        LODWORD(v5) = *(a1 + 152);
        Impl = v11;
      }

      v11 = 0;
      v7[1] = Impl;
      *(a1 + 152) = v5 + 1;
    }

    v9 = v11;
    v11 = 0;
    if (v9)
    {
      llvm::MDNode::deleteTemporary(v9, v8);
    }

    return *(*(a1 + 144) + 16 * *(a1 + 152) - 8);
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::upgradeDIExpression(llvm::Twine *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v8 = *(a4 + 8);
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_7:
        v21 = "Invalid record";
        v22 = 259;
        error(a1, &v21);
      }
    }

    else if (v8 >= 3)
    {
      v10 = *a4;
      v11 = *a4 + 8 * v8;
      if (*(v11 - 24) == 157)
      {
        *(v11 - 24) = 4096;
      }

      goto LABEL_13;
    }

    if (!v8)
    {
LABEL_20:
      *(a2 + 1043) = 1;
      goto LABEL_21;
    }

    v10 = *a4;
LABEL_13:
    if (*v10 == 6)
    {
      v12 = &v10[v8];
      if (v8 >= 3 && *(v12 - 3) == 4096)
      {
        v12 -= 24;
      }

      if (v12 != (v10 + 1))
      {
        memmove(v10, v10 + 1, v12 - (v10 + 1));
        v8 = *(a4 + 8);
      }

      *(v12 - 1) = 6;
    }

    goto LABEL_20;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_21:
  if (v8)
  {
    v13 = *a4;
    do
    {
      v14 = *v13;
      if (*v13 > 0x22uLL || ((1 << *v13) & 0x410010000) == 0)
      {
        if (v14 == 4096)
        {
          if (v8 >= 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = v8;
          }

          v18 = v13 + 1;
LABEL_40:
          v19 = a5;
          goto LABEL_41;
        }

        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v16 >= v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v16;
      }

      v18 = v13 + 1;
      if (v14 == 28)
      {
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a5, 16);
        llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(a5, v13 + 8, &v13[v17]);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a5, 28);
        goto LABEL_43;
      }

      if (v14 != 34)
      {
        goto LABEL_40;
      }

      v19 = a5;
      v14 = 35;
LABEL_41:
      llvm::SmallVectorTemplateBase<void *,true>::push_back(v19, v14);
      llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(a5, v18, &v13[v17]);
LABEL_43:
      v13 += v17;
      v8 -= v17;
    }

    while (v8);
  }

  v20 = a5[2];
  *a4 = *a5;
  *(a4 + 8) = v20;
LABEL_45:
  *a1 = 0;
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::try_emplace<llvm::DICompositeType *>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a2, *a3, &v16);
  v9 = v16;
  if (result)
  {
    v10 = a2 + 8;
    if (*a2)
    {
      v11 = 1;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
    }

    v14 = 0;
    v15 = v10 + 16 * v11;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::MDString *>(a2, a3, v16);
    v9 = result;
    *result = *a3;
    result[1] = *a4;
    v12 = a2 + 8;
    if (*a2)
    {
      v13 = 1;
    }

    else
    {
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
    }

    v15 = v12 + 16 * v13;
    v14 = 1;
  }

  *a1 = v9;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::MDTuple*&>,std::tuple<std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>&&>>(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v20 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v20);
  v8 = v7;
  v9 = *(a1 + 8);
  v10 = &v7[2 * v9];
  v11 = *a3;
  v12 = **a2;
  *v10 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track(&v7[2 * v9], v12, 2);
    v9 = *(a1 + 8);
  }

  v13 = *v11;
  *v11 = 0;
  v10[1] = v13;
  v14 = *a1;
  if (v9)
  {
    v15 = 16 * v9;
    v16 = v8;
    do
    {
      v17 = *v14;
      *v16 = *v14;
      if (v17)
      {
        llvm::MetadataTracking::retrack(v14, v17, v16);
        *v14 = 0;
      }

      v18 = v14[1];
      v14[1] = 0;
      v16[1] = v18;
      v16 += 2;
      v14 += 2;
      v15 -= 16;
    }

    while (v15);
    v14 = *a1;
    LODWORD(v9) = *(a1 + 8);
  }

  llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::destroy_range(v14, &v14[2 * v9]);
  v19 = v20;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v8;
  ++*(a1 + 8);
  *(a1 + 12) = v19;
}

void std::vector<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>::emplace_back<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::FindAndConstruct(_DWORD *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a1, *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 16;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_12;
  }

  if (v7 + ~v6 - a1[1] <= v7 >> 3)
  {
LABEL_12:
    llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a1, *a2, &v8);
    result = v8;
  }

  *a1 += 2;
  if (*result != -4096)
  {
    --a1[1];
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

int *llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::grow(uint64_t a1, unsigned int a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  if (a2 >= 0x11)
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

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 0x10)
    {
      v13 = a2;
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 256);
  if (a2 > 0x10)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 66;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

_BYTE *std::string::__init_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(_BYTE *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(llvm::SmallVectorImpl<unsigned long long> &,unsigned int,anonymous namespace::anonymous namespace::PlaceholderQueue &,llvm::StringRef,unsigned int &)::$_0>(unsigned int **a1, uint64_t *a2, size_t a3)
{
  v4 = *a1;
  v5 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(*a1 + 26) + 312), a2, a3);
  if (v6)
  {
    *(v5 + 16) = v5;
  }

  ++*a1[1];
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 16;
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
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 16 * v6);
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
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
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

void llvm::MetadataLoader::MetadataLoaderImpl::upgradeDeclareExpressions(uint64_t **this, llvm::Function *a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  if (*(this + 1043) == 1)
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

          v9 = llvm::DbgDeclareInst::classof(v8);
          if (!v9)
          {
            v8 = 0;
          }

          if (i)
          {
            if (v9)
            {
              v10 = *((v8 - 4 * (*(v8 + 5) & 0x7FFFFFF))[8] + 24);
              if (v10)
              {
                v11 = *(v10 + 16);
                if (((*(v10 + 24) - v11) & 0x7FFFFFFF8) != 0 && *v11 == 6)
                {
                  VariableLocationOp = llvm::DbgVariableIntrinsic::getVariableLocationOp(v8, 0);
                  if (VariableLocationOp)
                  {
                    if (*(VariableLocationOp + 16) == 21)
                    {
                      v14 = v16;
                      v15 = 0x800000000;
                      llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v14, (*(v10 + 16) + 8), *(v10 + 24));
                      Impl = llvm::DIExpression::getImpl(this[26], v14, v15, 0, 1);
                      llvm::DbgVariableIntrinsic::setExpression(v8, Impl);
                      if (v14 != v16)
                      {
                        free(v14);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v3 = *(v3 + 1);
      }

      while (v3 != v2);
    }
  }
}

void llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 680);
  v6 = *(*a1 + 688);
  if (v5 >= v6)
  {
    v8 = v4[84];
    v9 = (v5 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>((v4 + 84), v12);
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v7 = 16 * v9 + 16;
    v14 = v4[84];
    v15 = v4[85] - v14;
    v16 = (16 * v9 - v15);
    memcpy(v16, v14, v15);
    v17 = v4[84];
    v4[84] = v16;
    v4[85] = v7;
    v4[86] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v7 = (v5 + 2);
  }

  v4[85] = v7;
}

_BYTE *llvm::Expected<BOOL>::moveAssign<BOOL>(_BYTE *result, _BYTE *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[8];
    if (v4)
    {
      result = *result;
      *v3 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v4 = v3[8];
      }
    }

    v5 = a2[8];
    v3[8] = v4 & 0xFE | v5 & 1;
    if (v5)
    {
      v6 = *a2;
      *a2 = 0;
      *v3 = v6;
    }

    else
    {
      *v3 = *a2;
    }
  }

  return result;
}

llvm::MetadataLoader::MetadataLoaderImpl *std::unique_ptr<llvm::MetadataLoader::MetadataLoaderImpl>::reset[abi:nn200100](llvm::MetadataLoader::MetadataLoaderImpl **a1, llvm::MetadataLoader::MetadataLoaderImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::MetadataLoader::MetadataLoaderImpl::~MetadataLoaderImpl(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

void llvm::MetadataLoader::MetadataLoaderImpl::~MetadataLoaderImpl(llvm::MetadataLoader::MetadataLoaderImpl *this)
{
  MEMORY[0x277C69E30](*(this + 127), 4);
  if ((*(this + 752) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 95), 8);
  }

  v2 = *(this + 91);
  if (v2)
  {
    *(this + 92) = v2;
    operator delete(v2);
  }

  v3 = *(this + 87);
  if (v3)
  {
    *(this + 88) = v3;
    operator delete(v3);
  }

  v4 = *(this + 84);
  if (v4)
  {
    *(this + 85) = v4;
    operator delete(v4);
  }

  llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(this + 49);
  v11 = (this + 368);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  if (*(this + 320) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](this + 288);
  }

  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](this + 256);
  std::__function::__value_func<llvm::Type * ()>::~__value_func[abi:nn200100](this + 224);
  llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::destroy_range(*(this + 18), (*(this + 18) + 16 * *(this + 38)));
  v6 = *(this + 18);
  if (v6 != this + 160)
  {
    free(v6);
  }

  if ((*(this + 120) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 16), 8);
  }

  if ((*(this + 96) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 13), 8);
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::destroyAll(this + 72, v5);
  if ((*(this + 72) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 10), 8);
  }

  if ((*(this + 48) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 7), 4);
  }

  if ((*(this + 24) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(this + 4), 4);
  }

  v7 = *this;
  v8 = *(this + 2);
  if (v8)
  {
    v9 = -8 * v8;
    v10 = &v7[8 * v8 - 8];
    do
    {
      if (*v10)
      {
        llvm::MetadataTracking::untrack(v10, *v10);
      }

      --v10;
      v9 += 8;
    }

    while (v9);
    v7 = *this;
  }

  if (v7 != this + 16)
  {
    free(v7);
  }
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::MetadataLoaderImpl(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *a3;
  v10 = *(a2 + 8);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  *(a1 + 24) = 1;
  *(a1 + 32) = -1;
  *(a1 + 48) = 1;
  *(a1 + 56) = -1;
  *(a1 + 72) = 1;
  *(a1 + 80) = -4096;
  *(a1 + 96) = 1;
  *(a1 + 104) = -4096;
  *(a1 + 120) = 1;
  *(a1 + 128) = -4096;
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0x100000000;
  *(a1 + 176) = v9;
  if (v10 >= 0xFFFFFFFF)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 184) = v11;
  *(a1 + 192) = a4;
  *(a1 + 200) = a2;
  *(a1 + 208) = *a3;
  *(a1 + 216) = a3;
  std::__function::__value_func<llvm::Type * ()>::__value_func[abi:nn200100](a1 + 224, a5);
  std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::__value_func[abi:nn200100](a1 + 256, a5 + 32);
  *(a1 + 288) = 0;
  *(a1 + 320) = 0;
  if (*(a5 + 96) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](a1 + 288, a5 + 64);
    *(a1 + 320) = 1;
  }

  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0x200000000;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x800000000;
  *(a1 + 744) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 752) = 1;
  for (i = 760; i != 1016; i += 16)
  {
    *(a1 + i) = -4096;
  }

  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1044) = a6;
  return a1;
}

uint64_t _GLOBAL__sub_I_MetadataLoader_cpp()
{
  v3 = 0;
  v4 = &v3;
  v2 = 1;
  v1.n128_u64[0] = "Import full type definitions for ThinLTO.";
  v1.n128_u64[1] = 41;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(&_MergedGlobals_38, "import-full-type-definitions", &v4, &v2, &v1);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_38, &dword_274E5C000);
  v3 = 0;
  v4 = &v3;
  v2 = 1;
  v1.n128_u64[0] = "Force disable the lazy-loading on-demand of metadata when loading bitcode for importing.";
  v1.n128_u64[1] = 88;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [10],llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815AA3A0, "disable-ondemand-mds-loading", &v4, &v2, &v1);
  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &unk_2815AA3A0, &dword_274E5C000);
}

void llvm::BitcodeReaderValueList::assignValue(llvm::ValueHandleBase **this@<X0>, llvm::Value *a2@<X2>, unsigned int a3@<W1>, int a4@<W3>, void *a5@<X8>)
{
  v9 = *this;
  v10 = this[1];
  v11 = v10 - *this;
  if ((v11 >> 5) == a3)
  {
    v12 = this[2];
    if (v10 >= v12)
    {
      v17 = v11 >> 5;
      v18 = (v11 >> 5) + 1;
      if (v18 >> 59)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v19 = v12 - v9;
      if (v19 >> 4 > v18)
      {
        v18 = v19 >> 4;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFE0)
      {
        v20 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      v31 = this;
      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(this, v20);
      }

      v22 = 32 * v17;
      *v22 = 6;
      *(v22 + 8) = 0;
      *(v22 + 16) = a2;
      if (a2 != -8192 && a2 != -4096 && a2)
      {
        llvm::ValueHandleBase::AddToUseList(v22);
      }

      *(v22 + 24) = a4;
      v13 = (v22 + 32);
      v23 = this[1];
      v24 = (v22 + *this - v23);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(this, *this, v23, v24);
      v25 = *this;
      *this = v24;
      this[1] = (v22 + 32);
      v26 = this[2];
      this[2] = 0;
      v29 = v25;
      v30 = v26;
      v27 = v25;
      v28 = v25;
      std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(&v27);
    }

    else
    {
      *v10 = 6;
      *(v10 + 1) = 0;
      *(v10 + 2) = a2;
      if (a2 != -8192 && a2 != -4096 && a2)
      {
        llvm::ValueHandleBase::AddToUseList(v10);
      }

      *(v10 + 6) = a4;
      v13 = (v10 + 32);
    }

    this[1] = v13;
  }

  else
  {
    if ((v11 >> 5) <= a3)
    {
      std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(this, a3 + 1);
      v9 = *this;
    }

    v15 = v9 + 32 * a3;
    v16 = *(v15 + 2);
    if (v16)
    {
      if (*v16 != *a2)
      {
        v27 = 92;
        v28 = std::generic_category();
        v32 = "Assigned value does not match type of forward declaration";
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }

      llvm::Value::doRAUW(*(v15 + 2), a2, 1);
      llvm::Value::deleteValue(v16, v21);
    }

    else
    {
      llvm::ValueHandleBase::operator=((v9 + 32 * a3), a2);
      *(v15 + 6) = a4;
    }
  }

  *a5 = 0;
}

llvm::MCAsmLexer *llvm::BitcodeReaderValueList::getValueFwdRef(llvm::BitcodeReaderValueList *this, unsigned int a2, llvm::Type *a3, int a4, llvm::BasicBlock *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 6) <= a2)
  {
    return 0;
  }

  v9 = *this;
  if (((*(this + 1) - *this) >> 5) <= a2)
  {
    std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(this, a2 + 1);
    v9 = *this;
  }

  v10 = *(v9 + 32 * a2 + 16);
  if (!v10)
  {
    if (a3)
    {
      operator new();
    }

    return 0;
  }

  if (a3 && *v10 != a3)
  {
    return 0;
  }

  v11 = *(this + 7);
  v18 = a2;
  v17 = a5;
  if (v11)
  {
    (*(*v11 + 48))(&v19);
    v12 = v19;
    if ((v20 & 1) == 0)
    {
      return v12;
    }

    v19 = 0;
    v17 = v12;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (v20)
    {
      v13 = v19;
      v19 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    return 0;
  }

  v15 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::AsmLexer::AsmLexer(v15, v16);
}

llvm::MCAsmLexer *llvm::AsmLexer::AsmLexer(llvm::MCAsmLexer *a1, uint64_t a2)
{
  result = llvm::MCAsmLexer::MCAsmLexer(a1);
  *result = &unk_2883EFDA0;
  *(result + 17) = a2;
  *(result + 18) = 0;
  *(result + 19) = 0;
  *(result + 20) = 0;
  *(result + 42) = 16777473;
  if (*(a2 + 56))
  {
    v4 = **(a2 + 48) != 64;
  }

  else
  {
    v4 = 1;
  }

  *(result + 105) = v4;
  *(result + 111) = *(a2 + 491);
  return result;
}

void llvm::AsmLexer::~AsmLexer(void **this)
{
  llvm::MCAsmLexer::~MCAsmLexer(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::AsmLexer::ReturnError(uint64_t a1, std::string *a2, std::string::size_type a3, std::string *__str)
{
  a2[2].__r_.__value_.__r.__words[2] = a3;
  std::string::operator=(a2 + 3, __str);
  v7 = a2[6].__r_.__value_.__r.__words[0] - a3;
  *a1 = 1;
  *(a1 + 8) = a3;
  *(a1 + 16) = v7;
  *(a1 + 32) = 64;
  *(a1 + 24) = 0;

  return llvm::APInt::clearUnusedBits(a1 + 24);
}

void llvm::AsmLexer::LexFloatLiteral(llvm::AsmLexer *this, std::string *a2)
{
  data = a2[6].__r_.__value_.__l.__data_;
  v5 = *data;
  if ((v5 - 48) <= 9)
  {
    v6 = (data + 1);
    do
    {
      a2[6].__r_.__value_.__r.__words[0] = v6;
      v7 = *v6++;
      v5 = v7;
    }

    while ((v7 - 48) < 0xA);
    data = (v6 - 1);
  }

  if (v5 > 68)
  {
    if (v5 == 69 || v5 == 101)
    {
      v9 = data + 1;
      a2[6].__r_.__value_.__r.__words[0] = (data + 1);
      v10 = data[1];
      if (v10 == 45 || v10 == 43)
      {
        v9 = data + 2;
        a2[6].__r_.__value_.__r.__words[0] = (data + 2);
        v10 = data[2];
      }

      data = v9;
      if ((v10 - 48) <= 9)
      {
        v11 = (v9 + 1);
        do
        {
          a2[6].__r_.__value_.__r.__words[0] = v11;
          v12 = *v11++;
        }

        while ((v12 - 48) < 0xA);
        data = (v11 - 1);
      }
    }
  }

  else if (v5 == 43 || v5 == 45)
  {
    std::string::basic_string[abi:nn200100]<0>(&__str, "invalid sign in float literal");
    a2[2].__r_.__value_.__r.__words[2] = data;
    std::string::operator=(a2 + 3, &__str);
    v8 = a2[6].__r_.__value_.__r.__words[0] - data;
    *this = 1;
    *(this + 1) = data;
    *(this + 2) = v8;
    *(this + 8) = 64;
    *(this + 3) = 0;
    llvm::APInt::clearUnusedBits(this + 24);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v13 = a2[4].__r_.__value_.__l.__data_;
  *this = 6;
  *(this + 1) = v13;
  *(this + 2) = data - v13;
  *(this + 8) = 64;
  *(this + 3) = 0;
  v14 = this + 24;

  llvm::APInt::clearUnusedBits(v14);
}

void llvm::AsmLexer::LexIdentifier(llvm::AsmLexer *this, std::string *a2)
{
  data = a2[6].__r_.__value_.__l.__data_;
  if (*(data - 1) == 46 && *data - 48 <= 9)
  {
    v3 = (data + 1);
    do
    {
      a2[6].__r_.__value_.__r.__words[0] = v3;
      v5 = *v3++;
      v4 = v5;
    }

    while ((v5 - 48) < 0xA);
    data = (v3 - 1);
    if ((v4 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      if ((v4 - 36) > 0x3B || ((1 << (v4 - 36)) & 0x800000008000401) == 0)
      {
        v17 = a2[4].__r_.__value_.__s.__data_[9];
        if (v4 != 64)
        {
          v17 = 0;
        }

        v18 = v4 == 35 ? a2[4].__r_.__value_.__s.__data_[10] : 0;
        if ((v17 & 1) == 0 && (v18 & 1) == 0)
        {
          goto LABEL_7;
        }
      }
    }

    else if ((v4 | 0x20) == 0x65)
    {
LABEL_7:
      llvm::AsmLexer::LexFloatLiteral(this, a2);
      return;
    }
  }

  v7 = a2[4].__r_.__value_.__s.__data_[9];
  v8 = a2[4].__r_.__value_.__s.__data_[10];
  for (i = -data; ; --i)
  {
    v10 = *data;
    if ((v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A && ((v10 - 36) > 0x3B || ((1 << (v10 - 36)) & 0x800000008000401) == 0))
    {
      v13 = v10 == 64 ? v7 : 0;
      v14 = v10 == 35 ? v8 : 0;
      if ((v13 & 1) == 0 && !v14)
      {
        break;
      }
    }

    a2[6].__r_.__value_.__r.__words[0] = ++data;
  }

  v15 = a2[4].__r_.__value_.__l.__data_;
  if (data == v15 + 1 && *v15 == 46)
  {
    *this = 24;
    v16 = 1;
  }

  else
  {
    v16 = -i - v15;
    *this = 2;
  }

  *(this + 1) = v15;
  *(this + 2) = v16;
  *(this + 8) = 64;
  *(this + 3) = 0;
  llvm::APInt::clearUnusedBits(this + 24);
}

void llvm::AsmLexer::LexSlash(llvm::AsmLexer *this, std::string *a2)
{
  if ((*(a2[5].__r_.__value_.__r.__words[2] + 65) & 1) == 0)
  {
    goto LABEL_12;
  }

  data = a2[6].__r_.__value_.__l.__data_;
  v5 = *data;
  if (v5 != 47)
  {
    if (v5 == 42)
    {
      a2[7].__r_.__value_.__s.__data_[1] = 0;
      v6 = data + 1;
      a2[6].__r_.__value_.__r.__words[0] = (data + 1);
      v7 = a2[6].__r_.__value_.__l.__size_ + a2[6].__r_.__value_.__r.__words[2];
      if (data + 1 == v7)
      {
LABEL_9:
        v10 = a2[4].__r_.__value_.__l.__data_;
        std::string::basic_string[abi:nn200100]<0>(&__str, "unterminated comment");
        a2[2].__r_.__value_.__r.__words[2] = v10;
        std::string::operator=(a2 + 3, &__str);
        v11 = a2[6].__r_.__value_.__r.__words[0] - v10;
        *this = 1;
        *(this + 1) = v10;
        *(this + 2) = v11;
        *(this + 8) = 64;
        *(this + 3) = 0;
        llvm::APInt::clearUnusedBits(this + 24);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return;
      }

      v8 = 0;
      while (1)
      {
        v9 = data + 2;
        a2[6].__r_.__value_.__r.__words[0] = (data + 2);
        if (data[1] == 42 && *v9 == 47)
        {
          break;
        }

        --v8;
        ++data;
        if (v9 == v7)
        {
          goto LABEL_9;
        }
      }

      size = a2[5].__r_.__value_.__l.__size_;
      if (size)
      {
        (*(*size + 16))(size, v6, v6, -v8);
        v14 = a2[6].__r_.__value_.__l.__data_;
      }

      else
      {
        v14 = data + 2;
      }

      v15 = (v14 + 1);
      a2[6].__r_.__value_.__r.__words[0] = v15;
      v16 = a2[4].__r_.__value_.__l.__data_;
      *this = 7;
      *(this + 1) = v16;
      *(this + 2) = v15 - v16;
      goto LABEL_13;
    }

LABEL_12:
    a2[7].__r_.__value_.__s.__data_[1] = 0;
    v12 = a2[4].__r_.__value_.__l.__data_;
    *this = 15;
    *(this + 1) = v12;
    *(this + 2) = 1;
LABEL_13:
    *(this + 8) = 64;
    *(this + 3) = 0;

    llvm::APInt::clearUnusedBits(this + 24);
    return;
  }

  a2[6].__r_.__value_.__r.__words[0] = (data + 1);

  llvm::AsmLexer::LexLineComment(this, a2);
}

uint64_t llvm::AsmLexer::LexLineComment(llvm::AsmLexer *this, uint64_t a2)
{
  v4 = *(a2 + 144);
  v5 = (*(a2 + 152) + *(a2 + 160));
  v6 = v4;
  if (v4 != v5)
  {
    goto LABEL_3;
  }

  v7 = -1;
  v6 = v4;
  while ((v7 + 1) > 0xE || ((1 << (v7 + 1)) & 0x4801) == 0)
  {
    v7 = -1;
    if (v6 != v5)
    {
LABEL_3:
      *(a2 + 144) = v6 + 1;
      v7 = *v6++;
    }
  }

  if (v7 == 13 && v6 != v5 && *v6 == 10)
  {
    *(a2 + 144) = v6 + 1;
  }

  v9 = *(a2 + 128);
  if (v9)
  {
    (*(*v9 + 16))(v9, v4, v4, &v6[~v4]);
  }

  *(a2 + 168) = 1;
  if (*(a2 + 169) == 1)
  {
    v10 = *(a2 + 144);
  }

  else
  {
    *(a2 + 169) = 1;
    v10 = *(a2 + 144) - 1;
  }

  v11 = *(a2 + 96);
  *this = 9;
  *(this + 1) = v11;
  *(this + 2) = v10 - v11;
  *(this + 8) = 64;
  *(this + 3) = 0;

  return llvm::APInt::clearUnusedBits(this + 24);
}

void llvm::AsmLexer::LexDigit(llvm::AsmLexer *this, uint64_t a2)
{
  v4 = *(a2 + 109);
  if (v4 != 1)
  {
    goto LABEL_8;
  }

  v6 = (a2 + 144);
  v5 = *(a2 + 144);
  v7 = v5 - 1;
  if (*(v5 - 1) < 0 || (*(MEMORY[0x277D85DE0] + 4 * *(v5 - 1) + 60) & 0x400) == 0)
  {
LABEL_4:
    if (*(a2 + 112) == 1)
    {
      v8 = v5 - 1;
      v9 = v5 - 1;
      do
      {
        v10 = *++v8;
        ++v9;
      }

      while (llvm::hexDigitValue(char)::LUT[v10] < 0x10u);
      *(a2 + 144) = v8;
      v11 = &v9[-*(a2 + 96)];
      v55 = *(a2 + 96);
      v56 = v11;
      operator new[]();
    }

LABEL_8:
    v12 = (a2 + 144);
    v13 = *(a2 + 144);
    if (*(a2 + 111) == 1)
    {
      v14 = *(v13 - 1);
      if (v14 == 37)
      {
        if ((*v13 & 0xFE) == 0x30)
        {
          v27 = v13 + 1;
          do
          {
            *v12 = v27;
            v28 = *v27++;
          }

          while ((v28 & 0xFE) == 0x30);
        }

        LODWORD(v54.__r_.__value_.__r.__words[1]) = 128;
        operator new[]();
      }

      if (v14 == 36)
      {
        if (llvm::hexDigitValue(char)::LUT[*v13] != -1)
        {
          v15 = v13 + 1;
          do
          {
            *v12 = v15;
            v16 = *v15++;
          }

          while (llvm::hexDigitValue(char)::LUT[v16] != -1);
        }

        LODWORD(v54.__r_.__value_.__r.__words[1]) = 128;
        operator new[]();
      }
    }

    v17 = *(a2 + 120);
    if ((v17 & 1) != 0 || *(v13 - 1) != 48 || (v18 = *v13, v18 == 46))
    {
      v19 = 0;
      while (1)
      {
        if ((*v13 - 48) >= 0xAu)
        {
          if (!v19)
          {
            v19 = v13;
          }

          if (!v4)
          {
            v20 = 10;
            goto LABEL_29;
          }

          if (llvm::hexDigitValue(char)::LUT[*v13] == -1)
          {
            break;
          }
        }

        ++v13;
      }

      if ((*v13 & 0xDF) == 0x48)
      {
        v19 = v13;
        v20 = 16;
      }

      else
      {
        v20 = 10;
      }

LABEL_29:
      *v12 = v19;
      if (v20 == 16 || (v17 & 1) != 0)
      {
        goto LABEL_35;
      }

      v21 = *v19;
      if (v21 == 101 || v21 == 69)
      {
        goto LABEL_59;
      }

      if (v21 != 46)
      {
LABEL_35:
        v22 = &v19[-*(a2 + 96)];
        v55 = *(a2 + 96);
        v56 = v22;
        operator new[]();
      }

      *v12 = v19 + 1;
LABEL_59:

      llvm::AsmLexer::LexFloatLiteral(this, a2);
      return;
    }

    if (v4)
    {
      if ((v18 | 0x20) != 0x78)
      {
        goto LABEL_106;
      }

      goto LABEL_97;
    }

    if (*v13 > 0x61u)
    {
      if (v18 == 120)
      {
LABEL_97:
        v34 = v13 + 1;
        v35 = 1;
        do
        {
          *v12 = v34;
          v37 = *v34++;
          v36 = v37;
          --v35;
        }

        while (llvm::hexDigitValue(char)::LUT[v37] != -1);
        if (v36 == 46 || v36 == 112 || v36 == 80)
        {
          v38 = (v34 - 1);
          if (v36 == 46)
          {
            v39 = 1;
            do
            {
              *v12 = (v38 + 1);
              v36 = v38[1];
              v40 = llvm::hexDigitValue(char)::LUT[v38[1]];
              --v39;
              ++v38;
            }

            while (v40 != -1);
            v41 = v39 != 0;
          }

          else
          {
            v41 = 0;
          }

          if (!v35 && !v41)
          {
            v42 = *(a2 + 96);
            v43 = "invalid hexadecimal floating-point constant: expected at least one significand digit";
LABEL_155:
            std::string::basic_string[abi:nn200100]<0>(&__str, v43);
            *(a2 + 64) = v42;
            std::string::operator=((a2 + 72), &__str);
            v51 = *(a2 + 144) - v42;
            *this = 1;
            *(this + 1) = v42;
            *(this + 2) = v51;
            *(this + 8) = 64;
            *(this + 3) = 0;
            llvm::APInt::clearUnusedBits(this + 24);
            goto LABEL_159;
          }

          if ((v36 | 0x20) != 0x70)
          {
            v42 = *(a2 + 96);
            v43 = "invalid hexadecimal floating-point constant: expected exponent part 'p'";
            goto LABEL_155;
          }

          v44 = v38 + 1;
          *v12 = (v38 + 1);
          v45 = v38[1];
          if (v45 == 45 || v45 == 43)
          {
            v44 = v38 + 2;
            *v12 = (v38 + 2);
            v45 = v38[2];
          }

          if ((v45 - 48) > 9)
          {
            v42 = *(a2 + 96);
            v43 = "invalid hexadecimal floating-point constant: expected at least one exponent digit";
            goto LABEL_155;
          }

          v46 = (v44 + 1);
          do
          {
            *v12 = v46;
            v47 = *v46++;
            ++v44;
          }

          while ((v47 - 48) < 0xA);
          goto LABEL_127;
        }

        if (v35)
        {
          LODWORD(v54.__r_.__value_.__r.__words[1]) = 128;
          llvm::APInt::initSlowCase(&v54, 0, 0);
        }

        v52 = (v34 - 3);
        v53 = "invalid hexadecimal number";
LABEL_158:
        std::string::basic_string[abi:nn200100]<0>(&__str, v53);
        llvm::AsmLexer::ReturnError(this, a2, v52, &__str);
LABEL_159:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return;
      }

      if (v18 != 98)
      {
        goto LABEL_106;
      }
    }

    else if (v18 != 66)
    {
      if (v18 != 88)
      {
LABEL_106:
        LODWORD(v56) = 128;
        llvm::APInt::initSlowCase(&v55, 0, 1);
      }

      goto LABEL_97;
    }

    *v12 = v13 + 1;
    v30 = v13[1];
    if ((v30 - 48) > 9)
    {
      *(a2 + 144) = v13;
      v49 = *(a2 + 96);
      *this = 4;
      *(this + 1) = v49;
      *(this + 2) = &v13[-v49];
      goto LABEL_145;
    }

    if ((v30 & 0x3E) == 0x30)
    {
      v31 = (v13 + 1);
      v32 = v13 + 2;
      do
      {
        *v12 = v32;
        v33 = *v32++;
        ++v31;
      }

      while ((v33 & 0xFE) == 0x30);
      LODWORD(v54.__r_.__value_.__r.__words[1]) = 128;
      llvm::APInt::initSlowCase(&v54, 0, 1);
    }

    v52 = *(a2 + 96);
    v53 = "invalid binary number";
    goto LABEL_158;
  }

  if ((*(v5 - 1) & 0x7E) == 0x30)
  {
    v23 = 0;
  }

  else
  {
    v23 = v5 - 1;
  }

  if (*(v5 - 1) - 58 >= 0xFFFFFFF6)
  {
    v7 = 0;
  }

  v24 = *v5;
  if (llvm::hexDigitValue(char)::LUT[*v5] != -1)
  {
    v25 = v5 + 1;
    while (1)
    {
      if ((v24 - 50) < 8)
      {
        goto LABEL_44;
      }

      if ((v24 - 48) >= 2)
      {
        break;
      }

LABEL_46:
      *v6 = v25;
      v26 = *v25++;
      v24 = v26;
      if (llvm::hexDigitValue(char)::LUT[v26] == -1)
      {
        v29 = v25 - 1;
        goto LABEL_57;
      }
    }

    if (!v7)
    {
      v7 = v25 - 1;
    }

LABEL_44:
    if (!v23)
    {
      v23 = v25 - 1;
    }

    goto LABEL_46;
  }

  v29 = *(a2 + 144);
LABEL_57:
  if (v24 == 46)
  {
    *(a2 + 144) = v29 + 1;
    goto LABEL_59;
  }

  if (*(a2 + 108) != 1)
  {
    if (v24 > 103)
    {
      if (v24 <= 112)
      {
        if (v24 != 104 && v24 != 111)
        {
          goto LABEL_132;
        }
      }

      else if (v24 != 113 && v24 != 121 && v24 != 116)
      {
        goto LABEL_132;
      }

      goto LABEL_139;
    }

    if (v24 <= 80)
    {
      if (v24 != 72 && v24 != 79)
      {
        goto LABEL_132;
      }

      goto LABEL_139;
    }

    if (v24 == 81)
    {
      goto LABEL_139;
    }

    goto LABEL_120;
  }

  if (v24 > 103)
  {
    if (v24 <= 113)
    {
      if (v24 != 104 && v24 != 111 && v24 != 113)
      {
        goto LABEL_132;
      }

      goto LABEL_139;
    }

    if (v24 == 121 || v24 == 116)
    {
      goto LABEL_139;
    }

    if (v24 != 114)
    {
LABEL_132:
      if ((!v7 || v7 + 1 != v29 || *(a2 + 116) > 0xDu || (*v7 | 0x20) != 0x64) && (!v23 || v23 + 1 != v29 || *(a2 + 116) > 0xBu || (*v23 | 0x20) != 0x62))
      {
        *v6 = v5;
        goto LABEL_4;
      }

LABEL_140:
      LODWORD(v56) = 128;
      operator new[]();
    }
  }

  else
  {
    if (v24 <= 81)
    {
      if (v24 != 72 && v24 != 79 && v24 != 81)
      {
        goto LABEL_132;
      }

LABEL_139:
      *v6 = v29 + 1;
      goto LABEL_140;
    }

    if (v24 != 82)
    {
LABEL_120:
      if (v24 != 84 && v24 != 89)
      {
        goto LABEL_132;
      }

      goto LABEL_139;
    }
  }

  v44 = v29 + 1;
  *(a2 + 144) = v29 + 1;
LABEL_127:
  v48 = *(a2 + 96);
  *this = 6;
  *(this + 1) = v48;
  *(this + 2) = &v44[-v48];
LABEL_145:
  *(this + 8) = 64;
  *(this + 3) = 0;
  v50 = this + 24;

  llvm::APInt::clearUnusedBits(v50);
}

void radixName(void *a1, unsigned int a2)
{
  HIDWORD(v4) = a2 - 2;
  LODWORD(v4) = a2 - 2;
  v3 = v4 >> 1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v5 = "decimal";
      goto LABEL_13;
    }

    if (v3 == 7)
    {
      v5 = "hexadecimal";
      goto LABEL_13;
    }
  }

  else
  {
    if (!v3)
    {
      v5 = "binary";
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v5 = "octal";
LABEL_13:

      std::string::basic_string[abi:nn200100]<0>(a1, v5);
      return;
    }
  }

  std::to_string(&v8, a2);
  v6 = std::string::insert(&v8, 0, "base-");
  v7 = v6->__r_.__value_.__r.__words[2];
  *a1 = *&v6->__r_.__value_.__l.__data_;
  a1[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

unsigned __int8 **SkipIgnoredIntegerSuffix(unsigned __int8 **result)
{
  v1 = *result;
  v2 = **result;
  if ((v2 | 0x20) == 0x75)
  {
    *result = (v1 + 1);
    v2 = *++v1;
  }

  if ((v2 | 0x20) == 0x6C)
  {
    *result = (v1 + 1);
    v2 = *++v1;
  }

  if ((v2 | 0x20) == 0x6C)
  {
    *result = (v1 + 1);
  }

  return result;
}

void *intToken(void *result, uint64_t a2, uint64_t a3, llvm::APInt *a4)
{
  v4 = *(a4 + 2);
  if (v4 >= 0x41)
  {
    llvm::APInt::countLeadingZerosSlowCase(a4);
    operator new[]();
  }

  v5 = *a4;
  *result = 4;
  result[1] = a2;
  result[2] = a3;
  *(result + 8) = v4;
  result[3] = v5;
  return result;
}

void llvm::AsmLexer::LexSingleQuote(llvm::AsmLexer *this, std::string *a2)
{
  data = a2[6].__r_.__value_.__l.__data_;
  v5 = a2[6].__r_.__value_.__l.__size_ + a2[6].__r_.__value_.__r.__words[2];
  if (data == v5)
  {
    v6 = -1;
  }

  else
  {
    a2[6].__r_.__value_.__r.__words[0] = (data + 1);
    v6 = *data++;
  }

  if (a2[5].__r_.__value_.__s.__data_[1] == 1)
  {
    v7 = a2[4].__r_.__value_.__l.__data_;
    v8 = "invalid usage of character literals";
    goto LABEL_30;
  }

  if (a2[4].__r_.__value_.__s.__data_[14] == 1)
  {
LABEL_7:
    while (2)
    {
      v9 = data;
      while (1)
      {
        if (v6 == -1)
        {
          v7 = a2[4].__r_.__value_.__l.__data_;
          v8 = "unterminated string constant";
          goto LABEL_30;
        }

        if (v6 == 39)
        {
          break;
        }

        v6 = -1;
        if (data != v5)
        {
          v10 = 1;
LABEL_16:
          v11 = &v9[v10];
          a2[6].__r_.__value_.__r.__words[0] = v11;
          v6 = *data;
          data = v11;
          goto LABEL_7;
        }
      }

      if (data != v5)
      {
        if (*data == 39)
        {
          ++data;
          a2[6].__r_.__value_.__r.__words[0] = (v9 + 1);
          v6 = -1;
          if (v9 + 1 == v5)
          {
            continue;
          }

          v10 = 2;
          goto LABEL_16;
        }

        v5 = data;
      }

      break;
    }

    v23 = a2[4].__r_.__value_.__l.__data_;
    *this = 3;
    *(this + 1) = v23;
    *(this + 2) = v5 - v23;
    *(this + 8) = 64;
    *(this + 3) = 0;
    v16 = this + 24;
    goto LABEL_50;
  }

  if (v6 == -1)
  {
    goto LABEL_28;
  }

  if (v6 == 92)
  {
    if (data != v5)
    {
      a2[6].__r_.__value_.__r.__words[0] = ++data;
      goto LABEL_21;
    }

LABEL_28:
    v7 = a2[4].__r_.__value_.__l.__data_;
    v8 = "unterminated single quote";
    goto LABEL_30;
  }

LABEL_21:
  if (data == v5 || (v12 = data + 1, a2[6].__r_.__value_.__r.__words[0] = (data + 1), *data != 39))
  {
    v7 = a2[4].__r_.__value_.__l.__data_;
    v8 = "single quote way too long";
LABEL_30:
    std::string::basic_string[abi:nn200100]<0>(&__str, v8);
    a2[2].__r_.__value_.__r.__words[2] = v7;
    std::string::operator=(a2 + 3, &__str);
    v17 = a2[6].__r_.__value_.__r.__words[0] - v7;
    *this = 1;
    *(this + 1) = v7;
    *(this + 2) = v17;
    *(this + 8) = 64;
    *(this + 3) = 0;
    llvm::APInt::clearUnusedBits(this + 24);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v13 = a2[4].__r_.__value_.__l.__data_;
  v14 = v12 - v13;
  if ((v12 - v13) >= 2 && *v13 == 23591)
  {
    v18 = v13[2];
    v19 = v18;
    v20 = 10;
    v21 = 13;
    v22 = 9;
    if (v18 != 116)
    {
      v22 = v18;
    }

    if (v18 != 114)
    {
      v21 = v22;
    }

    if (v18 != 110)
    {
      v20 = v21;
    }

    if (v18 == 102)
    {
      v19 = 12;
    }

    if (v18 == 98)
    {
      v19 = 8;
    }

    if (v18 == 39)
    {
      v19 = v13[2];
    }

    if (v13[2] <= 0x6Du)
    {
      v15 = v19;
    }

    else
    {
      v15 = v20;
    }
  }

  else
  {
    v15 = v13[1];
  }

  *this = 4;
  *(this + 1) = v13;
  *(this + 2) = v14;
  *(this + 8) = 64;
  *(this + 3) = v15;
  v16 = this + 24;
LABEL_50:

  llvm::APInt::clearUnusedBits(v16);
}

void llvm::AsmLexer::LexQuote(llvm::AsmLexer *this, std::string *a2)
{
  data = a2[6].__r_.__value_.__l.__data_;
  v5 = a2[6].__r_.__value_.__l.__size_ + a2[6].__r_.__value_.__r.__words[2];
  if (data == v5)
  {
    v6 = -1;
  }

  else
  {
    a2[6].__r_.__value_.__r.__words[0] = (data + 1);
    v6 = *data++;
  }

  if (a2[5].__r_.__value_.__s.__data_[1] == 1)
  {
    v7 = a2[4].__r_.__value_.__l.__data_;
    v8 = "invalid usage of string literals";
LABEL_26:
    std::string::basic_string[abi:nn200100]<0>(&__str, v8);
    a2[2].__r_.__value_.__r.__words[2] = v7;
    std::string::operator=(a2 + 3, &__str);
    v12 = a2[6].__r_.__value_.__r.__words[0] - v7;
    *this = 1;
    *(this + 1) = v7;
    *(this + 2) = v12;
    *(this + 8) = 64;
    *(this + 3) = 0;
    llvm::APInt::clearUnusedBits(this + 24);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((a2[4].__r_.__value_.__s.__data_[14] & 1) == 0)
    {
      while (1)
      {
        switch(v6)
        {
          case 92:
            if (data == v5)
            {
LABEL_25:
              v7 = a2[4].__r_.__value_.__l.__data_;
              v8 = "unterminated string constant";
              goto LABEL_26;
            }

            a2[6].__r_.__value_.__r.__words[0] = ++data;
            break;
          case -1:
            goto LABEL_25;
          case 34:
            v13 = a2[4].__r_.__value_.__l.__data_;
            *this = 3;
            *(this + 1) = v13;
            *(this + 2) = data - v13;
            goto LABEL_29;
        }

        v6 = -1;
        if (data != v5)
        {
          a2[6].__r_.__value_.__r.__words[0] = (data + 1);
          v6 = *data++;
        }
      }
    }

LABEL_7:
    while (2)
    {
      v9 = data;
      while (1)
      {
        if (v6 == -1)
        {
          goto LABEL_25;
        }

        if (v6 == 34)
        {
          break;
        }

        v6 = -1;
        if (data != v5)
        {
          v10 = 1;
LABEL_16:
          v11 = &v9[v10];
          a2[6].__r_.__value_.__r.__words[0] = v11;
          v6 = *data;
          data = v11;
          goto LABEL_7;
        }
      }

      if (data != v5)
      {
        if (*data == 34)
        {
          ++data;
          a2[6].__r_.__value_.__r.__words[0] = (v9 + 1);
          v6 = -1;
          if (v9 + 1 == v5)
          {
            continue;
          }

          v10 = 2;
          goto LABEL_16;
        }

        v5 = data;
      }

      break;
    }

    v15 = a2[4].__r_.__value_.__l.__data_;
    *this = 3;
    *(this + 1) = v15;
    *(this + 2) = v5 - v15;
LABEL_29:
    *(this + 8) = 64;
    *(this + 3) = 0;
    v14 = this + 24;

    llvm::APInt::clearUnusedBits(v14);
  }
}

const char *llvm::AsmLexer::LexUntilEndOfStatement(llvm::AsmLexer *this)
{
  v2 = *(this + 18);
  *(this + 12) = v2;
  if (!llvm::AsmLexer::isAtStartOfComment(this, v2))
  {
    v4 = *(*(this + 17) + 40);
    v5 = v2;
    do
    {
      v6 = strlen(v4);
      if (!strncmp(v5, v4, v6))
      {
        break;
      }

      v7 = *v5;
      if (v7 == 10 || v7 == 13)
      {
        break;
      }

      if (v5 == (*(this + 19) + *(this + 20)))
      {
        break;
      }

      *(this + 18) = ++v5;
    }

    while (!llvm::AsmLexer::isAtStartOfComment(this, v5));
  }

  return v2;
}

BOOL llvm::AsmLexer::isAtStartOfComment(llvm::AsmLexer *this, const char *__s1)
{
  v2 = *(this + 17);
  if (*(v2 + 64) == 1 && *(this + 169) != 1)
  {
    return 0;
  }

  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  if (v3 == 1 || v4[1] == 35)
  {
    return *v4 == *__s1;
  }

  else
  {
    return strncmp(__s1, v4, v3) == 0;
  }
}

uint64_t llvm::AsmLexer::peekTokens(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 96);
  v8 = *(a1 + 144);
  v9 = *(a1 + 168);
  v10 = *(a1 + 169);
  v19 = *(a1 + 104);
  *(a1 + 104) = a4;
  v11 = *(a1 + 170);
  *(a1 + 170) = 1;
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    __str = *(a1 + 72);
  }

  v12 = *(a1 + 64);
  if (a3)
  {
    v18 = v10;
    v13 = 0;
    v14 = (a2 + 24);
    while (1)
    {
      (**a1)(&v20, a1);
      v15 = v20;
      *(v14 - 1) = v21;
      *(v14 - 24) = v15;
      llvm::APInt::operator=(v14, &v22);
      v16 = v20;
      if (v23 >= 0x41 && v22)
      {
        MEMORY[0x277C69E10](v22, 0x1000C8000313F17);
      }

      if (!v16)
      {
        break;
      }

      ++v13;
      v14 = (v14 + 40);
      if (a3 == v13)
      {
        v13 = a3;
        break;
      }
    }

    v10 = v18;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 64) = v12;
  std::string::operator=((a1 + 72), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 170) = v11;
  *(a1 + 104) = v19;
  *(a1 + 169) = v10;
  *(a1 + 168) = v9;
  *(a1 + 144) = v8;
  *(a1 + 96) = v7;
  return v13;
}

void llvm::AsmLexer::LexToken(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  data = this[6].__r_.__value_.__l.__data_;
  size = this[6].__r_.__value_.__l.__size_;
  this[4].__r_.__value_.__r.__words[0] = data;
  if (data == (size + this[6].__r_.__value_.__r.__words[2]))
  {
    v6 = -1;
    goto LABEL_30;
  }

  this[6].__r_.__value_.__r.__words[0] = (data + 1);
  v6 = *data;
  if ((this[7].__r_.__value_.__s.__data_[2] & 1) == 0 && v6 == 35)
  {
    if (this[7].__r_.__value_.__s.__data_[1] != 1)
    {
      v6 = 35;
      goto LABEL_30;
    }

    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    v66 = 1;
    v65 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v71[0] = 1;
    v7 = (*(this->__r_.__value_.__r.__words[0] + 32))(this, &__p, 2, 1);
    if (this[7].__r_.__value_.__s.__data_[0] == 1 && v7 == 2 && LODWORD(__p.__r_.__value_.__l.__data_) == 4 && v67 == 3)
    {
      v8 = 0;
      v9 = this[4].__r_.__value_.__l.__data_;
      for (i = v9; ; ++i)
      {
        this[6].__r_.__value_.__r.__words[0] = i;
        v11 = *i;
        v12 = v11 == 10 || v11 == 13;
        if (v12 || i == (this[6].__r_.__value_.__l.__size_ + this[6].__r_.__value_.__r.__words[2]))
        {
          break;
        }

        --v8;
      }

      v13 = -v8;
      v14 = this->__r_.__value_.__l.__size_;
      this[4].__r_.__value_.__s.__data_[11] = 0;
      llvm::SmallVectorImpl<llvm::AsmToken>::insert_one_impl<llvm::AsmToken const&>(&this->__r_.__value_.__l.__size_, v14, &v67);
      this[4].__r_.__value_.__s.__data_[11] = 0;
      llvm::SmallVectorImpl<llvm::AsmToken>::insert_one_impl<llvm::AsmToken const&>(&this->__r_.__value_.__l.__size_, this->__r_.__value_.__l.__size_, &__p);
      *a2 = 8;
      *(a2 + 8) = v9;
      *(a2 + 16) = v13;
      *(a2 + 32) = 64;
      *(a2 + 24) = 0;
      llvm::APInt::clearUnusedBits(a2 + 24);
    }

    else
    {
      if (*(this[5].__r_.__value_.__r.__words[2] + 65) != 1)
      {
        v15 = 1;
LABEL_23:
        for (j = 0; j != -20; j -= 10)
        {
          if (v71[j] >= 0x41u)
          {
            v17 = *&v71[j - 2];
            if (v17)
            {
              MEMORY[0x277C69E10](v17, 0x1000C8000313F17);
            }
          }
        }

        if (!v15)
        {
          return;
        }

        data = this[4].__r_.__value_.__l.__data_;
        goto LABEL_30;
      }

      llvm::AsmLexer::LexLineComment(a2, this);
    }

    v15 = 0;
    goto LABEL_23;
  }

LABEL_30:
  if (llvm::AsmLexer::isAtStartOfComment(this, data))
  {
    llvm::AsmLexer::LexLineComment(a2, this);
    return;
  }

  v18 = this[5].__r_.__value_.__r.__words[2];
  v19 = *(v18 + 40);
  v20 = strlen(v19);
  if (!strncmp(data, v19, v20))
  {
    this[6].__r_.__value_.__r.__words[0] = this[6].__r_.__value_.__r.__words[0] + v20 - 1;
    LOWORD(this[7].__r_.__value_.__l.__data_) = 257;
    v22 = strlen(v19);
    *a2 = 9;
    *(a2 + 8) = data;
    *(a2 + 16) = v22;
LABEL_181:
    *(a2 + 32) = 64;
    *(a2 + 24) = 0;
    v25 = a2 + 24;
    goto LABEL_182;
  }

  if (v6 == -1)
  {
    v23 = this[7].__r_.__value_.__s.__data_[3];
    if (this[7].__r_.__value_.__s.__data_[1] == 1)
    {
      LOWORD(this[7].__r_.__value_.__l.__data_) = 0;
      if ((v23 & 1) == 0)
      {
LABEL_45:
        *a2 = 0;
        goto LABEL_46;
      }

      v24 = 1;
    }

    else
    {
      if (this[7].__r_.__value_.__s.__data_[3])
      {
        LOWORD(this[7].__r_.__value_.__l.__data_) = 257;
        *a2 = 9;
LABEL_46:
        *(a2 + 8) = data;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        v25 = a2 + 24;
        *(a2 + 32) = 64;
LABEL_182:
        llvm::APInt::clearUnusedBits(v25);
        return;
      }

      v24 = 0;
    }

    this[7].__r_.__value_.__s.__data_[0] = v24;
    this[7].__r_.__value_.__s.__data_[1] = v24;
    goto LABEL_45;
  }

  v21 = this[7].__r_.__value_.__s.__data_[1];
  LOWORD(this[7].__r_.__value_.__l.__data_) = 0;
  if (v6 <= 122)
  {
    switch(v6)
    {
      case 0:
      case 9:
      case 32:
        this[7].__r_.__value_.__s.__data_[1] = v21;
        v28 = this[6].__r_.__value_.__l.__data_;
        for (k = v28 - data; ; ++k)
        {
          v30 = *v28++;
          if (v30 != 32 && v30 != 9)
          {
            break;
          }

          this[6].__r_.__value_.__r.__words[0] = v28;
        }

        if (this[4].__r_.__value_.__s.__data_[8] == 1)
        {
          (*this->__r_.__value_.__l.__data_)(this);
          return;
        }

        v33 = 11;
LABEL_78:
        *a2 = v33;
        goto LABEL_180;
      case 10:
        LOWORD(this[7].__r_.__value_.__l.__data_) = 257;
        v32 = 9;
        goto LABEL_179;
      case 13:
        LOWORD(this[7].__r_.__value_.__l.__data_) = 257;
        v39 = this[6].__r_.__value_.__l.__data_;
        if (v39 != (this[6].__r_.__value_.__l.__size_ + this[6].__r_.__value_.__r.__words[2]) && *v39 == 10)
        {
          this[6].__r_.__value_.__r.__words[0] = ++v39;
        }

        k = v39 - data;
        v33 = 9;
        goto LABEL_78;
      case 33:
        v43 = this[6].__r_.__value_.__l.__data_;
        if (*v43 == 61)
        {
          this[6].__r_.__value_.__r.__words[0] = (v43 + 1);
          v27 = 35;
          goto LABEL_136;
        }

        v32 = 34;
        goto LABEL_179;
      case 34:
        llvm::AsmLexer::LexQuote(a2, this);
        return;
      case 35:
        if (*(v18 + 184) == 1)
        {
          goto LABEL_125;
        }

        v32 = 37;
        goto LABEL_179;
      case 36:
        if (this[4].__r_.__value_.__s.__data_[15] == 1 && llvm::hexDigitValue(char)::LUT[*this[6].__r_.__value_.__l.__data_] != -1)
        {
          goto LABEL_36;
        }

        if (*(v18 + 182) == 1)
        {
          goto LABEL_125;
        }

        v32 = 26;
        goto LABEL_179;
      case 37:
        if (this[4].__r_.__value_.__s.__data_[15] == 1 && (*this[6].__r_.__value_.__l.__data_ & 0xFE) == 0x30)
        {
          goto LABEL_36;
        }

        if (*(v18 + 490) != 1)
        {
          goto LABEL_178;
        }

        v40 = this[6].__r_.__value_.__l.__data_;
        if (!v40)
        {
          goto LABEL_178;
        }

        v41 = strlen(this[6].__r_.__value_.__l.__data_);
        if (v41 < 6)
        {
          if (v41 < 3)
          {
            if (v41 != 2)
            {
              goto LABEL_178;
            }

            goto LABEL_175;
          }

          if (*v40 != 28519 || v40[2] != 116)
          {
LABEL_175:
            v47 = 0x30000003CLL;
            if (*v40 == 26984)
            {
              goto LABEL_252;
            }

            if (*v40 == 28524)
            {
              v47 = 0x30000003FLL;
              goto LABEL_252;
            }

            if (v41 == 2)
            {
LABEL_178:
              v32 = 36;
              goto LABEL_179;
            }

            if (*v40 == 25966 && v40[2] == 103)
            {
              v47 = 0x400000040;
              goto LABEL_252;
            }

            if (v41 < 8)
            {
              if (v41 < 5)
              {
                goto LABEL_178;
              }

LABEL_227:
              if (*v40 == 1735617652 && v40[4] == 100)
              {
                v47 = 0x600000043;
              }

              else
              {
                if (v41 < 6)
                {
                  goto LABEL_178;
                }

                if (*v40 != 1819503732 || *(v40 + 2) != 28004)
                {
                  if (v41 < 8)
                  {
                    goto LABEL_178;
                  }

                  if (*v40 == 0x69685F6C65727074)
                  {
                    LODWORD(v47) = 69;
                  }

                  else
                  {
                    if (*v40 != 0x6F6C5F6C65727074)
                    {
                      goto LABEL_178;
                    }

                    LODWORD(v47) = 70;
                  }

                  goto LABEL_250;
                }

                v47 = 0x700000044;
              }

LABEL_252:
              v58 = HIDWORD(v47);
              goto LABEL_253;
            }

            if (*v40 == 0x69685F6C65726370)
            {
              LODWORD(v47) = 65;
            }

            else
            {
              if (*v40 != 0x6F6C5F6C65726370)
              {
                goto LABEL_227;
              }

              LODWORD(v47) = 66;
            }

LABEL_250:
            v58 = 9;
            goto LABEL_253;
          }

          goto LABEL_195;
        }

        v47 = 0x70000002FLL;
        if (*v40 == 1819042147 && *(v40 + 2) == 13873)
        {
          goto LABEL_252;
        }

        if (v41 == 6)
        {
          goto LABEL_143;
        }

        if (*v40 == 1819042147 && *(v40 + 3) == 1768447852)
        {
          v47 = 0x800000030;
          goto LABEL_252;
        }

        if (*v40 == 1819042147 && *(v40 + 3) == 1869373292)
        {
          v47 = 0x800000031;
          goto LABEL_252;
        }

        if (v41 < 9)
        {
          if (v41 != 8)
          {
LABEL_143:
            if (*v40 == 1601466215 && *(v40 + 2) == 26984)
            {
              v47 = 0x700000036;
              goto LABEL_252;
            }

            if (*v40 == 1601466215 && *(v40 + 2) == 28524)
            {
              LODWORD(v47) = 55;
            }

            else
            {
              if (v41 >= 8)
              {
                switch(*v40)
                {
                  case 0x7473666F5F746F67:
                    LODWORD(v47) = 56;
                    goto LABEL_250;
                  case 0x656761705F746F67:
                    LODWORD(v47) = 57;
                    goto LABEL_250;
                  case 0x6C65727074746F67:
                    LODWORD(v47) = 58;
                    goto LABEL_250;
                }
              }

              if (*v40 == 28519 && v40[2] == 116)
              {
LABEL_195:
                v47 = 0x400000034;
LABEL_196:
                v58 = HIDWORD(v47);
                goto LABEL_253;
              }

              if (*v40 == 1918857319 && *(v40 + 2) == 27749)
              {
                v47 = 0x70000003BLL;
                goto LABEL_196;
              }

              if (*v40 != 1751607656 || *(v40 + 2) != 29285)
              {
                if (v41 != 6 && *v40 == 1751607656 && *(v40 + 3) == 1953719656)
                {
                  v47 = 0x80000003ELL;
                  goto LABEL_252;
                }

                goto LABEL_175;
              }

              LODWORD(v47) = 61;
            }

            v58 = 7;
LABEL_253:
            this[6].__r_.__value_.__r.__words[0] = &v40[v58 - 1];
            *a2 = v47;
            *(a2 + 8) = data;
            *(a2 + 16) = v58;
            goto LABEL_181;
          }

LABEL_222:
          if (*v40 == 0x707369645F746F67)
          {
            v47 = 0x900000035;
            goto LABEL_252;
          }

          goto LABEL_143;
        }

        if (*v40 == 0x685F6C6572707464 && v40[8] == 105)
        {
          LODWORD(v47) = 50;
        }

        else
        {
          if (*v40 != 0x6C5F6C6572707464 || v40[8] != 111)
          {
            goto LABEL_222;
          }

          LODWORD(v47) = 51;
        }

        v58 = 10;
        goto LABEL_253;
      case 38:
        v42 = this[6].__r_.__value_.__l.__data_;
        if (*v42 == 38)
        {
          this[6].__r_.__value_.__r.__words[0] = (v42 + 1);
          v27 = 33;
          goto LABEL_136;
        }

        v32 = 32;
        goto LABEL_179;
      case 39:
        llvm::AsmLexer::LexSingleQuote(a2, this);
        return;
      case 40:
        v32 = 17;
        goto LABEL_179;
      case 41:
        v32 = 18;
        goto LABEL_179;
      case 42:
        v32 = 23;
        goto LABEL_179;
      case 43:
        v32 = 12;
        goto LABEL_179;
      case 44:
        v32 = 25;
        goto LABEL_179;
      case 45:
        v44 = this[6].__r_.__value_.__l.__data_;
        if (*v44 == 62)
        {
          this[6].__r_.__value_.__r.__words[0] = (v44 + 1);
          v27 = 46;
          goto LABEL_136;
        }

        v32 = 13;
        goto LABEL_179;
      case 47:
        this[7].__r_.__value_.__s.__data_[1] = v21;
        llvm::AsmLexer::LexSlash(a2, this);
        return;
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
LABEL_36:
        llvm::AsmLexer::LexDigit(a2, this);
        return;
      case 58:
        v32 = 10;
        goto LABEL_179;
      case 60:
        v37 = this[6].__r_.__value_.__l.__data_;
        v38 = *v37;
        switch(v38)
        {
          case '>':
            this[6].__r_.__value_.__r.__words[0] = (v37 + 1);
            v27 = 41;
            goto LABEL_136;
          case '=':
            this[6].__r_.__value_.__r.__words[0] = (v37 + 1);
            v27 = 39;
            goto LABEL_136;
          case '<':
            this[6].__r_.__value_.__r.__words[0] = (v37 + 1);
            v27 = 40;
            goto LABEL_136;
        }

        v32 = 38;
        goto LABEL_179;
      case 61:
        v34 = this[6].__r_.__value_.__l.__data_;
        if (*v34 == 61)
        {
          this[6].__r_.__value_.__r.__words[0] = (v34 + 1);
          v27 = 28;
          goto LABEL_136;
        }

        v32 = 27;
        goto LABEL_179;
      case 62:
        v35 = this[6].__r_.__value_.__l.__data_;
        v36 = *v35;
        if (v36 == 61)
        {
          this[6].__r_.__value_.__r.__words[0] = (v35 + 1);
          v27 = 43;
          goto LABEL_136;
        }

        if (v36 == 62)
        {
          this[6].__r_.__value_.__r.__words[0] = (v35 + 1);
          v27 = 44;
          goto LABEL_136;
        }

        v32 = 42;
        goto LABEL_179;
      case 64:
        if (*(v18 + 183) == 1)
        {
          goto LABEL_125;
        }

        v32 = 45;
        goto LABEL_179;
      case 91:
        v32 = 19;
        goto LABEL_179;
      case 92:
        v32 = 16;
        goto LABEL_179;
      case 93:
        v32 = 20;
        goto LABEL_179;
      case 94:
        v32 = 31;
        goto LABEL_179;
      default:
        goto LABEL_116;
    }
  }

  if (v6 <= 124)
  {
    if (v6 == 123)
    {
      v32 = 21;
    }

    else
    {
      v26 = this[6].__r_.__value_.__l.__data_;
      if (*v26 == 124)
      {
        this[6].__r_.__value_.__r.__words[0] = (v26 + 1);
        v27 = 30;
LABEL_136:
        *a2 = v27;
        k = 2;
        goto LABEL_180;
      }

      v32 = 29;
    }

LABEL_179:
    *a2 = v32;
    k = 1;
LABEL_180:
    *(a2 + 8) = data;
    *(a2 + 16) = k;
    goto LABEL_181;
  }

  if (v6 == 125)
  {
    v32 = 22;
    goto LABEL_179;
  }

  if (v6 == 126)
  {
    v32 = 14;
    goto LABEL_179;
  }

LABEL_116:
  if (v6 <= 0x7F)
  {
    v45 = *(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x100;
  }

  else
  {
    v45 = __maskrune(v6, 0x100uLL);
  }

  if (v45 || v6 == 46 || v6 == 95 || *(this[5].__r_.__value_.__r.__words[2] + 181) == 1 && v6 == 63)
  {
LABEL_125:
    llvm::AsmLexer::LexIdentifier(a2, this);
  }

  else
  {
    v46 = this[4].__r_.__value_.__l.__data_;
    std::string::basic_string[abi:nn200100]<0>(&__p, "invalid character in input");
    llvm::AsmLexer::ReturnError(a2, this, v46, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

unint64_t llvm::SmallVectorImpl<llvm::AsmToken>::insert_one_impl<llvm::AsmToken const&>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*a1 + 40 * *(a1 + 2) == a2)
  {
    llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::push_back(a1, a3);
    return *a1 + 40 * *(a1 + 2) - 40;
  }

  else
  {
    v4 = a2 - *a1;
    v5 = llvm::SmallVectorTemplateCommon<llvm::AsmToken,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmToken,false>>(a1, a3, 1);
    v6 = *a1 + v4;
    v7 = *a1 + 40 * *(a1 + 2);
    *v7 = *(v7 - 40);
    *(v7 + 32) = *(v7 - 8);
    v8 = *(v7 - 16);
    *(v7 + 16) = *(v7 - 24);
    *(v7 + 24) = v8;
    *(v7 - 8) = 0;
    v9 = *a1;
    v10 = *(a1 + 2);
    v11 = *a1 + 40 * v10 - 40;
    if (v11 != v6)
    {
      do
      {
        v12 = v11 - 40;
        *v11 = *(v11 - 40);
        *(v11 + 16) = *(v11 - 24);
        llvm::APInt::operator=(v11 + 24, v11 - 16);
        v11 = v12;
      }

      while (v12 != v6);
      v10 = *(a1 + 2);
      v9 = *a1;
    }

    v13 = v10 + 1;
    *(a1 + 2) = v13;
    if (v5 < v9 + 40 * v13 && v5 >= v6)
    {
      v15 = 40;
    }

    else
    {
      v15 = 0;
    }

    v16 = v5 + v15;
    v17 = *v16;
    *(v6 + 16) = *(v16 + 16);
    *v6 = v17;
    llvm::APInt::operator=((v6 + 24), (v16 + 24));
  }

  return v6;
}

void *llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<llvm::AsmToken,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmToken,false>>(a1, a2, 1);
  v4 = *a1 + 40 * *(a1 + 8);
  v5 = result[2];
  *v4 = *result;
  *(v4 + 16) = v5;
  LODWORD(v5) = *(result + 8);
  *(v4 + 32) = v5;
  if (v5 > 0x40)
  {
    operator new[]();
  }

  *(v4 + 24) = result[3];
  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::AsmToken,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::AsmToken,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 40 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 40, &v6);
  llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = v3 + 40 * v4;
    do
    {
      v6 = *v3;
      *(a2 + 16) = *(v3 + 16);
      *a2 = v6;
      *(a2 + 32) = *(v3 + 32);
      *(a2 + 24) = *(v3 + 24);
      *(v3 + 32) = 0;
      a2 += 40;
      v3 += 40;
    }

    while (v3 != v5);
    v3 = *a1;
    v7 = *(a1 + 2);
  }

  else
  {
    v7 = 0;
  }

  return llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::destroy_range(v3, v3 + 40 * v7);
}

uint64_t llvm::SmallVectorTemplateBase<llvm::AsmToken,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*(v2 - 8) >= 0x41u)
      {
        result = *(v2 - 16);
        if (result)
        {
          result = MEMORY[0x277C69E10](result, 0x1000C8000313F17);
        }
      }

      v2 -= 40;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL llvm::MCParserUtils::isSymbolUsedInExpression(llvm::MCParserUtils *a1, unsigned __int8 *a2, const llvm::MCExpr *a3)
{
  while (1)
  {
    result = 0;
    v6 = *a2;
    if (v6 <= 1)
    {
      break;
    }

    if (v6 == 2)
    {
      v8 = *(a2 + 2);
      if ((*(v8 + 1) & 0x3840) != 0x1000)
      {
        return v8 == a1;
      }

      *(v8 + 1) |= 4uLL;
      v7 = v8 + 24;
    }

    else
    {
      if (v6 != 3)
      {
        return result;
      }

      v7 = a2 + 16;
    }

LABEL_10:
    a2 = *v7;
  }

  if (*a2)
  {
    return result;
  }

  if (!llvm::MCParserUtils::isSymbolUsedInExpression(a1, *(a2 + 2), a3))
  {
    v7 = a2 + 24;
    goto LABEL_10;
  }

  return 1;
}

void llvm::createMCAsmParser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 48) != 32 || *(a2 + 60) != 16)
  {
    operator new();
  }

  operator new();
}

unint64_t llvm::MCSymbol::getFragment(llvm::MCSymbol *this, unsigned int a2)
{
  result = *this & 0xFFFFFFFFFFFFFFF8;
  if (!result)
  {
    v4 = *(this + 1);
    if ((v4 & 0x3800) == 0x1000)
    {
      v5 = 4;
      if (!((v4 >> 2) & 1 | a2))
      {
        v5 = 0;
      }

      *(this + 1) = v5 | v4 & 0xFFFFFFFFFFFFD7FBLL;
      result = llvm::MCExpr::findAssociatedFragment(*(this + 3));
      *this = *this & 7 | result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::AsmParser(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  *(a1 + 32) = 0;
  v12 = (a1 + 32);
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0;
  *a1 = &unk_2883EFF08;
  llvm::AsmLexer::AsmLexer((a1 + 40), a5);
  *(a1 + 216) = a3;
  *(a1 + 224) = a4;
  *(a1 + 232) = a5;
  *(a1 + 240) = a2;
  if (a6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  *(a1 + 264) = 0u;
  *(a1 + 280) = v14;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 24;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) |= 1u;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = a1 + 496;
  *(a1 + 488) = 0x400000000;
  *(a1 + 720) = a1 + 736;
  *(a1 + 728) = 0x200000000;
  *(a1 + 776) = 0u;
  *(a1 + 768) = a1 + 776;
  *(a1 + 792) = -1;
  *(a1 + 796) = 0u;
  *(a1 + 812) = 0;
  *(a1 + 820) = 16;
  *(a1 + 840) = 0x1000000000;
  *(a1 + 824) = 0u;
  *v12 = 0;
  *(a1 + 248) = *(a2 + 48);
  *(a2 + 56) = a1;
  v15 = *(*a2 + 24 * (v14 - 1));
  v16 = *(v15 + 8);
  v17 = *(v15 + 16) - v16;
  *(a1 + 192) = v16;
  *(a1 + 200) = v17;
  *(a1 + 184) = v16;
  *(a1 + 136) = 0;
  *(a1 + 211) = 1;
  *(a4 + 288) = a1 + 272;
  v18 = *a3;
  if (*a3 <= 2)
  {
    switch(v18)
    {
      case 0:
        operator new();
      case 1:
        operator new();
      case 2:
        operator new();
    }
  }

  else if (v18 <= 4)
  {
    if (v18 == 3)
    {
      operator new();
    }

    if (v18 == 4)
    {
      llvm::report_fatal_error("Need to implement createSPIRVAsmParser for SPIRV format.", 1, v13);
    }
  }

  else
  {
    if (v18 == 5)
    {
      operator new();
    }

    if (v18 == 6)
    {
      operator new();
    }
  }

  (*(**(a1 + 264) + 16))(*(a1 + 264), a1);
  *(a1 + 420) = 0;
  return a1;
}

void anonymous namespace::HLASMAsmParser::~HLASMAsmParser(_anonymous_namespace_::HLASMAsmParser *this)
{
  *(*(this + 106) + 104) = 1;
}

{
  *(*(this + 106) + 104) = 1;

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::AsmParser::addDirectiveHandler(_DWORD *a1, uint64_t *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  result = llvm::StringMapImpl::LookupBucketFor((a1 + 80), a2, a3);
  v11 = *(a1 + 40);
  v12 = result;
  v13 = *(v11 + 8 * result);
  if (v13 == -8)
  {
    --a1[84];
  }

  else if (v13)
  {
    goto LABEL_14;
  }

  v14 = operator new(a3 + 25, 8uLL);
  v16 = v14;
  v17 = (v14 + 3);
  if (a3)
  {
    memcpy(v14 + 3, a2, a3);
  }

  v17[a3] = 0;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = a3;
  *(v11 + 8 * v12) = v16;
  ++a1[83];
  result = llvm::StringMapImpl::RehashTable((a1 + 80), v12, v15);
  for (i = (*(a1 + 40) + 8 * result); ; ++i)
  {
    v13 = *i;
    if (*i && v13 != -8)
    {
      break;
    }
  }

LABEL_14:
  *(v13 + 8) = a4;
  *(v13 + 16) = a5;
  return result;
}

void anonymous namespace::AsmParser::addAliasForDirective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v15[0] = a4;
  v15[1] = a5;
  llvm::StringRef::lower(v13, v15);
  if (v14 >= 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = v13[0];
  }

  if (v14 >= 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = v13[1];
  }

  llvm::StringRef::lower(__p, v16);
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v12 >= 0)
  {
    v10 = v12;
  }

  else
  {
    v10 = __p[1];
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

uint64_t anonymous namespace::AsmParser::getAssemblerDialect(_anonymous_namespace_::AsmParser *this)
{
  result = *(this + 198);
  if (result == -1)
  {
    return *(*(this + 29) + 176);
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::Run(_anonymous_namespace_::AsmParser *this, char a2, char a3)
{
  v69[64] = *MEMORY[0x277D85DE8];
  *(this + 182) = 0;
  v6 = (this + 776);
  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(this + 768, *(this + 97));
  *(this + 96) = v6;
  *v6 = 0u;
  if ((a2 & 1) == 0)
  {
    (*(**(this + 28) + 176))(*(this + 28), 0, *(*(this + 1) + 288));
  }

  (*(*this + 184))(this);
  *(this + 32) = 0;
  v7 = *(this + 71);
  v8 = *(this + 289);
  v68[0] = v69;
  v68[1] = 0x400000000;
  if (*((*(*this + 48))(this) + 1601) == 1)
  {
    v9 = (*(*this + 56))(this);
    v10 = *(v9 + 152);
    if (v10)
    {
      v11 = *(*(v9 + 144) + 32 * v10 - 32);
    }

    else
    {
      v11 = 0;
    }

    if (!*(v11 + 8))
    {
      v12 = (*(*this + 48))(this);
      v62[0] = "tmp";
      v64 = 259;
      TempSymbol = llvm::MCContext::createTempSymbol(v12, v62, 1);
      v14 = (*(*this + 56))(this);
      (*(*v14 + 192))(v14, TempSymbol, 0);
      *(v11 + 8) = TempSymbol;
    }

    v15 = (*(*this + 48))(this);
    v62[0] = v11;
    llvm::SetVector<llvm::MCSection *,std::vector<llvm::MCSection *>,llvm::DenseSet<llvm::MCSection *,llvm::DenseMapInfo<llvm::MCSection *,void>>>::insert((v15 + 1608), v62);
  }

  (*(**(this + 1) + 192))(*(this + 1));
  while (**(this + 6))
  {
    v62[0] = &v63;
    v62[1] = 0x800000000;
    v65 = -1;
    v66 = 0;
    v67 = v68;
    if ((*(*this + 280))(this, v62, 0))
    {
      if (!*(this + 6) && **(this + 6) == 1)
      {
        (*(*this + 184))(this);
      }

      llvm::MCAsmParser::printPendingErrors(this);
      if ((*((*(*this + 40))(this) + 107) & 1) == 0)
      {
        (*(*this + 224))(this);
      }
    }

    else
    {
      llvm::MCAsmParser::printPendingErrors(this);
    }

    llvm::SmallVector<std::unique_ptr<llvm::MCParsedAsmOperand>,8u>::~SmallVector(v62);
  }

  (*(**(this + 1) + 200))(*(this + 1));
  llvm::MCAsmParser::printPendingErrors(this);
  v16 = *(this + 1);
  v17 = (*(*this + 56))(this);
  (*(*v16 + 176))(v16, v17);
  if (*(this + 71) != v7 || *(this + 289) != (v8 & 1))
  {
    v18 = *(*((*(*this + 40))(this) + 8) + 8);
    v62[0] = "unmatched .ifs or .elses";
    v64 = 259;
    (*(*this + 176))(this, v18, v62, 0, 0);
  }

  v19 = (*(*this + 48))(this);
  if (*(v19 + 1576))
  {
    v24 = *(v19 + 1560);
    v25 = *(v24 + 144);
    if (v25)
    {
      v26 = 0;
      v27 = 72 * v25;
      v28 = (*(v24 + 136) + 23);
      do
      {
        v29 = *v28;
        if (v29 < 0)
        {
          v29 = *(v28 - 15);
        }

        if (v29)
        {
          v30 = 1;
        }

        else
        {
          v30 = v26 == 0;
        }

        if (!v30)
        {
          v31 = *(*((*(*this + 40))(this) + 8) + 8);
          v3 = v26 + (v3 & 0xFFFFFFFF00000000);
          v58[0] = "unassigned file number: ";
          v59 = v3;
          v61 = 2051;
          v62[0] = v58;
          v63 = " for .file directives";
          v64 = 770;
          (*(*this + 176))(this, v31, v62, 0, 0);
        }

        ++v26;
        v28 += 72;
        v27 -= 72;
      }

      while (v27);
    }
  }

  if ((a3 & 1) == 0)
  {
    if (*(*(this + 29) + 18) == 1)
    {
      v32 = (*(*this + 48))(this);
      v33 = *(v32 + 1152);
      if (v33)
      {
          ;
        }
      }

      else
      {
        i = *(v32 + 1144);
      }

      v36 = *(v32 + 1144) + 8 * v33;
      if (i != v36)
      {
        v37 = *i;
        do
        {
          v38 = *(v37 + 8);
          if ((*(v38 + 1) & 1) != 0 && (*(v38 + 1) & 0x3800) != 0x1000 && !llvm::MCSymbol::getFragment(v38, 1u))
          {
            v39 = (*(*this + 40))(this);
            if ((*v38 & 4) != 0)
            {
              v42 = *(v38 - 1);
              v43 = *v42;
              v40 = v42 + 2;
              v41 = v43;
            }

            else
            {
              v40 = 0;
              v41 = 0;
            }

            v44 = *(*(v39 + 8) + 8);
            v61 = 1283;
            v58[0] = "assembler local symbol '";
            v59 = v40;
            v60 = v41;
            v62[0] = v58;
            v63 = "' not defined";
            v64 = 770;
            (*(*this + 176))(this, v44, v62, 0, 0);
          }

          do
          {
            v45 = i[1];
            ++i;
            v37 = v45;
            if (v45)
            {
              v46 = v37 == -8;
            }

            else
            {
              v46 = 1;
            }
          }

          while (v46);
        }

        while (i != v36);
      }
    }

    v47 = *(this + 122);
    if (v47)
    {
      v48 = *(this + 60);
      v49 = 56 * v47;
      do
      {
        if (!llvm::MCSymbol::getFragment(v48[6], 1u))
        {
          v50 = *(v48 + 1);
          v51 = *(v48 + 3);
          *(this + 114) = *(v48 + 10);
          *(this + 424) = v50;
          *(this + 440) = v51;
          v52 = *v48;
          v62[0] = "directional label undefined";
          v64 = 259;
          (*(*this + 176))(this, v52, v62, 0, 0);
        }

        v48 += 7;
        v49 -= 56;
      }

      while (v49);
    }

    if ((*(this + 32) & 1) == 0)
    {
      v53 = *(this + 28);
      v54 = v53[2];
      if (v54)
      {
        (*(*v54 + 72))(v53[2]);
        v53 = *(this + 28);
      }

      llvm::MCStreamer::finish(v53, *(this + 17), v20, v21, v22, v23);
    }
  }

  if (*(this + 32))
  {
    v55 = 1;
  }

  else
  {
    v55 = *((*(*this + 48))(this) + 2056);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v55 & 1;
}

uint64_t anonymous namespace::AsmParser::setParsingMSInlineAsm(uint64_t this, char a2)
{
  *(this + 797) = a2;
  *(this + 149) = a2;
  return this;
}

BOOL anonymous namespace::AsmParser::discardLTOSymbol(uint64_t a1, void *a2, size_t a3)
{
  if (*(a1 + 784))
  {
    v5 = a1 + 776;
    v6 = *(a1 + 776);
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = a1 + 776;
    do
    {
      v15 = *(v6 + 32);
      v8 = llvm::StringRef::compare(&v15, a2, a3);
      if (v8 >= 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 28) & 8));
    }

    while (v6);
    if (v5 == v7 || (v9 = *(v7 + 32), v10 = *(v7 + 40), *&v15 = a2, *(&v15 + 1) = a3, (llvm::StringRef::compare(&v15, v9, v10) & 0x80000000) != 0))
    {
LABEL_9:
      v7 = v5;
    }

    v11 = v5 == v7;
  }

  else
  {
    v12 = *(a1 + 720);
    v13 = *(a1 + 728);
    v11 = llvm::SmallSet<llvm::StringRef,2u,std::less<llvm::StringRef>>::vfind(v12, v13, a2, a3) == v12 + 16 * v13;
  }

  return !v11;
}

uint64_t llvm::MCAsmParser::lookUpField()
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::AsmParser::parseMSInlineAsm(uint64_t a1, std::string *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v221[4] = *MEMORY[0x277D85DE8];
  v219 = v221;
  v220 = 0x400000000;
  v216 = v218;
  v217 = 0x400000000;
  v191 = &v193;
  v192 = xmmword_2750C3CD0;
  v188 = &v190;
  v189 = xmmword_2750C3CD0;
  v213 = &v215;
  v214 = 0x400000000;
  v210 = &v212;
  v211 = 0x400000000;
  __base = v209;
  __nel = 0x400000000;
  v204 = v206;
  v205 = 0x400000000;
  (*(*a1 + 184))(a1);
  v179 = a7;
  v172 = a5;
  v175 = a3;
  v176 = a4;
  if (**((*(*a1 + 40))(a1) + 8))
  {
    v180 = 0;
    while (1)
    {
      if ((**(a1 + 48) - 21) > 1)
      {
        __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__r.__words[2];
        __str.__r_.__value_.__l.__size_ = 0x800000000;
        v201 = -1;
        v202 = 0;
        v203 = &v204;
        if (((*(*a1 + 280))(a1, &__str, a10) & 1) != 0 || v202 == 1)
        {
          llvm::MCAsmParser::printPendingErrors(a1);
          llvm::SmallVector<std::unique_ptr<llvm::MCParsedAsmOperand>,8u>::~SmallVector(&__str);
          v168 = 1;
          goto LABEL_331;
        }

        if (v201 != -1)
        {
          v170 = a8;
          v171 = a6;
          v20 = *a8 - 32 * v201;
          v21 = __str.__r_.__value_.__r.__words[1];
          v177 = v20;
          if (LODWORD(__str.__r_.__value_.__r.__words[1]) == 1)
          {
            v22 = v20;
          }

          else
          {
            v23 = v20 + 34;
            v24 = 1;
            v22 = (*a8 - 32 * v201);
            v174 = __str.__r_.__value_.__r.__words[1];
            do
            {
              v25 = *(__str.__r_.__value_.__r.__words[0] + 8 * v24);
              if (!(*(*v25 + 48))(v25) || ((*(*v25 + 96))(v25) & 1) != 0 || (v26 = *(a1 + 8), v27 = (*(*v25 + 56))(v25), ((*(*v26 + 80))(v26, v27) & 1) != 0))
              {
                v28 = (*(*v25 + 16))(v25);
                if (v29)
                {
                  v30 = v28;
                  v31 = v29;
                  v32 = (*(*v25 + 24))(v25);
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(v25 + 39);
                    if (v34 >= 0)
                    {
                      v35 = (v25 + 16);
                    }

                    else
                    {
                      v35 = *(v25 + 16);
                    }

                    if (v34 >= 0)
                    {
                      v36 = *(v25 + 39);
                    }

                    else
                    {
                      v36 = *(v25 + 24);
                    }

                    if ((*(*v25 + 40))(v25))
                    {
                      if ((*(*v25 + 104))(v25))
                      {
                        v35 = "r";
                      }

                      else
                      {
                        v35 = "i";
                      }

                      v36 = 1;
                    }

                    v178 = v30;
                    if (v24 == 1)
                    {
                      v37 = (*(v22 + 18) >> 4) & 1;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    v38 = (*(*v25 + 72))(v25);
                    if (v37)
                    {
                      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v216, v33);
                      v39 = (*(*v25 + 96))(v25);
                      llvm::SmallVectorTemplateBase<char,true>::push_back(&v188, v39);
                      v185 = 1283;
                      __dst = "=";
                      v183 = v35;
                      v184 = v36;
                      llvm::Twine::str(&__dst, __p);
                      v40 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(&v210, __p, 1);
                      v41 = &v210[3 * v211];
                      v42 = *v40;
                      v41[2] = *(v40 + 16);
                      *v41 = v42;
                      *(v40 + 8) = 0;
                      *(v40 + 16) = 0;
                      *v40 = 0;
                      LODWORD(v211) = v211 + 1;
                      if (v187 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      ++v180;
                      llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,int,BOOL &>(&v204, 5, v178, v31, 0, v38);
                      a7 = v179;
                      v22 = v177;
                      v21 = v174;
                    }

                    else
                    {
                      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v219, v33);
                      v43 = (*(*v25 + 96))(v25);
                      llvm::SmallVectorTemplateBase<char,true>::push_back(&v191, v43);
                      if (v35)
                      {
                        v22 = v177;
                        if (v36 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                        }

                        if (v36 >= 0x17)
                        {
                          operator new();
                        }

                        HIBYTE(v183) = v36;
                        if (v36)
                        {
                          memmove(&__dst, v35, v36);
                        }

                        v21 = v174;
                        *(&__dst + v36) = 0;
                      }

                      else
                      {
                        __dst = 0;
                        v182 = 0;
                        v183 = 0;
                        v22 = v177;
                        v21 = v174;
                      }

                      v45 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(&v213, &__dst, 1);
                      v46 = &v213[3 * v214];
                      v47 = *v45;
                      v46[2] = *(v45 + 16);
                      *v46 = v47;
                      *(v45 + 8) = 0;
                      *(v45 + 16) = 0;
                      *v45 = 0;
                      LODWORD(v214) = v214 + 1;
                      a7 = v179;
                      if (SHIBYTE(v183) < 0)
                      {
                        operator delete(__dst);
                      }

                      if ((*(v23 + 32 * *v22 + 6 * v22[6]) & 8) != 0)
                      {
                        v48 = 3;
                      }

                      else
                      {
                        v48 = 4;
                      }

                      llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,int,BOOL &>(&v204, v48, v178, v31, 0, v38);
                    }
                  }
                }
              }

              else if (*(v22 + 4) && *(v25 + 8) < *(v22 + 4))
              {
                v44 = (*(*v25 + 56))(v25);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__base, v44);
              }

              ++v24;
              v23 += 6;
            }

            while (v21 != v24);
          }

          v49 = *v22;
          v50 = v22[5];
          v51 = *(v22 + 8);
          v52 = *(v22 + 9);
          v53 = __nel;
          v54 = __nel + v52;
          a6 = v171;
          if (v54 > HIDWORD(__nel))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__base, v209, v54, 4);
            v53 = __nel;
          }

          a3 = v175;
          a4 = v176;
          if (v52)
          {
            v55 = &v177[16 * v49 + 16 + v50 + v51];
            v56 = __base + 4 * v53;
            v57 = 2 * v52;
            do
            {
              v58 = *v55++;
              *v56++ = v58;
              v57 -= 2;
            }

            while (v57);
            LODWORD(v53) = __nel;
          }

          LODWORD(__nel) = v53 + v52;
          a8 = v170;
        }

        llvm::SmallVector<std::unique_ptr<llvm::MCParsedAsmOperand>,8u>::~SmallVector(&__str);
      }

      else
      {
        v17 = *(a1 + 136);
        (*(*a1 + 184))(a1);
        if (**(a1 + 48) == 9)
        {
          (*(*a1 + 184))(a1);
        }

        v18 = *(a1 + 136) - v17;
        if (v205 >= HIDWORD(v205))
        {
          llvm::SmallVectorTemplateBase<llvm::AsmRewrite,true>::growAndEmplaceBack<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long &>(&v204, 9, v17, v18);
        }

        else
        {
          v19 = v204 + 128 * v205;
          *v19 = 9;
          *(v19 + 1) = v17;
          *(v19 + 4) = v18;
          v19[20] = 0;
          *(v19 + 56) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 13) = 0;
          *(v19 + 4) = 0;
          *(v19 + 5) = 0;
          *(v19 + 3) = 0;
          v19[48] = 0;
          *(v19 + 28) = 1;
          v19[120] = 0;
          LODWORD(v205) = v205 + 1;
        }
      }

      if (!**((*(*a1 + 40))(a1) + 8))
      {
        goto LABEL_68;
      }
    }
  }

  v180 = 0;
LABEL_68:
  *a3 = v217;
  *a4 = v220;
  v59 = __nel;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 4uLL, llvm::array_pod_sort_comparator<unsigned int>);
    v59 = __nel;
  }

  v60 = __base;
  v61 = __base + 4 * v59;
  if (v59)
  {
    v62 = 4 * v59 - 8;
    v63 = __base;
    while (1)
    {
      v64 = v63;
      v63 += 4;
      if (v63 == v61)
      {
        break;
      }

      v65 = v62;
      v66 = *v64;
      v62 -= 4;
      if (*v64 == v64[1])
      {
        if (v64 + 2 != v61)
        {
          v67 = 4;
          do
          {
            v68 = v66;
            v66 = *&v63[v67];
            if (v68 != v66)
            {
              v64[1] = v66;
              ++v64;
            }

            v67 += 4;
            v65 -= 4;
          }

          while (v65);
        }

        v61 = (v64 + 1);
        break;
      }
    }
  }

  v69 = (v61 - v60) >> 2;
  LODWORD(__nel) = v69;
  v70 = v69;
  memset(&__str, 0, sizeof(__str));
  if (v69 <= *(a7 + 12))
  {
    v82 = *(a7 + 8);
    if (v82 >= v69)
    {
      v83 = v69;
    }

    else
    {
      v83 = *(a7 + 8);
    }

    if (v83)
    {
      v84 = *a7;
      v85 = -v83;
      do
      {
        std::string::operator=(v84++, &__str);
        v86 = __CFADD__(v85++, 1);
      }

      while (!v86);
      v82 = *(a7 + 8);
    }

    v87 = v82 - v69;
    if (v82 >= v69)
    {
      if (v82 > v69)
      {
        v90 = 3 * v82;
        v91 = *a7 + 24 * v82 - 1;
        v92 = 24 * v69 - 8 * v90;
        v93 = v91;
        do
        {
          v94 = *v93;
          v93 -= 24;
          if (v94 < 0)
          {
            operator delete(*(v91 - 23));
          }

          v91 = v93;
          v92 += 24;
        }

        while (v92);
      }
    }

    else
    {
      v88 = (*a7 + 24 * v82);
      do
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v88, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v89 = *&__str.__r_.__value_.__l.__data_;
          v88->__r_.__value_.__r.__words[2] = __str.__r_.__value_.__r.__words[2];
          *&v88->__r_.__value_.__l.__data_ = v89;
        }

        ++v88;
        v86 = __CFADD__(v87++, 1);
      }

      while (!v86);
    }

    *(a7 + 8) = v69;
  }

  else
  {
    __dst = 0;
    v71 = (a7 + 16);
    v72 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a7, (a7 + 16), v69, 24, &__dst);
    v73 = v72;
    do
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v73, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v74 = *&__str.__r_.__value_.__l.__data_;
        v73->__r_.__value_.__r.__words[2] = __str.__r_.__value_.__r.__words[2];
        *&v73->__r_.__value_.__l.__data_ = v74;
      }

      ++v73;
      --v70;
    }

    while (v70);
    v75 = *v179;
    v76 = *(v179 + 8);
    if (v76)
    {
      v77 = v75 + 24 * v76 - 1;
      v78 = -24 * v76;
      v79 = v77;
      do
      {
        v80 = *v79;
        v79 -= 24;
        if (v80 < 0)
        {
          operator delete(*(v77 - 23));
        }

        v77 = v79;
        v78 += 24;
      }

      while (v78);
      v75 = *v179;
    }

    v81 = __dst;
    if (v75 != v71)
    {
      free(v75);
    }

    *v179 = v72;
    *(v179 + 8) = v69;
    *(v179 + 12) = v81;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (__nel)
  {
    v95 = 0;
    v96 = 0;
    v97 = 24 * __nel;
    do
    {
      v98 = (*v179 + v96);
      LODWORD(__str.__r_.__value_.__r.__words[1]) = 0;
      v197 = 0;
      v198 = 0;
      v199 = 1;
      v195 = 0;
      v196 = 0;
      __str.__r_.__value_.__r.__words[2] = 0;
      __str.__r_.__value_.__r.__words[0] = &unk_2883EB8F0;
      p_dst = v98;
      llvm::raw_ostream::SetUnbuffered(&__str);
      (*(*a9 + 40))(a9, &__str, *(__base + v95));
      llvm::raw_ostream::~raw_ostream(&__str);
      v96 += 24;
      v95 += 4;
    }

    while (v97 != v96);
  }

  if (*v175 | *v176)
  {
    v99 = (*v176 + *v175);
    v100 = *(v172 + 8);
    if (v100 != v99)
    {
      if (v100 <= v99)
      {
        if (*(v172 + 12) < v99)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v172, (v172 + 16), v99, 16);
          v100 = *(v172 + 8);
        }

        if (v100 != v99)
        {
          v101 = *v172 + 16 * v99;
          v102 = *v172 + 16 * v100;
          do
          {
            *v102 = 0;
            *(v102 + 8) = 0;
            v102 += 16;
          }

          while (v102 != v101);
        }
      }

      *(v172 + 8) = v99;
    }

    v103 = *(a6 + 8);
    if (v103 != v99)
    {
      if (v103 <= v99)
      {
        if (*(a6 + 12) < v99)
        {
          llvm::SmallVectorTemplateBase<std::string,false>::grow(a6, v99);
          v103 = *(a6 + 8);
        }

        if (v99 != v103)
        {
          bzero((*a6 + 24 * v103), 24 * ((24 * (v99 - v103) - 24) / 0x18) + 24);
        }
      }

      else
      {
        v104 = 3 * v103;
        v105 = *a6 + 24 * v103 - 1;
        v106 = 24 * v99 - 8 * v104;
        v107 = v105;
        do
        {
          v108 = *v107;
          v107 -= 24;
          if (v108 < 0)
          {
            operator delete(*(v105 - 23));
          }

          v105 = v107;
          v106 += 24;
        }

        while (v106);
      }

      *(a6 + 8) = v99;
    }

    LODWORD(v109) = *v175;
    if (*v175)
    {
      v110 = 0;
      v111 = 0;
      v112 = 0;
      do
      {
        v113 = *(v188 + v112);
        v114 = *v172 + v110;
        *v114 = v216[v112];
        *(v114 + 8) = v113;
        std::string::operator=((*a6 + v111 * 8), &v210[v111]);
        ++v112;
        v109 = *v175;
        v111 += 3;
        v110 += 16;
      }

      while (v112 < v109);
    }

    if (*v176)
    {
      v115 = 0;
      v116 = 0;
      v117 = v109;
      do
      {
        v118 = *(v191 + v116);
        v119 = *v172 + 16 * (v117 + v116);
        *v119 = v219[v116];
        *(v119 + 8) = v118;
        std::string::operator=((*a6 + 24 * (v117 + v116++)), &v213[v115]);
        v115 += 3;
      }

      while (v116 < *v176);
    }
  }

  __dst = 0;
  v182 = 0;
  v183 = 0;
  LODWORD(__str.__r_.__value_.__r.__words[1]) = 0;
  v197 = 0;
  v198 = 0;
  v199 = 1;
  v195 = 0;
  v196 = 0;
  __str.__r_.__value_.__r.__words[2] = 0;
  __str.__r_.__value_.__r.__words[0] = &unk_2883EB8F0;
  p_dst = &__dst;
  llvm::raw_ostream::SetUnbuffered(&__str);
  v120 = ***(a1 + 240);
  v121 = *(v120 + 8);
  v122 = *(v120 + 16);
  v123 = v205;
  if (v205 >= 2)
  {
    qsort(v204, v205, 0x80uLL, rewritesSort);
    v123 = v205;
  }

  if (v123)
  {
    v124 = 0;
    for (i = v204; i != v204 + 128 * v205; i += 128)
    {
      if ((i[20] & 1) == 0)
      {
        v126 = *i;
        v127 = *(i + 1);
        if (v127 != v121)
        {
          llvm::raw_ostream::operator<<(&__str, v121, (v127 - v121));
        }

        v128 = 0;
        if (v126 <= 4)
        {
          if (v126 <= 1)
          {
            if (!v126)
            {
              v132 = v196;
              if ((v195 - v196) > 5)
              {
                *(v196 + 2) = 28263;
                *v132 = 1768710446;
                v196 += 6;
              }

              else
              {
                llvm::raw_ostream::write(&__str, ".align", 6uLL);
              }

              if ((*(*((*(*a1 + 48))(a1) + 144) + 339) & 1) == 0)
              {
                v138 = *(i + 3);
                v139 = v196;
                if (v196 >= v195)
                {
                  llvm::raw_ostream::write(&__str, 32);
                }

                else
                {
                  ++v196;
                  *v139 = 32;
                }

                write_unsigned<unsigned long>(&__str, v138, 0, 0, 0);
                v128 = 3;
                if (v138 >= 7)
                {
                  v128 = 4;
                }

                if (v138 < 4)
                {
                  v128 = 2;
                }

                goto LABEL_322;
              }

              goto LABEL_307;
            }

            if (v126 != 1)
            {
              goto LABEL_322;
            }

            v130 = v196;
            if ((v195 - v196) <= 4)
            {
              v131 = ".even";
              goto LABEL_188;
            }

            v128 = 0;
            v196[4] = 110;
            v140 = 1702257966;
          }

          else
          {
            if (v126 != 2)
            {
              if (v126 == 3 || i[120] == 1)
              {
                if ((v195 - v196) > 1)
                {
                  *v196 = 31524;
                  v196 += 2;
                }

                else
                {
                  llvm::raw_ostream::write(&__str, "${", 2uLL);
                }

                v136 = v180 + 1;
                write_unsigned<unsigned long>(&__str, v180, 0, 0, 0);
                v137 = v196;
                if ((v195 - v196) <= 2)
                {
                  llvm::raw_ostream::write(&__str, ":P}", 3uLL);
                  goto LABEL_227;
                }

                v128 = 0;
                v196[2] = 125;
                *v137 = 20538;
                v196 += 3;
              }

              else
              {
                v141 = v196;
                if (v196 >= v195)
                {
                  llvm::raw_ostream::write(&__str, 36);
                }

                else
                {
                  ++v196;
                  *v141 = 36;
                }

                v136 = v180 + 1;
                write_unsigned<unsigned long>(&__str, v180, 0, 0, 0);
LABEL_227:
                v128 = 0;
              }

              v180 = v136;
LABEL_322:
              v121 = (v127 + *(i + 4) + v128);
              continue;
            }

            v130 = v196;
            if ((v195 - v196) <= 4)
            {
              v131 = ".byte";
LABEL_188:
              v135 = 5;
LABEL_306:
              llvm::raw_ostream::write(&__str, v131, v135);
LABEL_307:
              v128 = 0;
              goto LABEL_322;
            }

            v128 = 0;
            v196[4] = 101;
            v140 = 1954112046;
          }

          *v130 = v140;
          v142 = v196 + 5;
          goto LABEL_321;
        }

        if (v126 <= 7)
        {
          if (v126 != 5)
          {
            if (v126 != 6)
            {
              v129 = llvm::raw_ostream::operator<<(&__str, *(*(*(a1 + 216) + 144) + 104), *(*(*(a1 + 216) + 144) + 112));
              llvm::raw_ostream::operator<<(v129, *(i + 4), *(i + 5));
              goto LABEL_307;
            }

            v128 = 0;
            v133 = *(i + 3);
            if (v133 > 63)
            {
              if (v133 <= 127)
              {
                if (v133 == 64)
                {
                  v134 = v196;
                  if ((v195 - v196) <= 9)
                  {
                    v131 = "qword ptr ";
                    goto LABEL_278;
                  }

                  v128 = 0;
                  *(v196 + 4) = 8306;
                  v166 = "qword ptr ";
                }

                else
                {
                  if (v133 != 80)
                  {
                    goto LABEL_322;
                  }

                  v134 = v196;
                  if ((v195 - v196) <= 9)
                  {
                    v131 = "xword ptr ";
LABEL_278:
                    v135 = 10;
                    goto LABEL_306;
                  }

                  v128 = 0;
                  *(v196 + 4) = 8306;
                  v166 = "xword ptr ";
                }

                goto LABEL_318;
              }

              if (v133 == 128)
              {
                v144 = v196;
                if ((v195 - v196) <= 0xB)
                {
                  v131 = "xmmword ptr ";
                  goto LABEL_281;
                }

                v128 = 0;
                *(v196 + 2) = 544371824;
                v167 = "xmmword ptr ";
              }

              else
              {
                if (v133 != 256)
                {
                  goto LABEL_322;
                }

                v144 = v196;
                if ((v195 - v196) <= 0xB)
                {
                  v131 = "ymmword ptr ";
LABEL_281:
                  v135 = 12;
                  goto LABEL_306;
                }

                v128 = 0;
                *(v196 + 2) = 544371824;
                v167 = "ymmword ptr ";
              }

              *v144 = *v167;
              v142 = v196 + 12;
              goto LABEL_321;
            }

            switch(v133)
            {
              case 8:
                v159 = v196;
                if ((v195 - v196) <= 8)
                {
                  v131 = "byte ptr ";
LABEL_284:
                  v135 = 9;
                  goto LABEL_306;
                }

                v128 = 0;
                v196[8] = 32;
                v165 = "byte ptr ";
                break;
              case 16:
                v159 = v196;
                if ((v195 - v196) <= 8)
                {
                  v131 = "word ptr ";
                  goto LABEL_284;
                }

                v128 = 0;
                v196[8] = 32;
                v165 = "word ptr ";
                break;
              case 32:
                v134 = v196;
                if ((v195 - v196) <= 9)
                {
                  v131 = "dword ptr ";
                  goto LABEL_278;
                }

                v128 = 0;
                *(v196 + 4) = 8306;
                v166 = "dword ptr ";
LABEL_318:
                *v134 = *v166;
                v142 = v196 + 10;
                goto LABEL_321;
              default:
                goto LABEL_322;
            }

            *v159 = *v165;
            v142 = v196 + 9;
            goto LABEL_321;
          }

          if (i[120] == 1)
          {
            if ((v195 - v196) > 1)
            {
              *v196 = 31524;
              v196 += 2;
            }

            else
            {
              llvm::raw_ostream::write(&__str, "${", 2uLL);
            }

            v145 = v124 + 1;
            write_unsigned<unsigned long>(&__str, v124, 0, 0, 0);
            v146 = v196;
            if ((v195 - v196) <= 2)
            {
              llvm::raw_ostream::write(&__str, ":P}", 3uLL);
              goto LABEL_234;
            }

            v128 = 0;
            v196[2] = 125;
            *v146 = 20538;
            v196 += 3;
          }

          else
          {
            v143 = v196;
            if (v196 >= v195)
            {
              llvm::raw_ostream::write(&__str, 36);
            }

            else
            {
              ++v196;
              *v143 = 36;
            }

            v145 = v124 + 1;
            write_unsigned<unsigned long>(&__str, v124, 0, 0, 0);
LABEL_234:
            v128 = 0;
          }

          v124 = v145;
          goto LABEL_322;
        }

        if (v126 == 8)
        {
          if ((v195 - v196) <= 1)
          {
            v131 = "\n\t";
            v135 = 2;
            goto LABEL_306;
          }

          v128 = 0;
          *v196 = 2314;
          v142 = v196 + 2;
          goto LABEL_321;
        }

        if (v126 == 10)
        {
          if (i[48] == 1)
          {
            if (v195 == v196)
            {
              llvm::raw_ostream::write(&__str, "[", 1uLL);
            }

            else
            {
              *v196++ = 91;
            }
          }

          v147 = *(i + 9);
          if (v147)
          {
            llvm::raw_ostream::operator<<(&__str, *(i + 8), v147);
          }

          if (*(i + 11))
          {
            if (*(i + 9))
            {
              v148 = 3;
            }

            else
            {
              v148 = 0;
            }

            if (*(i + 9))
            {
              v149 = " + ";
            }

            else
            {
              v149 = "";
            }

            v150 = llvm::raw_ostream::operator<<(&__str, v149, v148);
            llvm::raw_ostream::operator<<(v150, *(i + 10), *(i + 11));
          }

          if (*(i + 28) >= 2u)
          {
            v151 = v196;
            if ((v195 - v196) > 4)
            {
              v196[4] = 36;
              *v151 = 606087712;
              v196 += 5;
            }

            else
            {
              llvm::raw_ostream::write(&__str, " * $$", 5uLL);
            }

            write_unsigned<unsigned long>(&__str, *(i + 28), 0, 0, 0);
          }

          v152 = *(i + 13);
          if (v152)
          {
            if (*(i + 9) || *(i + 11))
            {
              v153 = v196;
              if ((v195 - v196) > 2)
              {
                v196[2] = 32;
                *v153 = 11040;
                v196 += 3;
              }

              else
              {
                llvm::raw_ostream::write(&__str, " + ", 3uLL);
              }

              v152 = *(i + 13);
            }

            v154 = *(i + 12);
            v155 = v204 + 128 * v205;
            v156 = i;
            if (i != v155)
            {
              v156 = i;
              do
              {
                if (*(v156 + 1) == v154 && v152 == *(v156 + 4) && (*v156 - 3) < 2)
                {
                  break;
                }

                v156 += 128;
              }

              while (v156 != v155);
            }

            if (v156 == v155)
            {
              v157 = v196;
              if ((v195 - v196) > 6)
              {
                *(v196 + 3) = 544499059;
                *v157 = 1936090735;
                v196 += 7;
              }

              else
              {
                llvm::raw_ostream::write(&__str, "offset ", 7uLL);
              }

              llvm::raw_ostream::operator<<(&__str, v154, v152);
            }

            else if (*v156 == 3)
            {
              if ((v195 - v196) > 1)
              {
                *v196 = 31524;
                v196 += 2;
              }

              else
              {
                llvm::raw_ostream::write(&__str, "${", 2uLL);
              }

              write_unsigned<unsigned long>(&__str, v180, 0, 0, 0);
              v160 = v196;
              if ((v195 - v196) > 2)
              {
                v196[2] = 125;
                *v160 = 20538;
                v196 += 3;
              }

              else
              {
                llvm::raw_ostream::write(&__str, ":P}", 3uLL);
              }

              ++v180;
              v156[20] = 1;
            }

            else
            {
              v158 = v196;
              if (v196 >= v195)
              {
                llvm::raw_ostream::write(&__str, 36);
              }

              else
              {
                ++v196;
                *v158 = 36;
              }

              write_unsigned<unsigned long>(&__str, v180, 0, 0, 0);
              v156[20] = 1;
              ++v180;
            }
          }

          v161 = *(i + 9);
          if (*(i + 7))
          {
            if (v161 || *(i + 11))
            {
              v162 = " + $$";
            }

            else if (*(i + 13))
            {
              v162 = " + $$";
            }

            else
            {
              v162 = "$$";
            }

LABEL_298:
            v163 = strlen(v162);
            v164 = llvm::raw_ostream::operator<<(&__str, v162, v163);
            llvm::write_integer(v164, *(i + 7), 0, 0);
          }

          else if (!v161 && !*(i + 11) && !*(i + 13))
          {
            v162 = "$$";
            goto LABEL_298;
          }

          if (i[48] != 1)
          {
            goto LABEL_307;
          }

          if (v195 == v196)
          {
            v131 = "]";
            v135 = 1;
            goto LABEL_306;
          }

          v128 = 0;
          *v196 = 93;
          v142 = v196 + 1;
LABEL_321:
          v196 = v142;
          goto LABEL_322;
        }

        if (v126 != 9)
        {
          goto LABEL_322;
        }

        v121 = (v127 + *(i + 4));
      }
    }
  }

  if (v121 != v122)
  {
    llvm::raw_ostream::operator<<(&__str, v121, v122 - v121);
  }

  std::string::operator=(a2, p_dst);
  llvm::raw_ostream::~raw_ostream(&__str);
  if (SHIBYTE(v183) < 0)
  {
    operator delete(__dst);
  }

  v168 = 0;
LABEL_331:
  if (v204 != v206)
  {
    free(v204);
  }

  if (__base != v209)
  {
    free(__base);
  }

  llvm::SmallVector<std::string,2u>::~SmallVector(&v210);
  llvm::SmallVector<std::string,2u>::~SmallVector(&v213);
  if (v188 != &v190)
  {
    free(v188);
  }

  if (v191 != &v193)
  {
    free(v191);
  }

  if (v216 != v218)
  {
    free(v216);
  }

  if (v219 != v221)
  {
    free(v219);
  }

  return v168;
}

void anonymous namespace::AsmParser::Note(uint64_t **a1, char *a2, llvm::Twine *a3, unint64_t a4, unint64_t a5)
{
  llvm::MCAsmParser::printPendingErrors(a1);
  v14[0] = a4;
  v14[1] = a5;
  v10 = a1[30];
  v12 = llvm::errs(v11);
  llvm::SourceMgr::PrintMessage(v10, v12, a2, 3, a3, v14, 1, v13, 0, 0, 1);
}

uint64_t anonymous namespace::AsmParser::Warning(_anonymous_namespace_::AsmParser *a1, char *a2, llvm::Twine *a3, uint64_t a4, uint64_t a5)
{
  llvm::MCTargetOptions::MCTargetOptions(v17, *(a1 + 1) + 128);
  v10 = v17[0];
  v27 = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v27);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
    if ((v10 & 8) != 0)
    {
      return 0;
    }
  }

  else if ((v10 & 8) != 0)
  {
    return 0;
  }

  llvm::MCTargetOptions::MCTargetOptions(v17, *(a1 + 1) + 128);
  v11 = v17[0];
  v27 = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v27);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
    if ((v11 & 4) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 4) == 0)
  {
LABEL_19:
    v17[0] = a4;
    v17[1] = a5;
    v13 = *(a1 + 30);
    v14 = llvm::errs(v12);
    llvm::SourceMgr::PrintMessage(v13, v14, a2, 1, a3, v17, 1, v15, 0, 0, 1);
    return 0;
  }

  return llvm::MCAsmParser::Error(a1, a2, a3, a4, a5);
}

uint64_t anonymous namespace::AsmParser::printError(uint64_t a1, char *a2, llvm::Twine *a3, unint64_t a4, unint64_t a5)
{
  *(a1 + 32) = 1;
  v12[0] = a4;
  v12[1] = a5;
  v8 = *(a1 + 240);
  v9 = llvm::errs(a1);
  llvm::SourceMgr::PrintMessage(v8, v9, a2, 0, a3, v12, 1, v10, 0, 0, 1);
  return 1;
}

uint64_t anonymous namespace::AsmParser::Lex(_anonymous_namespace_::AsmParser *this)
{
  if (**(this + 6) == 1)
  {
    v2 = *(this + 13);
    v14 = 260;
    v12 = this + 112;
    llvm::MCAsmParser::Error(this, v2, &v12, 0, 0);
  }

  if (**((*(*this + 40))(this) + 8) == 9 && *(*((*(*this + 40))(this) + 8) + 16) && **(*((*(*this + 40))(this) + 8) + 8) != 10 && **(*((*(*this + 40))(this) + 8) + 8) != 13 && *(*(this + 29) + 482) == 1)
  {
    v3 = *(this + 28);
    v4 = *((*(*this + 40))(this) + 8);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    v14 = 261;
    v12 = v6;
    v13 = v5;
    (*(*v3 + 136))(v3, &v12);
  }

  while (1)
  {
    result = llvm::MCAsmLexer::Lex((this + 40));
    if (*result != 7)
    {
      break;
    }

    if (*(*(this + 29) + 482) == 1)
    {
      v8 = *(this + 28);
      v9 = *(result + 8);
      v10 = *(result + 16);
      v14 = 261;
      v12 = v9;
      v13 = v10;
      (*(*v8 + 136))(v8, &v12);
    }
  }

  if (!*result)
  {
    v11 = *(**(this + 30) + 24 * (*(this + 70) - 1) + 16);
    if (v11)
    {
      return (*(*this + 184))(this);
    }
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::parseIdentifier(_anonymous_namespace_::AsmParser *this, llvm::StringRef *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = **(this + 6);
  if ((v4 - 2) < 2)
  {
    v7 = *((*(*this + 40))(this) + 8);
    if (*v7 == 2)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
    }

    else
    {
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = v10 - 1;
      v12 = v10 != 0;
      if (v10)
      {
        ++v8;
      }

      if (v11 < v12)
      {
        v11 = 1;
      }

      if (v11 >= v10)
      {
        v11 = v10;
      }

      v9 = v11 - v12;
    }

    *a2 = v8;
    *(a2 + 1) = v9;
    (*(*this + 184))(this);
    return 0;
  }

  else if (v4 == 45 || v4 == 26)
  {
    v6 = *((*(*this + 40))(this) + 96);
    v17 = 0;
    v18 = 0;
    v13 = 1;
    v20 = 1;
    v19 = 0;
    llvm::AsmLexer::peekTokens(this + 40, &v16, 1, 0);
    if (v16 == 4 || v16 == 2)
    {
      if (v6 + 1 == v17)
      {
        llvm::MCAsmLexer::Lex((this + 40));
        v14 = *(*((*(*this + 40))(this) + 8) + 16) + 1;
        *a2 = v6;
        *(a2 + 1) = v14;
        (*(*this + 184))(this);
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }
    }

    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x277C69E10](v19, 0x1000C8000313F17);
    }
  }

  else
  {
    return 1;
  }

  return v13;
}

uint64_t anonymous namespace::AsmParser::parseStringToEndOfStatement(_anonymous_namespace_::AsmParser *this)
{
  v2 = (this + 40);
  v3 = *(*((*(*this + 40))(this) + 8) + 8);
  while (1)
  {
    v4 = **(this + 6);
    if (!v4 || v4 == 9)
    {
      break;
    }

    llvm::MCAsmLexer::Lex(v2);
  }

  (*(*this + 40))(this);
  return v3;
}

uint64_t anonymous namespace::AsmParser::parseEscapedString(llvm::MCAsmParser *a1, std::string *a2)
{
  v4 = **((*(*a1 + 40))(a1) + 8);
  v23[0] = "expected string";
  v24 = 259;
  llvm::MCAsmParser::check(a1, v4 != 3, v23);
  if (v4 != 3)
  {
    return 1;
  }

  MEMORY[0x277C69AB0](a2, "");
  v5 = (*(*a1 + 40))(a1);
  v6 = *(*(v5 + 8) + 16);
  v7 = v6 != 0;
  if (v6)
  {
    v8 = *(*(v5 + 8) + 8) + 1;
  }

  else
  {
    v8 = *(*(v5 + 8) + 8);
  }

  if (v6 - 1 < v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 - 1;
  }

  if (v9 >= v6)
  {
    v9 = *(*(v5 + 8) + 16);
  }

  v10 = v9 - v7;
  if (v9 == v7)
  {
LABEL_45:
    (*(*a1 + 184))(a1);
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v8 + v11);
    if (v12 != 92)
    {
      goto LABEL_44;
    }

    v13 = v11 + 1;
    if (v11 + 1 == v10)
    {
      v20 = "unexpected backslash at end of string";
      goto LABEL_48;
    }

    v12 = *(v8 + v13);
    if ((v12 | 0x20) == 0x78)
    {
      v14 = v11 + 2;
      if (v10 <= v14 || (v15 = llvm::hexDigitValue(char)::LUT[*(v8 + v14)], v15 == 0xFFFF))
      {
        v20 = "invalid hexadecimal escape sequence";
LABEL_48:
        v23[0] = v20;
        v24 = 259;
        v21 = (*(*a1 + 40))(a1);
        llvm::MCAsmParser::Error(a1, *(v21 + 96), v23, 0, 0);
        return 1;
      }

      LOBYTE(v12) = 0;
      do
      {
        v11 = v14;
        LOBYTE(v12) = v15 + 16 * v12;
        v14 = (v14 + 1);
        if (v10 <= v14)
        {
          break;
        }

        v15 = llvm::hexDigitValue(char)::LUT[*(v8 + v14)];
      }

      while (v15 != 0xFFFF);
      goto LABEL_44;
    }

    if ((v12 & 0xF8) != 0x30)
    {
      break;
    }

    v12 -= 48;
    v16 = v11 + 2;
    if (v11 + 2 == v10)
    {
      goto LABEL_43;
    }

    v17 = *(v8 + v16);
    if ((v17 & 0xF8) != 0x30)
    {
      goto LABEL_43;
    }

    v12 = v17 + 8 * v12 - 48;
    v11 += 3;
    if (v11 == v10)
    {
      v13 = v16;
LABEL_43:
      v11 = v13;
      goto LABEL_44;
    }

    v18 = *(v8 + v11);
    v13 = v16;
    if ((v18 & 0xF8) != 0x30)
    {
      goto LABEL_43;
    }

    v12 = v18 + 8 * v12 - 48;
    if (v12 > 0xFF)
    {
      v22 = "invalid octal escape sequence (out of range)";
      goto LABEL_51;
    }

LABEL_44:
    std::string::push_back(a2, v12);
    if (++v11 == v10)
    {
      goto LABEL_45;
    }
  }

  if (*(v8 + v13) <= 0x65u)
  {
    if (v12 != 34 && v12 != 92)
    {
      if (v12 != 98)
      {
        goto LABEL_50;
      }

      LOBYTE(v12) = 8;
    }

    goto LABEL_43;
  }

  if (*(v8 + v13) <= 0x71u)
  {
    if (v12 == 102)
    {
      LOBYTE(v12) = 12;
    }

    else
    {
      if (v12 != 110)
      {
        goto LABEL_50;
      }

      LOBYTE(v12) = 10;
    }

    goto LABEL_43;
  }

  if (v12 == 114)
  {
    LOBYTE(v12) = 13;
    goto LABEL_43;
  }

  if (v12 == 116)
  {
    LOBYTE(v12) = 9;
    goto LABEL_43;
  }

LABEL_50:
  v22 = "invalid escape sequence (unrecognized character)";
LABEL_51:
  v23[0] = v22;
  v24 = 259;
  return llvm::MCAsmParser::TokError(a1, v23, 0, 0);
}

BOOL anonymous namespace::AsmParser::parseAngleBracketString(unsigned int *a1, uint64_t a2)
{
  v4 = *(*((*(*a1 + 40))(a1) + 8) + 8);
  for (i = v4; ; ++i)
  {
    v6 = *i;
    if (v6 > 0x3E)
    {
      continue;
    }

    if (v6 == 33)
    {
      ++i;
      continue;
    }

    if (((1 << v6) & 0x4000000000002401) != 0)
    {
      break;
    }
  }

  if (v6 == 62)
  {
    v7 = (v4 + 1);
    (*(*a1 + 184))(a1);
    angleBracketString(&v9, v7, &i[-v7]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
  }

  return v6 != 62;
}

uint64_t anonymous namespace::AsmParser::eatToEndOfStatement(uint64_t this)
{
  for (i = this; ; this = llvm::MCAsmLexer::Lex((i + 40)))
  {
    v2 = **(i + 48);
    if (!v2)
    {
      break;
    }

    if (v2 == 9)
    {

      return llvm::MCAsmLexer::Lex((i + 40));
    }
  }

  return this;
}

uint64_t anonymous namespace::AsmParser::parseExpression(_DWORD **a1, unint64_t *a2, uint64_t a3)
{
  *a2 = 0;
  v6 = 1;
  {
    return v6;
  }

  if (*a1[6] != 45)
  {
    goto LABEL_22;
  }

  (*(*a1 + 23))(a1);
  if (*a1[6] != 2)
  {
    v41[0] = "unexpected symbol modifier following '@'";
    v10 = 259;
LABEL_33:
    v42 = v10;
    v27 = (*(*a1 + 5))(a1);
    llvm::MCAsmParser::Error(a1, *(v27 + 96), v41, 0, 0);
    return v6;
  }

  v7 = *((*(*a1 + 5))(a1) + 8);
  if (*v7 == 2)
  {
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
  }

  else
  {
    v13 = v7 + 8;
    v11 = *(v7 + 8);
    v12 = *(v13 + 8);
    v14 = v12 != 0;
    if (v12)
    {
      v8 = v11 + 1;
    }

    else
    {
      v8 = v11;
    }

    if (v12 - 1 < v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 - 1;
    }

    if (v15 >= v12)
    {
      v15 = v12;
    }

    v9 = v15 - v14;
  }

  VariantKindForName = llvm::MCSymbolRefExpr::getVariantKindForName(v8, v9);
  if (VariantKindForName == 1)
  {
    v17 = *((*(*a1 + 5))(a1) + 8);
    if (*v17 == 2)
    {
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
    }

    else
    {
      v18 = *(v17 + 8);
      v24 = *(v17 + 16);
      v25 = v24 - 1;
      v26 = v24 != 0;
      if (v24)
      {
        ++v18;
      }

      if (v25 < v26)
      {
        v25 = 1;
      }

      if (v25 >= v24)
      {
        v25 = v24;
      }

      v19 = v25 - v26;
    }

    v40 = 1283;
    v37[0] = "invalid variant '";
    v38 = v18;
    v39 = v19;
    v41[0] = v37;
    v41[2] = "'";
    v10 = 770;
    goto LABEL_33;
  }

  if (v20)
  {
    *a2 = v20;
    (*(*a1 + 23))(a1);
LABEL_22:
    v41[0] = 0;
    if (llvm::MCExpr::evaluateAsAbsolute(*a2, v41, 0, 0, 0, 0))
    {
      v21 = v41[0];
      v22 = (*(*a1 + 6))(a1);
      v23 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v22 + 184), 24, 3);
      *v23 = 1;
      *(v23 + 1) = *(v23 + 4) << 24;
      *(v23 + 8) = 0;
      *(v23 + 16) = v21;
      *a2 = v23;
    }

    return 0;
  }

  v29 = *((*(*a1 + 5))(a1) + 8);
  if (*v29 == 2)
  {
    v30 = *(v29 + 8);
    v31 = *(v29 + 16);
  }

  else
  {
    v30 = *(v29 + 8);
    v32 = *(v29 + 16);
    v33 = v32 - 1;
    v34 = v32 != 0;
    if (v32)
    {
      ++v30;
    }

    if (v33 < v34)
    {
      v33 = 1;
    }

    if (v33 >= v32)
    {
      v33 = v32;
    }

    v31 = v33 - v34;
  }

  v40 = 1283;
  v37[0] = "invalid modifier '";
  v38 = v30;
  v39 = v31;
  v35 = "' (no symbols present)";
  v36 = 259;
  llvm::operator+(v37, &v35, v41);
  return llvm::MCAsmParser::TokError(a1, v41, 0, 0);
}

uint64_t anonymous namespace::AsmParser::parsePrimaryExpr(uint64_t a1, unint64_t *a2, void **a3, uint64_t a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = (*(*a1 + 40))(a1);
  v9 = **(a1 + 48);
  v10 = *(v8 + 96);
  v11 = 1;
  switch(v9)
  {
    case 1:
      return v11;
    case 2:
    case 3:
    case 23:
    case 26:
    case 45:
      v75 = 0uLL;
      if ((*(*a1 + 192))(a1, &v75) && (**((*(*a1 + 40))(a1) + 8) == 26 || **((*(*a1 + 40))(a1) + 8) == 23))
      {
        if ((**((*(*a1 + 40))(a1) + 8) != 26 || (*(*(a1 + 232) + 32) & 1) == 0) && (**((*(*a1 + 40))(a1) + 8) != 23 || *(*(a1 + 232) + 34) != 1))
        {
          v25 = "invalid token in expression";
          goto LABEL_29;
        }

        (*(*a1 + 184))(a1);
        v15 = *(a1 + 216);
        *v87 = "tmp";
        WORD4(v88) = 259;
        TempSymbol = llvm::MCContext::createTempSymbol(v15, v87, 1);
        (*(**(a1 + 224) + 192))(*(a1 + 224), TempSymbol, 0);
        v17 = (*(*a1 + 48))(a1);
        v18 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v17 + 184), 24, 3);
        v11 = 0;
        if (*(*(v17 + 144) + 18))
        {
          v19 = 0x10000;
        }

        else
        {
          v19 = 0;
        }

        *v18 = 2;
        *(v18 + 1) = v19 | (*(v18 + 4) << 24);
        *(v18 + 8) = 0;
        *(v18 + 16) = TempSymbol;
        *a2 = v18;
        *a3 = v10;
        return v11;
      }

      v86 = 0uLL;
      if ((*(*(a1 + 232) + 438) & 1) == 0)
      {
        if (v9 != 3)
        {
          LOBYTE(__p) = 64;
          llvm::StringRef::split(&v75, &__p, 1uLL, v87);
          v86 = *v87;
          v24 = *&v87[16];
          v23 = v88;
          goto LABEL_60;
        }

        if (**(a1 + 48) == 45)
        {
          (*(*a1 + 184))(a1);
          v20 = *((*(*a1 + 40))(a1) + 96);
          __p = 0;
          v81 = 0;
          if ((*(*a1 + 192))(a1, &__p))
          {
            *v87 = "expected symbol variant after '@'";
            WORD4(v88) = 259;
            v21 = a1;
            v22 = v20;
            return llvm::MCAsmParser::Error(v21, v22, v87, 0, 0);
          }

          goto LABEL_59;
        }

LABEL_27:
        v23 = 0;
        v24 = 0;
        goto LABEL_60;
      }

      if (**(a1 + 48) != 17)
      {
        goto LABEL_27;
      }

      (*(*a1 + 184))(a1);
      __p = 0;
      v81 = 0;
      (*(*a1 + 192))(a1, &__p);
      *v87 = "expected ')'";
      WORD4(v88) = 259;
      if (llvm::MCAsmParser::parseToken(a1, 18, v87))
      {
        return v11;
      }

LABEL_59:
      v86 = v75;
      v24 = __p;
      v23 = v81;
LABEL_60:
      *a3 = (v75.n128_u64[0] + v75.n128_u64[1]);
      v85 = v75;
      v51 = v75.n128_u64[1];
      if (!v75.n128_u64[1])
      {
        v22 = *((*(*a1 + 40))(a1) + 96);
        v54 = "expected a symbol reference";
LABEL_67:
        *v87 = v54;
        WORD4(v88) = 259;
        v21 = a1;
        return llvm::MCAsmParser::Error(v21, v22, v87, 0, 0);
      }

      if (v23)
      {
        VariantKindForName = llvm::MCSymbolRefExpr::getVariantKindForName(v24, v23);
        if (VariantKindForName != 1)
        {
          v56 = VariantKindForName;
          v85 = v86;
          v51 = v86.n128_u64[1];
          goto LABEL_79;
        }

        v53 = *(a1 + 232);
        if (*(v53 + 180) != 1 || *(v53 + 438) == 1)
        {
          v84 = 1283;
          __p = "invalid variant '";
          v82 = v24;
          v83 = v23;
          v78[0] = "'";
          v79 = 259;
          llvm::operator+(&__p, v78, v87);
          v21 = a1;
          v22 = v24;
          return llvm::MCAsmParser::Error(v21, v22, v87, 0, 0);
        }
      }

      v56 = 0;
LABEL_79:
      v60 = (*(*a1 + 48))(a1);
      p_p = v85.n128_u64[0];
      Key = llvm::StringMapImpl::FindKey((v60 + 1232), v85.n128_u64[0], v51);
      if (Key == -1 || Key == *(v60 + 1240) || (Symbol = *(*(*(v60 + 1232) + 8 * Key) + 8)) == 0)
      {
        v64 = (*(*a1 + 48))(a1);
        v65 = *(*(a1 + 232) + 80);
        if (v65 == 1)
        {
          llvm::StringRef::upper(&v85, &__p);
          if (v82 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v82 >= 0)
          {
            v51 = SHIBYTE(v82);
          }

          else
          {
            v51 = v81;
          }
        }

        WORD4(v88) = 261;
        *v87 = p_p;
        *&v87[8] = v51;
        Symbol = llvm::MCContext::getOrCreateSymbol(v64, v87);
        if (v65 && SHIBYTE(v82) < 0)
        {
          operator delete(__p);
        }
      }

      if ((*(Symbol + 8) & 0x3800) != 0x1000)
      {
        goto LABEL_99;
      }

      v37 = *(Symbol + 24);
      v66 = *v37;
      if (v66 == 4)
      {
        if ((*(*(v37 - 1) + 48))())
        {
          if (v56)
          {
            v22 = *a3;
            v54 = "unexpected modifier on variable reference";
            goto LABEL_67;
          }

          v37 = *(Symbol + 24);
          goto LABEL_115;
        }

LABEL_99:
        v67 = (*(*a1 + 48))(a1);
        v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v67 + 184), 24, 3);
        v11 = 0;
        if (*(*(v67 + 144) + 18))
        {
          v68 = 0x10000;
        }

        else
        {
          v68 = 0;
        }

        *v37 = 2;
        *(v37 + 1) = v68 | v56 | (v37[4] << 24);
        *(v37 + 1) = v10;
        *(v37 + 2) = Symbol;
        goto LABEL_103;
      }

      if (v56 || v66 != 1)
      {
        goto LABEL_99;
      }

LABEL_115:
      v11 = 0;
LABEL_103:
      *a2 = v37;
      return v11;
    case 4:
      v10 = *(*((*(*a1 + 40))(a1) + 8) + 8);
      v26 = *((*(*a1 + 40))(a1) + 8);
      v29 = *(v26 + 24);
      v27 = (v26 + 24);
      v28 = v29;
      if (*(v27 + 2) >= 0x41u)
      {
        v27 = v28;
      }

      v30 = *v27;
      v31 = (*(*a1 + 48))(a1);
      v32 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v31 + 184), 24, 3);
      *v32 = 1;
      *(v32 + 1) = *(v32 + 4) << 24;
      *(v32 + 8) = 0;
      *(v32 + 16) = v30;
      *a2 = v32;
      *a3 = (*(*(a1 + 48) + 8) + *(*(a1 + 48) + 16));
      (*(*a1 + 184))(a1);
      if (**(a1 + 48) != 2)
      {
        return 0;
      }

      v86 = *(*((*(*a1 + 40))(a1) + 8) + 8);
      v87[0] = 64;
      llvm::StringRef::split(&v86, v87, 1uLL, &v75);
      v33 = v75.n128_u64[1];
      if (v75.n128_u64[1] == v86.n128_u64[1])
      {
        v34 = 0;
      }

      else
      {
        v69 = llvm::MCSymbolRefExpr::getVariantKindForName(v76, v77);
        if (v69 == 1)
        {
          v84 = 1283;
          __p = "invalid variant '";
          v82 = v76;
          v83 = v77;
          v78[0] = "'";
          v79 = 259;
          llvm::operator+(&__p, v78, v87);
          return llvm::MCAsmParser::TokError(a1, v87, 0, 0);
        }

        v34 = v69;
        v86 = v75;
        v33 = v75.n128_u64[1];
      }

      if (v33 != 1)
      {
        return 0;
      }

      v70 = *v86.n128_u64[0];
      if ((v70 | 4) != 0x66)
      {
        return 0;
      }

      DirectionalLocalSymbol = llvm::MCContext::getDirectionalLocalSymbol(*(a1 + 216), v30, v70 == 98);
      v72 = (*(*a1 + 48))(a1);
      *a2 = llvm::MCSymbolRefExpr::create(DirectionalLocalSymbol, v34, v72, 0);
      if (v86.n128_u64[1] != 1 || *v86.n128_u64[0] != 98 || llvm::MCSymbol::getFragment(DirectionalLocalSymbol, 1u))
      {
        v73 = *(a1 + 456);
        *v87 = v10;
        v89 = v73;
        v90 = DirectionalLocalSymbol;
        v74 = *(a1 + 440);
        *&v87[8] = *(a1 + 424);
        v88 = v74;
        goto LABEL_53;
      }

      v25 = "directional label undefined";
LABEL_29:
      *v87 = v25;
      WORD4(v88) = 259;
      v21 = a1;
      v22 = v10;
      return llvm::MCAsmParser::Error(v21, v22, v87, 0, 0);
    case 5:
      v13 = "literal value out of range for directive";
      goto LABEL_7;
    case 6:
      v43 = (*(*a1 + 40))(a1);
      llvm::APFloat::APFloat(v87, &llvm::semIEEEdouble, *(*(v43 + 8) + 8), *(*(v43 + 8) + 16));
      llvm::APFloat::bitcastToAPInt(&__p, v87);
      if (v81 > 0x40)
      {
        v44 = *__p;
        MEMORY[0x277C69E10]();
      }

      else
      {
        v44 = __p;
      }

      v58 = (*(*a1 + 48))(a1);
      v59 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v58 + 184), 24, 3);
      *v59 = 1;
      *(v59 + 1) = *(v59 + 4) << 24;
      *(v59 + 8) = 0;
      *(v59 + 16) = v44;
      *a2 = v59;
      *a3 = (*(*(a1 + 48) + 8) + *(*(a1 + 48) + 16));
      (*(*a1 + 184))(a1);
      llvm::APFloat::Storage::~Storage(&v87[8]);
      return 0;
    case 12:
      (*(*a1 + 184))(a1);
      if ((*(*a1 + 240))(a1, a2, a3, a4))
      {
        return v11;
      }

      v35 = *a2;
      v36 = (*(*a1 + 48))(a1);
      v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v36 + 184), 24, 3);
      v11 = 0;
      *v37 = 3;
      v38 = (v37[4] << 24) | 3;
      goto LABEL_56;
    case 13:
      (*(*a1 + 184))(a1);
      if ((*(*a1 + 240))(a1, a2, a3, a4))
      {
        return v11;
      }

      v40 = *a2;
      v41 = (*(*a1 + 48))(a1);
      v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v41 + 184), 24, 3);
      *v42 = 3;
      *(v42 + 1) = (*(v42 + 4) << 24) | 1;
      *(v42 + 8) = v10;
      *(v42 + 16) = v40;
      *a2 = v42;
      return 0;
    case 14:
      (*(*a1 + 184))(a1);
      if ((*(*a1 + 240))(a1, a2, a3, a4))
      {
        return v11;
      }

      v35 = *a2;
      v45 = (*(*a1 + 48))(a1);
      v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v45 + 184), 24, 3);
      v11 = 0;
      *v37 = 3;
      v38 = (v37[4] << 24) | 2;
      goto LABEL_56;
    case 17:
      (*(*a1 + 184))(a1);

    case 19:
      if ((*(*(a1 + 264) + 16) & 1) == 0)
      {
        v57 = "brackets expression not supported on this target";
        goto LABEL_75;
      }

      (*(*a1 + 184))(a1);

    case 24:
      if (*(*(a1 + 232) + 33))
      {
        v46 = *(a1 + 216);
        *v87 = "tmp";
        WORD4(v88) = 259;
        v47 = llvm::MCContext::createTempSymbol(v46, v87, 1);
        (*(**(a1 + 224) + 192))(*(a1 + 224), v47, 0);
        v48 = (*(*a1 + 48))(a1);
        *a2 = llvm::MCSymbolRefExpr::create(v47, 0, v48, 0);
LABEL_53:
        *a3 = (*(*(a1 + 48) + 8) + *(*(a1 + 48) + 16));
        (*(*a1 + 184))(a1);
        return 0;
      }

      else
      {
        v57 = "cannot use . as current PC";
LABEL_75:
        *v87 = v57;
        WORD4(v88) = 259;
        return llvm::MCAsmParser::TokError(a1, v87, 0, 0);
      }

    case 34:
      (*(*a1 + 184))(a1);
      if ((*(*a1 + 240))(a1, a2, a3, a4))
      {
        return v11;
      }

      v35 = *a2;
      v49 = (*(*a1 + 48))(a1);
      v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v49 + 184), 24, 3);
      v11 = 0;
      *v37 = 3;
      v38 = v37[4] << 24;
LABEL_56:
      *(v37 + 1) = v38;
      *(v37 + 1) = v10;
      *(v37 + 2) = v35;
      goto LABEL_103;
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
      (*(*a1 + 184))(a1);
      if (**(a1 + 48) == 17)
      {
        (*(*a1 + 184))(a1);
        if (((*(*a1 + 232))(a1, a2, a3) & 1) == 0)
        {
          *v87 = "expected ')'";
          WORD4(v88) = 259;
          if (!llvm::MCAsmParser::parseToken(a1, 18, v87))
          {
            v12 = (*(**(a1 + 8) + 184))(*(a1 + 8), *a2, v9, *(a1 + 216));
            *a2 = v12;
            return v12 == 0;
          }
        }
      }

      else
      {
        v13 = "expected '(' after operator";
LABEL_7:
        *v87 = v13;
        WORD4(v88) = 259;
        v14 = (*(*a1 + 40))(a1);
        llvm::MCAsmParser::Error(a1, *(v14 + 96), v87, 0, 0);
      }

      return v11;
    default:
      *v87 = "unknown token in expression";
      WORD4(v88) = 259;
      v50 = (*(*a1 + 40))(a1);
      llvm::MCAsmParser::Error(a1, *(v50 + 96), v87, 0, 0);
      return 1;
  }
}

uint64_t anonymous namespace::AsmParser::parseParenExpression(llvm::MCAsmParser *a1, unint64_t *a2, void *a3)
{
  *a2 = 0;
  {
    return 1;
  }
}

uint64_t anonymous namespace::AsmParser::parseAbsoluteExpression(_anonymous_namespace_::AsmParser *this, uint64_t *a2)
{
  v12 = 0;
  v4 = *(this + 17);
  v10[0] = 0;
  if ((*(*this + 232))(this, &v12, v10))
  {
    return 1;
  }

  v6 = v12;
  v7 = (*(*this + 56))(this);
  v8 = (*(*v7 + 72))(v7);
  v9 = llvm::MCExpr::evaluateAsAbsolute(v6, a2, v8, 0, 0, 0);
  result = 0;
  if (!v9)
  {
    v10[0] = "expected absolute expression";
    v11 = 259;
    return llvm::MCAsmParser::Error(this, v4, v10, 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::AsmParser::checkForValidSection(_anonymous_namespace_::AsmParser *this)
{
  if (*(this + 797))
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v5 = (*(*this + 56))(this);
  v6 = *(v5 + 152);
  if (v6 && *(*(v5 + 144) + 32 * v6 - 32))
  {
    return 0;
  }

  (*(**(this + 28) + 176))(*(this + 28), 0, *(*(this + 1) + 288));
  v7 = *(*((*(*this + 40))(this) + 8) + 8);
  v8 = "expected section directive before assembly directive";
  v9 = 259;
  return llvm::MCAsmParser::Error(this, v7, &v8, 0, 0);
}

BOOL anonymous namespace::AsmParser::parseParenExprOfDepth(llvm::MCAsmParser *a1, int a2, unint64_t *a3, void *a4)
{
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = 1;
  {
    v8 = --a2 != 0;
    if (!a2)
    {
      break;
    }

    v9 = (*(*a1 + 40))(a1);
    *a4 = *(*(v9 + 8) + 8) + *(*(v9 + 8) + 16);
    v11 = "expected ')'";
    v12 = 259;
    if (llvm::MCAsmParser::parseToken(a1, 18, &v11))
    {
      break;
    }
  }

  return v8;
}

uint64_t anonymous namespace::HLASMAsmParser::parseStatement(_anonymous_namespace_::HLASMAsmParser *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (**(*(a1 + 106) + 8) == 9)
  {
    if (*(*((*(*a1 + 40))(a1) + 8) + 16) && **(*((*(*a1 + 40))(a1) + 8) + 8) != 13 && **(*((*(*a1 + 40))(a1) + 8) + 8) != 10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = **(v4 + 8);
  if (**(*(a1 + 106) + 8) == 9 && (**(*((*(*a1 + 40))(a1) + 8) + 8) == 10 || **(*((*(*a1 + 40))(a1) + 8) + 8) == 13))
  {
LABEL_9:
    (*(**(a1 + 107) + 152))(*(a1 + 107));
LABEL_10:
    return 0;
  }

  if (v5 != 11)
  {
    v8 = *((*(*a1 + 40))(a1) + 8);
    v9 = *v8;
    v35 = *(v8 + 16);
    v34 = v9;
    v37 = *(v8 + 32);
    if (v37 > 0x40)
    {
      operator new[]();
    }

    v36 = *(v8 + 24);
    v10 = *(&v34 + 1);
    v32 = 0;
    v33 = *(&v34 + 1);
    v31 = 0;
    {
      v12 = "The HLASM Label has to be an Identifier";
    }

    else
    {
      {
        v13 = 1;
        goto LABEL_22;
      }

      if (**((*(*a1 + 40))(a1) + 8) != 9)
      {
        v21 = *(a1 + 27);
        v22 = *(*(v21 + 18) + 80);
        if (v22 == 1)
        {
          llvm::StringRef::upper(&v31, __p);
          v23 = v27;
          v24 = __p[0];
          if (v27 >= 0)
          {
            v24 = __p;
          }

          if (v27 < 0)
          {
            v23 = __p[1];
          }
        }

        else
        {
          v24 = v31;
          v23 = v32;
        }

        v30 = 261;
        v28 = v24;
        v29 = v23;
        v25 = llvm::MCContext::getOrCreateSymbol(v21, &v28);
        if (v22 && v27 < 0)
        {
          operator delete(__p[0]);
        }

        (*(**(a1 + 1) + 160))(*(a1 + 1), v25, v10);
        (*(**(a1 + 107) + 192))(*(a1 + 107), v25, v10);
        {
          llvm::MCGenDwarfLabelEntry::Make(v25, *(a1 + 28), *(a1 + 30), &v33);
        }

        (*(**(a1 + 1) + 168))(*(a1 + 1), v25);
        v13 = 0;
LABEL_22:
        if (v37 >= 0x41 && v36)
        {
          MEMORY[0x277C69E10](v36, 0x1000C8000313F17);
        }

        if (v13)
        {
          return 1;
        }

        goto LABEL_27;
      }

      v12 = "Cannot have just a label for an HLASM inline asm statement";
    }

    v28 = v12;
    v30 = 259;
    v13 = llvm::MCAsmParser::Error(a1, v10, &v28, 0, 0);
    goto LABEL_22;
  }

LABEL_27:
  v14 = *(*(a1 + 106) + 8);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = *(v14 + 8);
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v19 = v14[3];
  v28 = 0;
  v29 = 0;
  if (v20)
  {
    *&v34 = "unexpected token at start of statement";
    LOWORD(v37) = 259;
    return llvm::MCAsmParser::Error(a1, v15, &v34, 0, 0);
  }

  else
  {
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v35 = v17;
    v37 = v18;
    v36 = v19;
  }
}

void anonymous namespace::AsmParser::DiagHandler(_anonymous_namespace_::AsmParser *this, const llvm::SMDiagnostic *a2, void *a3)
{
  v39[22] = *MEMORY[0x277D85DE8];
  v5 = llvm::errs(this);
  v6 = *this;
  v7 = *(this + 1);
  BufferContainingLoc = llvm::SourceMgr::FindBufferContainingLoc(*this, v7);
  v9 = llvm::SourceMgr::FindBufferContainingLoc(*(a2 + 30), *(a2 + 56));
  if (*(a2 + 31))
  {
    v10 = 0;
  }

  else
  {
    v10 = BufferContainingLoc >= 2;
  }

  if (v10)
  {
    llvm::SourceMgr::PrintIncludeStack(v6, *(*v6 + 24 * (BufferContainingLoc - 1) + 16), v5);
  }

  if (*(a2 + 55) && BufferContainingLoc == v9)
  {
    v11 = *(a2 + 54);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = *(a2 + 53);
    if (v11 >= 0x17)
    {
      operator new();
    }

    v29 = *(a2 + 54);
    if (v11)
    {
      memmove(__dst, v12, v11);
    }

    *(__dst + v11) = 0;
    LineAndColumn = llvm::SourceMgr::getLineAndColumn(v6, v7, BufferContainingLoc);
    v16 = ~llvm::SourceMgr::getLineAndColumn(*(a2 + 30), *(a2 + 56), BufferContainingLoc);
    if (v29 >= 0)
    {
      v17 = __dst;
    }

    else
    {
      v17 = __dst[0];
    }

    if (v29 >= 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = __dst[1];
    }

    v19 = *(this + 79);
    v20 = this + 56;
    if (v19 < 0)
    {
      v20 = *(this + 7);
    }

    if (v19 < 0)
    {
      v19 = *(this + 8);
    }

    v21 = *(this + 103);
    v22 = this + 80;
    if (v21 < 0)
    {
      v22 = *(this + 10);
    }

    if (v21 < 0)
    {
      v21 = *(this + 11);
    }

    llvm::SMDiagnostic::SMDiagnostic(v30, *this, *(this + 1), v17, v18, v16 + LineAndColumn + *(a2 + 110), *(this + 11), *(this + 12), v20, v19, v22, v21, *(this + 13), (*(this + 14) - *(this + 13)) >> 3, 0, 0);
    v23 = *(a2 + 31);
    if (v23)
    {
      v23(this, *(a2 + 32));
    }

    else
    {
      v27 = (*(*a2 + 48))(a2);
      std::function<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::operator()(v27 + 112, v30, *(v27 + 72) == 0);
    }

    llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v39);
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v29 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    v13 = *(a2 + 31);
    if (v13)
    {
      v14 = *(a2 + 32);

      v13(this, v14);
    }

    else
    {
      v24 = (*(*a2 + 48))(a2);
      v25 = *(v24 + 72) == 0;
      v26 = v24 + 112;

      std::function<void ()(llvm::SMDiagnostic const&,BOOL,llvm::SourceMgr const&,std::vector<llvm::MDNode const*> &)>::operator()(v26, this, v25);
    }
  }
}

void anonymous namespace::AsmParser::~AsmParser(_anonymous_namespace_::AsmParser *this)
{

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EFF08;
  *(*(this + 28) + 288) = 0;
  *(*(this + 30) + 48) = *(this + 248);
  if (*(this + 209))
  {
    v2 = *(this + 208);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(this + 103) + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(this + 103));
  if (*(this + 203))
  {
    v7 = *(this + 202);
    if (v7)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        v10 = *(*(this + 100) + v8);
        if (v10 != -8 && v10 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        v8 += 8;
      }

      while (v9 != v8);
    }
  }

  free(*(this + 100));
  std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(this + 768, *(this + 97));
  v12 = *(this + 90);
  if (v12 != this + 736)
  {
    free(v12);
  }

  v13 = *(this + 60);
  if (v13 != this + 496)
  {
    free(v13);
  }

  v15 = *(this + 47);
  v14 = *(this + 48);
  if (v14 == v15)
  {
    v19 = (this + 408);
    v22 = *(this + 47);
  }

  else
  {
    v16 = *(this + 50);
    v17 = &v15[v16 / 0x2E];
    v18 = *v17 + 88 * (v16 % 0x2E);
    v19 = (this + 408);
    v20 = v15[(*(this + 51) + v16) / 0x2E] + 88 * ((*(this + 51) + v16) % 0x2E);
    if (v18 != v20)
    {
      do
      {
        v35 = (v18 + 56);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v35);
        v35 = (v18 + 32);
        std::vector<llvm::MCAsmMacroParameter>::__destroy_vector::operator()[abi:nn200100](&v35);
        v18 += 88;
        if (v18 - *v17 == 4048)
        {
          v21 = v17[1];
          ++v17;
          v18 = v21;
        }
      }

      while (v18 != v20);
      v15 = *(this + 47);
      v14 = *(this + 48);
    }

    v22 = v14;
  }

  *v19 = 0;
  v23 = v22 - v15;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v15);
      v14 = *(this + 48);
      v15 = (*(this + 47) + 8);
      *(this + 47) = v15;
      v23 = v14 - v15;
    }

    while (v23 > 2);
    v22 = v14;
  }

  if (v23 == 1)
  {
    v24 = 23;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_39;
    }

    v24 = 46;
  }

  *(this + 50) = v24;
LABEL_39:
  if (v15 != v22)
  {
    do
    {
      v25 = *v15++;
      operator delete(v25);
    }

    while (v15 != v22);
    v22 = *(this + 47);
    v14 = *(this + 48);
  }

  if (v14 != v22)
  {
    *(this + 48) = v14 + ((v22 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v26 = *(this + 46);
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(this + 43);
  if (v27)
  {
    *(this + 44) = v27;
    operator delete(v27);
  }

  if (*(this + 83))
  {
    v28 = *(this + 82);
    if (v28)
    {
      v29 = 0;
      v30 = 8 * v28;
      do
      {
        v31 = *(*(this + 40) + v29);
        if (v31 != -8 && v31 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        v29 += 8;
      }

      while (v30 != v29);
    }
  }

  free(*(this + 40));
  v33 = *(this + 37);
  if (v33)
  {
    *(this + 38) = v33;
    operator delete(v33);
  }

  v34 = *(this + 33);
  *(this + 33) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  llvm::MCAsmLexer::~MCAsmLexer(this + 5);
  *this = &unk_2883F0110;
  llvm::SmallVector<llvm::MCAsmParser::MCPendingError,0u>::~SmallVector(this + 2);
}

uint64_t anonymous namespace::AsmParser::parseStatement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = **(a1 + 48);
    if (v6 != 11)
    {
      break;
    }

    (*(*a1 + 184))(a1);
  }

  if (v6 == 9)
  {
    if (!*(*((*(*a1 + 40))(a1) + 8) + 16) || **(*((*(*a1 + 40))(a1) + 8) + 8) == 13 || **(*((*(*a1 + 40))(a1) + 8) + 8) == 10)
    {
      (*(**(a1 + 224) + 152))(*(a1 + 224));
    }

    (*(*a1 + 184))(a1);
    return 0;
  }

  v8 = *((*(*a1 + 40))(a1) + 8);
  v9 = *v8;
  v119 = *(v8 + 16);
  v118 = v9;
  v121 = *(v8 + 32);
  if (v121 > 0x40)
  {
    operator new[]();
  }

  v120 = *(v8 + 24);
  v10 = *(&v118 + 1);
  v117 = *(&v118 + 1);
  v116 = 0uLL;
  *(a1 + 272) = *(&v118 + 1);
  v11 = **(a1 + 48);
  if (v11 > 21)
  {
    switch(v11)
    {
      case 22:
        (*(*a1 + 184))(a1);
        v12 = "}";
        goto LABEL_31;
      case 23:
        if ((*(**(a1 + 8) + 144))(*(a1 + 8)))
        {
          (*(*a1 + 184))(a1);
          v12 = "*";
          goto LABEL_31;
        }

        break;
      case 24:
        (*(*a1 + 184))(a1);
        v12 = ".";
        goto LABEL_31;
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    v13 = *((*(*a1 + 40))(a1) + 8);
    v16 = *(v13 + 24);
    v14 = v13 + 24;
    v15 = v16;
    if (*(v14 + 8) >= 0x41u)
    {
      v14 = v15;
    }

    v17 = *v14;
    if ((*v14 & 0x8000000000000000) != 0)
    {
      if (*(a1 + 289))
      {
        v18 = 0;
        *&v116 = "";
        goto LABEL_32;
      }
    }

    else
    {
      v116 = *(*((*(*a1 + 40))(a1) + 8) + 8);
      (*(*a1 + 184))(a1);
      if (**(a1 + 48) == 10 || (*(a1 + 289) & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_82;
  }

  if (v11 != 8)
  {
    if (v11 == 21)
    {
      (*(*a1 + 184))(a1);
      v12 = "{";
LABEL_31:
      *&v116 = v12;
      v17 = -1;
      v18 = 1;
LABEL_32:
      *(&v116 + 1) = v18;
      goto LABEL_33;
    }

LABEL_63:
    if (!(*(*a1 + 192))(a1, &v116))
    {
      v17 = -1;
LABEL_33:
      llvm::StringRef::lower(&v122, &v116);
      if (v123 >= 0)
      {
        v19 = &v122;
      }

      else
      {
        v19 = v122;
      }

      if (v123 >= 0)
      {
        v20 = SHIBYTE(v123);
      }

      else
      {
        v20 = *(&v122 + 1);
      }

      Key = llvm::StringMapImpl::FindKey((a1 + 800), v19, v20);
      v22 = *(a1 + 800);
      if (Key == -1)
      {
        v23 = *(a1 + 808);
      }

      else
      {
        v23 = Key;
      }

      v24 = v22 + 8 * v23;
      if (SHIBYTE(v123) < 0)
      {
        operator delete(v122);
        v22 = *(a1 + 800);
      }

      if (v24 == v22 + 8 * *(a1 + 808))
      {
        v25 = 0;
        goto LABEL_56;
      }

      v25 = *(*v24 + 8);
      if (v25 <= 91)
      {
        if (v25 <= 88)
        {
          if ((v25 - 82) < 7)
          {
            std::vector<llvm::AsmCond>::push_back[abi:nn200100](a1 + 296, (a1 + 284));
            *(a1 + 284) = 1;
            if (*(a1 + 289) != 1)
            {
              *&v122 = 0;
              if (((*(*a1 + 256))(a1, &v122) & 1) == 0 && !llvm::MCAsmParser::parseEOL(a1))
              {
                if (v25 <= 84)
                {
                  if (v25 != 82)
                  {
                    if (v25 == 83)
                    {
                      v26 = v122 == 0;
LABEL_195:
                      *&v122 = v26;
                      goto LABEL_196;
                    }

                    v60 = ~v122;
LABEL_193:
                    v26 = v60 >> 63;
                    goto LABEL_195;
                  }
                }

                else
                {
                  if (v25 <= 86)
                  {
                    if (v25 == 85)
                    {
                      v26 = v122 > 0;
                    }

                    else
                    {
                      v26 = v122 < 1;
                    }

                    goto LABEL_195;
                  }

                  if (v25 == 87)
                  {
                    v60 = v122;
                    goto LABEL_193;
                  }
                }

LABEL_196:
                v7 = 0;
                v72 = v122 == 0;
                *(a1 + 288) = v122 != 0;
                *(a1 + 289) = v72;
                goto LABEL_159;
              }

              goto LABEL_167;
            }

            goto LABEL_57;
          }

          goto LABEL_56;
        }

        if (v25 == 89)
        {
          v47 = a1;
          v48 = 1;
        }

        else
        {
          if (v25 != 90)
          {
            v32 = a1;
            v33 = 1;
            goto LABEL_79;
          }

          v47 = a1;
          v48 = 0;
        }

        goto LABEL_158;
      }

      if (v25 > 95)
      {
        if (v25 > 98)
        {
          if (v25 == 99)
          {
            goto LABEL_158;
          }

          if (v25 == 100)
          {
            goto LABEL_158;
          }
        }

        else
        {
          if ((v25 - 96) < 2)
          {
            v27 = a1;
            v28 = 0;
LABEL_86:
            goto LABEL_158;
          }

          if (v25 == 98)
          {
            goto LABEL_158;
          }
        }

LABEL_56:
        if (*(a1 + 289) == 1)
        {
LABEL_57:
          (*(*a1 + 224))(a1);
          goto LABEL_58;
        }

        v29 = **(a1 + 48);
        if (v29 == 10)
        {
          if ((*(**(a1 + 8) + 136))(*(a1 + 8), &v118))
          {
            if (((*(*a1 + 264))(a1) & 1) == 0)
            {
              (*(*a1 + 184))(a1);
              v30 = v116;
              if (*(&v116 + 1) != 1 || *v116 != 46)
              {
                if (v17 == -1)
                {
                  if (a3 && (*(a1 + 797) & 1) != 0)
                  {
                    v61 = (*(*a1 + 32))(a1);
                    v62 = (*(*a3 + 24))(a3, v30, *(&v30 + 1), v61, v10, 1);
                    v64 = v63;
                    llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,unsigned long,llvm::StringRef &>(*(a2 + 88), 7, v10, SDWORD2(v116), v62, v63);
                    *&v116 = v62;
                    *(&v116 + 1) = v64;
                  }

                  v65 = (*(*a1 + 48))(a1);
                  LOWORD(v125) = 261;
                  v122 = v116;
                  Symbol = llvm::MCContext::getOrCreateSymbol(v65, &v122);
                }

                else
                {
                  Symbol = llvm::MCContext::createDirectionalLocalSymbol(*(a1 + 216), v17);
                }

                v66 = Symbol;
                if (**((*(*a1 + 40))(a1) + 8) == 37)
                {
                  v67 = (*(*a1 + 200))(a1);
                  v69 = v68;
                  llvm::MCAsmLexer::Lex((a1 + 40));
                  LODWORD(v122) = 9;
                  *(&v122 + 1) = v67;
                  v123 = v69;
                  v125 = 64;
                  v124 = 0;
                  *(a1 + 147) = 0;
                  llvm::SmallVectorImpl<llvm::AsmToken>::insert_one_impl<llvm::AsmToken const&>((a1 + 48), *(a1 + 48), &v122);
                  if (v125 >= 0x41)
                  {
                    if (v124)
                    {
                      MEMORY[0x277C69E10](v124, 0x1000C8000313F17);
                    }
                  }
                }

                if (**((*(*a1 + 40))(a1) + 8) == 9)
                {
                  (*(*a1 + 184))(a1);
                }

                if (((*(*a1 + 104))(a1, v116, *(&v116 + 1)) & 1) == 0)
                {
                  (*(**(a1 + 8) + 160))(*(a1 + 8), v66, v10);
                  if ((*(*(a1 + 8) + 112) & 1) == 0)
                  {
                    (*(**(a1 + 224) + 192))(*(a1 + 224), v66, v10);
                  }

                  {
                    v70 = (*(*a1 + 56))(a1);
                    v71 = (*(*a1 + 32))(a1);
                    llvm::MCGenDwarfLabelEntry::Make(v66, v70, v71, &v117);
                  }

                  (*(**(a1 + 8) + 168))(*(a1 + 8), v66);
                }

                goto LABEL_58;
              }

              v31 = "invalid use of pseudo-symbol '.' as a label";
              goto LABEL_83;
            }

LABEL_167:
            v7 = 1;
            goto LABEL_159;
          }

          v29 = **(a1 + 48);
        }

        if (v29 == 27 && (*(**(a1 + 8) + 128))(*(a1 + 8)))
        {
          (*(*a1 + 184))(a1);
          goto LABEL_158;
        }

        if (*(a1 + 416))
        {
          v35 = (*(*a1 + 48))(a1);
          v36 = llvm::StringMapImpl::FindKey((v35 + 2064), v116, *(&v116 + 1));
          if (v36 != -1 && v36 != *(v35 + 2072))
          {
            goto LABEL_158;
          }
        }

        if (*(&v116 + 1) >= 2uLL && *v116 == 46)
        {
          v37 = *(a1 + 8);
          v38 = (*(*a1 + 56))(a1);
          (*(*v37 + 176))(v37, v38);
          v39 = *(*((*(*a1 + 40))(a1) + 8) + 8);
          v40 = *(a1 + 8);
          v113 = v119;
          v112 = v118;
          v115 = v121;
          if (v121 > 0x40)
          {
            operator new[]();
          }

          v114 = v120;
          v50 = (*(*v40 + 64))(v40, &v112);
          v51 = v50;
          if (v115 >= 0x41 && v114)
          {
            MEMORY[0x277C69E10](v114, 0x1000C8000313F17);
          }

          v52 = *(a1 + 24);
          v7 = v52 != 0;
          if (v52 || ((v51 ^ 1) & 1) != 0)
          {
            goto LABEL_159;
          }

          if (*(*((*(*a1 + 40))(a1) + 8) + 8) != v39)
          {
            goto LABEL_167;
          }

          if (*(*((*(*a1 + 40))(a1) + 8) + 8) != v39)
          {
            goto LABEL_58;
          }

          v53 = llvm::StringMap<std::pair<llvm::MCAsmParserExtension *,BOOL (*)(llvm::MCAsmParserExtension *,llvm::StringRef,llvm::SMLoc)>,llvm::MallocAllocator>::lookup(a1 + 320, v116, *(&v116 + 1));
          if (v53)
          {
            v34 = v54(v53, v116, *(&v116 + 1), v10);
          }

          else
          {
            switch(v25)
            {
              case 1:
              case 2:
                v85 = a1;
                v86 = 0;
                goto LABEL_270;
              case 3:
                v85 = a1;
                v86 = 1;
                goto LABEL_270;
              case 4:
                LOBYTE(v110[0]) = 0;
                goto LABEL_267;
              case 5:
              case 6:
                LOBYTE(v110[0]) = 1;
LABEL_267:
                *&v122 = a1;
                *(&v122 + 1) = v110;
                goto LABEL_319;
              case 7:
              case 20:
                v73 = 1;
                goto LABEL_262;
              case 8:
              case 10:
              case 11:
              case 18:
              case 24:
                v73 = 2;
                goto LABEL_262;
              case 9:
                break;
              case 12:
              case 13:
              case 14:
              case 22:
                v73 = 4;
                goto LABEL_262;
              case 15:
              case 16:
                v73 = 8;
                goto LABEL_262;
              case 17:
                *&v122 = a1;
                goto LABEL_319;
              case 19:
                v73 = *(*((*(*a1 + 48))(a1) + 144) + 8);
LABEL_262:
                LODWORD(v110[0]) = v73;
                *&v122 = a1;
                *(&v122 + 1) = v110;
                goto LABEL_319;
              case 21:
              case 43:
                v74 = &llvm::semIEEEdouble;
                goto LABEL_208;
              case 23:
              case 41:
              case 42:
                v74 = &llvm::semIEEEsingle;
LABEL_208:
                *&v122 = a1;
                *(&v122 + 1) = v74;
                goto LABEL_319;
              case 25:
              case 32:
              case 77:
              case 78:
                v111 = 261;
                *v110 = v116;
                v108 = " not currently supported for this target";
                v109 = 259;
                llvm::operator+(v110, &v108, &v122);
                goto LABEL_200;
              case 26:
              case 31:
                v82 = *(&v116 + 1);
                v81 = v116;
                v83 = a1;
                v84 = 2;
                goto LABEL_264;
              case 27:
                v82 = *(&v116 + 1);
                v81 = v116;
                v83 = a1;
                v84 = 1;
                goto LABEL_264;
              case 28:
                v98 = *(&v116 + 1);
                v97 = v116;
                v99 = &llvm::semIEEEdouble;
                goto LABEL_287;
              case 29:
                v82 = *(&v116 + 1);
                v81 = v116;
                v83 = a1;
                v84 = 4;
LABEL_264:
                break;
              case 30:
                v98 = *(&v116 + 1);
                v97 = v116;
                v99 = &llvm::semIEEEsingle;
LABEL_287:
                break;
              case 33:
              case 39:
                v77 = *(&v116 + 1);
                v76 = v116;
                v78 = a1;
                v79 = 2;
                goto LABEL_295;
              case 34:
                v77 = *(&v116 + 1);
                v76 = v116;
                v78 = a1;
                v79 = 1;
                goto LABEL_295;
              case 35:
                v77 = *(&v116 + 1);
                v76 = v116;
                v78 = a1;
                v79 = 8;
                goto LABEL_295;
              case 36:
              case 38:
                v77 = *(&v116 + 1);
                v76 = v116;
                v78 = a1;
                v79 = 4;
                goto LABEL_295;
              case 37:
              case 40:
                v77 = *(&v116 + 1);
                v76 = v116;
                v78 = a1;
                v79 = 12;
LABEL_295:
                break;
              case 44:
                v92 = (*(*((*(*a1 + 48))(a1) + 144) + 339) & 1) == 0;
                v91 = a1;
                goto LABEL_302;
              case 45:
                v92 = (*(*((*(*a1 + 48))(a1) + 144) + 339) & 1) == 0;
                v91 = a1;
                goto LABEL_293;
              case 46:
                v91 = a1;
                v92 = 0;
                goto LABEL_302;
              case 47:
                v91 = a1;
                v92 = 0;
                goto LABEL_289;
              case 48:
                v91 = a1;
                v92 = 0;
                goto LABEL_293;
              case 49:
                v91 = a1;
                v92 = 1;
LABEL_302:
                v102 = 1;
                goto LABEL_303;
              case 50:
                v91 = a1;
                v92 = 1;
LABEL_289:
                v102 = 2;
                goto LABEL_303;
              case 51:
                v91 = a1;
                v92 = 1;
LABEL_293:
                v102 = 4;
LABEL_303:
                break;
              case 52:
                break;
              case 53:
                break;
              case 54:
                break;
              case 55:
                break;
              case 56:
                break;
              case 57:
                break;
              case 58:
                break;
              case 59:
                goto LABEL_57;
              case 60:
              case 61:
                v75 = 9;
                goto LABEL_318;
              case 62:
                v75 = 16;
                goto LABEL_318;
              case 63:
                v75 = 18;
                goto LABEL_318;
              case 64:
                v75 = 19;
                goto LABEL_318;
              case 65:
                v75 = 21;
                goto LABEL_318;
              case 66:
                v75 = 23;
                goto LABEL_318;
              case 67:
                v75 = 25;
                goto LABEL_318;
              case 68:
                v75 = 26;
                goto LABEL_318;
              case 69:
                v75 = 27;
                goto LABEL_318;
              case 70:
                v75 = 1;
                goto LABEL_318;
              case 71:
              case 72:
                v87 = a1;
                v88 = 0;
                goto LABEL_322;
              case 73:
                v87 = a1;
                v88 = 1;
LABEL_322:
                break;
              case 74:
                break;
              case 75:
                break;
              case 76:
                break;
              case 79:
                break;
              case 80:
                break;
              case 81:
                break;
              case 101:
              case 102:
                break;
              case 103:
                break;
              case 104:
                break;
              case 105:
                break;
              case 106:
                *&v122 = "unsupported directive '.stabs'";
                LOWORD(v125) = 259;
LABEL_200:
                v34 = llvm::MCAsmParser::TokError(a1, &v122, 0, 0);
                break;
              case 107:
                break;
              case 108:
                break;
              case 109:
                break;
              case 110:
                break;
              case 111:
                break;
              case 112:
                break;
              case 113:
                break;
              case 114:
                v96 = (*(*a1 + 56))(a1);
                (*(*v96 + 808))(v96);
                goto LABEL_58;
              case 115:
                break;
              case 116:
                v103 = (*(*a1 + 56))(a1);
                (*(*v103 + 816))(v103);
                goto LABEL_58;
              case 117:
                break;
              case 118:
                break;
              case 119:
                break;
              case 120:
                break;
              case 121:
                break;
              case 122:
                break;
              case 123:
                break;
              case 124:
                break;
              case 125:
                break;
              case 126:
                break;
              case 127:
                break;
              case 128:
                break;
              case 129:
                v100 = a1;
                v101 = 1;
                goto LABEL_309;
              case 130:
                v100 = a1;
                v101 = 0;
LABEL_309:
                break;
              case 131:
                break;
              case 132:
                break;
              case 133:
                break;
              case 134:
                break;
              case 135:
                break;
              case 136:
                break;
              case 137:
                break;
              case 138:
                break;
              case 139:
                break;
              case 140:
                break;
              case 142:
              case 143:
                break;
              case 144:
              case 145:
                break;
              case 146:
                break;
              case 147:
                break;
              case 148:
              case 149:
                break;
              case 150:
                break;
              case 151:
                v89 = a1;
                v90 = 1;
                goto LABEL_306;
              case 152:
                v89 = a1;
                v90 = 0;
LABEL_306:
                break;
              case 153:
                v93 = a1;
                v94 = v10;
                v95 = 0;
                goto LABEL_315;
              case 154:
                v93 = a1;
                v94 = v10;
                v95 = 1;
LABEL_315:
                break;
              case 155:
                break;
              case 156:
                break;
              case 157:
                break;
              case 158:
                break;
              case 159:
                break;
              case 160:
                break;
              case 161:
                v85 = a1;
                v86 = 3;
LABEL_270:
                break;
              case 163:
                v75 = 28;
LABEL_318:
                LODWORD(v110[0]) = v75;
                *&v122 = a1;
                *(&v122 + 1) = v110;
LABEL_319:
                v34 = llvm::MCAsmParser::parseMany(a1, v80, &v122, 1);
                break;
              case 164:
                break;
              default:
                v31 = "unknown directive";
                goto LABEL_83;
            }
          }

LABEL_158:
          v7 = v34;
          goto LABEL_159;
        }

        if (*(a1 + 797) == 1)
        {
          switch(*(&v116 + 1))
          {
            case 4:
              if (*v116 == 1852143205 || *v116 == 1313166917)
              {
                llvm::SmallVectorImpl<llvm::AsmRewrite>::emplace_back<llvm::AsmRewriteKind,llvm::SMLoc &,int>(*(a2 + 88), 1, v10, 4);
              }

              break;
            case 6:
              if (*v116 == 1835360095 && *(v116 + 4) == 29801)
              {
                goto LABEL_157;
              }

              if (*v116 == 1296392031 && *(v116 + 4) == 21577)
              {
                goto LABEL_157;
              }

              break;
            case 5:
              if ((*v116 != 1768777055 || *(v116 + 4) != 116) && (*v116 != 1229800799 || *(v116 + 4) != 84))
              {
                v43 = *v116 == 1734962273 && *(v116 + 4) == 110;
                if (v43 || (*v116 == 1195985985 ? (v44 = *(v116 + 4) == 78) : (v44 = 0), v44))
                {
                  goto LABEL_158;
                }

                break;
              }

LABEL_157:
              goto LABEL_158;
          }
        }

        if (((*(*a1 + 264))(a1) & 1) == 0)
        {
          v104 = v118;
          v105 = v119;
          v58 = v121;
          v107 = v121;
          if (v121 > 0x40)
          {
            operator new[]();
          }

          v59 = v120;
          v106 = v120;
          if (v58 >= 0x41 && v59)
          {
            MEMORY[0x277C69E10](v59, 0x1000C8000313F17);
          }

          goto LABEL_159;
        }

        goto LABEL_167;
      }

      if (v25 > 93)
      {
        if (v25 != 94)
        {
          v27 = a1;
          v28 = 1;
          goto LABEL_86;
        }

        v45 = a1;
        v46 = 0;
      }

      else
      {
        if (v25 != 92)
        {
          v32 = a1;
          v33 = 0;
LABEL_79:
          goto LABEL_158;
        }

        v45 = a1;
        v46 = 1;
      }

      goto LABEL_158;
    }

    if (*(a1 + 289))
    {
      v18 = 0;
      *&v116 = "";
      v17 = -1;
      goto LABEL_32;
    }

LABEL_82:
    (*(*a1 + 184))(a1);
    v31 = "unexpected token at start of statement";
LABEL_83:
    *&v122 = v31;
    LOWORD(v125) = 259;
    v34 = llvm::MCAsmParser::Error(a1, v10, &v122, 0, 0);
    goto LABEL_158;
  }

LABEL_58:
  v7 = 0;
LABEL_159:
  if (v121 >= 0x41 && v120)
  {
    MEMORY[0x277C69E10](v120, 0x1000C8000313F17);
  }

  return v7;
}