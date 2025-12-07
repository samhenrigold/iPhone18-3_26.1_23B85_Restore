__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_7>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_7>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_8>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, unint64_t *a4@<X3>)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v50 = a1[1];
  v51 = *(a1 + 16);
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOThreadDataSectionName, *(&llvm::orc::MachOThreadDataSectionName + 1), a4);
  v8 = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOThreadBSSSectionName, unk_2809A2EB0, v7);
  if (v8)
  {
    if (SectionByName)
    {
      llvm::jitlink::LinkGraph::mergeSections(a2, SectionByName, v8, 0);
    }

    else
    {
      SectionByName = v8;
    }
  }

  v10 = 0;
  v67 = v69;
  v68 = 0x800000000;
  v66[0] = llvm::orc::MachODataDataSectionName;
  v66[1] = llvm::orc::MachODataCommonSectionName;
  v66[2] = llvm::orc::MachOEHFrameSectionName;
  do
  {
    v11 = llvm::jitlink::LinkGraph::findSectionByName(a2, *&v66[v10], *(&v66[v10] + 1), v9);
    if (v11)
    {
      llvm::jitlink::SectionRange::SectionRange(&v59, v11);
      if (v59)
      {
        v12 = v60;
        if (v60)
        {
          v12 = *(v60 + 32) + *v60;
        }

        v13 = *v59;
        *v54 = v66[v10];
        *&v55 = v13;
        *(&v55 + 1) = v12;
        v14 = llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,true>>(&v67, v54);
        v15 = v67 + 32 * v68;
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        LODWORD(v68) = v68 + 1;
      }
    }

    ++v10;
  }

  while (v10 != 3);
  if (SectionByName)
  {
    llvm::jitlink::SectionRange::SectionRange(&v59, SectionByName);
    if (v59)
    {
      v17 = *v59;
      v18 = v60;
      if (v60)
      {
        v18 = *(v60 + 32) + *v60;
      }

      *v54 = llvm::orc::MachOThreadDataSectionName;
      *&v55 = v17;
      *(&v55 + 1) = v18;
      v19 = llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,true>>(&v67, v54);
      v20 = v67 + 32 * v68;
      v21 = v19[1];
      *v20 = *v19;
      v20[1] = v21;
      LODWORD(v68) = v68 + 1;
    }
  }

  v22 = 0;
  v65[0] = llvm::orc::MachOModInitFuncSectionName;
  do
  {
    v23 = llvm::jitlink::LinkGraph::findSectionByName(a2, *&v65[v22], *(&v65[v22] + 1), v9);
    if (v23)
    {
      llvm::jitlink::SectionRange::SectionRange(&v59, v23);
      if (v59)
      {
        v24 = v60;
        if (v60)
        {
          v24 = *(v60 + 32) + *v60;
        }

        v25 = *v59;
        *v54 = v65[v22];
        *&v55 = v25;
        *(&v55 + 1) = v24;
        v26 = llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,true>>(&v67, v54);
        v27 = v67 + 32 * v68;
        v28 = v26[1];
        *v27 = *v26;
        v27[1] = v28;
        LODWORD(v68) = v68 + 1;
      }
    }

    ++v22;
  }

  while (v22 != 2);
  LOBYTE(v59) = 0;
  v64 = 0;
  v73 = v75;
  v74 = 0x300000000;
  v76 = 0u;
  v77 = 0u;
  v70 = v72;
  v71 = 0x600000000;
  v53 = &v70;
  v29 = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOEHFrameSectionName, *(&llvm::orc::MachOEHFrameSectionName + 1), v9);
  if (v29)
  {
    llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_0::operator()(&v53, v29, &v76);
  }

  v31 = llvm::jitlink::LinkGraph::findSectionByName(a2, llvm::orc::MachOCompactUnwindInfoSectionName, unk_2809A2D30, v30);
  if (v31)
  {
    llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_0::operator()(&v53, v31, &v77);
  }

  v32 = v71;
  if (v71)
  {
    std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,false>(v70, v70 + v71, 126 - 2 * __clz(v71), 1);
    v33 = v74;
    if (v71)
    {
      v34 = v70;
      v35 = 8 * v71;
      do
      {
        v36 = *v34;
        v37 = **v34;
        if (v33 && (v38 = &v73[16 * v33], *(v38 - 1) == v37))
        {
          *(v38 - 1) = v36[4] + v37;
        }

        else
        {
          v39 = v36[4];
          if (v33 >= HIDWORD(v74))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v33 + 1, 16);
            v33 = v74;
          }

          v40 = &v73[16 * v33];
          *v40 = v37;
          *(v40 + 1) = v39 + v37;
          v33 = v74 + 1;
          LODWORD(v74) = v74 + 1;
        }

        ++v34;
        v35 -= 8;
      }

      while (v35);
    }

    v54[0] = &v55;
    v54[1] = 0x300000000;
    if (v33)
    {
      llvm::SmallVectorImpl<llvm::orc::ExecutorAddrRange>::operator=(v54, &v73);
    }

    *v57 = v76;
    *&v57[16] = v77;
    v32 = 1;
  }

  else
  {
    LOBYTE(v54[0]) = 0;
  }

  v58 = v32;
  if (v70 != v72)
  {
    free(v70);
  }

  if (v73 != v75)
  {
    free(v73);
  }

  if (v58)
  {
    v73 = v75;
    v74 = 0x300000000;
    if (LODWORD(v54[1]))
    {
      llvm::SmallVectorImpl<llvm::orc::ExecutorAddrRange>::operator=(&v73, v54);
    }

    v76 = *v57;
    v77 = *&v57[16];
    if (v64 == 1)
    {
      llvm::SmallVectorImpl<llvm::orc::ExecutorAddrRange>::operator=(&v59, &v73);
      v62 = v76;
      v63 = v77;
    }

    else
    {
      v59 = v61;
      v60 = 0x300000000;
      if (v74)
      {
        llvm::SmallVectorImpl<llvm::orc::ExecutorAddrRange>::operator=(&v59, &v73);
      }

      v62 = v76;
      v63 = v77;
      v64 = 1;
    }

    if (v73 != v75)
    {
      free(v73);
    }

    if ((v58 & 1) != 0 && v54[0] != &v55)
    {
      free(v54[0]);
    }
  }

  if (v68 || v64 == 1)
  {
    v41 = *(v5 + 72);
    std::mutex::lock(v41 + 5);
    v42 = *(v5 + 72);
    v73 = v50;
    v54[0] = 0;
    v43 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v42 + 392), &v73, v54);
    v44 = v54[0];
    if (!v43)
    {
      v44 = (*(v42 + 392) + 16 * *(v42 + 408));
    }

    v53 = *(v44 + 1);
    std::mutex::unlock(v41 + 5);
    llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSOptional<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>>,llvm::orc::ExecutorAddr,std::optional<std::tuple<llvm::SmallVector<llvm::orc::ExecutorAddrRange,3u>,llvm::orc::ExecutorAddrRange,llvm::orc::ExecutorAddrRange>>,llvm::SmallVector<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,8u>>(&v73, *(*(v5 + 72) + 208), &v53, &v59, &v67);
    v54[0] = v73;
    v54[1] = v56;
    v55 = xmmword_2750C12E0;
    if (v75[0])
    {
      llvm::SmallVectorImpl<char>::operator=(&v54[1], &v74);
    }

    llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSOptional<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>,llvm::orc::shared::SPSSequence<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>>>,llvm::orc::ExecutorAddr,std::optional<std::tuple<llvm::SmallVector<llvm::orc::ExecutorAddrRange,3u>,llvm::orc::ExecutorAddrRange,llvm::orc::ExecutorAddrRange>>,llvm::SmallVector<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,8u>>(&v70, *(*(v5 + 72) + 224), &v53, &v59, &v67);
    v56[3] = v70;
    *v57 = &v57[24];
    *&v57[8] = xmmword_2750C12E0;
    if (v72[0])
    {
      llvm::SmallVectorImpl<char>::operator=(v57, &v71);
    }

    llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v70);
    llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::~Expected(&v73);
    if (v51)
    {
      v49 = *(v5 + 72);
      std::mutex::lock(v49 + 5);
      std::vector<llvm::orc::shared::AllocActionCallPair>::emplace_back<llvm::orc::shared::AllocActionCallPair>((*(*(v5 + 72) + 384) + 56), v54);
      std::mutex::unlock(v49 + 5);
    }

    else
    {
      v45 = a2[35];
      v46 = (a2 + 34);
      if (v45 >= a2[36])
      {
        v47 = std::vector<llvm::orc::shared::AllocActionCallPair>::__emplace_back_slow_path<llvm::orc::shared::AllocActionCallPair>(v46, v54);
      }

      else
      {
        std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,0>(v46, a2[35], v54);
        v47 = v45 + 112;
      }

      a2[35] = v47;
    }

    if (*v57 != &v57[24])
    {
      free(*v57);
    }

    if (v54[1] != v56)
    {
      free(v54[1]);
    }

    v48 = v64;
    *a3 = 0;
    if ((v48 & 1) != 0 && v59 != v61)
    {
      free(v59);
    }
  }

  else
  {
    *a3 = 0;
  }

  if (v67 != v69)
  {
    free(v67);
  }
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_9>(llvm::jitlink::LinkGraph *this@<X1>, void *a2@<X8>)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x600000000;
  llvm::jitlink::LinkGraph::defined_symbols(v15, this);
  if (v15[0] != v17 || v16 != v18)
  {
    v5 = *v16;
    if (*v16)
    {
      v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 224);
      v8 = *(this + 28) + 8 * *(this + 60);
      if (v8 != v6)
      {
        v9 = v6;
        v10 = v7;
        do
        {
          v11 = **v9;
          if (v11 && *v11 >= 8uLL && v11[2] == 0x246E6F6974636573)
          {
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v19, *v9);
          }

          do
          {
            ++v9;
          }

          while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v9 != v8);
      }

      if (v20)
      {
        v12 = v19;
        v13 = 8 * v20;
        do
        {
          v14 = *v12++;
          llvm::jitlink::LinkGraph::makeDefined(this, v14, *(v5 + 8), 0, 0, 1, 3, 1);
          v13 -= 8;
        }

        while (v13);
      }
    }
  }

  if (v19 != v21)
  {
    free(v19);
  }

  *a2 = 0;
}

uint64_t llvm::jitlink::LinkGraph::makeDefined(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8)
{
  if ((*(a2[1] + 8) & 2) != 0)
  {
    v21[0] = a2;
    v15 = a1 + 248;
  }

  else
  {
    v21[0] = a2;
    v15 = a1 + 224;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v15, v21);
  v16 = a2[2] & 0xE000000000000000 | a4 & 0x1FFFFFFFFFFFFFFLL | ((a6 & 1) << 57) | ((a7 & 3) << 58);
  v17 = 0x1000000000000000;
  if (!a8)
  {
    v17 = 0;
  }

  a2[1] = a3;
  a2[2] = v16 | v17;
  a2[3] = a5;
  v18 = *(a3 + 16);
  v20 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v18 + 56, &v20, v21);
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::$_10>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 72);
  std::mutex::lock(v6 + 5);
  v7 = *(v5 + 72);
  v8 = *(v7 + 384);
  v9 = v8[1].__cv_.__sig - 1;
  v8[1].__cv_.__sig = v9;
  if (v9)
  {
    std::ostringstream::basic_ostringstream[abi:nn200100](&v40);
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, "Bootstrap: Ended pipeline for ", 30);
    v13 = *(a2 + 96);
    v12 = a2 + 96;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v15, v16);
    v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " (ActiveGraphs = ", 17);
    v19 = MEMORY[0x277C69BB0](v18, v8[1].__cv_.__sig);
    v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, " under ", 7);
    v21 = MEMORY[0x277C69B90](v20, v7 + 320);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, ")", 1);
    std::stringbuf::str();
    if (v39 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    xojit_log_debug_slow(v22);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    v40 = *MEMORY[0x277D82828];
    *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
    v41 = MEMORY[0x277D82878] + 16;
    if (v44 < 0)
    {
      operator delete(v43);
    }
  }

  else
  {
    std::condition_variable::notify_all(v8);
    v23 = *(v5 + 72);
    v24 = *(v23 + 384);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v40);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v40, "Bootstrap: Ended pipeline for ", 30);
    v28 = *(a2 + 96);
    v27 = a2 + 96;
    v26 = v28;
    v29 = *(v27 + 23);
    if (v29 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v27 + 23);
    }

    else
    {
      v31 = *(v27 + 8);
    }

    v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v30, v31);
    v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, " (ActiveGraphs = ", 17);
    v34 = MEMORY[0x277C69BB0](v33, *(v24 + 48));
    v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " under ", 7);
    v36 = MEMORY[0x277C69B90](v35, v23 + 320);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, ") -> Notifying CV", 17);
    std::stringbuf::str();
    if (v39 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    xojit_log_debug_slow(v37);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    v40 = *MEMORY[0x277D82828];
    *(&v40 + *(v40 - 24)) = *(MEMORY[0x277D82828] + 24);
    v41 = MEMORY[0x277D82878] + 16;
    if (v44 < 0)
    {
      operator delete(v43);
    }
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v42);
  std::ostream::~ostream();
  MEMORY[0x277C69DA0](&v45);
  *a3 = 0;
  std::mutex::unlock(v6 + 5);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

void *llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::grow(uint64_t a1, int a2)
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
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
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
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          *v25 = *v16;
          v19 = *(v16 + 8);
          *(v18 + 4) = *(v16 + 16);
          v18[1] = v19;
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
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 24 * v20 - 24;
    v23 = vdupq_n_s64(v22 / 0x18);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[3] = -4096;
      }

      v21 += 2;
      result += 6;
    }

    while (((v22 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

unint64_t **std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,false>(unint64_t **result, unint64_t **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*v76 < **v8)
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = (v8 + 2);
      v87 = v8[2];
      v88 = *v8;
      v89 = *v85;
      v90 = **v8;
      v91 = *v87;
      if (*v85 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_188;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_188:
            v85 = v87;
            goto LABEL_189;
          }
        }

LABEL_180:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_189:
      v146 = *(a2 - 1);
      if (*v146 < *v85)
      {
        *v86 = v146;
        *(a2 - 1) = v85;
        v147 = *v86;
        v148 = *v84;
        v149 = *v147;
        if (*v147 < *v148)
        {
          v8[1] = v147;
          v8[2] = v148;
          v150 = *v8;
          if (v149 < **v8)
          {
            *v8 = v147;
            v8[1] = v150;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *v99;
            if (*v99 < *v100)
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 >= *v100)
                {
                  v104 = (v8 + v103);
                  goto LABEL_129;
                }
              }

              v104 = v8;
LABEL_129:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v143 = *v7;
          v142 = v7[1];
          v7 = v94;
          v144 = *v142;
          if (*v142 < *v143)
          {
            v145 = v7;
            do
            {
              *v145 = v143;
              v143 = *(v145 - 2);
              --v145;
            }

            while (v144 < *v143);
            *v145 = v142;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            v110 = *v109;
            if (2 * v107 + 2 >= v9)
            {
              v112 = *v110;
            }

            else
            {
              v111 = v109[1];
              v112 = *v110;
              result = *v111;
              v113 = *v110 >= *v111;
              if (*v110 <= *v111)
              {
                v112 = *v111;
              }

              if (*v110 < *v111)
              {
                v110 = v109[1];
                ++v109;
              }

              if (!v113)
              {
                v108 = 2 * v107 + 2;
              }
            }

            v114 = &v8[v107];
            v115 = *v114;
            v116 = **v114;
            if (v112 >= v116)
            {
              do
              {
                v117 = v109;
                *v114 = v110;
                if (v105 < v108)
                {
                  break;
                }

                v118 = (2 * v108) | 1;
                v109 = &v8[v118];
                v108 = 2 * v108 + 2;
                v110 = *v109;
                if (v108 >= v9)
                {
                  result = *v110;
                  v108 = v118;
                }

                else
                {
                  v119 = v109[1];
                  result = *v110;
                  v120 = *v110 >= *v119;
                  if (*v110 <= *v119)
                  {
                    result = *v119;
                  }

                  if (*v110 < *v119)
                  {
                    v110 = v109[1];
                    ++v109;
                  }

                  if (v120)
                  {
                    v108 = v118;
                  }
                }

                v114 = v117;
              }

              while (result >= v116);
              *v117 = v115;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v121 = 0;
          v122 = *v8;
          v123 = v8;
          do
          {
            v124 = &v123[v121];
            v125 = (v124 + 1);
            v126 = v124[1];
            v127 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 >= v9)
            {
              v121 = v127;
            }

            else
            {
              v130 = v124[2];
              v128 = (v124 + 2);
              v129 = v130;
              result = *v126;
              if (*v126 >= *v130)
              {
                v121 = v127;
              }

              else
              {
                v126 = v129;
                v125 = v128;
              }
            }

            *v123 = v126;
            v123 = v125;
          }

          while (v121 <= ((v9 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v122;
          }

          else
          {
            *v125 = *a2;
            *a2 = v122;
            v131 = (v125 - v8 + 8) >> 3;
            v132 = v131 < 2;
            v133 = v131 - 2;
            if (!v132)
            {
              v134 = v133 >> 1;
              v135 = &v8[v134];
              v136 = *v135;
              v137 = *v125;
              v138 = **v125;
              if (**v135 < v138)
              {
                do
                {
                  v139 = v135;
                  *v125 = v136;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = &v8[v134];
                  v136 = *v135;
                  v125 = v139;
                }

                while (**v135 < v138);
                *v139 = v137;
              }
            }
          }

          v132 = v9-- <= 2;
        }

        while (!v132);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *v12;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = **v10;
      v17 = **v8;
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (**v10 < **v8)
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*v24 < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *v26;
      v29 = *v27;
      v30 = *(a2 - 2);
      v31 = *v30;
      if (*v26 >= *v27)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (**v25 < *v32)
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*v34 < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *v37;
      v40 = *v38;
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v37 >= *v38)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (**v35 < *v43)
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*v44 < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = **v11;
      v48 = **v25;
      v49 = *v35;
      v50 = **v35;
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = **v8;
    v21 = **v11;
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (**v8 < **v11)
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 >= v20)
    {
      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*v33 >= v21)
      {
        goto LABEL_57;
      }

      *v8 = v33;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v19;
LABEL_57:
    --a3;
    v52 = *v8;
    v53 = **v8;
    if ((a4 & 1) != 0 || **(v8 - 1) < v53)
    {
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*v55 < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*v59 >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*v58 >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*v63 < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*v64 >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_80;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      if (v53 >= **(a2 - 1))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= **v8);
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *v67);
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *v70);
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *v73);
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *v74);
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *v79;
  v81 = **v8;
  v82 = *(a2 - 1);
  v83 = *v82;
  if (*v79 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v141 = *v8;
      v140 = v8[1];
      if (*v140 < **v8)
      {
        *v8 = v140;
        v8[1] = v141;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v151 = *(a2 - 1);
      if (*v151 >= v81)
      {
        return result;
      }

      v8[1] = v151;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

unint64_t **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4, unint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **>(unint64_t **a1, unint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v6 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*v31 < **a1)
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*v47 >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *v21;
    v26 = **a1;
    v27 = *v23;
    if (*v21 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*v42 < *v21)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *v43;
          if (*v43 < *v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < **a1)
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = **a1;
  v17 = *v11;
  if (*v13 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = **v33;
    if (v38 < *v37)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *v37)
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,llvm::orc::ExecutorAddrRange>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 32 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 32);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 32);
    }
  }

  return v2;
}

uint64_t llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>::serialize<llvm::orc::ExecutorAddrRange,llvm::orc::ExecutorAddrRange>(void *a1, void *a2, void *a3)
{
  result = llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned long long>::serialize<llvm::orc::ExecutorAddr,unsigned long long>(a1, a2, a2 + 1);
  if (result)
  {

    return llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr,unsigned long long>::serialize<llvm::orc::ExecutorAddr,unsigned long long>(a1, a3, a3 + 1);
  }

  return result;
}

void llvm::detail::UniqueFunctionBase<void,unsigned long>::CallImpl<llvm::orc::MachOPlatform::MachOPlatformPlugin::populateObjCRuntimeObject(llvm::jitlink::LinkGraph &,llvm::orc::MaterializationResponsibility &)::$_2>(llvm::jitlink::LinkGraph **a1, int a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*a1 + 224);
  v8 = *(v4 + 28) + 8 * *(v4 + 60);
  if (v8 == v6)
  {
LABEL_9:
    v13 = *a1;
    v14 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(*a1 + 248);
    v16 = *(v13 + 31) + 8 * *(v13 + 66);
    if (v16 == v14)
    {
LABEL_17:
      llvm::jitlink::LinkGraph::defined_symbols(v40, *a1);
      v38[0] = v40[0];
      v38[1] = v40[1];
      v38[2] = v40[2];
      v39 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v41;
      if (*&v40[0] == v42 && v41 == v43)
      {
LABEL_27:
        v11 = llvm::jitlink::LinkGraph::addExternalSymbol(*a1, "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL, 8, 0);
      }

      else
      {
        while (1)
        {
          v11 = *v22;
          v23 = **v22;
          if (v23)
          {
            if (*v23 == 35 && !memcmp(v23 + 2, "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL))
            {
              break;
            }
          }

          llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v38, v37);
          v22 = v39;
          if (*&v38[0] == v20 && v39 == v21)
          {
            goto LABEL_27;
          }
        }

        std::mutex::lock((v5 + 8));
        v25 = *a1[2];
        v37[0] = 0;
        v26 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>,llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::MachOPlatform::MachOPlatformPlugin::ObjCImageInfo>>::LookupBucketFor<llvm::orc::JITDylib const*>(*(v5 + 10), *(v5 + 24), v25, v37);
        v27 = v37[0];
        if (v26)
        {
          v28 = v37[0] == *(v5 + 10) + 24 * *(v5 + 24);
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          std::mutex::unlock((v5 + 8));
        }

        else
        {
          *(v37[0] + 16) = 1;
          v29 = *(v27 + 12);
          std::mutex::unlock((v5 + 8));
          v30 = v11[1];
          v31 = v30[3];
          if ((v30[1] & 4) != 0)
          {
            v34 = v30[3];
          }

          else
          {
            v32 = v30[4];
            v33 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a1, v32, 0);
            v34 = v33;
            if (v32)
            {
              memmove(v33, v31, v32);
            }

            v30[3] = v34;
            v30[4] = v32;
            v30[1] |= 4uLL;
          }

          v35 = bswap32(v29);
          if ((*(*a1 + 47) - 1) >= 2)
          {
            v36 = v35;
          }

          else
          {
            v36 = v29;
          }

          v34[1] = v36;
        }
      }
    }

    else
    {
      v17 = v14;
      v18 = v15;
      while (1)
      {
        v11 = *v17;
        v19 = **v17;
        if (v19)
        {
          if (*v19 == 35 && !memcmp(v19 + 2, "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL))
          {
            break;
          }
        }

        do
        {
          ++v17;
        }

        while (v17 != v18 && (*v17 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v17 == v16)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v9 = v6;
    v10 = v7;
    while (1)
    {
      v11 = *v9;
      v12 = **v9;
      if (v12)
      {
        if (*v12 == 35 && !memcmp(v12 + 2, "__llvm_jitlink_macho_objc_imageinfo", 0x23uLL))
        {
          break;
        }
      }

      do
      {
        ++v9;
      }

      while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  llvm::jitlink::Block::addEdge(a1[3], 2, a2 + 32, v11, -*a1[3]);
}

void *llvm::jitlink::LinkGraph::addExternalSymbol(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = *(a1 + 120);
  std::mutex::lock(v10);
  v14 = 0;
  v11 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v10[1], a2, a3, &v14);
  v13 = v11;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v11 + 1, 1uLL);
  }

  std::mutex::unlock(v10);
  result = llvm::jitlink::LinkGraph::addExternalSymbol(a1, &v13, a4, v5);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void *llvm::jitlink::LinkGraph::addExternalSymbol(unsigned int *a1, void *a2, uint64_t a3, int a4)
{
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
  v9 = v8[1] & 0xFFFFFFFFFFFFFFFCLL;
  *v8 = 0;
  v8[1] = v9;
  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  v11 = v10;
  *v10 = 0;
  *v10 = *a2;
  *a2 = 0;
  v12 = 0x4000000000000000;
  if (!a4)
  {
    v12 = 0;
  }

  v10[1] = v8;
  v10[2] = v12;
  v10[3] = a3;
  v14 = v10;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 56), &v14, v15);
  return v11;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::grow(uint64_t *a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::moveFromOldBuckets(a1, v4, v4 + 24 * v3, v10);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 24 * v11;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v12 -= 24;
    }

    while (v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = result;
  *(result + 8) = 0;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = *result;
    v9 = 24 * v7;
    do
    {
      *v8 = xmmword_2750C1220;
      v8 = (v8 + 24);
      v9 -= 24;
    }

    while (v9);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(v6, a2, &v11, a4);
      v10 = v11;
      *v11 = *a2;
      *(v10 + 2) = *(a2 + 16);
      ++*(v6 + 8);
    }

    a2 += 24;
  }

  return result;
}

const void **std::vector<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::push_back[abi:nn200100](const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::orc::MachOBuilderLoadCommandBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)13>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC6B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)13>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC6B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

unint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)13>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = vrev32q_s8(v7);
  v10 = vrev32_s8(v8);
  if (a5)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s32(v11);
  v13 = a2 + a4;
  *v13 = vbslq_s8(v12, v9, v7);
  *(v13 + 16) = vbsl_s8(*v12.i8, v10, v8);
  v14 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v14 = *v14;
  }

  strcpy((v13 + 24), v14);
  v15 = *(a1 + 55);
  if (v15 < 0)
  {
    v15 = *(a1 + 40);
  }

  return a4 + (v15 & 0xFFFFFFFFFFFFFFFCLL) + 28;
}

uint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)13>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC6B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)13>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC6B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::MachOBuilderLoadCommandImplBase<(llvm::MachO::LoadCommandType)50>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = vrev32q_s8(v5);
  v8 = vrev32_s8(v6);
  if (a5)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s32(v9);
  v11 = a2 + a4;
  *v11 = vbslq_s8(v10, v7, v5);
  *(v11 + 16) = vbsl_s8(*v10.i8, v8, v6);
  return a4 + 24;
}

uint64_t llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)12>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)12>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

unint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)12>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = vrev32q_s8(v7);
  v10 = vrev32_s8(v8);
  if (a5)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s32(v11);
  v13 = a2 + a4;
  *v13 = vbslq_s8(v12, v9, v7);
  *(v13 + 16) = vbsl_s8(*v12.i8, v10, v8);
  v14 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v14 = *v14;
  }

  strcpy((v13 + 24), v14);
  v15 = *(a1 + 55);
  if (v15 < 0)
  {
    v15 = *(a1 + 40);
  }

  return a4 + (v15 & 0xFFFFFFFFFFFFFFFCLL) + 28;
}

uint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)12>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)12>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC740;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)2147483672>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7A0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)2147483672>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7A0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

unint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)2147483672>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = vrev32q_s8(v7);
  v10 = vrev32_s8(v8);
  if (a5)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s32(v11);
  v13 = a2 + a4;
  *v13 = vbslq_s8(v12, v9, v7);
  *(v13 + 16) = vbsl_s8(*v12.i8, v10, v8);
  v14 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v14 = *v14;
  }

  strcpy((v13 + 24), v14);
  v15 = *(a1 + 55);
  if (v15 < 0)
  {
    v15 = *(a1 + 40);
  }

  return a4 + (v15 & 0xFFFFFFFFFFFFFFFCLL) + 28;
}

uint64_t llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)2147483672>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7A0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void llvm::orc::MachOBuilderDylibLoadCommand<(llvm::MachO::LoadCommandType)2147483672>::~MachOBuilderDylibLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7A0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)2147483676>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7D0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)2147483676>::~MachOBuilderLoadCommand(uint64_t a1)
{
  *a1 = &unk_2883EC7D0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x277C69E40);
}

unint64_t llvm::orc::MachOBuilderLoadCommand<(llvm::MachO::LoadCommandType)2147483676>::write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v8) = *(a1 + 8);
  v7 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = bswap32(v8);
  LODWORD(v11) = bswap32(v7);
  v12 = bswap32(v9);
  if (a5)
  {
    v11 = v11;
  }

  else
  {
    v11 = v7;
  }

  if (a5)
  {
    v8 = v10;
  }

  else
  {
    v8 = v8;
  }

  if (a5)
  {
    v9 = v12;
  }

  v13 = a2 + a4;
  *v13 = v8 | (v11 << 32);
  *(v13 + 8) = v9;
  v14 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v14 = *v14;
  }

  strcpy((v13 + 12), v14);
  v15 = *(a1 + 47);
  if (v15 < 0)
  {
    v15 = *(a1 + 32);
  }

  return a4 + (v15 & 0xFFFFFFFFFFFFFFFCLL) + 16;
}

double _GLOBAL__sub_I_MachOPlatform_cpp()
{
  result = *&llvm::orc::MachOObjCCatListSectionName;
  xmmword_2809A42A8 = llvm::orc::MachOObjCCatList2SectionName;
  unk_2809A42B8 = llvm::orc::MachOObjCClassListSectionName;
  xmmword_2809A42C8 = llvm::orc::MachOObjCClassRefsSectionName;
  unk_2809A42D8 = llvm::orc::MachOObjCConstSectionName;
  xmmword_2809A42E8 = llvm::orc::MachOObjCDataSectionName;
  unk_2809A42F8 = llvm::orc::MachOObjCProtoListSectionName;
  xmmword_2809A4308 = llvm::orc::MachOObjCProtoRefsSectionName;
  unk_2809A4318 = llvm::orc::MachOObjCNLCatListSectionName;
  xmmword_2809A4328 = llvm::orc::MachOObjCNLClassListSectionName;
  unk_2809A4338 = llvm::orc::MachOObjCSelRefsSectionName;
  _MergedGlobals_130 = llvm::orc::MachOObjCClassNameSectionName;
  unk_2809A4218 = llvm::orc::MachOObjCMethNameSectionName;
  xmmword_2809A4228 = llvm::orc::MachOObjCMethTypeSectionName;
  unk_2809A4238 = llvm::orc::MachOSwift5TypesSectionName;
  xmmword_2809A4248 = llvm::orc::MachOSwift5TypeRefSectionName;
  unk_2809A4258 = llvm::orc::MachOSwift5FieldMetadataSectionName;
  xmmword_2809A4268 = llvm::orc::MachOSwift5EntrySectionName;
  unk_2809A4278 = llvm::orc::MachOSwift5ProtoSectionName;
  xmmword_2809A4288 = llvm::orc::MachOSwift5ProtosSectionName;
  *&qword_2809A4298 = llvm::orc::MachOObjCCatListSectionName;
  return result;
}

void llvm::jitlink::LinkGraph::intern(uint64_t a1@<X0>, uint64_t *a2@<X1>, size_t a3@<X2>, size_t **a4@<X8>)
{
  v7 = *(a1 + 120);
  std::mutex::lock(v7);
  v10 = 0;
  v8 = llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v7[1], a2, a3, &v10);
  v9 = *v8;
  *a4 = *v8;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v9 + 1, 1uLL);
  }

  std::mutex::unlock(v7);
}

llvm::orc::ObjectLinkingLayer *llvm::orc::ObjectLinkingLayer::ObjectLinkingLayer(llvm::orc::ObjectLinkingLayer *this, llvm::orc::ExecutionSession *a2)
{
  *(this + 1) = a2;
  *this = &unk_2883EC800;
  *(this + 2) = &unk_2883EC858;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = *(*(a2 + 9) + 120);
  *(this + 12) = 0;
  *(this + 52) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  llvm::orc::ExecutionSession::registerResourceManager(a2, this + 16);
  return this;
}

void llvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer(llvm::orc::ObjectLinkingLayer *this)
{
  *this = &unk_2883EC800;
  *(this + 2) = &unk_2883EC858;
  llvm::orc::ExecutionSession::deregisterResourceManager(*(this + 1), this + 16);
  v3 = (this + 168);
  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::destroyAll(this + 36);
  MEMORY[0x277C69E30](*(this + 18), 8);
  std::__function::__value_func<void ()(std::unique_ptr<llvm::MemoryBuffer>)>::~__value_func[abi:nn200100](this + 112);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((this + 24));
}

{
  llvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer(this);

  JUMPOUT(0x277C69E40);
}

void non-virtual thunk tollvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer(llvm::orc::ObjectLinkingLayer *this)
{
  llvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer((this - 16));
}

{
  llvm::orc::ObjectLinkingLayer::~ObjectLinkingLayer((this - 16));

  JUMPOUT(0x277C69E40);
}

void llvm::orc::ObjectLinkingLayer::add(uint64_t a1, atomic_uint **a2, llvm::jitlink::LinkGraph **a3)
{
  atomic_load(*a2 + 1);
  v4 = *a3;
  *a3 = 0;
  v42 = *(a1 + 8);
  v43 = 0uLL;
  v44 = 0;
  v45 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(&v51, v4);
  *__p = v51;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v5 = v55;
  v6 = v56;
  v7 = v54;
  if (v51 != v55 || v50 != v56)
  {
    do
    {
      v8 = *v7;
      v9 = (*v7)[2];
      v10 = (v9 >> 58) & 3;
      if (v10 != 3)
      {
        v11 = HIBYTE(v9);
        v12 = v11 & 2;
        if (!v10)
        {
          v12 = v11 & 2 | 0x10;
        }

        if (v10 == 2)
        {
          v13 = v11 & 2 | 0x40;
        }

        else
        {
          v13 = v12;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v43, v8)[4] = (v13 | v11 & 0x20) << 8;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(__p, v46);
      v7 = v50;
    }

    while (__p[0] != v5 || v50 != v6);
  }

  v15 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v4 + 248);
  v17 = *(v4 + 248) + 8 * *(v4 + 264);
  if (v17 != v15)
  {
    v18 = v15;
    v19 = v16;
    do
    {
      v20 = (*v18)[2];
      v21 = (v20 >> 58) & 3;
      if (v21 != 3)
      {
        v22 = HIBYTE(v20);
        v23 = v22 & 2;
        if (!v21)
        {
          v23 = v22 & 2 | 0x10;
        }

        if (v21 == 2)
        {
          v24 = v22 & 2 | 0x40;
        }

        else
        {
          v24 = v23;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v43, *v18)[4] = (v24 | v22 & 0x20) << 8;
      }

      do
      {
        ++v18;
      }

      while (v18 != v19 && (*v18 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v18 != v17);
  }

  v25 = *(v4 + 180);
  v26 = v25 == 5 || v25 == 3;
  if (v26 && *(v4 + 208))
  {
    v27 = *(v4 + 216);
    if (v27)
    {
      v28 = 24 * v27;
      v29 = *(v4 + 200);
      while (*v29 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v29 += 3;
        v28 -= 24;
        if (!v28)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v29 = *(v4 + 200);
    }

    v30 = *(v4 + 200) + 24 * v27;
LABEL_40:
    if (v29 != v30)
    {
      v31 = v29[2];
      if (v25 == 3)
      {
        if (!llvm::orc::isELFInitializerSection(*v31, *(v31 + 8)))
        {
          goto LABEL_46;
        }

        goto LABEL_49;
      }

      if (v25 == 5 && (llvm::orc::isMachOInitializerSection(*v31, *(v31 + 8)) & 1) != 0)
      {
LABEL_49:
        __p[0] = 0;
        __p[1] = 0;
        *&v48 = 0;
        DWORD2(v51) = 0;
        BYTE8(v53) = 0;
        *&v54 = 0;
        DWORD2(v54) = 1;
        *&v53 = 0;
        v52 = 0uLL;
        *&v51 = &unk_2883EB8F0;
        v55 = __p;
        llvm::raw_ostream::SetUnbuffered(&v51);
        if (*(&v52 + 1) - v53 > 1uLL)
        {
          *v53 = 11812;
          *&v53 = v53 + 2;
        }

        else
        {
          llvm::raw_ostream::write(&v51, "$.", 2uLL);
        }

        v34 = *(v4 + 96);
        v33 = v4 + 96;
        v32 = v34;
        v35 = *(v33 + 23);
        if (v35 >= 0)
        {
          v36 = v33;
        }

        else
        {
          v36 = v32;
        }

        if (v35 >= 0)
        {
          v37 = *(v33 + 23);
        }

        else
        {
          v37 = *(v33 + 8);
        }

        llvm::raw_ostream::write(&v51, v36, v37);
        if (*(&v52 + 1) - v53 > 7uLL)
        {
          *v53 = 0x7374696E695F5F2ELL;
          *&v53 = v53 + 8;
        }

        else
        {
          llvm::raw_ostream::write(&v51, ".__inits", 8uLL);
        }

        llvm::raw_ostream::~raw_ostream(&v51);
        if ((SBYTE7(v48) & 0x80u) == 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        if ((SBYTE7(v48) & 0x80u) == 0)
        {
          v39 = SBYTE7(v48);
        }

        else
        {
          v39 = __p[1];
        }

        v40 = *(*(v42 + 72) + 8);
        std::mutex::lock(v40);
        LODWORD(v51) = 0;
        v41 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v40[1], v38, v39, &v51);
        if (v41 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v41 + 1, 1uLL);
        }

        std::mutex::unlock(v40);
        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        if (v45 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v45 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v45 = v41;
        goto LABEL_37;
      }

LABEL_46:
      while (1)
      {
        v29 += 3;
        if (v29 == v30)
        {
          break;
        }

        if (*v29 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_40;
        }
      }
    }
  }

LABEL_37:
  operator new();
}

void llvm::orc::ObjectLinkingLayer::emit(uint64_t a1, void **a2, uint64_t *a3)
{
  v3 = *MEMORY[0x277D85DE8];
  (*(**a3 + 16))();
  operator new();
}

{
  operator new();
}

uint64_t llvm::orc::ObjectLinkingLayerJITLinkContext::notifyMaterializing(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *v3;
      v9 = *(v6 + 24);
      v8 = *(v6 + 32);
      if (v8)
      {
        v10 = v8[1];
        v11 = v8[2] - v10;
        v12 = (*(*v8 + 16))(v8);
        *&v14 = v10;
        *(&v14 + 1) = v11;
        *&v15 = v12;
        *(&v15 + 1) = v13;
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      result = (*(*v7 + 24))(v7, v9, a2, v6, &v14);
      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

void llvm::orc::ObjectLinkingLayerJITLinkContext::notifyFailed(uint64_t a1, const void ***a2)
{
  v4 = *(a1 + 16);
  v5 = v4[21];
  v6 = v4[22];
  if (v5 != v6)
  {
    do
    {
      v7 = *a2;
      *a2 = 0;
      (*(**v5 + 48))(&v11);
      v13 = v11;
      v14 = v7;
      v11 = 0;
      llvm::ErrorList::join(&v14, &v13, &v12);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v14)
      {
        (*(*v14 + 1))(v14);
      }

      v8 = v11;
      *a2 = v12;
      v12 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v5 += 8;
    }

    while (v5 != v6);
    v4 = *(a1 + 16);
  }

  v9 = v4[1];
  v10 = *a2;
  *a2 = 0;
  llvm::orc::ExecutionSession::reportError(v9, &v10);
  if (v10)
  {
    (*(*v10 + 1))(v10);
  }

  llvm::orc::ExecutionSession::OL_notifyFailed(*(**(a1 + 24) + 32), *(a1 + 24));
}

llvm::orc::ObjectLinkingLayerJITLinkContext **std::unique_ptr<llvm::orc::ObjectLinkingLayerJITLinkContext>::~unique_ptr[abi:nn200100](llvm::orc::ObjectLinkingLayerJITLinkContext **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::orc::ObjectLinkingLayerJITLinkContext::~ObjectLinkingLayerJITLinkContext(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

void llvm::jitlink::JITLinkMemoryManager::deallocate(void *a1, uint64_t a2, void *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::push_back[abi:nn200100](v7, a3);
  *__p = *v7;
  v6 = v8;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  llvm::jitlink::JITLinkMemoryManager::deallocate(a1, a2, __p);
}

void llvm::orc::ObjectLinkingLayer::handleRemoveResources(int32x2_t *a1@<X0>, uint64_t a2@<X2>, const void ***a3@<X8>)
{
  *a3 = 0;
  v6 = a1[21];
  v7 = a1[22];
  if (*&v6 == *&v7)
  {
    goto LABEL_11;
  }

  v8 = 0;
  do
  {
    (*(***&v6 + 56))(&v18);
    v20 = v18;
    v21 = v8;
    v18 = 0;
    llvm::ErrorList::join(&v21, &v20, &v19);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    if (v21)
    {
      (*(*v21 + 1))(v21);
    }

    v8 = v19;
    v19 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    *&v6 += 8;
  }

  while (*&v6 != *&v7);
  *a3 = v8;
  if (!v8)
  {
LABEL_11:
    v9 = a1[1];
    std::recursive_mutex::lock(v9);
    v21 = 0;
    v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*&a1[18], a1[20].i32[0], a2, &v21);
    v11 = v21;
    if (v10)
    {
      v12 = v21 == (*&a1[18] + 32 * a1[20].u32[0]);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      std::recursive_mutex::unlock(v9);
      *a3 = 0;
    }

    else
    {
      v13 = v21[1];
      v15 = *(v21 + 1);
      v21[2] = 0;
      v11[3] = 0;
      *v11 = -2;
      v11[1] = 0;
      a1[19] = vadd_s32(a1[19], 0x1FFFFFFFFLL);
      std::recursive_mutex::unlock(v9);
      if (v13 != v15)
      {
        v14 = a1[11];
        v16 = v13;
        v17 = v15;
        llvm::jitlink::JITLinkMemoryManager::deallocate(a3, v14, &v16);
      }

      *a3 = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }
  }
}

void llvm::orc::ObjectLinkingLayer::handleTransferResources(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  __p[0] = 0;
  v8 = a1 + 18;
  v9 = llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*&a1[18], a1[20].i32[0], a4, __p);
  v10 = __p[0];
  if (v9)
  {
    v11 = __p[0] == (*v8 + 32 * v8[2].u32[0]);
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::FindAndConstruct(v8, &v24);
    v13 = v12[1];
    v14 = v12 + 1;
    v15 = v12[3];
    v16 = v10[1];
    v17 = v10[2];
    v18 = v17 - v16 + ((v12[2] - v13) >> 3);
    if (v18 > (v15 - v13) >> 3)
    {
      if (!(v18 >> 61))
      {
        __p[4] = v14;
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v18);
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    while (v16 != v17)
    {
      std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::push_back[abi:nn200100](v14, v16++);
    }

    __p[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*&a1[18], a1[20].i32[0], a4, __p))
    {
      v19 = __p[0];
      v20 = *(__p[0] + 1);
      if (v20)
      {
        *(__p[0] + 2) = v20;
        operator delete(v20);
      }

      *v19 = -2;
      a1[19] = vadd_s32(a1[19], 0x1FFFFFFFFLL);
    }
  }

  v22 = a1[21];
  v21 = a1[22];
  while (v22 != v21)
  {
    v23 = *v22++;
    (*(*v23 + 64))(v23, a2, a3, a4);
  }
}

void std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::push_back[abi:nn200100](void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(v9);
    }

    __p = 0;
    v11 = (8 * v6);
    *v11 = *a2;
    *a2 = -1;
    v12 = 8 * v6 + 8;
    v13 = 0;
    std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::__swap_out_circular_buffer(a1, &__p);
    v5 = a1[1];
    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = -1;
  }

  a1[1] = v5;
}

void anonymous namespace::LinkGraphMaterializationUnit::~LinkGraphMaterializationUnit(_anonymous_namespace_::LinkGraphMaterializationUnit *this)
{
  *this = &unk_2883EC888;
  std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](this + 6);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);
}

{
  *this = &unk_2883EC888;
  std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](this + 6);
  *this = &unk_2883EBCD0;
  v2 = *(this + 4);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 1);

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::LinkGraphMaterializationUnit::getName(_anonymous_namespace_::LinkGraphMaterializationUnit *this)
{
  v1 = *(this + 6);
  v4 = *(v1 + 96);
  v2 = v1 + 96;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void anonymous namespace::LinkGraphMaterializationUnit::materialize(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  v5 = v4;
  v6 = v2;
  llvm::orc::ObjectLinkingLayer::emit(v3, &v6, &v5);
}

void anonymous namespace::LinkGraphMaterializationUnit::discard(uint64_t a1, uint64_t a2, void *a3)
{
  llvm::jitlink::LinkGraph::defined_symbols(v12, *(a1 + 48));
  v10[0] = v12[0];
  v10[1] = v12[1];
  v10[2] = v12[2];
  v11 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v13;
  if (*&v12[0] != v14 || v13 != v15)
  {
    while (**v7 != *a3)
    {
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v10, &v9);
      v7 = v11;
      if (*&v10[0] == v5 && v11 == v6)
      {
        return;
      }
    }

    llvm::jitlink::LinkGraph::makeExternal(*(a1 + 48), *v7);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::jitlink::JITLinkMemoryManager::deallocate(std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)::{lambda(llvm::Error)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  v5 = v2;
  std::promise<llvm::MSVCPError>::set_value(v3, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void *std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6++ = *v5;
      *v5++ = -1;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<llvm::MemoryBuffer>)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 16);
    do
    {
      if (*(v3 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          *v3 = v4;
          operator delete(v4);
        }
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void llvm::orc::ObjectLinkingLayerJITLinkContext::~ObjectLinkingLayerJITLinkContext(llvm::orc::ObjectLinkingLayerJITLinkContext *this)
{
  llvm::orc::ObjectLinkingLayerJITLinkContext::~ObjectLinkingLayerJITLinkContext(this);

  JUMPOUT(0x277C69E40);
}

{
  v2 = *(*(this + 2) + 136);
  if (v2)
  {
    v3 = *(this + 4);
    if (v3)
    {
      *(this + 4) = 0;
      v6 = v3;
      (*(*v2 + 48))(v2, &v6);
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  v7 = (this + 64);
  std::vector<llvm::orc::SymbolDependenceGroup>::__destroy_vector::operator()[abi:nn200100](&v7);
  MEMORY[0x277C69E30](*(this + 5), 8);
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<llvm::orc::MaterializationResponsibility>::~unique_ptr[abi:nn200100](this + 3);
}

void llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__p, 0, sizeof(__p));
  v6 = *(a1 + 24);
  v7 = *v6;
  v8 = *(*v6 + 32);
  std::recursive_mutex::lock(v8);
  if (__p != (v7 + 208))
  {
    std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::__assign_with_size[abi:nn200100]<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>*,std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>*>(__p, *(v7 + 208), *(v7 + 216), (*(v7 + 216) - *(v7 + 208)) >> 4);
  }

  std::recursive_mutex::unlock(v8);
  v9 = *(*(a1 + 16) + 8);
  v24 = 0;
  v10 = 0uLL;
  v23 = 0u;
  if (!*(a2 + 2))
  {
    goto LABEL_19;
  }

  v11 = *a2;
  v12 = *(a2 + 4);
  if (v12)
  {
    v13 = 16 * v12;
    v14 = *a2;
    while ((*v14 | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      v14 += 16;
      v13 -= 16;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v14 = *a2;
  }

  v15 = v11 + 16 * v12;
  if (v14 == v15)
  {
LABEL_19:
    v18 = 0;
  }

  else
  {
    do
    {
      v16 = *(v14 + 8) == 1;
      v17 = *v14;
      v22 = v17;
      if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v17 + 8), 1uLL);
      }

      llvm::orc::SymbolLookupSet::add(&v23, &v22, v16);
      if ((v22 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        v14 += 16;
        if (v14 == v15)
        {
          goto LABEL_18;
        }
      }

      while ((*v14 | 8) == 0xFFFFFFFFFFFFFFF8);
    }

    while (v14 != v15);
LABEL_18:
    v10 = v23;
    v18 = v24;
  }

  v19 = *a3;
  *a3 = 0;
  v20 = v10;
  v21 = v18;
  v24 = 0;
  v23 = 0uLL;
  *&v27 = v19;
  v28 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallbacksHolder<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1},llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1},void>::Callbacks + 6;
  v26[0] = &unk_2883EC928;
  v26[1] = a1;
  v26[3] = v26;
  llvm::orc::ExecutionSession::lookup(v9, 0, __p, &v20, 3, &v27, v26);
}

uint64_t *llvm::orc::ObjectLinkingLayerJITLinkContext::notifyResolved@<X0>(llvm::orc::ObjectLinkingLayerJITLinkContext *this@<X0>, llvm::jitlink::LinkGraph *a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v5 = *(*(this + 2) + 105);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(v74, a2);
  v72[0] = v74[0];
  v72[1] = v74[1];
  v72[2] = v74[2];
  v73 = v75;
  v6 = v76;
  v7 = v77;
  v8 = v75;
  if (*&v74[0] != v76 || v75 != v77)
  {
    do
    {
      v10 = *v8;
      v11 = (*v8)[2];
      v12 = (v11 >> 58) & 3;
      if (v12 <= 1)
      {
        v13 = v10[1];
        v14 = *(a2 + 40);
        v15 = v14 > 0x24;
        v16 = (1 << v14) & 0x1800000006;
        v17 = v15 || v16 == 0;
        v9 = v17 ? *v13 + (v11 & 0x1FFFFFFFFFFFFFFLL) : (v11 & 0x1FFFFFFFFFFFFFFLL) + (v11 >> 63) + *v13;
        v18 = HIBYTE(v11);
        v19 = v12 ? v18 & 2 : v18 & 2 | 0x10;
        v20 = (v19 | v18 & 0x20) << 8;
        v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v78, v10);
        v21[1] = v9;
        *(v21 + 8) = v20;
        if (v5)
        {
          v22 = *(this + 3);
          *&v70 = 0;
          if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v22 + 16), v10, &v70) & 1) == 0)
          {
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v81, v10)[4] = v20;
          }
        }
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v72, &v70);
      v8 = v73;
    }

    while (*&v72[0] != v6 || v73 != v7);
  }

  v24 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 248);
  v26 = *(a2 + 31) + 8 * *(a2 + 66);
  if (v26 != v24)
  {
    v27 = v24;
    v28 = v25;
    do
    {
      v29 = *v27;
      v30 = (*v27)[2];
      v31 = (v30 >> 58) & 3;
      if (v31 <= 1)
      {
        v32 = v29[1];
        v33 = *(a2 + 40);
        v15 = v33 > 0x24;
        v34 = (1 << v33) & 0x1800000006;
        v35 = v15 || v34 == 0;
        v36 = v35 ? *v32 + (v30 & 0x1FFFFFFFFFFFFFFLL) : (v30 & 0x1FFFFFFFFFFFFFFLL) + (v30 >> 63) + *v32;
        v37 = HIBYTE(v30);
        v38 = v31 ? v37 & 2 : v37 & 2 | 0x10;
        v39 = (v38 | v37 & 0x20) << 8;
        v40 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v78, *v27);
        v40[1] = v36;
        *(v40 + 8) = v39;
        if (v5)
        {
          v41 = *(this + 3);
          *&v74[0] = 0;
          if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v41 + 16), v29, v74) & 1) == 0)
          {
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v81, v29)[4] = v39;
          }
        }
      }

      do
      {
        ++v27;
      }

      while (v27 != v28 && (*v27 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v27 != v26);
  }

  if (!v82 || (v42 = *(this + 3), v68 = 0uLL, v69 = 0, llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::copyFrom(&v68, &v81), v74[0] = v68, v68 = 0uLL, LODWORD(v74[1]) = v69, v69 = 0, llvm::orc::ExecutionSession::OL_defineMaterializing(v42, v74, a3), llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v74), llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v68), !*a3))
  {
    v71 = 0;
    v70 = 0uLL;
    v43 = *(this + 3);
    v44 = *(v43 + 24);
    if (!v44)
    {
      goto LABEL_67;
    }

    v45 = *(v43 + 16);
    v46 = *(v43 + 32);
    if (v46)
    {
      v47 = 16 * v46;
      v48 = v45;
      while ((*v48 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v48 += 16;
        v47 -= 16;
        if (!v47)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v48 = v45;
    }

    v49 = v45 + 16 * v46;
    if (v48 == v49)
    {
LABEL_67:
      v50 = 0;
    }

    else
    {
      v50 = 0;
LABEL_52:
      *&v74[0] = 0;
      v51 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v78, v48, v74);
      v52 = *&v74[0];
      if (!v51)
      {
        v52 = &v78[3 * v80];
      }

      if ((*(v48 + 9) & 0x40) != 0)
      {
        ++v50;
      }

      else if (v52 == &v78[3 * v80])
      {
        std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](&v70, v48);
      }

      else if (*(*(this + 2) + 104) == 1)
      {
        *(v52 + 8) = *(v48 + 8);
      }

      while (1)
      {
        v48 += 16;
        if (v48 == v49)
        {
          break;
        }

        if ((*v48 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          if (v48 != v49)
          {
            goto LABEL_52;
          }

          break;
        }
      }

      if (v70 != *(&v70 + 1))
      {
        v53 = *(*(*(*(this + 2) + 8) + 72) + 16);
        if (v53)
        {
          atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v44 = *(*(this + 3) + 24);
    }

    v66 = 0uLL;
    v67 = 0;
    if (v44 - v50 < v79)
    {
      if (v80)
      {
        v54 = 24 * v80;
        v55 = v78;
        while ((*v55 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v55 += 3;
          v54 -= 24;
          if (!v54)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        v55 = v78;
      }

      v56 = &v78[3 * v80];
      if (v55 != v56)
      {
LABEL_76:
        v57 = *(this + 3);
        *&v74[0] = 0;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v57 + 16), v55, v74) & 1) == 0)
        {
          std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](&v66, v55);
        }

        while (1)
        {
          v55 += 3;
          if (v55 == v56)
          {
            break;
          }

          if ((*v55 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v55 != v56)
            {
              goto LABEL_76;
            }

            break;
          }
        }

        if (v66 != *(&v66 + 1))
        {
          v58 = *(*(*(*(this + 2) + 8) + 72) + 16);
          if (v58)
          {
            atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
          }

          operator new();
        }
      }
    }

LABEL_85:
    *&v74[0] = &v66;
    std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](v74);
    *&v74[0] = &v70;
    std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](v74);
    llvm::orc::JITDylib::resolve(**(this + 3), *(this + 3), &v78, a3);
    if (!*a3)
    {
      v59 = *(this + 2);
      v60 = *(v59 + 168);
      v61 = *(v59 + 176);
      if (v60 != v61)
      {
        v62 = *(this + 3);
        do
        {
          v63 = *v60++;
          (*(*v63 + 32))(v63, v62);
        }

        while (v60 != v61);
      }

      *a3 = 0;
    }
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v78);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v81);
}

void llvm::orc::ObjectLinkingLayerJITLinkContext::notifyFinalized(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v20 = *a2;
  *a2 = -1;
  v6 = v4[21];
  v7 = v4[22];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      (*(**v6 + 40))(&v22);
      v24 = v22;
      v25 = v8;
      v22 = 0;
      llvm::ErrorList::join(&v25, &v24, &v23);
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      if (v25)
      {
        (*(*v25 + 1))(v25);
      }

      v8 = v23;
      v23 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v6 += 8;
    }

    while (v6 != v7);
    if (v8)
    {
      if (v5 != -1)
      {
        v9 = v4[11];
        v21 = v5;
        llvm::jitlink::JITLinkMemoryManager::deallocate(&v24, v9, &v21);
      }

      v15 = *(a1[2] + 8);
      v19 = v8;
      llvm::orc::ExecutionSession::reportError(v15, &v19);
      v16 = v19;
      if (!v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      (*(*v16 + 8))(v16);
LABEL_19:
      llvm::orc::ExecutionSession::OL_notifyFailed(*(*a1[3] + 32), a1[3]);
      return;
    }
  }

  if (v5 != -1)
  {
    v10 = *(v3 + 8);
    v11 = atomic_load((v10 + 8));
    v12 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 32);
    std::recursive_mutex::lock(v12);
    v13 = atomic_load((v10 + 8));
    if (v13)
    {
      operator new();
    }

    v25 = v10;
    v14 = llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::FindAndConstruct(v4 + 18, &v25);
    std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>::push_back[abi:nn200100](v14 + 1, &v20);
    std::recursive_mutex::unlock(v12);
  }

  llvm::orc::ExecutionSession::OL_notifyEmitted(*(*a1[3] + 32), a1[3], a1[8], 0xAAAAAAAAAAAAAAABLL * ((a1[9] - a1[8]) >> 4), &v25);
  if (v25)
  {
    v17 = *(a1[2] + 8);
    v18 = v25;
    llvm::orc::ExecutionSession::reportError(v17, &v18);
    v16 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }
}

uint64_t llvm::orc::ObjectLinkingLayerJITLinkContext::getMarkLivePass@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[3] = &llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::orc::ObjectLinkingLayerJITLinkContext::getMarkLivePass(llvm::Triple const&)::{lambda(llvm::jitlink::LinkGraph &)#1},llvm::orc::ObjectLinkingLayerJITLinkContext::getMarkLivePass(llvm::Triple const&)::{lambda(llvm::jitlink::LinkGraph &)#1},void>::Callbacks + 2;
  return result;
}

void *llvm::orc::ObjectLinkingLayerJITLinkContext::modifyPassConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v14 = a1;
  v15 = _MergedGlobals_5 + 2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](a3, &v14);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
  v8 = *(a1 + 16);
  v9 = *(v8 + 168);
  v10 = *(v8 + 176);
  if (v9 != v10)
  {
    v11 = *(a1 + 24);
    do
    {
      v12 = *v9++;
      (*(*v12 + 16))(v12, v11, a2, a3);
    }

    while (v9 != v10);
  }

  *&v14 = a1;
  v15 = &off_2815A4328 + 2;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](a3 + 9, &v14);
  result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
  *a4 = 0;
  return result;
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::CallImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1}>(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = *(a2 + 24) & 1;
  v4 = *a2;
  if (!v24)
  {
    a3.n128_u64[0] = 0;
    v22 = *(a2 + 8);
    v6 = v22;
    v7 = *(a2 + 16);
    v23 = *(a2 + 16);
    *(a2 + 16) = 0;
    LOBYTE(v8) = v6;
    *a2 = a3;
    v21 = v4;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (v6)
    {
      if (v7)
      {
        v8 = 24 * v7;
        v9 = v4;
        while ((*v9 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v9 += 24;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v9 = v4;
      }

      v13 = v4 + 24 * v7;
      if (v9 != v13)
      {
LABEL_12:
        v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::FindAndConstruct(&v18, v9);
        v15 = *(v9 + 16);
        v14[1] = *(v9 + 8);
        *(v14 + 8) = v15;
        while (1)
        {
          v9 += 24;
          if (v9 == v13)
          {
            break;
          }

          if ((*v9 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v9 != v13)
            {
              goto LABEL_12;
            }

            break;
          }
        }

        v11 = v18;
        v12 = v19;
        v10 = v20;
        LOBYTE(v8) = v27 & 0xFE;
        goto LABEL_17;
      }

      v10 = 0;
      v11 = 0;
      LOBYTE(v8) = 0;
    }

    else
    {
LABEL_8:
      v10 = 0;
      v11 = 0;
    }

    v12 = 0;
LABEL_17:
    v16 = *a1;
    v27 = v8;
    v25[0] = v11;
    v18 = 0;
    v19 = 0;
    v25[1] = v12;
    v26 = v10;
    v20 = 0;
    (*(*v16 + 16))(v16, v25);
    llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v25);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v18);
    return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v21);
  }

  *a2 = 0;
  v5 = *a1;
  v21 = 0;
  v29 = -1;
  v28[0] = v4;
  (*(*v5 + 16))(v5, v28, a3);
  llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v28);
  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v21);
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::MoveImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1}>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>>::DestroyImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1}>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__function::__func<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)#1},std::allocator<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)#1}>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EC928;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)#1},std::allocator<llvm::orc::ObjectLinkingLayerJITLinkContext::lookup(llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>> const&,std::unique_ptr<llvm::jitlink::JITLinkAsyncLookupContinuation>)::{lambda(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)#1}>,void ()(llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>> const&)>::operator()(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 2))
  {
    v2 = *(result + 8);
    v3 = *(a2 + 4);
    if (v3)
    {
      v4 = 32 * v3;
      for (i = *a2; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 32)
      {
        v4 -= 32;
        if (!v4)
        {
          return result;
        }
      }
    }

    else
    {
      i = *a2;
    }

    v6 = *a2 + 32 * v3;
LABEL_9:
    if (i != v6)
    {
      result = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin(i + 8);
      v8 = *(i + 8) + 8 * *(i + 24);
      if (v8 == result)
      {
        goto LABEL_25;
      }

      v9 = result;
      v10 = v7;
      while (1)
      {
        v11 = *i;
        v12 = *v9;
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v2 + 40), *(v2 + 56), v12, &v16);
        v13 = v16;
        if ((result & 1) == 0)
        {
          break;
        }

LABEL_18:
        v13[1] = v11;
        do
        {
          ++v9;
        }

        while (v9 != v10 && (*v9 | 8) == 0xFFFFFFFFFFFFFFF8);
        if (v9 == v8)
        {
LABEL_25:
          while (1)
          {
            i += 32;
            if (i == v6)
            {
              return result;
            }

            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v14 = *(v2 + 48);
      v15 = *(v2 + 56);
      if (4 * v14 + 4 >= 3 * v15)
      {
        v15 *= 2;
      }

      else if (v15 + ~v14 - *(v2 + 52) > v15 >> 3)
      {
LABEL_15:
        ++*(v2 + 48);
        if (*v13 != -8)
        {
          --*(v2 + 52);
        }

        *v13 = v12;
        v13[1] = 0;
        goto LABEL_18;
      }

      llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::orc::JITDylib::EmissionDepUnit *>>::grow(v2 + 40, v15);
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v2 + 40), *(v2 + 56), v12, &v16);
      v13 = v16;
      goto LABEL_15;
    }
  }

  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::getMarkLivePass(llvm::Triple const&)::{lambda(llvm::jitlink::LinkGraph &)#1}>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  llvm::jitlink::LinkGraph::defined_symbols(v14, this);
  v12[0] = v14[0];
  v12[1] = v14[1];
  v12[2] = v14[2];
  v13 = v15;
  v5 = v16;
  v6 = v17;
  v7 = v15;
  if (*&v14[0] != v16 || v15 != v17)
  {
    do
    {
      v8 = *v7;
      if (**v7)
      {
        v9 = *(v4 + 24);
        v11[0] = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v9 + 16), v8, v11))
        {
          v8[2] |= 0x1000000000000000uLL;
        }
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v12, v11);
      v7 = v13;
    }

    while (*&v12[0] != v5 || v13 != v6);
  }

  *a3 = 0;
}

uint64_t *llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::modifyPassConfig(llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v44 = 0uLL;
  v45 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v40[0] = v5;
  v40[1] = &v44;
  v40[2] = &v41;
  llvm::jitlink::LinkGraph::defined_symbols(&v34, this);
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v6 = v38;
  v7 = v39;
  v8 = v37;
  if (v34 != v38 || v37 != v39)
  {
    do
    {
      llvm::orc::ObjectLinkingLayerJITLinkContext::claimOrExternalizeWeakAndCommonSymbols(llvm::jitlink::LinkGraph &)::{lambda(llvm::jitlink::Symbol *)#1}::operator()(v40, *v8);
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v30, &v29);
      v8 = v33;
    }

    while (v30 != v6 || v33 != v7);
  }

  v10 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 248);
  v12 = *(this + 31) + 8 * *(this + 66);
  if (v12 != v10)
  {
    v13 = v10;
    v14 = v11;
    do
    {
      v15 = *v13++;
      llvm::orc::ObjectLinkingLayerJITLinkContext::claimOrExternalizeWeakAndCommonSymbols(llvm::jitlink::LinkGraph &)::{lambda(llvm::jitlink::Symbol *)#1}::operator()(v40, v15);
      while (v13 != v14 && (*v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v13;
      }
    }

    while (v13 != v12);
  }

  v16 = *(v5 + 24);
  v17 = v44;
  v44 = 0u;
  v18 = v45;
  v45 = 0;
  v34 = v17;
  v30 = 0uLL;
  LODWORD(v35) = v18;
  LODWORD(v31) = 0;
  llvm::orc::ExecutionSession::OL_defineMaterializing(v16, &v34, a3);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v34);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v30);
  v19 = v41;
  if (!*a3)
  {
    v20 = v42;
    if (v41 != v42)
    {
      do
      {
        v21 = *(v5 + 24);
        *&v34 = 0;
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v21 + 16), v19, &v34);
        v23 = v19[1];
        if (v22)
        {
          *(v23 + 16) |= 0x1000000000000000uLL;
        }

        else
        {
          llvm::jitlink::LinkGraph::makeExternal(this, v23);
        }

        v19 += 2;
      }

      while (v19 != v20);
      v19 = v41;
    }

    *a3 = 0;
  }

  if (v19)
  {
    v24 = v42;
    v25 = v19;
    if (v42 != v19)
    {
      do
      {
        v27 = *(v24 - 2);
        v24 -= 2;
        v26 = v27;
        if ((v27 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v26 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v24 != v19);
      v25 = v41;
    }

    v42 = v19;
    operator delete(v25);
  }

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v44);
}

void llvm::orc::ObjectLinkingLayerJITLinkContext::claimOrExternalizeWeakAndCommonSymbols(llvm::jitlink::LinkGraph &)::{lambda(llvm::jitlink::Symbol *)#1}::operator()(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = a2[2];
    if ((v3 & 0x200000000000000) != 0 && (v3 & 0xC00000000000000) != 0xC00000000000000)
    {
      v5 = *(*a1 + 24);
      v26 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v5 + 16), a2, &v26) & 1) == 0)
      {
        v6 = a2[2];
        v7 = v6 >> 58;
        if (((v6 >> 58) & 3) == 2)
        {
          v8 = 64;
        }

        else
        {
          v8 = 2;
        }

        v9 = HIBYTE(v6);
        if ((v7 & 3) != 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = 16;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(*(a1 + 8), a2)[4] = ((v9 & 0x20 | v10) << 8) | 0x200;
        v11 = *(a1 + 16);
        v12 = *a2;
        if ((*a2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v12 + 8), 1uLL);
        }

        v14 = *(v11 + 8);
        v13 = *(v11 + 16);
        if (v14 >= v13)
        {
          v16 = *v11;
          v17 = (v14 - *v11) >> 4;
          v18 = v17 + 1;
          if ((v17 + 1) >> 60)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v19 = v13 - v16;
          if (v19 >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (!(v20 >> 60))
            {
              operator new();
            }

            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v21 = (v14 - *v11) >> 4;
          v22 = (16 * v17);
          *v22 = v12;
          v22[1] = a2;
          v15 = 16 * v17 + 16;
          v23 = 16 * v17 - 16 * v21;
          if (v16 != v14)
          {
            v24 = v16;
            v25 = v23;
            do
            {
              *v25 = 0;
              *v25 = *v24;
              *v24 = 0;
              v25[1] = v24[1];
              v24 += 2;
              v25 += 2;
            }

            while (v24 != v14);
            do
            {
              if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }

              v16 += 2;
            }

            while (v16 != v14);
            v16 = *v11;
          }

          *v11 = v23;
          *(v11 + 8) = v15;
          *(v11 + 16) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v14 = v12;
          v14[1] = a2;
          v15 = (v14 + 2);
        }

        *(v11 + 8) = v15;
      }
    }
  }
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::orc::ObjectLinkingLayerJITLinkContext::modifyPassConfig(llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#2}>@<X0>(llvm::jitlink::LinkGraph *this@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  if (*(this + 52))
  {
    v6 = *(this + 54);
    if (v6)
    {
      v7 = 24 * v6;
      v8 = *(this + 25);
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 += 3;
        v7 -= 24;
        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v8 = *(this + 25);
    }

    v9 = *(this + 25) + 24 * v6;
    if (v8 != v9)
    {
      v10 = 0;
LABEL_10:
      v10 += *(v8[2] + 40);
      while (1)
      {
        v8 += 3;
        if (v8 == v9)
        {
          break;
        }

        if (*v8 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v8 != v9)
          {
            goto LABEL_10;
          }

          break;
        }
      }

      if (v10)
      {
        v11 = (4 * v10 / 3u + 1) | ((4 * v10 / 3u + 1) >> 1);
        v12 = v11 | (v11 >> 2) | ((v11 | (v11 >> 2)) >> 4);
        llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::grow(&v152, (((v12 | (v12 >> 8)) >> 16) | v12 | (v12 >> 8)) + 1);
      }
    }
  }

LABEL_16:
  llvm::jitlink::LinkGraph::defined_symbols(v146, this);
  *__p = *v146;
  v143 = v147;
  v144 = v148;
  v145 = v149;
  v13 = v150;
  v14 = v151;
  v15 = v149;
  if (v146[0] != v150 || v149 != v151)
  {
    do
    {
      v16 = *v15;
      v141 = v16;
      if ((~*(v16 + 16) & 0xC00000000000000) != 0)
      {
        v140 = *(v16 + 8);
        v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, &v140);
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v17 + 2), &v141, v139);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(__p, v139);
      v15 = v145;
    }

    while (__p[0] != v13 || v145 != v14);
  }

  llvm::jitlink::LinkGraph::blocks(this, v146);
  *__p = *v146;
  v143 = v147;
  v144 = v148;
  v145 = v149;
  v19 = v150;
  v20 = v151;
  v21 = v149;
  v138 = a3;
  if (v146[0] != v150 || v149 != v151)
  {
    do
    {
      v141 = *v21;
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, &v141);
      v23 = *(v141 + 40);
      v24 = *(v141 + 48);
      if (v23 != v24)
      {
        v25 = v22;
        do
        {
          v26 = *(*(*v23 + 8) + 8);
          if ((v26 & 3) != 0)
          {
            if ((v26 & 2) == 0)
            {
              v139[0] = *(*v23 + 8);
              v27 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v139);
              v28 = v27;
              if (*(v27 + 6))
              {
                v29 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v27 + 2));
                llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v25 + 5), v29, v139);
              }

              else
              {
                v140 = *(*v23 + 8);
                llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v25 + 8), &v140, v139);
                llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v28 + 11), &v141, v139);
              }
            }
          }

          else
          {
            v140 = *v23;
            llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v25 + 5), &v140, v139);
          }

          v23 += 32;
        }

        while (v23 != v24);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(__p, v139);
      v21 = v145;
    }

    while (__p[0] != v19 || v145 != v20);
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v143 = 0;
  if (v153.i32[0])
  {
    if (v154)
    {
      v31 = 112 * v154;
      v32 = v152;
      while ((*v32 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v32 += 112;
        v31 -= 112;
        if (!v31)
        {
          goto LABEL_120;
        }
      }
    }

    else
    {
      v32 = v152;
    }

    v33 = v152 + 112 * v154;
    if (v32 != v33)
    {
      do
      {
        if (!*(v32 + 24))
        {
          v34 = __p[1];
          if (__p[1] >= v143)
          {
            v36 = (__p[1] - __p[0]) >> 3;
            if ((v36 + 1) >> 61)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v37 = (v143 - __p[0]) >> 2;
            if (v37 <= v36 + 1)
            {
              v37 = v36 + 1;
            }

            if (v143 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            if (v38)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(__p, v38);
            }

            v39 = (8 * v36);
            *v39 = *v32;
            v35 = (8 * v36 + 8);
            v40 = v39 - (__p[1] - __p[0]);
            memcpy(v40, __p[0], __p[1] - __p[0]);
            v41 = __p[0];
            __p[0] = v40;
            __p[1] = v35;
            *&v143 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *__p[1] = *v32;
            v35 = v34 + 8;
          }

          __p[1] = v35;
          v42 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 64);
          v44 = *(v32 + 64) + 8 * *(v32 + 80);
          if (v44 != v42)
          {
            v45 = v42;
            v46 = v43;
            do
            {
              v47 = *v45++;
              v146[0] = v47;
              v48 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v146);
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase((v48 + 11), v32);
              while (v45 != v46 && (*v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                ++v45;
              }
            }

            while (v45 != v44);
          }

          v49 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 88);
          v51 = *(v32 + 88) + 8 * *(v32 + 104);
          if (v51 != v49)
          {
            v52 = v49;
            v53 = v50;
            do
            {
              v54 = *v52++;
              v146[0] = v54;
              v55 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v146);
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase((v55 + 8), v32);
              while (v52 != v53 && (*v52 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                ++v52;
              }
            }

            while (v52 != v51);
          }

          v56 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 64);
          v58 = *(v32 + 64) + 8 * *(v32 + 80);
          if (v58 != v56)
          {
            v59 = v56;
            v60 = v57;
            do
            {
              v139[0] = *v59;
              v61 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v139);
              v62 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 88);
              v64 = *(v32 + 88) + 8 * *(v32 + 104);
              if (v64 != v62)
              {
                v65 = v62;
                v66 = v63;
                do
                {
                  v67 = *v65++;
                  v141 = v67;
                  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v61 + 11), &v141, v146);
                  while (v65 != v66 && (*v65 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    ++v65;
                  }
                }

                while (v65 != v64);
              }

              do
              {
                ++v59;
              }

              while (v59 != v60 && (*v59 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v59 != v58);
          }

          v68 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 88);
          v70 = *(v32 + 88) + 8 * *(v32 + 104);
          if (v70 != v68)
          {
            v71 = v68;
            v72 = v69;
            do
            {
              v139[0] = *v71;
              v73 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v139);
              v74 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 40);
              v76 = *(v32 + 40) + 8 * *(v32 + 56);
              if (v76 != v74)
              {
                v77 = v74;
                v78 = v75;
                do
                {
                  v79 = *v77++;
                  v141 = v79;
                  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v73 + 5), &v141, v146);
                  while (v77 != v78 && (*v77 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    ++v77;
                  }
                }

                while (v77 != v76);
              }

              v80 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v32 + 64);
              v82 = *(v32 + 64) + 8 * *(v32 + 80);
              if (v82 != v80)
              {
                v83 = v80;
                v84 = v81;
                do
                {
                  v85 = *v83++;
                  v141 = v85;
                  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v73 + 8), &v141, v146);
                  while (v83 != v84 && (*v83 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    ++v83;
                  }
                }

                while (v83 != v82);
              }

              do
              {
                ++v71;
              }

              while (v71 != v72 && (*v71 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v71 != v70);
          }
        }

        v32 += 112;
        if (v32 == v33)
        {
          break;
        }

        while ((*v32 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v32 += 112;
          if (v32 == v33)
          {
            goto LABEL_112;
          }
        }
      }

      while (v32 != v33);
LABEL_112:
      v87 = __p[0];
      v86 = __p[1];
      if (__p[0] != __p[1])
      {
        v88 = v152;
        v89 = v154;
        v90 = v153;
        do
        {
          v91 = *v87;
          v146[0] = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::LookupBucketFor<llvm::jitlink::Block *>(v88, v89, v91, v146))
          {
            v92 = v146[0];
            MEMORY[0x277C69E30](*(v146[0] + 11), 8);
            MEMORY[0x277C69E30](v92[8], 8);
            MEMORY[0x277C69E30](v92[5], 8);
            MEMORY[0x277C69E30](v92[2], 8);
            *v92 = -8192;
            v90 = vadd_s32(v90, 0x1FFFFFFFFLL);
          }

          ++v87;
        }

        while (v87 != v86);
        v153 = v90;
        v87 = __p[0];
      }

      if (v87)
      {
        __p[1] = v87;
        operator delete(v87);
      }
    }
  }

LABEL_120:
  v147 = 0u;
  v148 = 0u;
  *v146 = 0u;
  if (v153.i32[0])
  {
    v93 = v152;
    v94 = v154;
    v95 = v152 + 112 * v154;
    v96 = v152;
    if (v154)
    {
      v97 = 112 * v154;
      v96 = v152;
      while ((*v96 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v96 += 112;
        v97 -= 112;
        if (!v97)
        {
          v98 = **(v5 + 24);
          goto LABEL_154;
        }
      }
    }

    if (v96 != v95)
    {
LABEL_127:
      if (*(v96 + 48) && *(v96 + 96))
      {
        std::deque<llvm::jitlink::Block *>::push_back(v146, v96);
        *(v96 + 8) = 1;
      }

      while (1)
      {
        v96 += 112;
        if (v96 == v95)
        {
          break;
        }

        if ((*v96 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v96 != v95)
          {
            goto LABEL_127;
          }

          break;
        }
      }

      v99 = *(&v148 + 1);
      if (*(&v148 + 1))
      {
        do
        {
          v100 = v146[1];
          v101 = v148;
          v139[0] = *(*(v146[1] + ((v148 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v148 & 0x1FF));
          --v99;
          *&v148 = v148 + 1;
          *(&v148 + 1) = v99;
          if (v148 >= 0x400)
          {
            operator delete(*v146[1]);
            v146[1] = v100 + 8;
            *&v148 = v101 - 511;
          }

          v102 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, v139);
          *(v102 + 8) = 0;
          v103 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v102 + 11));
          v105 = v102[11] + 8 * *(v102 + 26);
          if (v105 != v103)
          {
            v106 = v103;
            v107 = v104;
            do
            {
              v141 = *v106;
              v108 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(&v152, &v141);
              v109 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v102 + 5));
              v111 = v102[5] + 8 * *(v102 + 14);
              if (v111 != v109)
              {
                v112 = v109;
                v113 = v110;
                do
                {
                  v140 = *v112;
                  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v108 + 5), &v140, __p);
                  if (v143 == 1 && (v108[1] & 1) == 0)
                  {
                    std::deque<llvm::jitlink::Block *>::push_back(v146, &v141);
                    *(v108 + 8) = 1;
                  }

                  do
                  {
                    ++v112;
                  }

                  while (v112 != v113 && (*v112 | 0x1000) == 0xFFFFFFFFFFFFF000);
                }

                while (v112 != v111);
              }

              do
              {
                ++v106;
              }

              while (v106 != v107 && (*v106 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v106 != v105);
            v99 = *(&v148 + 1);
          }
        }

        while (v99);
        if (!v153.i32[0])
        {
          goto LABEL_184;
        }

        v94 = v154;
        v93 = v152;
        v95 = v152 + 112 * v154;
      }
    }

    v98 = **(v5 + 24);
    if (v94)
    {
LABEL_154:
      while ((*v93 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v93 += 112;
        if (v93 == v95)
        {
          goto LABEL_184;
        }
      }
    }

    if (v93 != v95)
    {
      while (1)
      {
        if (*(v93 + 24))
        {
          v143 = 0u;
          v144 = 0u;
          *__p = 0u;
          std::vector<llvm::orc::SymbolDependenceGroup>::push_back[abi:nn200100](v5 + 64, __p);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(&v143 + 1);
          MEMORY[0x277C69E30](*(&v143 + 1), 8);
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(__p);
          v114 = *(v5 + 72);
          v115 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v93 + 16);
          v117 = *(v93 + 16) + 8 * *(v93 + 32);
          if (v117 != v115)
          {
            v118 = v115;
            v119 = v116;
            do
            {
              v120 = *v118++;
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v114 - 48, v120, __p);
              while (v118 != v119 && (*v118 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                ++v118;
              }
            }

            while (v118 != v117);
          }

          v121 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v93 + 40);
          v123 = *(v93 + 40) + 8 * *(v93 + 56);
          if (v123 != v121)
          {
            break;
          }
        }

        do
        {
LABEL_181:
          v93 += 112;
        }

        while (v93 != v95 && (*v93 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v93 == v95)
        {
          goto LABEL_184;
        }
      }

      v124 = v121;
      v125 = v122;
      while (1)
      {
        v126 = *v124;
        v127 = **v124;
        v139[0] = v127;
        if ((v127 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v127 + 8), 1uLL);
        }

        if (*(v126[1] + 8))
        {
          v141 = v98;
          v128 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct((v114 - 24), &v141) + 1;
        }

        else
        {
          __p[0] = 0;
          if (!llvm::DenseMapBase<llvm::DenseMap<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::NonOwningSymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::NonOwningSymbolStringPtr>(*(v5 + 40), *(v5 + 56), v139[0], __p) || __p[0] == (*(v5 + 40) + 16 * *(v5 + 56)))
          {
            goto LABEL_176;
          }

          v128 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::FindAndConstruct((v114 - 24), __p[0] + 1) + 1;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v128, v139, __p);
LABEL_176:
        if ((v139[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v139[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        do
        {
          ++v124;
        }

        while (v124 != v125 && (*v124 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v124 == v123)
        {
          goto LABEL_181;
        }
      }
    }
  }

LABEL_184:
  *v138 = 0;
  v129 = v146[1];
  v130 = v147;
  v131 = v147 - v146[1];
  if (v147 - v146[1] >= 0x11)
  {
    do
    {
      v132 = *v129++;
      operator delete(v132);
      v131 -= 8;
    }

    while (v131 > 0x10);
  }

  while (v129 != v130)
  {
    v133 = *v129++;
    operator delete(v133);
  }

  if (v146[0])
  {
    operator delete(v146[0]);
  }

  v134 = v152;
  if (v154)
  {
    v135 = (v152 + 64);
    v136 = 112 * v154;
    do
    {
      if ((*(v135 - 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        MEMORY[0x277C69E30](v135[3], 8);
        MEMORY[0x277C69E30](*v135, 8);
        MEMORY[0x277C69E30](*(v135 - 3), 8);
        MEMORY[0x277C69E30](*(v135 - 6), 8);
      }

      v135 += 14;
      v136 -= 112;
    }

    while (v136);
  }

  return MEMORY[0x277C69E30](v134, 8);
}

void std::deque<llvm::jitlink::Block *>::push_back(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::JITDylib::EmissionDepUnit **>>(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<llvm::orc::JITDylib::EmissionDepUnit **>::emplace_back<llvm::orc::JITDylib::EmissionDepUnit **&>(a1, &v14);
    v4 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

void *llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::grow(uint64_t *a1, int a2)
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
  result = operator new(112 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = 0;
      v12 = (((112 * v10 - 112) >> 4) * 0x2492492492492493uLL) >> 64;
      v13 = vdupq_n_s64(v12);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[14] = -4096;
        }

        v11 += 2;
        result += 28;
      }

      while (((v12 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 112 * v3;
      v16 = v4 + 52;
      do
      {
        v17 = *(v16 - 52);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 4), v17, &v32);
          v18 = v32;
          *v32 = *(v16 - 52);
          *(v18 + 8) = *(v16 - 44);
          *(v18 + 8) = 0;
          v18[2] = 0;
          v18[3] = 0;
          v18[2] = *(v16 - 36);
          *(v16 - 36) = 0;
          *(v18 + 6) = *(v16 - 28);
          *(v16 - 28) = 0;
          v19 = *(v18 + 7);
          *(v18 + 7) = *(v16 - 24);
          *(v16 - 24) = v19;
          v20 = *(v18 + 8);
          *(v18 + 8) = *(v16 - 20);
          *(v16 - 20) = v20;
          *(v18 + 14) = 0;
          v18[5] = 0;
          v18[6] = 0;
          v18[5] = *(v16 - 12);
          *(v16 - 12) = 0;
          *(v18 + 12) = *(v16 - 4);
          *(v16 - 4) = 0;
          v21 = *(v18 + 13);
          *(v18 + 13) = *v16;
          *v16 = v21;
          v22 = *(v18 + 14);
          *(v18 + 14) = *(v16 + 4);
          *(v16 + 4) = v22;
          v18[8] = 0;
          v18[9] = 0;
          *(v18 + 20) = 0;
          v18[8] = *(v16 + 12);
          *(v16 + 12) = 0;
          *(v18 + 18) = *(v16 + 20);
          *(v16 + 20) = 0;
          v23 = *(v18 + 19);
          *(v18 + 19) = *(v16 + 24);
          *(v16 + 24) = v23;
          v24 = *(v18 + 20);
          *(v18 + 20) = *(v16 + 28);
          *(v16 + 28) = v24;
          v18[11] = 0;
          v18[12] = 0;
          *(v18 + 26) = 0;
          v18[11] = *(v16 + 36);
          *(v16 + 36) = 0;
          *(v18 + 24) = *(v16 + 44);
          *(v16 + 44) = 0;
          v25 = *(v18 + 25);
          *(v18 + 25) = *(v16 + 48);
          *(v16 + 48) = v25;
          v26 = *(v18 + 26);
          *(v18 + 26) = *(v16 + 52);
          *(v16 + 52) = v26;
          ++*(a1 + 2);
          MEMORY[0x277C69E30](0, 8);
          MEMORY[0x277C69E30](*(v16 + 12), 8);
          MEMORY[0x277C69E30](*(v16 - 12), 8);
          MEMORY[0x277C69E30](*(v16 - 36), 8);
        }

        v16 += 112;
        v15 -= 112;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v27 = *(a1 + 4);
  if (v27)
  {
    v28 = 0;
    v29 = (((112 * v27 - 112) >> 4) * 0x2492492492492493uLL) >> 64;
    v30 = vdupq_n_s64(v29);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_2750C1210)));
      if (v31.i8[0])
      {
        *result = -4096;
      }

      if (v31.i8[4])
      {
        result[14] = -4096;
      }

      v28 += 2;
      result += 28;
    }

    while (((v29 + 2) & 0x7FFFFFFFFFFFFFELL) != v28);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::LookupBucketFor<llvm::jitlink::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 112 * v5);
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
        v6 = (a1 + 112 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(a1, a2, v7);
    *v5 = *a2;
    v5[13] = 0;
    *(v5 + 11) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 1) = 0u;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>,llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,llvm::orc::ObjectLinkingLayerJITLinkContext::registerDependencies(llvm::jitlink::LinkGraph &)::BlockInfo>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*a1, *(a1 + 4), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*a1, *(a1 + 4), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 2);
  if (*result != -1)
  {
    --*(a1 + 3);
  }

  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = (37 * a3) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -1)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -2;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

char *llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::grow(uint64_t a1, int a2)
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
          *(v16 - 4) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
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
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>,unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::vector<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>>::LookupBucketFor<unsigned long>(*a1, *(a1 + 16), v20, &v30);
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
        *(v28 - 4) = -1;
      }

      if (v29.i8[4])
      {
        *v28 = -1;
      }

      v23 += 2;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

void LLVMOrcExecutionSessionCreateJITDylib(std::recursive_mutex *a1, uint64_t *a2, char *__s)
{
  __p[5] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  llvm::orc::ExecutionSession::createJITDylib(a1, __p);
}

llvm::object::COFFObjectFile *LLVMOrcObjectLayerAddObjectFile(uint64_t a1, llvm::orc::JITDylib *a2, uint64_t a3)
{
  v5 = a3;
  llvm::orc::ObjectLayer::add(a1, a2, &v5, &v6);
  v3 = v6;
  v6 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v3;
}

uint64_t llvm::MCTargetOptions::MCTargetOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((a1 + 136), *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  return a1;
}

std::string *std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void xojit_log_debug_slow(const char *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_debug_impl(&dword_274E5C000, v2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  }
}

uint64_t _GLOBAL__sub_I_OsLogSlow_cpp()
{
}

void *llvm::object::COFFObjectFile::getSymbol@<X0>(void *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this[12];
  if (*(this + 6) == 0)
  {
    goto LABEL_11;
  }

  v5 = this[6];
  if (v5)
  {
    if (*(v5 + 2) == -1)
    {
      goto LABEL_11;
    }

    v6 = (v5 + 12);
  }

  else
  {
    v6 = (this[7] + 52);
  }

  if (*v6 > a2)
  {
    if (v4)
    {
      *(a3 + 16) &= ~1u;
      *a3 = v4 + 18 * a2;
      *(a3 + 8) = 0;
      return this;
    }

    v7 = this[13];
    if (v7)
    {
      *(a3 + 16) &= ~1u;
      *a3 = 0;
      *(a3 + 8) = v7 + 20 * a2;
      return this;
    }
  }

LABEL_11:
  *&v8.__val_ = llvm::object::object_category(this);
  this = llvm::errorCodeToError(3, v8, a3);
  *(a3 + 16) |= 1u;
  return this;
}

uint64_t std::__tree<llvm::StringRef>::__emplace_unique_key_args<llvm::StringRef,llvm::StringRef const&>(uint64_t **a1, __int128 *a2, _OWORD *a3)
{
  v3 = *std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::__find_equal<llvm::StringRef>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC(llvm::orc::SimpleRemoteEPC *this)
{
  *this = &unk_2883EC9E8;
  *(this + 23) = &unk_2883ECA50;
  *(this + 24) = &unk_2883ECA80;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>,unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::destroyAll(this + 49);
  MEMORY[0x277C69E30](*(this + 49), 8);
  v2 = *(this + 44);
  *(this + 44) = 0;
  if (v2)
  {
    MEMORY[0x277C69E40](v2, 0x1020C40B07D1DCCLL);
  }

  v3 = *(this + 43);
  *(this + 43) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 42);
  *(this + 42) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 41);
  *(this + 41) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 40);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::condition_variable::~condition_variable((this + 264));
  std::mutex::~mutex((this + 200));

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(this);
}

{
  llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC(this);

  JUMPOUT(0x277C69E40);
}

void non-virtual thunk tollvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC(llvm::orc::SimpleRemoteEPC *this)
{
  llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC((this - 184));
}

{
  llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC((this - 192));
}

{
  llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC((this - 184));

  JUMPOUT(0x277C69E40);
}

{
  llvm::orc::SimpleRemoteEPC::~SimpleRemoteEPC((this - 192));

  JUMPOUT(0x277C69E40);
}

void llvm::orc::SimpleRemoteEPC::loadDylib(llvm::orc::SimpleRemoteEPC *this, const char *__s)
{
  v4 = *(this + 44);
  if (__s)
  {
    v5 = strlen(__s);
  }

  else
  {
    v5 = 0;
  }

  llvm::orc::EPCGenericDylibManager::open(v4, __s, v5, 0);
}

void llvm::orc::SimpleRemoteEPC::lookupSymbolsAsync(uint64_t a1, size_t *a2, uint64_t a3, __int128 *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 352);
  v8 = 0;
  v7 = 0uLL;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v10, a4);
  llvm::orc::lookupSymbolsAsyncHelper(v6, a2, a3, &v7, v10);
  llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v10);
  v9 = &v7;
  std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v9);
}

void **llvm::orc::lookupSymbolsAsyncHelper(uint64_t a1, size_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *a2;
    v8 = a2[1];
    *&v13 = a1;
    *(&v13 + 1) = a2;
    v14 = a3;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v15, a5);
    v16 = *a4;
    v17 = *(a4 + 2);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v24 = v13;
    v25 = v14;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v26, v15);
    v27 = v16;
    v28 = v17;
    v17 = 0;
    v16 = 0uLL;
    v9 = operator new(0x50uLL, 8uLL);
    v18 = v9;
    v19 = xmmword_2750C4050;
    *v9 = v24;
    *(v9 + 2) = v25;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v9 + 24), v26);
    *(v9 + 56) = v27;
    *(v9 + 9) = v28;
    v28 = 0;
    v27 = 0uLL;
    v20 = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::CallbacksHolder<llvm::orc::lookupSymbolsAsyncHelper(llvm::orc::EPCGenericDylibManager &,llvm::ArrayRef<llvm::orc::DylibManager::LookupRequest>,std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>,llvm::unique_function<void ()(llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>)>)::$_0,llvm::orc::lookupSymbolsAsyncHelper(llvm::orc::EPCGenericDylibManager &,llvm::ArrayRef<llvm::orc::DylibManager::LookupRequest>,std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>,llvm::unique_function<void ()(llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>)>)::$_0,void>::Callbacks + 4;
    v12 = &v27;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v26);
    llvm::orc::EPCGenericDylibManager::lookupAsync(a1, v7, v8, &v18);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v18);
    *&v24 = &v16;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v24);
    return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v15);
  }

  else
  {
    v23 = 0;
    v21 = *a4;
    v22 = *(a4 + 2);
    *a4 = 0uLL;
    *(a4 + 2) = 0;
    v11 = *(a5 + 3);
    if ((v11 & 2) == 0)
    {
      a5 = *a5;
    }

    (*(v11 & 0xFFFFFFFFFFFFFFF8))(a5, &v21);
    return llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(&v21);
  }
}

void llvm::orc::SimpleRemoteEPC::runAsMain(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = *(a1 + 360);
  if (a4)
  {
    v10 = 24 * a4;
    v11 = (a3 + 23);
    v12 = 8;
    do
    {
      v13 = *v11;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v11 - 15);
      }

      v12 += v13 + 8;
      v11 += 24;
      v10 -= 24;
    }

    while (v10);
    v14 = v12 + 8;
    v23[0] = 0;
    v23[1] = (v12 + 8);
    if ((v12 + 8) < 9)
    {
LABEL_10:
      if (v14 <= 8)
      {
        v15 = v23;
      }

      else
      {
        v15 = v10;
      }

      v21 = v15;
      v22 = v14;
      if (v14 >= 8)
      {
        *v15 = a2;
        v16 = &v23[1];
        if (v14 > 8)
        {
          v16 = (v10 + 8);
        }

        v21 = v16;
        v22 = v14 - 8;
        if (v14 - 8 >= 8)
        {
          *(v10 + 8) = a4;
          v21 = (v10 + 16);
          v22 = v14 - 16;
          if (!a4)
          {
LABEL_21:
            *v20 = *v23;
            v23[0] = 0;
            v23[1] = 0;
            goto LABEL_23;
          }

          v17 = 24 * a4;
          while (llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(&v21, v6))
          {
            v6 += 24;
            v17 -= 24;
            if (!v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(v20, "Error serializing arguments to blob in call");
LABEL_23:
      if (v23[1] < 9)
      {
        if (v23[1] || (v18 = v23[0]) == 0)
        {
LABEL_28:
          if (v20[1])
          {
            if (v20[1] <= 8)
            {
              v19 = v20;
            }

            else
            {
              v19 = v20[0];
            }
          }

          else
          {
            v21 = v20[0];
            if (v20[0])
            {
              getErrorErrorCat();
              v23[0] = 3;
              v23[1] = &getErrorErrorCat(void)::ErrorErrorCat;
              llvm::make_error<llvm::StringError,char const*&,std::error_code>();
            }

            v19 = v20;
          }

          llvm::orc::ExecutorProcessControl::callWrapper(a1, v9, v19, v20[1]);
        }
      }

      else
      {
        v18 = v23[0];
      }

      free(v18);
      goto LABEL_28;
    }
  }

  else
  {
    v14 = 16;
    v23[1] = 16;
  }

  v10 = malloc_type_malloc(v14, 0x100004077774924uLL);
  v23[0] = v10;
  v14 = v23[1];
  goto LABEL_10;
}

void llvm::orc::SimpleRemoteEPC::runAsVoidFunction(uint64_t a1, void *a2)
{
  v4 = a2;
  v5[0] = a1;
  v3 = 0;
  v5[1] = *(a1 + 368);
  llvm::orc::shared::WrapperFunction<int ()(llvm::orc::shared::SPSExecutorAddr)>::call<llvm::Error llvm::orc::ExecutorProcessControl::callSPSWrapper<int ()(llvm::orc::shared::SPSExecutorAddr),int &,llvm::orc::ExecutorAddr &>(llvm::orc::ExecutorAddr,int &,llvm::orc::ExecutorAddr &)::{lambda(char const*,unsigned long)#1},int,llvm::orc::ExecutorAddr>(v5, &v3, &v4);
}

void llvm::orc::SimpleRemoteEPC::runAsIntFunction(uint64_t a1, uint64_t a2, int a3)
{
  v9 = 0;
  v7 = *(a1 + 376);
  v8 = malloc_type_malloc(0xCuLL, 0x100004077774924uLL);
  *v8 = a2;
  v8[2] = a3;
  llvm::orc::ExecutorProcessControl::callWrapper(a1, v7, v8, 12);
}

void *llvm::orc::SimpleRemoteEPC::callWrapperAsync(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 200));
  v6 = *(a1 + 384);
  v5 = *(a1 + 392);
  *(a1 + 384) = v6 + 1;
  v18 = v6;
  v20[0] = 0;
  v7 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(v5, *(a1 + 408), v6, v20);
  inserted = v20[0];
  if ((v7 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>,unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::InsertIntoBucketImpl<unsigned long long>(a1 + 392, &v18, v20[0]);
    *inserted = v6;
    *(inserted + 1) = 0u;
    *(inserted + 3) = 0u;
  }

  if (inserted + 1 != a3)
  {
    v9 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(inserted + 1);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v9, a3);
  }

  std::mutex::unlock((a1 + 200));
  result = (*(**(a1 + 328) + 24))(&v17);
  if (v17)
  {
    v21 = 0;
    std::mutex::lock((a1 + 200));
    v19 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(a1 + 392), *(a1 + 408), v6, &v19))
    {
      v11 = v19;
      if (v19 != *(a1 + 392) + 40 * *(a1 + 408))
      {
        if (v20 != (v19 + 8))
        {
          llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v20);
          llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v20, (v11 + 8));
        }

        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((v11 + 8));
        *v11 = -2;
        *(a1 + 400) = vadd_s32(*(a1 + 400), 0x1FFFFFFFFLL);
      }
    }

    std::mutex::unlock((a1 + 200));
    if (v21 < 8)
    {
      goto LABEL_17;
    }

    llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v15, "disconnecting");
    llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(v20, &v15);
    if (v16 < 9)
    {
      if (v16)
      {
        goto LABEL_17;
      }

      v12 = v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = v15;
    }

    free(v12);
LABEL_17:
    v13 = *(a1 + 32);
    v14 = v17;
    v17 = 0;
    llvm::orc::ExecutionSession::reportError(v13, &v14);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v20);
    result = v17;
    if (v17)
    {
      return (*(*v17 + 8))(v17);
    }
  }

  return result;
}

void llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(void *a1, uint64_t a2)
{
  *v5 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a1[3];
  if ((v2 & 2) == 0)
  {
    a1 = *a1;
  }

  (*(v2 & 0xFFFFFFFFFFFFFFF8))(a1, v5);
  if (v5[1] >= 9)
  {
    v3 = v5[0];
LABEL_9:
    free(v3);
    return;
  }

  v3 = v5[0];
  if (v5[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = v5[0] == 0;
  }

  if (!v4)
  {
    goto LABEL_9;
  }
}

void llvm::orc::SimpleRemoteEPC::disconnect(llvm::orc::SimpleRemoteEPC *this@<X0>, void *a2@<X8>)
{
  (*(**(this + 41) + 32))(*(this + 41));
  (*(**(this + 3) + 24))(*(this + 3));
  m = (this + 200);
  v6.__m_ = (this + 200);
  v6.__owns_ = 1;
  std::mutex::lock((this + 200));
  if (*(this + 312))
  {
    *a2 = *(this + 40);
    *(this + 40) = 0;
LABEL_6:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((this + 264), &v6);
  }

  while (*(this + 312) != 1);
  owns = v6.__owns_;
  *a2 = *(this + 40);
  *(this + 40) = 0;
  if (owns)
  {
    m = v6.__m_;
    goto LABEL_6;
  }
}

void llvm::orc::SimpleRemoteEPC::handleMessage(uint64_t a1@<X0>, unsigned int a2@<W1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47[16] = *MEMORY[0x277D85DE8];
  if (a2 >= 4)
  {
    getErrorErrorCat();
    *v44 = 3;
    *&v44[8] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      v30 = &v32;
      v31 = xmmword_2750C1290;
      if (*(a5 + 8))
      {
        llvm::SmallVectorImpl<char>::operator=(&v30, a5);
        v14 = v31 == 0;
      }

      else
      {
        v14 = 1;
      }

      *v44 = a1;
      *&v44[8] = a3;
      *&v44[16] = a4;
      v45 = v47;
      v46 = xmmword_2750C1290;
      if (!v14)
      {
        llvm::SmallVectorImpl<char>::operator=(&v45, &v30);
      }

      operator new();
    }

    v33 = v35;
    v34 = xmmword_2750C1290;
    if (*(a5 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(&v33, a5);
    }

    __dst = a3;
    v43 = 0;
    if (a4)
    {
      getErrorErrorCat();
      *v44 = 3;
      *&v44[8] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    std::mutex::lock((a1 + 200));
    *v44 = 0;
    if (!llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(a1 + 392), *(a1 + 408), a3, v44) || (v15 = *v44, *v44 == *(a1 + 392) + 40 * *(a1 + 408)))
    {
      *v44 = "No call for sequence number ";
      *&v44[16] = &__dst;
      LOWORD(v46) = 3075;
      getErrorErrorCat();
      operator new();
    }

    if (v42 != (*v44 + 8))
    {
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v42);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v42, (v15 + 8));
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((v15 + 8));
    *v15 = -2;
    *(a1 + 400) = vadd_s32(*(a1 + 400), 0x1FFFFFFFFLL);
    std::mutex::unlock((a1 + 200));
    v16 = v33;
    v17 = v34;
    *v44 = 0;
    *&v44[8] = v34;
    if (v34 < 9)
    {
      v18 = v44;
    }

    else
    {
      v18 = malloc_type_malloc(v34, 0x100004077774924uLL);
      *v44 = v18;
    }

    memcpy(v18, v16, v17);
    *v29 = *v44;
    llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(v42, v29);
    if (v29[1] < 9)
    {
      if (v29[1] || (v24 = v29[0]) == 0)
      {
LABEL_66:
        v26[0] = 0;
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v42);
        if (v33 != v35)
        {
          free(v33);
        }

        goto LABEL_77;
      }
    }

    else
    {
      v24 = v29[0];
    }

    free(v24);
    goto LABEL_66;
  }

  if (!a2)
  {
    v39 = v41;
    size = xmmword_2750C1290;
    if (*(a5 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(&v39, a5);
    }

    if (a3)
    {
      getErrorErrorCat();
      operator new();
    }

    if (a4)
    {
      getErrorErrorCat();
      *v44 = 3;
      *&v44[8] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
    }

    std::mutex::lock((a1 + 200));
    *v44 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*(a1 + 392), *(a1 + 408), 0, v44))
    {
      v20 = *v44;
    }

    else
    {
      v20 = *(a1 + 392) + 40 * *(a1 + 408);
    }

    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v44, (v20 + 8));
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((v20 + 8));
    *v20 = -2;
    *(a1 + 400) = vadd_s32(*(a1 + 400), 0x1FFFFFFFFLL);
    v21 = v39;
    v22 = size;
    *v42 = 0;
    *&v42[8] = size;
    if (size < 9)
    {
      v23 = v42;
    }

    else
    {
      v23 = malloc_type_malloc(size, 0x100004077774924uLL);
      *v42 = v23;
    }

    memcpy(v23, v21, v22);
    *v29 = *v42;
    llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(v44, v29);
    if (v29[1] < 9)
    {
      if (v29[1])
      {
        goto LABEL_75;
      }

      v25 = v29[0];
      if (!v29[0])
      {
        goto LABEL_75;
      }
    }

    else
    {
      v25 = v29[0];
    }

    free(v25);
LABEL_75:
    __dst = 0;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v44);
    std::mutex::unlock((a1 + 200));
    if (v39 != v41)
    {
      free(v39);
    }

LABEL_77:
    *(a6 + 8) &= ~1u;
    *a6 = 0;
    return;
  }

  (*(**(a1 + 328) + 32))(*(a1 + 328));
  v36 = v38;
  v37 = xmmword_2750C1290;
  if (*(a5 + 8))
  {
    llvm::SmallVectorImpl<char>::operator=(&v36, a5);
    v12 = v36;
    v11 = v37;
    __dst = 0;
    v28 = v37;
    if (v37 < 9)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = malloc_type_malloc(v37, 0x100004077774924uLL);
      __dst = p_dst;
    }
  }

  else
  {
    v11 = 0;
    __dst = 0;
    v28 = 0;
    p_dst = &__dst;
    v12 = v38;
  }

  memcpy(p_dst, v12, v11);
  if (v28)
  {
    v44[0] = 0;
    v45 = 0;
    *&v44[8] = 0;
    *&v44[16] = 0;
    v19 = __dst;
    if (v28 <= 8)
    {
      v19 = &__dst;
    }
  }

  else
  {
    v29[0] = __dst;
    if (__dst)
    {
      getErrorErrorCat();
      *v44 = 3;
      *&v44[8] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v44[0] = 0;
    v45 = 0;
    *&v44[8] = 0;
    *&v44[16] = 0;
    v19 = &__dst;
  }

  v26[0] = v19;
  v26[1] = v28;
  if ((llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError,void>::deserialize(v26, v44) & 1) == 0)
  {
    getErrorErrorCat();
    v29[0] = 3;
    v29[1] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  v42[0] = v44[0];
  *&v42[8] = *&v44[8];
  v43 = v45;
  *&v44[8] = 0;
  *&v44[16] = 0;
  v45 = 0;
  if (v44[0] == 1)
  {
    getErrorErrorCat();
    v29[0] = 3;
    v29[1] = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*&v42[8]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*&v44[8]);
  }

  if (v28 > 8 || !v28 && __dst)
  {
    free(__dst);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  *(a6 + 8) &= ~1u;
  *a6 = 1;
}

uint64_t llvm::orc::SimpleRemoteEPC::handleDisconnect(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 200));
  *&v4 = 0;
  v24 = v4;
  v22 = v4;
  v25 = 0;
  v23 = 0;
  llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::operator=(&v22, a1 + 392);
  llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::operator=((a1 + 392), &v24);
  v5 = v24;
  if (v25)
  {
    v6 = 40 * v25;
    v7 = (v24 + 8);
    do
    {
      if (*(v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v7);
      }

      v7 += 5;
      v6 -= 40;
    }

    while (v6);
    v5 = v24;
  }

  MEMORY[0x277C69E30](v5, 8);
  std::mutex::unlock((a1 + 200));
  if (DWORD2(v22))
  {
    if (v23)
    {
      v8 = 40 * v23;
      v9 = v22;
      while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v9 += 5;
        v8 -= 40;
        if (!v8)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v9 = v22;
    }

    v10 = (v22 + 40 * v23);
    while (v9 != v10)
    {
      llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(&v20, "disconnecting");
      llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(v9 + 1, &v20);
      if (v21 >= 9)
      {
        v11 = v20;
LABEL_21:
        free(v11);
        goto LABEL_22;
      }

      v11 = v20;
      if (v21)
      {
        v12 = 1;
      }

      else
      {
        v12 = v20 == 0;
      }

      if (!v12)
      {
        goto LABEL_21;
      }

      do
      {
LABEL_22:
        v9 += 5;
        if (v9 == v10)
        {
          goto LABEL_25;
        }
      }

      while (*v9 >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

LABEL_25:
  std::mutex::lock((a1 + 200));
  v13 = *(a1 + 320);
  *(a1 + 320) = 0;
  v14 = *a2;
  *a2 = 0;
  *&v24 = v13;
  v26 = v14;
  llvm::ErrorList::join(&v24, &v26, &v19);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  *(a1 + 320) = v19;
  *(a1 + 312) = 1;
  std::condition_variable::notify_all((a1 + 264));
  std::mutex::unlock((a1 + 200));
  v15 = v22;
  if (v23)
  {
    v16 = 40 * v23;
    v17 = (v22 + 8);
    do
    {
      if (*(v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v17);
      }

      v17 += 5;
      v16 -= 40;
    }

    while (v16);
    v15 = v22;
  }

  return MEMORY[0x277C69E30](v15, 8);
}

uint64_t llvm::orc::SimpleRemoteEPC::createDefaultMemoryManager@<X0>(llvm::orc::SimpleRemoteEPC *this@<X0>, uint64_t a2@<X8>)
{
  v12[12] = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v4 = llvm::orc::rt::SimpleExecutorMemoryManagerInstanceName;
  v12[0] = &v10;
  v12[1] = llvm::orc::rt::SimpleExecutorMemoryManagerInstanceName;
  if (llvm::orc::rt::SimpleExecutorMemoryManagerInstanceName)
  {
    v4 = strlen(llvm::orc::rt::SimpleExecutorMemoryManagerInstanceName);
  }

  v12[2] = v4;
  v12[3] = &v10 + 8;
  v5 = llvm::orc::rt::SimpleExecutorMemoryManagerReserveWrapperName;
  v12[4] = llvm::orc::rt::SimpleExecutorMemoryManagerReserveWrapperName;
  if (llvm::orc::rt::SimpleExecutorMemoryManagerReserveWrapperName)
  {
    v5 = strlen(llvm::orc::rt::SimpleExecutorMemoryManagerReserveWrapperName);
  }

  v12[5] = v5;
  v12[6] = &v11;
  v6 = llvm::orc::rt::SimpleExecutorMemoryManagerFinalizeWrapperName;
  v12[7] = llvm::orc::rt::SimpleExecutorMemoryManagerFinalizeWrapperName;
  if (llvm::orc::rt::SimpleExecutorMemoryManagerFinalizeWrapperName)
  {
    v6 = strlen(llvm::orc::rt::SimpleExecutorMemoryManagerFinalizeWrapperName);
  }

  v12[8] = v6;
  v12[9] = &v11 + 8;
  v7 = llvm::orc::rt::SimpleExecutorMemoryManagerDeallocateWrapperName;
  v12[10] = llvm::orc::rt::SimpleExecutorMemoryManagerDeallocateWrapperName;
  if (llvm::orc::rt::SimpleExecutorMemoryManagerDeallocateWrapperName)
  {
    v7 = strlen(llvm::orc::rt::SimpleExecutorMemoryManagerDeallocateWrapperName);
  }

  v12[11] = v7;
  llvm::orc::ExecutorProcessControl::getBootstrapSymbols(this, v12, 4, &v9);
  result = v9;
  if (!v9)
  {
    operator new();
  }

  *(a2 + 8) |= 1u;
  *a2 = result;
  return result;
}

uint64_t llvm::orc::SimpleRemoteEPC::createDefaultMemoryAccess@<X0>(llvm::orc::SimpleRemoteEPC *this@<X0>, uint64_t a2@<X8>)
{
  v15[18] = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v4 = llvm::orc::rt::MemoryWriteUInt8sWrapperName;
  v15[0] = &v12;
  v15[1] = llvm::orc::rt::MemoryWriteUInt8sWrapperName;
  if (llvm::orc::rt::MemoryWriteUInt8sWrapperName)
  {
    v4 = strlen(llvm::orc::rt::MemoryWriteUInt8sWrapperName);
  }

  v15[2] = v4;
  v15[3] = &v12 + 8;
  v5 = llvm::orc::rt::MemoryWriteUInt16sWrapperName;
  v15[4] = llvm::orc::rt::MemoryWriteUInt16sWrapperName;
  if (llvm::orc::rt::MemoryWriteUInt16sWrapperName)
  {
    v5 = strlen(llvm::orc::rt::MemoryWriteUInt16sWrapperName);
  }

  v15[5] = v5;
  v15[6] = &v13;
  v6 = llvm::orc::rt::MemoryWriteUInt32sWrapperName;
  v15[7] = llvm::orc::rt::MemoryWriteUInt32sWrapperName;
  if (llvm::orc::rt::MemoryWriteUInt32sWrapperName)
  {
    v6 = strlen(llvm::orc::rt::MemoryWriteUInt32sWrapperName);
  }

  v15[8] = v6;
  v15[9] = &v13 + 8;
  v7 = llvm::orc::rt::MemoryWriteUInt64sWrapperName;
  v15[10] = llvm::orc::rt::MemoryWriteUInt64sWrapperName;
  if (llvm::orc::rt::MemoryWriteUInt64sWrapperName)
  {
    v7 = strlen(llvm::orc::rt::MemoryWriteUInt64sWrapperName);
  }

  v15[11] = v7;
  v15[12] = &v14;
  v8 = llvm::orc::rt::MemoryWriteBuffersWrapperName;
  v15[13] = llvm::orc::rt::MemoryWriteBuffersWrapperName;
  if (llvm::orc::rt::MemoryWriteBuffersWrapperName)
  {
    v8 = strlen(llvm::orc::rt::MemoryWriteBuffersWrapperName);
  }

  v15[14] = v8;
  v15[15] = &v14 + 8;
  v9 = llvm::orc::rt::MemoryWritePointersWrapperName;
  v15[16] = llvm::orc::rt::MemoryWritePointersWrapperName;
  if (llvm::orc::rt::MemoryWritePointersWrapperName)
  {
    v9 = strlen(llvm::orc::rt::MemoryWritePointersWrapperName);
  }

  v15[17] = v9;
  llvm::orc::ExecutorProcessControl::getBootstrapSymbols(this, v15, 6, &v11);
  result = v11;
  if (!v11)
  {
    operator new();
  }

  *(a2 + 8) |= 1u;
  *a2 = result;
  return result;
}

__int128 *llvm::unique_function<llvm::Expected<std::unique_ptr<llvm::orc::ExecutorProcessControl::MemoryAccess>> ()(llvm::orc::SimpleRemoteEPC &)>::operator=(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v3 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(result);
    return llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v3, a2);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::CallImpl<llvm::orc::lookupSymbolsAsyncHelper(llvm::orc::EPCGenericDylibManager &,llvm::ArrayRef<llvm::orc::DylibManager::LookupRequest>,std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>,llvm::unique_function<void ()(llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>)>)::$_0>(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) & 1)
  {
    v3 = *a2;
    *a2 = 0;
    v4 = (a1 + 24);
    v30 = 0;
    v35 = -1;
    v34[0] = v3;
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
      v4 = *v4;
    }

    (*(v5 & 0xFFFFFFFFFFFFFFF8))(v4, v34);
    llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(v34);
  }

  else
  {
    v6 = *a2;
    v25 = *(a2 + 8);
    v31 = v25;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v29 = 0;
    v30 = v6;
    __p[0] = 0;
    __p[1] = 0;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::push_back[abi:nn200100]((a1 + 56), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    std::vector<llvm::orc::ExecutorSymbolDef>::reserve((*(a1 + 64) - 24), (v25 - v6) >> 4);
    for (; v6 != v25; ++v6)
    {
      *__p = *v6;
      v7 = *(a1 + 64);
      v9 = *(v7 - 16);
      v8 = *(v7 - 8);
      if (v9 >= v8)
      {
        v11 = *(v7 - 24);
        v12 = (v9 - v11) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v14 = v8 - v11;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(v7 - 24, v15);
        }

        v16 = (16 * v12);
        *v16 = *__p;
        v10 = 16 * v12 + 16;
        v17 = *(v7 - 24);
        v18 = *(v7 - 16) - v17;
        v19 = 16 * v12 - v18;
        memcpy(v16 - v18, v17, v18);
        v20 = *(v7 - 24);
        *(v7 - 24) = v19;
        *(v7 - 16) = v10;
        *(v7 - 8) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = *v6;
        v10 = (v9 + 1);
      }

      *(v7 - 16) = v10;
    }

    v21 = *(a1 + 8);
    v22 = *(a1 + 16) - 1;
    v23 = *a1;
    v26 = *(a1 + 56);
    v27 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v33, (a1 + 24));
    llvm::orc::lookupSymbolsAsyncHelper(v23, (v21 + 16), v22, &v26, v33);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v33);
    __p[0] = &v26;
    std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](__p);
  }

  return llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v30);
}

__n128 llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::MoveImpl<llvm::orc::lookupSymbolsAsyncHelper(llvm::orc::EPCGenericDylibManager &,llvm::ArrayRef<llvm::orc::DylibManager::LookupRequest>,std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>,llvm::unique_function<void ()(llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>)>)::$_0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a1 + 24, (a2 + 24));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>>::DestroyImpl<llvm::orc::lookupSymbolsAsyncHelper(llvm::orc::EPCGenericDylibManager &,llvm::ArrayRef<llvm::orc::DylibManager::LookupRequest>,std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>,llvm::unique_function<void ()(llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>)>)::$_0>(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&v3);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((a1 + 24));
}

const void **std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::push_back[abi:nn200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<llvm::orc::ExecutorSymbolDef>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<llvm::orc::ExecutorSymbolDef>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<llvm::orc::ExecutorSymbolDef>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<llvm::orc::ExecutorSymbolDef>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<llvm::orc::ExecutorSymbolDef>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<llvm::orc::ExecutorSymbolDef>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::~Expected(uint64_t a1)
{
  if (*(a1 + 80))
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
    llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(a1 + 56);
    llvm::StringMap<std::vector<char>,llvm::MallocAllocator>::~StringMap(a1 + 32);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t llvm::StringMap<std::vector<char>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::StringMapEntry<std::vector<char>>::Destroy<llvm::MallocAllocator>(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::StringMapEntry<std::vector<char>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69E30);
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>,unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::destroyAll(void *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 40 * v1;
    result = (*result + 8);
    do
    {
      if (*(result - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(result);
      }

      result += 5;
      v2 -= 40;
    }

    while (v2);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>,unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>,unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::unique_function<void ()(llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>)>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::operator=(void *a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>,unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::orc::ExecutorProcessControl::IncomingWFRHandler>>::destroyAll(a1);
  MEMORY[0x277C69E30](*a1, 8);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 4) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 2) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 16);
  *(a2 + 16) = v5;
  return a1;
}

void std::__assoc_state<llvm::MSVCPExpected<llvm::orc::SimpleRemoteEPCExecutorInfo>>::~__assoc_state(uint64_t a1)
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

uint64_t std::__assoc_state<llvm::MSVCPExpected<llvm::orc::SimpleRemoteEPCExecutorInfo>>::__on_zero_shared(_BYTE *a1)
{
  if (a1[136])
  {
    llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::~Expected((a1 + 144));
  }

  v2 = *(*a1 + 8);

  return v2(a1);
}

void llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::CallImpl<llvm::orc::SimpleRemoteEPC::setup(llvm::orc::SimpleRemoteEPC::Setup)::$_0>(uint64_t **a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  *v44 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v44[1])
  {
    v3 = v44[0];
    if (v44[1] <= 8)
    {
      v3 = v44;
    }
  }

  else
  {
    v53 = v44[0];
    if (v44[0])
    {
      getErrorErrorCat();
      __p[0] = 3;
      __p[1] = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v3 = v44;
  }

  v53 = v3;
  v54 = v44[1];
  __p[0] = 0;
  __p[1] = 0;
  *&v48 = 0;
  v49 = 0;
  *&v50 = 0;
  *(&v50 + 1) = 0x2000000000;
  v51 = 0;
  *&v52 = 0;
  *(&v52 + 1) = 0x1000000000;
  if (!llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::deserialize(&v53, __p))
  {
    goto LABEL_45;
  }

  v4 = v54;
  v5 = (v54 - 8);
  if (v54 < 8)
  {
    goto LABEL_45;
  }

  v6 = v53;
  v7 = *v53++;
  v54 -= 8;
  *(&v48 + 1) = v7;
  if (v5 < 8)
  {
    goto LABEL_45;
  }

  v8 = v6[1];
  v9 = (v4 - 16);
  v53 = v6 + 2;
  v54 = v9;
  v10 = v9 > 7;
  if (v8)
  {
    while (1)
    {
      if (!v10)
      {
        goto LABEL_45;
      }

      v12 = (v53 + 1);
      v11 = *v53++;
      v54 = (v9 - 8);
      v13 = v9 - 8 - v11;
      if (v9 - 8 < v11)
      {
        goto LABEL_45;
      }

      v14 = (v12 + v11);
      v53 = (v12 + v11);
      v54 = v13;
      v15 = v13 >= 8;
      v16 = (v13 - 8);
      if (!v15)
      {
        goto LABEL_45;
      }

      v17 = *v14;
      v53 = v14 + 1;
      v54 = v16;
      v43 = v8;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (!v11)
      {
        v12 = 0;
      }

      v18 = llvm::StringMapImpl::LookupBucketFor(&v49, v12, v11);
      v19 = v49;
      v20 = *(v49 + 8 * v18);
      if (v20 == -8)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = 0;
LABEL_24:
      if ((v21 & 1) == 0)
      {
        goto LABEL_45;
      }

      v9 = v54;
      v10 = v54 > 7;
      --v8;
      if (v43 == 1)
      {
        goto LABEL_26;
      }
    }

    --DWORD2(v50);
LABEL_21:
    v22 = operator new(v11 + 33, 8uLL);
    v24 = v22;
    v25 = (v22 + 4);
    if (v11)
    {
      memcpy(v22 + 4, v12, v11);
    }

    v25[v11] = 0;
    *v24 = v11;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = 0;
    *(v19 + 8 * v18) = v24;
    ++DWORD1(v50);
    llvm::StringMapImpl::RehashTable(&v49, v18, v23);
    v21 = 1;
    goto LABEL_24;
  }

LABEL_26:
  if (!v10)
  {
LABEL_45:
    getErrorErrorCat();
    v45 = 3;
    v46 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  v26 = *v53;
  v27 = v9 - 8;
  ++v53;
  v54 = v27;
  if (v26)
  {
    while (v27 >= 8)
    {
      v29 = (v53 + 1);
      v28 = *v53++;
      v54 = (v27 - 8);
      v30 = v27 - 8 - v28;
      if (v27 - 8 < v28)
      {
        break;
      }

      v53 = (v29 + v28);
      v54 = (v27 - 8 - v28);
      v15 = v30 >= 8;
      v31 = (v30 - 8);
      if (!v15)
      {
        break;
      }

      v32 = *(v29 + v28);
      v53 = (v29 + v28 + 8);
      v54 = v31;
      if (v28)
      {
        v33 = v29;
      }

      else
      {
        v33 = 0;
      }

      v34 = llvm::StringMapImpl::LookupBucketFor(&v51, v33, v28);
      v35 = v51;
      v36 = *(v51 + 8 * v34);
      if (v36)
      {
        if (v36 != -8)
        {
          goto LABEL_45;
        }

        --DWORD2(v52);
      }

      v37 = operator new(v28 + 17, 8uLL);
      v39 = v37;
      v40 = (v37 + 2);
      if (v28)
      {
        memcpy(v37 + 2, v29, v28);
      }

      --v26;
      v40[v28] = 0;
      *v39 = v28;
      v39[1] = v32;
      *(v35 + 8 * v34) = v39;
      ++DWORD1(v52);
      llvm::StringMapImpl::RehashTable(&v51, v34, v38);
      if (!v26)
      {
        goto LABEL_54;
      }

      v27 = v54;
    }

    goto LABEL_45;
  }

LABEL_54:
  v42 = *a1;
  v60 = 0;
  v55[0] = *__p;
  v55[1] = v48;
  __p[0] = 0;
  __p[1] = 0;
  *&v48 = 0;
  v56 = v49;
  v57 = v50;
  DWORD2(v50) = 0;
  v49 = 0;
  *&v50 = 0;
  v58 = v51;
  v59 = v52;
  v51 = 0;
  *&v52 = 0;
  DWORD2(v52) = 0;
  std::promise<llvm::MSVCPExpected<llvm::orc::SimpleRemoteEPCExecutorInfo>>::set_value(*v42, v55);
  llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::~Expected(v55);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(&v51);
  llvm::StringMap<std::vector<char>,llvm::MallocAllocator>::~StringMap(&v49);
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v44[1] >= 9)
  {
    v41 = v44[0];
LABEL_52:
    free(v41);
    return;
  }

  if (!v44[1])
  {
    v41 = v44[0];
    if (v44[0])
    {
      goto LABEL_52;
    }
  }
}

void std::promise<llvm::MSVCPExpected<llvm::orc::SimpleRemoteEPCExecutorInfo>>::set_value(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    std::mutex::lock((a1 + 24));
    if ((*(a1 + 136) & 1) == 0)
    {
      v7.__ptr_ = 0;
      v4 = *(a1 + 16);
      std::exception_ptr::~exception_ptr(&v7);
      if (!v4)
      {
        llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::moveConstruct<llvm::orc::SimpleRemoteEPCExecutorInfo>(a1 + 144, a2);
        *(a1 + 136) |= 5u;
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 24));
        return;
      }
    }

    std::__throw_future_error[abi:nn200100]();
  }

  std::__throw_future_error[abi:nn200100]();
  llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::moveConstruct<llvm::orc::SimpleRemoteEPCExecutorInfo>(v5, v6);
}

__n128 llvm::Expected<llvm::orc::SimpleRemoteEPCExecutorInfo>::moveConstruct<llvm::orc::SimpleRemoteEPCExecutorInfo>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 80);
  *(a1 + 80) = *(a1 + 80) & 0xFE | v2 & 1;
  if (v2)
  {
    v3 = *a2;
    *a2 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v4;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v5 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 12) = 0;
    a2[4] = 0;
    a2[5] = 0;
    *(a1 + 56) = a2[7];
    result = *(a2 + 4);
    *(a1 + 64) = result;
    a2[7] = 0;
    a2[8] = 0;
    *(a2 + 18) = 0;
  }

  return result;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::orc::ExecutorProcessControl::MemoryAccess>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t llvm::orc::GenericNamedTaskImpl<llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883EC9A0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v2 = *(a1 + 32);
  if (v2 != (a1 + 56))
  {
    free(v2);
  }

  return a1;
}

void llvm::orc::GenericNamedTaskImpl<llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0>::~GenericNamedTaskImpl(uint64_t a1)
{
  *a1 = &unk_2883EC9A0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v2 = *(a1 + 32);
  if (v2 != (a1 + 56))
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void *llvm::orc::GenericNamedTaskImpl<llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0>::run(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1[2];
  v2 = *(a1[1] + 32);
  *&v4 = a1[1];
  *(&v4 + 1) = v1;
  v5 = llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::CallbacksHolder<llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0::operator() const(void)::{lambda(llvm::orc::shared::WrapperFunctionResult)#1},llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0::operator() const(void)::{lambda(llvm::orc::shared::WrapperFunctionResult)#1},void>::Callbacks + 2;
  llvm::orc::ExecutionSession::runJITDispatchHandler(v2, &v4, a1[3], a1[4], a1[5]);
  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v4);
}

void llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::CallImpl<llvm::orc::SimpleRemoteEPC::handleCallWrapper(unsigned long long,llvm::orc::ExecutorAddr,llvm::SmallVector<char,128u>)::$_0::operator() const(void)::{lambda(llvm::orc::shared::WrapperFunctionResult)#1}>(uint64_t *a1, uint64_t a2)
{
  *v5 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *a1;
  (*(**(*a1 + 328) + 24))(&v7);
  if (v7)
  {
    v3 = *(v2 + 32);
    v6 = v7;
    v7 = 0;
    llvm::orc::ExecutionSession::reportError(v3, &v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (v5[1] >= 9)
  {
    v4 = v5[0];
LABEL_10:
    free(v4);
    return;
  }

  if (!v5[1])
  {
    v4 = v5[0];
    if (v5[0])
    {
      goto LABEL_10;
    }
  }
}

llvm::Instruction *llvm::IRBuilderBase::CreateICmp(uint64_t a1, uint64_t a2, llvm::CmpInst **a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  if (!result)
  {
    v11 = operator new(0x80uLL);
    *(v11 + 21) = *(v11 + 21) & 0x38000000 | 2;
    v12 = (v11 + 64);
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = v11 + 64;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = v11 + 64;
    v17 = 257;
    llvm::CmpInst::makeCmpResultType(*a3, v13, v14);
    llvm::CmpInst::CmpInst(v12, v15, 53, v8, a3, a4, v16, 0, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v12, a5);
  }

  return result;
}

void llvm::CmpInst::makeCmpResultType(llvm::CmpInst *this, llvm::Type *a2, unsigned int a3)
{
  if (this)
  {
    if ((*(this + 2) & 0xFE) == 0x12)
    {
      llvm::VectorType::get((**this + 1920), (*(this + 8) | (((~*(this + 2) & 0x13) == 0) << 32)), a3);
    }
  }
}

llvm::Instruction *llvm::IRBuilderBase::CreateCast(uint64_t a1, uint64_t a2, llvm::Value *a3, llvm::Type *a4, uint64_t a5)
{
  if (*a3 == a4)
  {
    return a3;
  }

  if (*(a3 + 16) > 0x14u)
  {
    v11 = 257;
    v9 = llvm::CastInst::Create(a2, a3, a4, v10, 0);
    return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v9, a5);
  }

  a3 = (*(**(a1 + 72) + 120))(*(a1 + 72), a2);
  if (a3)
  {
    v7 = *(a3 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a3;
  }

  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, a3, a5);
}

llvm::Instruction *llvm::IRBuilderBase::CreateAlignedStore(uint64_t *a1, llvm::Type **a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v5 = a5;
  Alignment = a4;
  if ((a4 & 0x100) == 0)
  {
    Alignment = llvm::DataLayout::getAlignment((*(*(a1[6] + 56) + 40) + 256), *a2, 1);
  }

  v10 = operator new(0x80uLL);
  v10[21] = v10[21] & 0x38000000 | 2;
  v11 = (v10 + 16);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 16;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = v10 + 16;
  llvm::StoreInst::StoreInst((v10 + 16), a2, a3, v5, Alignment, 0, 1, 0);
  v14 = 257;
  return llvm::IRBuilderBase::Insert<llvm::LoadInst>(a1, v11, v13);
}

void llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(void **this)
{
  *this = &unk_2883ECAB0;
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap((this + 20));
  llvm::StringMap<std::vector<char>,llvm::MallocAllocator>::~StringMap((this + 17));
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[3];
  this[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void llvm::orc::SelfExecutorProcessControl::Create(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
    operator new();
  }

  if (!*a2)
  {
    operator new();
  }

  llvm::sys::Process::getPageSize(&v10);
  if ((v11 & 1) == 0)
  {
    llvm::sys::getProcessTriple(&__p);
    v7 = 260;
    *&v6 = &__p;
    llvm::Triple::Triple(&v8, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v5 = v10;
  *(a4 + 8) |= 1u;
  *a4 = v5;
}

void llvm::orc::SelfExecutorProcessControl::loadDylib(_anonymous_namespace_ *a1@<X1>, uint64_t a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  PermanentLibrary = llvm::sys::DynamicLibrary::getPermanentLibrary(a1, __p);
  if (PermanentLibrary == &llvm::sys::DynamicLibrary::Invalid)
  {
    getErrorErrorCat();
    operator new();
  }

  *(a2 + 8) &= ~1u;
  *a2 = PermanentLibrary;
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void llvm::orc::SelfExecutorProcessControl::lookupSymbolsAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v5 = 0uLL;
  v43 = 0u;
  if (a3)
  {
    v6 = a2;
    v37 = a2 + 16 * a3;
    while (1)
    {
      v8 = *v6;
      __p = 0;
      v46 = 0;
      v47 = 0;
      std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::push_back[abi:nn200100](&v43, &__p);
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }

      v38 = v6;
      v9 = *(v6 + 8);
      v10 = *v9;
      v11 = v9[1];
      if (*v9 != v11)
      {
        break;
      }

LABEL_45:
      v6 += 16;
      if (v38 + 16 == v37)
      {
        v5 = v43;
        v34 = v44;
        v35 = v51 & 0xFE;
        goto LABEL_48;
      }
    }

    while (1)
    {
      v12 = **v10;
      if (*(a1 + 216))
      {
        v13 = (*v10 + 1);
      }

      else
      {
        v13 = *v10;
      }

      v14 = *(a1 + 216) != 0;
      v15 = v12 - v14;
      if ((v12 - v14) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v42 = v12 - v14;
      if (v15)
      {
        memmove(&__dst, v13 + 2, v15);
      }

      *(&__dst + v15) = 0;
      if (v8 == &llvm::sys::DynamicLibrary::Invalid)
      {
        v16 = 0;
      }

      else
      {
        if (v42 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        v16 = dlsym(v8, p_dst);
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v10[2] == 0;
      }

      v19 = !v18;
      if (v18)
      {
        v39 = 0uLL;
        v40 = 0;
        v48 = &v39;
        operator new();
      }

      v20 = *(&v43 + 1);
      v22 = *(*(&v43 + 1) - 16);
      v21 = *(*(&v43 + 1) - 8);
      if (v22 >= v21)
      {
        v24 = *(*(&v43 + 1) - 24);
        v25 = (v22 - v24) >> 4;
        v26 = v25 + 1;
        if ((v25 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v27 = v21 - v24;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF0)
        {
          v28 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorSymbolDef>>(*(&v43 + 1) - 24, v28);
        }

        v29 = 16 * v25;
        *v29 = v16;
        *(v29 + 8) = 4096;
        v23 = 16 * v25 + 16;
        v30 = *(v20 - 24);
        v31 = *(v20 - 16) - v30;
        v32 = v29 - v31;
        memcpy((v29 - v31), v30, v31);
        v33 = *(v20 - 24);
        *(v20 - 24) = v32;
        *(v20 - 16) = v23;
        *(v20 - 8) = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v22 = v16;
        *(v22 + 8) = 4096;
        v23 = v22 + 16;
      }

      *(v20 - 16) = v23;
      if (v42 < 0)
      {
        operator delete(__dst);
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      v10 += 4;
      if (v10 == v11)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
LABEL_48:
    v51 = v35;
    v49 = v5;
    v50 = v34;
    v44 = 0;
    v43 = 0uLL;
    v36 = a4[3];
    if ((v36 & 2) == 0)
    {
      a4 = *a4;
    }

    (*(v36 & 0xFFFFFFFFFFFFFFF8))(a4, &v49);
    llvm::Expected<std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>>::~Expected(&v49);
  }

  __p = &v43;
  std::vector<std::vector<llvm::orc::ExecutorSymbolDef>>::__destroy_vector::operator()[abi:nn200100](&__p);
}

uint64_t llvm::orc::SelfExecutorProcessControl::runAsMain@<X0>(uint64_t (*a1)(void, uint64_t)@<X1>, const void **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6[0] = 0;
  v6[16] = 0;
  result = llvm::orc::runAsMain(a1, a2, a3, v6);
  *(a4 + 8) &= ~1u;
  *a4 = result;
  return result;
}

uint64_t llvm::orc::SelfExecutorProcessControl::runAsVoidFunction@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *(a2 + 8) &= ~1u;
  *a2 = result;
  return result;
}

uint64_t llvm::orc::SelfExecutorProcessControl::runAsIntFunction@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = a1(a2);
  *(a3 + 8) &= ~1u;
  *a3 = result;
  return result;
}

void llvm::orc::SelfExecutorProcessControl::callWrapperAsync(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2(a4, a5);
  v10 = v6;
  llvm::orc::ExecutorProcessControl::IncomingWFRHandler::operator()(a3, &v9);
  if (v10 >= 9)
  {
    v7 = v9;
LABEL_7:
    free(v7);
    return;
  }

  v7 = v9;
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = v9 == 0;
  }

  if (!v8)
  {
    goto LABEL_7;
  }
}

uint64_t llvm::orc::SelfExecutorProcessControl::disconnect@<X0>(llvm::orc::SelfExecutorProcessControl *this@<X0>, void *a2@<X8>)
{
  result = (*(**(this + 3) + 24))(*(this + 3));
  *a2 = 0;
  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writeUInt8sAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = 16 * a3;
    v6 = (a2 + 8);
    do
    {
      **(v6 - 1) = *v6;
      v6 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  v9 = 0;
  v7 = a4[3];
  if ((v7 & 2) == 0)
  {
    v4 = *a4;
  }

  (*(v7 & 0xFFFFFFFFFFFFFFF8))(v4, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writeUInt16sAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = 16 * a3;
    v6 = (a2 + 8);
    do
    {
      **(v6 - 1) = *v6;
      v6 += 8;
      v5 -= 16;
    }

    while (v5);
  }

  v9 = 0;
  v7 = a4[3];
  if ((v7 & 2) == 0)
  {
    v4 = *a4;
  }

  (*(v7 & 0xFFFFFFFFFFFFFFF8))(v4, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writeUInt32sAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = 16 * a3;
    v6 = (a2 + 8);
    do
    {
      **(v6 - 1) = *v6;
      v6 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  v9 = 0;
  v7 = a4[3];
  if ((v7 & 2) == 0)
  {
    v4 = *a4;
  }

  (*(v7 & 0xFFFFFFFFFFFFFFF8))(v4, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writeUInt64sAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = 16 * a3;
    v6 = (a2 + 8);
    do
    {
      **(v6 - 1) = *v6;
      v6 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  v9 = 0;
  v7 = a4[3];
  if ((v7 & 2) == 0)
  {
    v4 = *a4;
  }

  (*(v7 & 0xFFFFFFFFFFFFFFF8))(v4, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writeBuffersAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 24 * a3;
    do
    {
      memcpy(*v5, *(v5 + 8), *(v5 + 16));
      v5 += 24;
    }

    while (v5 != v6);
  }

  v9 = 0;
  v7 = a4[3];
  if ((v7 & 2) == 0)
  {
    a4 = *a4;
  }

  (*(v7 & 0xFFFFFFFFFFFFFFF8))(a4, &v9);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t llvm::orc::InProcessMemoryAccess::writePointersAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 8) == 1)
  {
    if (a3)
    {
      v4 = 16 * a3;
      v5 = (a2 + 8);
      do
      {
        **(v5 - 1) = *v5;
        v5 += 2;
        v4 -= 16;
      }

      while (v4);
    }
  }

  else if (a3)
  {
    v6 = 16 * a3;
    v7 = (a2 + 8);
    do
    {
      **(v7 - 1) = *v7;
      v7 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  v10 = 0;
  v8 = a4[3];
  if ((v8 & 2) == 0)
  {
    a4 = *a4;
  }

  (*(v8 & 0xFFFFFFFFFFFFFFF8))(a4, &v10);
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void llvm::orc::SelfExecutorProcessControl::~SelfExecutorProcessControl(llvm::orc::SelfExecutorProcessControl *this)
{
  *this = &unk_2883ECAF8;
  *(this + 23) = &unk_2883ECB50;
  v2 = *(this + 26);
  *(this + 25) = &unk_2883ECBA0;
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(this);
}

{
  *this = &unk_2883ECAF8;
  *(this + 23) = &unk_2883ECB50;
  v2 = *(this + 26);
  *(this + 25) = &unk_2883ECBA0;
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(this);

  JUMPOUT(0x277C69E40);
}

void non-virtual thunk tollvm::orc::SelfExecutorProcessControl::~SelfExecutorProcessControl(llvm::orc::SelfExecutorProcessControl *this)
{
  v2 = (this - 184);
  *(this - 23) = &unk_2883ECAF8;
  *this = &unk_2883ECB50;
  v3 = *(this + 3);
  *(this + 2) = &unk_2883ECBA0;
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(v2);
}

{
  v2 = (this - 184);
  *(this - 23) = &unk_2883ECAF8;
  *this = &unk_2883ECB50;
  v3 = *(this + 3);
  *(this + 2) = &unk_2883ECBA0;
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(v2);

  JUMPOUT(0x277C69E40);
}

{
  v2 = (this - 200);
  *(this - 25) = &unk_2883ECAF8;
  *(this - 2) = &unk_2883ECB50;
  v3 = *(this + 1);
  *this = &unk_2883ECBA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(v2);
}

{
  v2 = (this - 200);
  *(this - 25) = &unk_2883ECAF8;
  *(this - 2) = &unk_2883ECB50;
  v3 = *(this + 1);
  *this = &unk_2883ECBA0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::orc::ExecutorProcessControl::~ExecutorProcessControl(v2);

  JUMPOUT(0x277C69E40);
}

void llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::CallImpl<llvm::orc::SelfExecutorProcessControl::jitDispatchViaWrapperFunctionManager(void *,void const*,char const*,unsigned long)::$_0>(uint64_t *a1, uint64_t a2)
{
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::promise<llvm::orc::shared::WrapperFunctionResult>::set_value(a1, v4);
  if (v4[1] >= 9)
  {
    v2 = v4[0];
LABEL_7:
    free(v2);
    return;
  }

  v2 = v4[0];
  if (v4[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = v4[0] == 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }
}

void *llvm::detail::UniqueFunctionBase<void,llvm::orc::shared::WrapperFunctionResult>::MoveImpl<llvm::orc::SelfExecutorProcessControl::jitDispatchViaWrapperFunctionManager(void *,void const*,char const*,unsigned long)::$_0>(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void llvm::orc::DynamicThreadPoolTaskDispatcher::dispatch(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**a2 + 24))(*a2, &llvm::orc::MaterializationTask::ID);
  std::mutex::lock((a1 + 8));
  if (!v4)
  {
LABEL_9:
    ++*(a1 + 80);
    std::mutex::unlock((a1 + 8));
    *a2 = 0;
    operator new();
  }

  if ((*(a1 + 144) & 1) == 0)
  {
    v5 = *(a1 + 152);
    goto LABEL_8;
  }

  v5 = *(a1 + 152);
  if (v5 != *(a1 + 136))
  {
LABEL_8:
    *(a1 + 152) = v5 + 1;
    goto LABEL_9;
  }

  std::deque<std::unique_ptr<llvm::orc::Task>>::push_back((a1 + 160), a2);

  std::mutex::unlock((a1 + 8));
}

void llvm::orc::DynamicThreadPoolTaskDispatcher::shutdown(llvm::orc::DynamicThreadPoolTaskDispatcher *this)
{
  m = (this + 8);
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  *(this + 72) = 0;
  if (!*(this + 10))
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((this + 88), &v3);
  }

  while (*(this + 10));
  if (v3.__owns_)
  {
    m = v3.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

void llvm::orc::DynamicThreadPoolTaskDispatcher::~DynamicThreadPoolTaskDispatcher(llvm::orc::DynamicThreadPoolTaskDispatcher *this)
{
  *this = &unk_2883ECBD0;
  v2 = (this + 8);
  std::deque<std::unique_ptr<llvm::orc::Task>>::~deque[abi:nn200100](this + 20);
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex(v2);
}

{
  *this = &unk_2883ECBD0;
  v2 = (this + 8);
  std::deque<std::unique_ptr<llvm::orc::Task>>::~deque[abi:nn200100](this + 20);
  std::condition_variable::~condition_variable((this + 88));
  std::mutex::~mutex(v2);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::orc::DynamicThreadPoolTaskDispatcher::dispatch(std::unique_ptr<llvm::orc::Task>)::$_0>>(uint64_t a1)
{
  v10 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  (*(**(a1 + 16) + 48))(*(a1 + 16));
  std::mutex::lock((v4 + 8));
  while (*(v4 + 200))
  {
    v5 = *(*(v4 + 168) + ((*(v4 + 192) >> 6) & 0x3FFFFFFFFFFFFF8));
    v6 = *(v4 + 192) & 0x1FFLL;
    v7 = *(v5 + 8 * v6);
    *(v5 + 8 * v6) = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    std::deque<std::unique_ptr<llvm::orc::Task>>::pop_front((v4 + 160));
    if ((*(a1 + 24) & 1) == 0)
    {
      ++*(v4 + 152);
      *(a1 + 24) = 1;
    }

    std::mutex::unlock((v4 + 8));
    (*(**(a1 + 16) + 48))(*(a1 + 16));
    std::mutex::lock((v4 + 8));
  }

  if (*(a1 + 24) == 1)
  {
    --*(v4 + 152);
  }

  --*(v4 + 80);
  std::condition_variable::notify_all((v4 + 88));
  std::mutex::unlock((v4 + 8));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::orc::DynamicThreadPoolTaskDispatcher::dispatch(std::unique_ptr<llvm::orc::Task>)::$_0>>::~unique_ptr[abi:nn200100](&v10);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::orc::DynamicThreadPoolTaskDispatcher::dispatch(std::unique_ptr<llvm::orc::Task>)::$_0>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    v2[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x277C69E40](v4, 0x1020C4034AC6F07);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x277C69BF0]();
    MEMORY[0x277C69E40](v3, 0x20C4093837F09);
  }

  return a1;
}

llvm::Module **std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](llvm::Module **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::Module::~Module(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
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
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::jitlink::DWARFRecordSectionSplitter::operator()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, unint64_t *a4@<X3>)
{
  v58[8] = *MEMORY[0x277D85DE8];
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a4);
  if (result)
  {
    v8 = result;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(result + 32);
    v11 = *(v8 + 32) + 8 * *(v8 + 48);
    if (v11 != v9)
    {
      v12 = v9;
      v13 = v10;
      do
      {
        v52[0] = *v12;
        v56 = v58;
        v57 = 0x800000000;
        v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(&v49, v52);
        std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>((v14 + 1), &v56);
        if (v56 != v58)
        {
          free(v56);
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
    }

    v15 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 56);
    v17 = *(v8 + 56) + 8 * *(v8 + 72);
    if (v17 != v15)
    {
      v18 = v15;
      v19 = v16;
      do
      {
        v20 = *v18;
        v52[0] = *(*v18 + 8);
        v21 = v52[0];
        v56 = 0;
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(v49, v51, v52[0], &v56);
        v23 = v56;
        if ((v22 & 1) == 0)
        {
          v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(&v49, v52, v56);
          *v23 = v21;
          *(v23 + 8) = 0;
          *(v23 + 88) = 0;
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(v23 + 2, v20);
        do
        {
          ++v18;
        }

        while (v18 != v19 && (*v18 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v18 != v17);
    }

    v24 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
    v26 = *(v8 + 32) + 8 * *(v8 + 48);
    if (v26 != v24)
    {
      v27 = v24;
      v28 = v25;
      do
      {
        v29 = *v27++;
        v56 = v29;
        v30 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(&v49, &v56);
        v31 = *(v30 + 4);
        v32 = 126 - 2 * __clz(v31);
        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(v30[1], (v30[1] + 8 * v31), v33, 1);
        while (v27 != v28 && (*v27 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v27;
        }
      }

      while (v27 != v26);
    }

    v34 = v49;
    v35 = v51;
    v36 = 3 * v51;
    if (v50)
    {
      v37 = v49;
      if (v51)
      {
        v38 = 96 * v51;
        v37 = v49;
        while ((*v37 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v37 += 96;
          v38 -= 96;
          if (!v38)
          {
            goto LABEL_43;
          }
        }
      }

      v39 = v49 + 96 * v51;
      if (v37 != v39)
      {
        v48 = v49;
LABEL_36:
        v40 = *(*v37 + 24);
        if (!v40)
        {
          v55 = 1283;
          v46 = *a1;
          v47 = a1[1];
          v52[0] = "Unexpected zero-fill block in ";
          v53 = v46;
          v54 = v47;
          operator new();
        }

        v41 = *(*v37 + 32);
        if (v41)
        {
          v42 = *(a2 + 188);
          v56 = &unk_2883EA5B0;
          llvm::BinaryStreamRef::BinaryStreamRef(&v57, v40, v41, v42);
        }

        *a3 = 0;
        v34 = v48;
        while (1)
        {
          v37 += 96;
          if (v37 == v39)
          {
            break;
          }

          if ((*v37 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            if (v37 != v39)
            {
              goto LABEL_36;
            }

            break;
          }
        }
      }
    }

LABEL_43:
    *a3 = 0;
    if (v35)
    {
      v43 = 32 * v36;
      v44 = v34;
      do
      {
        if ((*v44 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v44 + 88) == 1)
        {
          v45 = *(v44 + 8);
          if ((v44 + 24) != v45)
          {
            free(v45);
          }
        }

        v44 += 96;
        v43 -= 96;
      }

      while (v43);
    }

    return MEMORY[0x277C69E30](v34, 8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, a2);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x800000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(a1, a2);
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned int>@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, a3, *(a1 + 56), 4);
  if (!*a3)
  {
    *(a1 + 56) += 4;
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = MEMORY[0];
    v8 = bswap32(MEMORY[0]);
    if ((result - 1) >= 2)
    {
      v7 = v8;
    }

    *a2 = v7;
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned long long>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, a3, *(a1 + 56), 8);
  if (!*a3)
  {
    *(a1 + 56) += 8;
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = MEMORY[0];
    v8 = bswap64(MEMORY[0]);
    if ((result - 1) >= 2)
    {
      v7 = v8;
    }

    *a2 = v7;
    *a3 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = 0;
    *(v5 + 88) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 96 * v5);
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
        v6 = (a1 + 96 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::InsertIntoBucketImpl<llvm::jitlink::Block *>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::grow(uint64_t a1, int a2)
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
  result = operator new(96 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 96 * v10 - 96;
      v13 = vdupq_n_s64(v12 / 0x60);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[12] = -4096;
        }

        v11 += 2;
        result += 24;
      }

      while (((v12 / 0x60 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 96 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>,llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *v16;
          *(v18 + 8) = 0;
          *(v18 + 88) = 0;
          if (*(v16 + 88) == 1)
          {
            v18[1] = v18 + 3;
            v18[2] = 0x800000000;
            if (*(v16 + 16))
            {
              llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=((v18 + 1), v16 + 8);
            }

            *(v18 + 88) = 1;
            v19 = *(v16 + 88);
            ++*(a1 + 8);
            if (v19)
            {
              v20 = *(v16 + 8);
              if ((v16 + 24) != v20)
              {
                free(v20);
              }
            }
          }

          else
          {
            ++*(a1 + 8);
          }
        }

        v16 += 96;
        v15 -= 96;
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
    v23 = 96 * v21 - 96;
    v24 = vdupq_n_s64(v23 / 0x60);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_2750C1210)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[12] = -4096;
      }

      v22 += 2;
      result += 24;
    }

    while (((v23 / 0x60 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}