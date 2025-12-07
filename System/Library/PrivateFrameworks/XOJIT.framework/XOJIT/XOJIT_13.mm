uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*(*a2 + 16) + 24);
  v6 = *(*(*result + 16) + 24);
  v7 = v5 >= v6;
  if (v5 == v6)
  {
    v7 = *v3 >= *v4;
    if (*v3 == *v4)
    {
      v7 = v3[4] >= v4[4];
    }
  }

  if (v7)
  {
    v11 = *a3;
    v12 = *(*(*a3 + 16) + 24);
    v13 = v12 >= v5;
    if (v12 == v5)
    {
      v13 = *v11 >= *v3;
      if (*v11 == *v3)
      {
        v13 = v11[4] >= v3[4];
      }
    }

    if (!v13)
    {
      *a2 = v11;
      *a3 = v3;
      v14 = *a2;
      v15 = *result;
      v16 = *(*(*a2 + 16) + 24);
      v17 = *(*(*result + 16) + 24);
      v18 = v16 >= v17;
      if (v16 == v17)
      {
        v18 = *v14 >= *v15;
        if (*v14 == *v15)
        {
          v18 = v14[4] >= v15[4];
        }
      }

      if (!v18)
      {
        *result = v14;
        *a2 = v15;
      }
    }
  }

  else
  {
    v8 = *a3;
    v9 = *(*(*a3 + 16) + 24);
    v10 = v9 >= v5;
    if (v9 == v5)
    {
      v10 = *v8 >= *v3;
      if (*v8 == *v3)
      {
        v10 = v8[4] >= v3[4];
      }
    }

    if (!v10)
    {
      *result = v8;
LABEL_25:
      *a3 = v4;
      return result;
    }

    *result = v3;
    *a2 = v4;
    v19 = *a3;
    v20 = *(*(*a3 + 16) + 24);
    v21 = *(v4[2] + 24);
    v22 = v20 >= v21;
    if (v20 == v21)
    {
      v22 = *v19 >= *v4;
      if (*v19 == *v4)
      {
        v22 = v19[4] >= v4[4];
      }
    }

    if (!v22)
    {
      *a2 = v19;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  v11 = *(*(*a4 + 16) + 24);
  v12 = *(*(*a3 + 16) + 24);
  v13 = v11 >= v12;
  if (v11 == v12)
  {
    v13 = *v9 >= *v10;
    if (*v9 == *v10)
    {
      v13 = v9[4] >= v10[4];
    }
  }

  if (!v13)
  {
    *a3 = v9;
    *a4 = v10;
    v14 = *a3;
    v15 = *a2;
    v16 = *(*(*a3 + 16) + 24);
    v17 = *(*(*a2 + 16) + 24);
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      v18 = *v14 >= *v15;
      if (*v14 == *v15)
      {
        v18 = v14[4] >= v15[4];
      }
    }

    if (!v18)
    {
      *a2 = v14;
      *a3 = v15;
      v19 = *a2;
      v20 = *a1;
      v21 = *(*(*a2 + 16) + 24);
      v22 = *(*(*a1 + 16) + 24);
      v23 = v21 >= v22;
      if (v21 == v22)
      {
        v23 = *v19 >= *v20;
        if (*v19 == *v20)
        {
          v23 = v19[4] >= v20[4];
        }
      }

      if (!v23)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  v13 = *(*(*a5 + 16) + 24);
  v14 = *(*(*a4 + 16) + 24);
  v15 = v13 >= v14;
  if (v13 == v14)
  {
    v15 = *v11 >= *v12;
    if (*v11 == *v12)
    {
      v15 = v11[4] >= v12[4];
    }
  }

  if (!v15)
  {
    *a4 = v11;
    *a5 = v12;
    v16 = *a4;
    v17 = *a3;
    v18 = *(*(*a4 + 16) + 24);
    v19 = *(*(*a3 + 16) + 24);
    v20 = v18 >= v19;
    if (v18 == v19)
    {
      v20 = *v16 >= *v17;
      if (*v16 == *v17)
      {
        v20 = v16[4] >= v17[4];
      }
    }

    if (!v20)
    {
      *a3 = v16;
      *a4 = v17;
      v21 = *a3;
      v22 = *a2;
      v23 = *(*(*a3 + 16) + 24);
      v24 = *(*(*a2 + 16) + 24);
      v25 = v23 >= v24;
      if (v23 == v24)
      {
        v25 = *v21 >= *v22;
        if (*v21 == *v22)
        {
          v25 = v21[4] >= v22[4];
        }
      }

      if (!v25)
      {
        *a2 = v21;
        *a3 = v22;
        v26 = *a2;
        v27 = *a1;
        v28 = *(*(*a2 + 16) + 24);
        v29 = *(*(*a1 + 16) + 24);
        v30 = v28 >= v29;
        if (v28 == v29)
        {
          v30 = *v26 >= *v27;
          if (*v26 == *v27)
          {
            v30 = v26[4] >= v27[4];
          }
        }

        if (!v30)
        {
          *a1 = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a1 + 8, a2 - 8);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a1 + 8, a1 + 16, a2 - 8);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a1 + 8, a1 + 16, a1 + 24, a2 - 8);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 8);
      v6 = *a1;
      v7 = *(v5[2] + 24);
      v8 = *(*(*a1 + 16) + 24);
      v9 = v7 >= v8;
      if (v7 == v8)
      {
        v9 = *v5 >= *v6;
        if (*v5 == *v6)
        {
          v9 = v5[4] >= v6[4];
        }
      }

      if (!v9)
      {
        *a1 = v5;
        *(a2 - 8) = v6;
      }

      return 1;
    }
  }

  v10 = a1 + 16;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(a1, a1 + 8, a1 + 16);
  v11 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    v16 = *(*(*v11 + 16) + 24);
    v17 = *(*(*v10 + 16) + 24);
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      v18 = *v14 >= *v15;
      if (*v14 == *v15)
      {
        v18 = v14[4] >= v15[4];
      }
    }

    if (v18)
    {
      goto LABEL_32;
    }

    *v11 = v15;
    v19 = v12;
    while (1)
    {
      v20 = *(a1 + v19 + 8);
      v21 = *(v14[2] + 24);
      v22 = *(v20[2] + 24);
      v23 = v21 >= v22;
      if (v21 != v22)
      {
        goto LABEL_24;
      }

      if (*v14 == *v20)
      {
        v23 = v14[4] >= v20[4];
LABEL_24:
        if (v23)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      if (*v14 >= *v20)
      {
        break;
      }

LABEL_28:
      v10 -= 8;
      *(a1 + v19 + 16) = v20;
      v19 -= 8;
      if (v19 == -16)
      {
        v10 = a1;
        goto LABEL_31;
      }
    }

    v10 = a1 + v19 + 16;
LABEL_31:
    *v10 = v14;
    if (++v13 != 8)
    {
LABEL_32:
      v10 = v11;
      v12 += 8;
      v11 += 8;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 8 == a2;
  }
}

void llvm::jitlink::InProcessMemoryManager::IPInFlightAlloc::~IPInFlightAlloc(void **this)
{
  *this = &unk_2883ECE48;
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(this + 4);
}

{
  *this = &unk_2883ECE48;
  llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(this + 4);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::jitlink::InProcessMemoryManager::IPInFlightAlloc::abandon(uint64_t a1, void *a2)
{
  v4 = llvm::sys::Memory::releaseMappedMemory(a1 + 488);
  if (v4)
  {
    llvm::errorCodeToError(v4, v5, &v13);
    v15 = v13;
    v16 = 0;
    llvm::ErrorList::join(&v16, &v15, &v14);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v16)
    {
      (*(*v16 + 1))(v16);
    }

    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::sys::Memory::releaseMappedMemory(a1 + 464);
  if (v7)
  {
    llvm::errorCodeToError(v7, v8, &v12);
    v15 = v12;
    v16 = v6;
    llvm::ErrorList::join(&v16, &v15, &v14);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (v16)
    {
      (*(*v16 + 1))(v16);
    }

    v6 = v14;
  }

  v11 = v6;
  v9 = a2[3];
  if ((v9 & 2) == 0)
  {
    a2 = *a2;
  }

  (*(v9 & 0xFFFFFFFFFFFFFFF8))(a2, &v11);
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void llvm::jitlink::InProcessMemoryManager::IPInFlightAlloc::finalize(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 32);
  v6 = v5 + 104 * v4;
  while (1)
  {
    v7 = *v5 & 7;
    v8 = *(v5 + 40);
    v9 = (*(v5 + 16) + *(v5 + 24) + *(*(a1 + 8) + 8) - 1) / *(*(a1 + 8) + 8) * *(*(a1 + 8) + 8);
    *&v36 = v8;
    *(&v36 + 1) = v9;
    LODWORD(v37) = 0;
    v10 = llvm::sys::Memory::protectMappedMemory(&v36, v7 << 24);
    if (v10)
    {
      break;
    }

    if (v7 >= 4)
    {
      sys_icache_invalidate(v8, v9);
    }

    v5 += 104;
    if (v5 == v6)
    {
      goto LABEL_14;
    }
  }

  llvm::errorCodeToError(v10, v11, &v27);
  if (!v27)
  {
LABEL_14:
    llvm::orc::shared::runFinalizeActions((*(a1 + 16) + 272), &v36);
    if (v38)
    {
      v14 = v36;
      *&v36 = 0;
      v35 = -1;
      v34 = v14;
      v15 = a2[3];
      if ((v15 & 2) == 0)
      {
        a2 = *a2;
      }

      (*(v15 & 0xFFFFFFFFFFFFFFF8))(a2, &v34);
      if ((v35 & 1) == 0)
      {
        goto LABEL_35;
      }

      v16 = v34;
      v34 = 0;
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v17 = llvm::sys::Memory::releaseMappedMemory(a1 + 488);
      if (!v17)
      {
        v20 = *(a1 + 8);
        v27 = *(a1 + 464);
        v28 = *(a1 + 480);
        v25 = v36;
        v21 = v37;
        v36 = 0uLL;
        v37 = 0;
        std::mutex::lock((v20 + 16));
        v22 = *(v20 + 80);
        if (v22)
        {
          *(v20 + 80) = *v22;
        }

        else
        {
          v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v20 + 88), 48, 3);
        }

        *v22 = v27;
        *(v22 + 16) = v28;
        *(v22 + 24) = v25;
        *(v22 + 40) = v21;
        memset(v26, 0, sizeof(v26));
        std::mutex::unlock((v20 + 16));
        v31 = 0;
        v30 = v22;
        v23 = a2[3];
        if ((v23 & 2) == 0)
        {
          a2 = *a2;
        }

        (*(v23 & 0xFFFFFFFFFFFFFFF8))(a2, &v30);
        if (v31)
        {
          v24 = v30;
          v30 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        *&v27 = v26;
        std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v27);
        goto LABEL_35;
      }

      llvm::errorCodeToError(v17, v18, &v29);
      v33 = -1;
      v32 = v29;
      v19 = a2[3];
      if ((v19 & 2) == 0)
      {
        a2 = *a2;
      }

      (*(v19 & 0xFFFFFFFFFFFFFFF8))(a2, &v32);
      if ((v33 & 1) == 0 || (v16 = v32, v32 = 0, !v16))
      {
LABEL_35:
        if ((v38 & 1) == 0)
        {
          *&v27 = &v36;
          std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v27);
          return;
        }

        v13 = v36;
        *&v36 = 0;
        if (!v13)
        {
          return;
        }

LABEL_37:
        (*(*v13 + 8))(v13);
        return;
      }
    }

    (*(*v16 + 8))(v16);
    goto LABEL_35;
  }

  v40 = -1;
  v39 = v27;
  v12 = a2[3];
  if ((v12 & 2) == 0)
  {
    a2 = *a2;
  }

  (*(v12 & 0xFFFFFFFFFFFFFFF8))(a2, &v39);
  if (v40)
  {
    v13 = v39;
    v39 = 0;
    if (v13)
    {
      goto LABEL_37;
    }
  }
}

uint64_t llvm::jitlink::ObjCStubsBuilderBase::initialize@<X0>(llvm::jitlink::ObjCStubsBuilderBase *this@<X0>, void *a2@<X8>, unint64_t *a3@<X3>)
{
  v132 = *MEMORY[0x277D85DE8];
  *(this + 6) = llvm::jitlink::LinkGraph::findSectionByName(*(this + 3), "__TEXT,__objc_methname", 22, a3);
  v124[0] = 0;
  v124[1] = 0;
  v125 = 0;
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(*(this + 3), "__DATA,__objc_selrefs", 21, v5);
  *(this + 7) = SectionByName;
  v8 = *(this + 3);
  if (!SectionByName)
  {
    llvm::jitlink::LinkGraph::createSection(v8, "__DATA,__objc_selrefs", 21, 3);
  }

  llvm::jitlink::addBlockStartSymbols(v8, SectionByName, v7);
  v9 = *(this + 7);
  v10 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v9 + 56);
  v13 = *(v9 + 56) + 8 * *(v9 + 72);
  if (v13 != v10)
  {
    v14 = v10;
    v15 = v11;
    do
    {
      v16 = *v14;
      v123 = v16;
      v17 = *(v16 + 8);
      v18 = v17[5];
      v19 = v17[6];
      if (v18 != v19)
      {
        v20 = *(v16 + 16) & 0x1FFFFFFFFFFFFFFLL;
        while (v20 != *(v18 + 8))
        {
          v18 += 32;
          if (v18 == v19)
          {
            goto LABEL_37;
          }
        }
      }

      if (v18 == v19)
      {
LABEL_37:
        std::operator+<char>();
        v42 = std::string::append(&v108, ", ");
        v43 = v42->__r_.__value_.__r.__words[2];
        v109 = *&v42->__r_.__value_.__l.__data_;
        v110 = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v111.__r_.__value_.__r.__words[0] = &v109;
        v111.__r_.__value_.__r.__words[2] = "__DATA,__objc_selrefs";
        v112 = 21;
        v113 = 1284;
        *&v114 = &v111;
        v115 = " selector symbol ";
        v116 = 770;
        v44 = *v123;
        if (*v123)
        {
          v47 = *v44;
          v45 = (v44 + 2);
          v46 = v47;
        }

        else
        {
          v45 = "<unnamed>";
          v46 = 9;
        }

        v117.__r_.__value_.__r.__words[0] = &v114;
        v117.__r_.__value_.__r.__words[2] = v45;
        v118 = v46;
        v119 = 1282;
        *&__p = &v117;
        v121 = " at ";
        v122 = 770;
        v88 = (*(v123 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v123 + 8);
        *&v126 = "{0:x}";
        *(&v126 + 1) = 5;
        *&v127 = &v129;
        *(&v127 + 1) = 1;
        *&v128 = &unk_2883EC4C0;
        *(&v128 + 1) = v88;
        *&v129 = &v128;
        p_p = &__p;
        v104 = &v126;
        v105 = 1538;
        operator new();
      }

      if (*(v18 + 24) != *(this + 16))
      {
        std::operator+<char>();
        v96 = std::string::append(&v111, ", edge for ");
        v97 = v96->__r_.__value_.__r.__words[2];
        v114 = *&v96->__r_.__value_.__l.__data_;
        v115 = v97;
        v96->__r_.__value_.__l.__size_ = 0;
        v96->__r_.__value_.__r.__words[2] = 0;
        v96->__r_.__value_.__r.__words[0] = 0;
        v117.__r_.__value_.__r.__words[0] = &v114;
        v117.__r_.__value_.__r.__words[2] = "__DATA,__objc_selrefs";
        v118 = 21;
        v119 = 1284;
        *&__p = &v117;
        v121 = " block at ";
        v122 = 770;
        v98 = *v17;
        *&v126 = "{0:x}";
        *(&v126 + 1) = 5;
        *&v127 = &v129;
        *(&v127 + 1) = 1;
        *&v128 = &unk_2883EC4C0;
        *(&v128 + 1) = v98;
        *&v129 = &v128;
        p_p = &__p;
        v104 = &v126;
        v105 = 1538;
        operator new();
      }

      if (*(v18 + 16))
      {
        std::operator+<char>();
        v99 = std::string::append(&v111, ", edge for ");
        v100 = v99->__r_.__value_.__r.__words[2];
        v114 = *&v99->__r_.__value_.__l.__data_;
        v115 = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        v117.__r_.__value_.__r.__words[0] = &v114;
        v117.__r_.__value_.__r.__words[2] = "__DATA,__objc_selrefs";
        v118 = 21;
        v119 = 1284;
        *&__p = &v117;
        v121 = " block at ";
        v122 = 770;
        v101 = *v17;
        *&v126 = "{0:x}";
        *(&v126 + 1) = 5;
        *&v127 = &v129;
        *(&v127 + 1) = 1;
        *&v128 = &unk_2883EC4C0;
        *(&v128 + 1) = v101;
        *&v129 = &v128;
        p_p = &__p;
        v104 = &v126;
        v105 = 1538;
        operator new();
      }

      v21 = *v18;
      v22 = *(*v18 + 8);
      if ((*(v22 + 8) & 1) == 0 || *(v22 + 16) != *(this + 6))
      {
        std::operator+<char>();
        v90 = std::string::append(&v111, ", edge for ");
        v91 = v90->__r_.__value_.__r.__words[2];
        v114 = *&v90->__r_.__value_.__l.__data_;
        v115 = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        v117.__r_.__value_.__r.__words[0] = &v114;
        v117.__r_.__value_.__r.__words[2] = "__DATA,__objc_selrefs";
        v118 = 21;
        v119 = 1284;
        *&__p = &v117;
        v121 = " block at ";
        v122 = 770;
        v92 = *v17;
        *&v126 = "{0:x}";
        *(&v126 + 1) = 5;
        *&v127 = &v129;
        *(&v127 + 1) = 1;
        *&v128 = &unk_2883EC4C0;
        *(&v128 + 1) = v92;
        *&v129 = &v128;
        p_p = &__p;
        v104 = &v126;
        v105 = 1538;
        operator new();
      }

      v106[0] = 0uLL;
      llvm::jitlink::cStringFromSymbol(&v126, *(this + 3), v21);
      if (v127)
      {
        v23 = v126;
        *a2 = v126;
        if (v23)
        {
          return MEMORY[0x277C69E30](v124[0], 8);
        }
      }

      else
      {
        v106[0] = v126;
        *a2 = 0;
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::FindAndConstruct(v124, &v123)[1] = v21;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 10, v106, v24, v25)[2] = v21;
      v26 = v123;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 13, v106, v27, v28)[2] = v26;
      do
      {
        ++v14;
      }

      while (v14 != v15 && (*v14 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v14 != v13);
  }

  v29 = *(this + 6);
  v30 = *(this + 3);
  if (!v29)
  {
    llvm::jitlink::LinkGraph::createSection(v30, "__TEXT,__objc_methname", 22, 5);
  }

  llvm::jitlink::addBlockStartSymbols(v30, v29, v12);
  v31 = *(this + 6);
  v32 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v31 + 56);
  v35 = *(v31 + 56) + 8 * *(v31 + 72);
  if (v35 != v32)
  {
    v36 = v32;
    v37 = v33;
    do
    {
      v38 = *v36;
      v106[0] = 0uLL;
      llvm::jitlink::cStringFromSymbol(&v126, *(this + 3), v38);
      if (v127)
      {
        v40 = v126;
        *a2 = v126;
        if (v40)
        {
          return MEMORY[0x277C69E30](v124[0], 8);
        }
      }

      else
      {
        v106[0] = v126;
        *a2 = 0;
      }

      *&v126 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(this + 10, v106, &v126, v39) & 1) == 0)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 10, v106, v41, v34)[2] = v38;
      }

      do
      {
        ++v36;
      }

      while (v36 != v37 && (*v36 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v36 != v35);
  }

  v48 = llvm::jitlink::LinkGraph::findSectionByName(*(this + 3), "__TEXT,__objc_stubs", 19, v34);
  *(this + 8) = v48;
  if (!v48)
  {
    llvm::jitlink::LinkGraph::createSection(*(this + 3), "__TEXT,__objc_stubs", 19, 5);
  }

  v49 = v48;
  v50 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v48 + 32);
  v52 = *(v49 + 32) + 8 * *(v49 + 48);
  if (v52 != v50)
  {
    v53 = v50;
    v54 = v51;
    while (1)
    {
      v55 = *v53;
      v56 = *(*v53 + 40);
      v57 = *(*v53 + 48);
      if (v56 == v57)
      {
        goto LABEL_101;
      }

      v58 = 0;
      do
      {
        *&v106[0] = *v56;
        *&v126 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v124, v106, &v126) && v126 != v124[0] + 16 * v125)
        {
          if (v58)
          {
            std::operator+<char>();
            v85 = std::string::append(&v117, ", existing stub at ");
            v86 = v85->__r_.__value_.__r.__words[2];
            __p = *&v85->__r_.__value_.__l.__data_;
            v121 = v86;
            v85->__r_.__value_.__l.__size_ = 0;
            v85->__r_.__value_.__r.__words[2] = 0;
            v85->__r_.__value_.__r.__words[0] = 0;
            v87 = *v55;
            *&v126 = "{0:x}";
            *(&v126 + 1) = 5;
            *&v127 = &v129;
            *(&v127 + 1) = 1;
            *&v128 = &unk_2883EC4C0;
            *(&v128 + 1) = v87;
            *&v129 = &v128;
            p_p = &__p;
            v104 = &v126;
            v105 = 1540;
            operator new();
          }

          v58 = *(v126 + 8);
        }

        v56 += 4;
      }

      while (v56 != v57);
      if (!v58)
      {
LABEL_101:
        std::operator+<char>();
        v93 = std::string::append(&v117, ", existing stub at ");
        v94 = v93->__r_.__value_.__r.__words[2];
        __p = *&v93->__r_.__value_.__l.__data_;
        v121 = v94;
        v93->__r_.__value_.__l.__size_ = 0;
        v93->__r_.__value_.__r.__words[2] = 0;
        v93->__r_.__value_.__r.__words[0] = 0;
        v95 = *v55;
        *&v126 = "{0:x}";
        *(&v126 + 1) = 5;
        *&v127 = &v129;
        *(&v127 + 1) = 1;
        *&v128 = &unk_2883EC4C0;
        *(&v128 + 1) = v95;
        *&v129 = &v128;
        p_p = &__p;
        v104 = &v126;
        v105 = 1540;
        operator new();
      }

      v60 = v58[3] - 1;
      *&v126 = *(v58[1] + 24) + (v58[2] & 0x1FFFFFFFFFFFFFFLL);
      *(&v126 + 1) = v60;
      *&v106[0] = 0;
      v61 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(this + 16, &v126, v106, v59);
      v62 = *&v106[0];
      if (v61)
      {
        goto LABEL_57;
      }

      v63 = *(this + 34);
      v64 = *(this + 36);
      if (4 * v63 + 4 >= 3 * v64)
      {
        break;
      }

      if (v64 + ~v63 - *(this + 35) <= v64 >> 3)
      {
        goto LABEL_63;
      }

LABEL_54:
      ++*(this + 34);
      if (*v62 != -1)
      {
        --*(this + 35);
      }

      *v62 = v126;
      v62[2] = 0;
LABEL_57:
      v62[2] = v55;
      do
      {
        ++v53;
      }

      while (v53 != v54 && (*v53 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v53 == v52)
      {
        goto LABEL_65;
      }
    }

    v64 *= 2;
LABEL_63:
    llvm::DenseMap<llvm::StringRef,llvm::jitlink::Block *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Block *>>::grow(this + 128, v64);
    *&v106[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(this + 16, &v126, v106, v65);
    v62 = *&v106[0];
    goto LABEL_54;
  }

LABEL_65:
  v66 = *(*(this + 3) + 120);
  std::mutex::lock(v66);
  LODWORD(v126) = 0;
  v67 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v66[1], "_objc_msgSend", 0xDuLL, &v126);
  v68 = v67 - 1;
  if (v67 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v67 + 1, 1uLL);
  }

  std::mutex::unlock(v66);
  v69 = *(this + 3);
  v70 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v69 + 224);
  v72 = *(v69 + 224) + 8 * *(v69 + 240);
  if (v72 == v70)
  {
LABEL_72:
    llvm::jitlink::LinkGraph::defined_symbols(&v126, *(this + 3));
    v106[0] = v126;
    v106[1] = v127;
    v106[2] = v128;
    v107 = v129;
    v74 = v130;
    v75 = v131;
    v76 = v129;
    if (v126 != v130 || v129 != v131)
    {
      while (1)
      {
        v83 = *v76;
        if (*v83 && *v83 == v67)
        {
          break;
        }

        llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v106, &p_p);
        v76 = v107;
        if (*&v106[0] == v74 && v107 == v75)
        {
          goto LABEL_74;
        }
      }

      *(this + 9) = v83;
      goto LABEL_95;
    }

LABEL_74:
    v77 = *(this + 3);
    v78 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v77 + 248);
    v80 = *(v77 + 248) + 8 * *(v77 + 264);
    if (v80 == v78)
    {
LABEL_79:
      v81 = *(this + 3);
      v102 = v67;
      if (v68 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(v67 + 1, 1uLL);
      }

      *(this + 9) = llvm::jitlink::LinkGraph::addExternalSymbol(v81, &v102, 0, 0);
      if (v102 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add(v102 + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      goto LABEL_95;
    }

    while (1)
    {
      v73 = *v78;
      if (**v78 == v67)
      {
        break;
      }

      do
      {
        ++v78;
      }

      while (v78 != v79 && (*v78 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v78 == v80)
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    while (1)
    {
      v73 = *v70;
      if (**v70 == v67)
      {
        break;
      }

      do
      {
        ++v70;
      }

      while (v70 != v71 && (*v70 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v70 == v72)
      {
        goto LABEL_72;
      }
    }
  }

  *(this + 9) = v73;
LABEL_95:
  *a2 = 0;
  if (v68 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v67 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return MEMORY[0x277C69E30](v124[0], 8);
}

uint64_t llvm::jitlink::addBlockStartSymbols(llvm::jitlink *this, llvm::jitlink::LinkGraph *a2, llvm::jitlink::Section *a3)
{
  v5 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
  v7 = v6;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 32);
  v8 = *(a2 + 4) + 8 * *(a2 + 12);
  if (v5 == v8)
  {
    llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::init(&v25, 0);
  }

  else
  {
    v9 = 0;
    v10 = v5;
    do
    {
      v11 = v9;
      do
      {
        ++v10;
      }

      while (v10 != v7 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v9;
    }

    while (v10 != v8);
    v12 = v11 | (v11 >> 1) | ((v11 | (v11 >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::init(&v25, (((v13 | (v13 >> 16)) >> 32) | v13 | (v13 >> 16)) + 1);
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v25, v5, v28);
      do
      {
        ++v5;
      }

      while (v5 != v7 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v5 != v8);
  }

  v14 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 56);
  v16 = *(a2 + 7) + 8 * *(a2 + 18);
  if (v16 != v14)
  {
    v17 = v14;
    v18 = v15;
    do
    {
      if ((*(*v17 + 16) & 0x1FFFFFFFFFFFFFFLL) == 0)
      {
        v28[0] = *(*v17 + 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(&v25, v28);
      }

      do
      {
        ++v17;
      }

      while (v17 != v18 && (*v17 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v17 != v16);
  }

  v19 = v25;
  if (v26)
  {
    i = v25;
    if (v27)
    {
      v21 = 8 * v27;
      for (i = v25; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; ++i)
      {
        v21 -= 8;
        if (!v21)
        {
          return MEMORY[0x277C69E30](v19, 8);
        }
      }
    }

    v22 = &v25[v27];
    if (i != v22)
    {
LABEL_27:
      v23 = *i++;
      llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v23, 0, *(v23 + 32), 0, 0);
      while (i != v22)
      {
        if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (i != v22)
          {
            goto LABEL_27;
          }

          break;
        }

        ++i;
      }

      v19 = v25;
    }
  }

  return MEMORY[0x277C69E30](v19, 8);
}

size_t llvm::jitlink::cStringFromSymbol(size_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v13[0] = a2;
  v13[1] = a3;
  v4 = *(a3 + 8);
  if ((*(v4 + 8) & 1) == 0)
  {
    llvm::jitlink::cStringFromSymbol(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)::$_0::operator()(&v12, v13, "was not defined", 15);
  }

  v5 = *(v4 + 32);
  if (!v5)
  {
    llvm::jitlink::cStringFromSymbol(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)::$_0::operator()(&v11, v13, "was in an empty block", 21);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    v7 = *(a3 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v8 = v6 + v7;
    v9 = v5 - v7;
    result = strnlen((v6 + v7), v5 - v7);
    if (result == v9)
    {
      llvm::jitlink::cStringFromSymbol(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)::$_0::operator()(&v10, v13, "is missing null terminator", 26);
    }

    *(v3 + 16) &= ~1u;
    *v3 = v8;
    *(v3 + 8) = result;
  }

  else
  {
    *(result + 16) &= ~1u;
    *result = "";
    *(result + 8) = 0;
  }

  return result;
}

void *llvm::jitlink::ObjCStubsBuilderBase::getOrCreateSelector(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *&v34 = a2;
  *(&v34 + 1) = a3;
  v39 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 104), &v34, &v39, a4) && v39 != *(a1 + 104) + 24 * *(a1 + 120))
  {
    return *(v39 + 16);
  }

  *v35 = v34;
  v39 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 80), v35, &v39, v5) || v39 == *(a1 + 80) + 24 * *(a1 + 96))
  {
    v8 = *v35;
    v9 = v35[1] + 1;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 24), v35[1] + 1, 0);
    v11 = v10;
    if (*(&v8 + 1))
    {
      memmove(v10, v8, *(&v8 + 1));
    }

    *(v11 + *(&v8 + 1)) = 0;
    v12 = *(a1 + 24);
    v13 = *(a1 + 48);
    v39 = v11;
    v40 = v9;
    v37 = 1;
    v38 = 0;
    v36 = 0;
    v14 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v12, v13, &v39, &v38, &v37, &v36);
    v7 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*(a1 + 24), v14, 0, v14[4], 0, 0);
  }

  else
  {
    v7 = *(v39 + 16);
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 56);
  v17 = *(a1 + 8);
  v39 = *a1;
  v40 = v17;
  v35[0] = 0;
  v37 = 0;
  v38 = v17;
  v18 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v15, v16, &v39, v35, &v38, &v37);
  v19 = v18;
  v20 = *(a1 + 16);
  v21 = v18[6];
  v22 = v18[7];
  if (v21 >= v22)
  {
    v24 = v18[5];
    v25 = (v21 - v24) >> 5;
    v26 = v25 + 1;
    if ((v25 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v27 = v22 - v24;
    if (v27 >> 4 > v26)
    {
      v26 = v27 >> 4;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFE0)
    {
      v28 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((v18 + 5), v28);
    }

    v29 = 32 * v25;
    *v29 = v7;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *(v29 + 24) = v20;
    v23 = 32 * v25 + 32;
    v30 = v18[5];
    v31 = v18[6] - v30;
    v32 = v29 - v31;
    memcpy((v29 - v31), v30, v31);
    v33 = v19[5];
    v19[5] = v32;
    v19[6] = v23;
    v19[7] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v21 = v7;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    v23 = v21 + 32;
    *(v21 + 24) = v20;
  }

  v19[6] = v23;
  return llvm::jitlink::LinkGraph::addAnonymousSymbol(*(a1 + 24), v19, 0, *(a1 + 8), 0, 0);
}

void llvm::jitlink::cStringFromSymbol(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)::$_0::operator()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::operator+<char>();
  v5 = std::string::append(&v16, " string symbol ");
  v6 = v5->__r_.__value_.__r.__words[2];
  *__p = *&v5->__r_.__value_.__l.__data_;
  v18 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = a2[1];
  v8 = *v7;
  if (*v7)
  {
    v11 = *v8;
    v9 = (v8 + 2);
    v10 = v11;
  }

  else
  {
    v9 = "<unnamed>";
    v10 = 9;
  }

  v19[0] = __p;
  v19[2] = v9;
  v19[3] = v10;
  v20 = 1284;
  v21[0] = v19;
  v21[2] = " at ";
  v22 = 770;
  v12 = (*(v7 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v7 + 8);
  v13[0] = "{0:x}";
  v13[1] = 5;
  v13[2] = &v15;
  v13[3] = 1;
  v14[0] = &unk_2883EC4C0;
  v14[1] = v12;
  v15 = v14;
  v23[0] = v21;
  v23[2] = v13;
  v24 = 1538;
  v25 = v23;
  v26 = " ";
  v27 = 770;
  operator new();
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t *a1, _OWORD *a2, uint64_t a3, unint64_t *a4)
{
  v9 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, a4);
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>,llvm::StringRef,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v9);
    *v7 = *a2;
    v7[2] = 0;
  }

  return v7;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::jitlink::Block *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::jitlink::Block *>>::grow(uint64_t a1, int a2)
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
    v11 = *(a1 + 16);
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

    if (v3)
    {
      v13 = 24 * v3;
      v14 = v4;
      do
      {
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, v14, &v18, v10);
          v15 = v18;
          *v18 = *v14;
          *(v15 + 2) = *(v14 + 16);
          ++*(a1 + 8);
        }

        v14 += 24;
        v13 -= 24;
      }

      while (v13);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 24 * v16;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v17 -= 24;
    }

    while (v17);
  }

  return result;
}

void llvm::jitlink::createLinkGraphFromMachOObject(int **a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 > 3)
  {
    v4 = **a1;
    if (v4 == -17958194 || v4 == -822415874)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    if (v4 != -17958193 && v4 != -805638658)
    {
      operator new();
    }

    if (v3 > 0x1F)
    {
      v7 = (*a1)[1];
      v8 = bswap32(v7);
      if (v4 == -805638658)
      {
        v7 = v8;
      }

      if (v7 != 16777223)
      {
        if (v7 == 16777228)
        {
          v9 = *(a1 + 1);
          v11 = *a1;
          v12 = v9;
          *a2 = 0uLL;
          llvm::jitlink::createLinkGraphFromMachOObject_arm64(&v11);
        }

        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
      }

      v10 = *(a1 + 1);
      v11 = *a1;
      v12 = v10;
      *a2 = 0uLL;
      llvm::jitlink::createLinkGraphFromMachOObject_x86_64(&v11);
    }
  }

  operator new();
}

llvm::jitlink::LinkGraph **llvm::jitlink::link_MachO(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (v3 == 38)
  {
    *a1 = 0;
    v11 = v2;
    v7 = *a2;
    *a2 = 0;
    v10 = v7;
    llvm::jitlink::link_MachO_x86_64(&v11, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v6 = &v11;
  }

  else
  {
    if (v3 != 3)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    *a1 = 0;
    v13 = v2;
    v4 = *a2;
    *a2 = 0;
    v12 = v4;
    llvm::jitlink::link_MachO_arm64(&v13, &v12);
    v5 = v12;
    v12 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = &v13;
  }

  return std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](v6);
}

uint64_t *llvm::jitlink::buildTables_MachO_arm64@<X0>(llvm::jitlink *this@<X0>, void *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v16 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = v14;
  v13 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v19);
  v20[0] = v19[0];
  v20[1] = v19[1];
  v20[2] = v19[2];
  v20[3] = v19[3];
  llvm::jitlink::LinkGraph::blocks(this, v17);
  v18[0] = v17[4];
  v18[1] = v17[5];
  v18[2] = v17[6];
  v18[3] = v17[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v21, v20, v18);
  v4 = v21;
  v5 = v22;
  if (v21 != v22)
  {
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 40);
      v8 = *(*v4 + 48);
      while (v7 != v8)
      {
        if ((llvm::jitlink::aarch64::GOTTableManager::visitEdge(v14, this, v6, v7) & 1) == 0 && *(v7 + 24) == 9 && (*(*(*v7 + 8) + 8) & 1) == 0)
        {
          *v7 = llvm::jitlink::TableManager<llvm::jitlink::aarch64::PLTTableManager>::getEntryForTarget(v10, this, *v7);
        }

        v7 += 32;
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v21;
  }

  if (v4)
  {
    v22 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v10);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v14);
}

void llvm::jitlink::createLinkGraphFromMachOObject_arm64(__int128 *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  llvm::object::ObjectFile::createMachOObjectFile(v4);
}

void llvm::jitlink::link_MachO_arm64(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v14);
    if (v16 < 8)
    {
      *&v12 = llvm::jitlink::markAllSymbolsLive;
      v13 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v12);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v14 = "__LD,__compact_unwind";
    *&v15 = 21;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::CompactUnwindSplitter,llvm::jitlink::CompactUnwindSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v14 = "__TEXT,__eh_frame";
    *&v15 = 17;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v4 = operator new(0x20uLL, 8uLL);
    v15 = xmmword_2750C12D0;
    *v4 = "__TEXT,__eh_frame";
    v4[1] = 17;
    *(v4 + 4) = 8;
    *(v4 + 5) = 84279812;
    *(v4 + 24) = 8;
    v14 = v4;
    v16 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v5 = operator new(0xA0uLL, 8uLL);
    v14 = v5;
    v15 = xmmword_2750C4150;
    *v5 = &llvm::jitlink::aarch64::NullPointerContent;
    v5[1] = 8;
    *(v5 + 16) = 2;
    v5[3] = 0;
    v5[4] = "_objc_msgSend";
    v5[5] = 13;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 24) = 0;
    v5[13] = 0;
    v5[14] = 0;
    *(v5 + 30) = 0;
    v5[16] = 0;
    v5[17] = 0;
    *(v5 + 36) = 0;
    v5[19] = llvm::jitlink::makeObjCMsgSendStub;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::ObjCStubsBuilder<llvm::jitlink::Block & (*)(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)>,llvm::jitlink::ObjCStubsBuilder<llvm::jitlink::Block & (*)(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)>,void>::Callbacks + 4);
    MEMORY[0x277C69E30](0, 8);
    MEMORY[0x277C69E30](0, 8);
    MEMORY[0x277C69E30](0, 8);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    MEMORY[0x277C69E30](0, 8);
    MEMORY[0x277C69E30](0, 8);
    MEMORY[0x277C69E30](0, 8);
    v14 = llvm::jitlink::buildTables_MachO_arm64;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    if (*(*a1 + 160) == 3 && *(*a1 + 164) == 33)
    {
      v14 = llvm::jitlink::applyPACSigningToModInitPointers;
      v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v14);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
      v14 = llvm::jitlink::aarch64::createEmptyPointerSigningFunction;
      v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v14);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
      v14 = llvm::jitlink::aarch64::lowerPointer64AuthEdgesToSigningFunction;
      v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v9[1] + 1, &v14);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    }
  }

  (*(**a2 + 72))(&v14);
  if (!v14)
  {
    operator new();
  }

  v6 = *a2;
  v7 = v14;
  v14 = 0;
  (*(*v6 + 24))(v6, &v7);
  if (v7)
  {
    (*(*v7 + 1))(v7);
  }

  if (v14)
  {
    (*(*v14 + 1))(v14);
  }

  v14 = &v10;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = &v9[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = &v8[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v14);
}

void *llvm::jitlink::makeObjCMsgSendStub(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = &llvm::jitlink::makeObjCMsgSendStub(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)::StubBytes;
  v11[1] = 32;
  v9 = 4;
  v10 = 0;
  v8 = 0;
  v6 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a1, a2, v11, &v10, &v9, &v8);
  llvm::jitlink::Block::addEdge(v6, 12, 0, a3, 0);
  llvm::jitlink::Block::addEdge(v6, 13, 4, a3, 0);
  llvm::jitlink::Block::addEdge(v6, 14, 8, a4, 0);
  llvm::jitlink::Block::addEdge(v6, 15, 12, a4, 0);
  return v6;
}

void llvm::jitlink::applyPACSigningToModInitPointers(llvm::jitlink *this@<X0>, void *a2@<X8>, unint64_t *a3@<X3>)
{
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(this, "__DATA,__mod_init_func", 22, a3);
  if (SectionByName)
  {
    v5 = SectionByName;
    v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 32);
    v8 = *(v5 + 32) + 8 * *(v5 + 48);
    if (v8 != v6)
    {
      do
      {
        v9 = *v6;
        v11 = *(*v6 + 40);
        v10 = *(*v6 + 48);
        while (v11 != v10)
        {
          if (*(v11 + 24) == 2)
          {
            v12 = *(v11 + 16);
            if (HIDWORD(v12))
            {
              std::operator+<char>();
              v13 = std::string::append(&v19, ", __mod_init_func pointer at ");
              v14 = v13->__r_.__value_.__r.__words[2];
              *__p = *&v13->__r_.__value_.__l.__data_;
              v21 = v14;
              v13->__r_.__value_.__l.__size_ = 0;
              v13->__r_.__value_.__r.__words[2] = 0;
              v13->__r_.__value_.__r.__words[0] = 0;
              v15 = *v9 + *(v11 + 8);
              v16[0] = "{0:x}";
              v16[1] = 5;
              v16[2] = &v18;
              v16[3] = 1;
              v17[0] = &unk_2883EB9E8;
              v17[1] = v15;
              v18 = v17;
              v22 = __p;
              v23 = v16;
              v24 = 1540;
              operator new();
            }

            *(v11 + 24) = 3;
            *(v11 + 16) = v12 | 0x8000000000000000;
          }

          v11 += 32;
        }

        do
        {
          ++v6;
        }

        while (v6 != v7 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v6 != v8);
    }
  }

  *a2 = 0;
}

void anonymous namespace::MachOLinkGraphBuilder_arm64::~MachOLinkGraphBuilder_arm64(_anonymous_namespace_::MachOLinkGraphBuilder_arm64 *this)
{
  llvm::jitlink::MachOLinkGraphBuilder::~MachOLinkGraphBuilder(this);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::MachOLinkGraphBuilder_arm64::addRelocations(_anonymous_namespace_::MachOLinkGraphBuilder_arm64 *this@<X0>, const char **a2@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *(this + 13);
  v5 = (*(*v4 + 352))(v4);
  v7 = v6;
  v8 = (*(*v4 + 360))(v4);
  v68 = v5;
  v69 = v7;
  if (v7 != v9 || v5 != v8)
  {
    v11 = v8;
    v12 = v9;
    v60 = a2;
    v61 = v9;
    v62 = v8;
    while (1)
    {
      v13 = (*(*v7 + 152))(v7, v5);
      if ((*(*v69 + 224))(v69, v68))
      {
        v14 = (*(*v69 + 272))(v69, v68);
        if (v14 != (*(*v69 + 280))())
        {
          llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
        }

        goto LABEL_150;
      }

      v15 = (*(*v4 + 160))(v4, v68);
      llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v78, this, v15);
      if (v79)
      {
        break;
      }

      if (!*(v78 + 80))
      {
        v17 = 5;
        goto LABEL_145;
      }

      v66 = (*(*v69 + 272))(v69, v68);
      v67 = v18;
      v19 = (*(*v69 + 280))();
      v21 = v66;
      v63 = v19;
      if (v66 == v19)
      {
LABEL_14:
        v17 = 0;
        goto LABEL_145;
      }

      while (1)
      {
        Relocation = 0;
        Relocation = llvm::object::MachOObjectFile::getRelocation(*(this + 13), v21, v20);
        v22 = v77;
        if (v77)
        {
          v16 = v76;
          goto LABEL_11;
        }

        v64 = v13 + Relocation.r_address;
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(this, v78, v64, &v70);
        if (v71)
        {
          v16 = v70;
          goto LABEL_11;
        }

        v23 = *(v70 + 1);
        v24 = *(&Relocation + 1);
        v25 = *v23;
        if ((1 << ((*(&Relocation + 1) >> 25) & 3)) + v64 > v23[4] + *v23)
        {
          operator new();
        }

        v26 = v23[3];
        v27 = v76;
        if (v76 == 14)
        {
          break;
        }

        v30 = 0;
        v29 = v64;
LABEL_25:
        v31 = v64 - v25;
        switch(v27)
        {
          case 3:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            SymbolByAddress = *(v70 + 5);
            v30 = *(v26 + v31);
            v36 = 4;
            goto LABEL_53;
          case 4:
          case 6:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            SymbolByAddress = *(v70 + 5);
            v30 = *(v26 + v31);
            if (v27 == 4)
            {
              v36 = 2;
            }

            else
            {
              v36 = 3;
            }

            goto LABEL_53;
          case 5:
            v43 = *(v26 + v31);
            llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v70, this, (*(&Relocation + 1) & 0xFFFFFF) - 1);
            if (v71)
            {
              v36 = 0;
              SymbolByAddress = 0;
              v44 = 0;
              v45 = v70;
              v70 = 0;
              a2 = v60;
LABEL_94:
              *a2 = v45;
              v17 = 1;
              goto LABEL_96;
            }

            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(this, v70, v43, &v80);
            a2 = v60;
            if (v81)
            {
              v36 = 0;
              SymbolByAddress = 0;
              v44 = 0;
              v45 = v80;
              goto LABEL_94;
            }

            SymbolByAddress = v80;
            v30 = v43 - (**(v80 + 8) + (*(v80 + 16) & 0x1FFFFFFFFFFFFFFLL));
            v17 = 15;
            v44 = 1;
            v36 = 2;
LABEL_96:
            if (v71)
            {
              v54 = v70;
              v70 = 0;
              if (v54)
              {
                (*(*v54 + 8))(v54);
              }
            }

            if ((v44 & 1) == 0)
            {
              goto LABEL_144;
            }

LABEL_54:
            llvm::jitlink::Block::addEdge(v23, v36, v64 - *v23, SymbolByAddress, v30);
            if ((v77 & 1) != 0 && v76)
            {
              (*(*v76 + 8))(v76);
            }

            v12 = v61;
            v11 = v62;
            (*(*v67 + 296))(v67, &v66);
            v21 = v66;
            if (v66 == v63)
            {
              goto LABEL_14;
            }

            break;
          case 7:
          case 9:
          case 11:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            if (*(v26 + v31) >> 5 != 75497472)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            SymbolByAddress = *(v70 + 5);
            if (v27 == 11)
            {
              v33 = 17;
            }

            else
            {
              v33 = 0;
            }

            if (v27 == 9)
            {
              v33 = 14;
            }

            v34 = v27 == 7;
            v35 = 12;
            goto LABEL_50;
          case 8:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            if ((*(v26 + v31 + 1) & 0x3FFC) != 0)
            {
              operator new();
            }

            SymbolByAddress = *(v70 + 5);
            v36 = 13;
            goto LABEL_53;
          case 10:
          case 12:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            if (*(v26 + v31) >> 10 != 4083712)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            SymbolByAddress = *(v70 + 5);
            if (v27 == 12)
            {
              v33 = 18;
            }

            else
            {
              v33 = 0;
            }

            v34 = v27 == 10;
            v35 = 15;
LABEL_50:
            if (v34)
            {
              v36 = v35;
            }

            else
            {
              v36 = v33;
            }

            goto LABEL_53;
          case 13:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
              goto LABEL_111;
            }

            SymbolByAddress = *(v70 + 5);
            v36 = 16;
            goto LABEL_53;
          case 14:
          case 15:
            __break(1u);
            return;
          case 16:
          case 17:
            (*(*v67 + 296))(v67, &v66);
            if (v66 == v63)
            {
              operator new();
            }

            v38 = llvm::object::MachOObjectFile::getRelocation(*(this + 13), v66, v37);
            v39 = v38;
            if (Relocation.r_address != v38)
            {
              operator new();
            }

            v40 = HIDWORD(v38);
            if (((*(&Relocation + 1) ^ HIDWORD(v38)) & 0x6000000) != 0)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFF);
            v41 = v70;
            if (v71)
            {
              goto LABEL_141;
            }

            if ((~*(&Relocation + 1) & 0x6000000) != 0)
            {
              v42 = *(v26 + v31);
            }

            else
            {
              v42 = *(v26 + v31);
            }

            v46 = *(v70 + 5);
            if ((v40 & 0x8000000) != 0)
            {
              llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, HIDWORD(v39) & 0xFFFFFF);
              v41 = v70;
              a2 = v60;
              if (v71)
              {
                goto LABEL_142;
              }

              SymbolByAddress = *(v70 + 5);
            }

            else
            {
              llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v70, this, (v40 & 0xFFFFFF) - 1);
              v41 = v70;
              if (v71)
              {
LABEL_141:
                a2 = v60;
LABEL_142:
                *a2 = v41;
                goto LABEL_143;
              }

              SymbolByAddress = llvm::jitlink::MachOLinkGraphBuilder::getSymbolByAddress(this, v70, *(v70 + 5));
              v42 -= **(SymbolByAddress + 8) + (*(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL);
              a2 = v60;
              if (v71)
              {
                v47 = v70;
                v70 = 0;
                if (v47)
                {
                  (*(*v47 + 8))(v47);
                }
              }
            }

            v48 = *(v46 + 8);
            v49 = *(SymbolByAddress + 8);
            if (v48 != v23)
            {
              if (v49 != v23)
              {
                llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
              }

              v50 = v42;
              v51 = *v49;
              v52 = *(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL;
              goto LABEL_82;
            }

            v50 = v42;
            if (v49 == v23)
            {
              v51 = *v49;
              v52 = *(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL;
              v53 = *v48;
              if (v52 + v51 <= v29)
              {
                v55 = (*(v46 + 16) & 0x1FFFFFFFFFFFFFFLL) + v53;
                if (v55 > v29)
                {
                  a2 = v60;
LABEL_82:
                  if ((~*(&Relocation + 1) & 0x6000000) != 0)
                  {
                    v36 = 8;
                  }

                  else
                  {
                    v36 = 7;
                  }

                  v30 = v50 - v29 + v52 + v51;
                  SymbolByAddress = v46;
                  goto LABEL_54;
                }

                a2 = v60;
                if (v55 < v52 + v51)
                {
                  goto LABEL_82;
                }
              }

              else
              {
                a2 = v60;
              }
            }

            else
            {
              v53 = *v48;
            }

            if ((~*(&Relocation + 1) & 0x6000000) != 0)
            {
              v36 = 6;
            }

            else
            {
              v36 = 5;
            }

            v30 = v50 + v29 - (v53 + (*(v46 + 16) & 0x1FFFFFFFFFFFFFFLL));
            goto LABEL_54;
          default:
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v70, this, *(&Relocation + 1) & 0xFFFFFFLL);
            if (v71)
            {
LABEL_111:
              v56 = v70;
              goto LABEL_114;
            }

            if ((*(v26 + v31) & 0x7FFFFFFF) != 0x14000000)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            SymbolByAddress = *(v70 + 5);
            v36 = 9;
LABEL_53:
            a2 = v60;
            goto LABEL_54;
        }
      }

      if (v66 == v63)
      {
        v70 = "{0:x16}";
        v71 = 7;
        v72 = &v75;
        v73 = 1;
        v74[0] = &unk_2883EBA18;
        v74[1] = &v64;
        v75 = v74;
        operator new();
      }

      (*(*v67 + 296))(v67, &v66);
      Relocation = llvm::object::MachOObjectFile::getRelocation(*(this + 13), v66, v28);
      v77 = v22 & 0xFE | v71 & 1;
      if ((v71 & 1) == 0)
      {
        v27 = v70;
        LOBYTE(v76) = v70;
        switch(v70)
        {
          case 2:
          case 7:
          case 8:
            v29 = v13 + Relocation.r_address;
            if (v29 != v64)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            v30 = v24 << 40 >> 40;
            goto LABEL_25;
          case 4:
            v57 = "MachOPointer64";
            goto LABEL_136;
          case 5:
            v57 = "MachOPointer64Anon";
            goto LABEL_136;
          case 6:
            v57 = "MachOPointer64Authenticated";
            goto LABEL_136;
          case 9:
            v57 = "MachOGOTPage21";
            goto LABEL_136;
          case 10:
            v57 = "MachOGOTPageOffset12";
            goto LABEL_136;
          case 11:
            v57 = "MachOTLVPage21";
            goto LABEL_136;
          case 12:
            v57 = "MachOTLVPageOffset12";
            goto LABEL_136;
          case 13:
            v57 = "MachOPointerToGOT";
            goto LABEL_136;
          case 14:
            v57 = "MachOPairedAddend";
            goto LABEL_136;
          case 15:
            v57 = "MachOLDRLiteral19";
            goto LABEL_136;
          case 16:
            v57 = "MachODelta32";
            goto LABEL_136;
          case 17:
            v57 = "MachODelta64";
            goto LABEL_136;
          case 18:
            v57 = "MachONegDelta32";
            goto LABEL_136;
          case 19:
            v57 = "MachONegDelta64";
            goto LABEL_136;
          default:
            v58 = "<Unrecognized edge kind>";
            if (v70 == 1)
            {
              v58 = "Keep-Alive";
            }

            if (v70)
            {
              v57 = v58;
            }

            else
            {
              v57 = "INVALID RELOCATION";
            }

LABEL_136:
            strlen(v57);
            operator new();
        }
      }

      v56 = v70;
      v76 = 0;
LABEL_114:
      a2 = v60;
      *v60 = v56;
LABEL_143:
      v17 = 1;
LABEL_144:
      v12 = v61;
      v11 = v62;
LABEL_145:
      if (v79)
      {
        v59 = v78;
        v78 = 0;
        if (v59)
        {
          (*(*v59 + 8))(v59);
        }
      }

      if (v17 != 5 && v17)
      {
        return;
      }

LABEL_150:
      (*(*v69 + 136))(v69, &v68);
      v5 = v68;
      v7 = v69;
      if (v69 == v12 && v68 == v11)
      {
        goto LABEL_156;
      }
    }

    v16 = v78;
    v78 = 0;
LABEL_11:
    *a2 = v16;
    v17 = 1;
    goto LABEL_145;
  }

LABEL_156:
  *a2 = 0;
}

void llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(uint64_t *__return_ptr a1@<X8>, llvm::jitlink::MachOLinkGraphBuilder *this@<X0>, int a3@<W1>)
{
  v9 = a3;
  v6[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::LookupBucketFor<unsigned int>(this + 16, &v9, v6) || v6[0] == *(this + 16) + 120 * *(this + 36))
  {
    v6[0] = "{0:d}";
    v6[1] = 5;
    v6[2] = &v8;
    v6[3] = 1;
    v7[0] = &unk_2883ECF20;
    v7[1] = &v9;
    v8 = v7;
    operator new();
  }

  v5 = v6[0] + 8;
  *(a1 + 8) &= ~1u;
  *a1 = v5;
}

void anonymous namespace::MachOLinkGraphBuilder_arm64::getRelocationKind(_anonymous_namespace_::MachOLinkGraphBuilder_arm64 *this, const relocation_info *a2)
{
  v2 = *(a2 + 1);
  v3 = v2 >> 28;
  if (v2 >> 28 > 5)
  {
    if (v2 >> 28 > 8)
    {
      if (v3 == 9)
      {
        if ((v2 & 0xF000000) != 0xC000000)
        {
          goto LABEL_59;
        }

        *(this + 8) &= ~1u;
        v5 = 12;
        goto LABEL_85;
      }

      if (v3 == 10)
      {
        if ((v2 & 0xF000000) != 0x4000000)
        {
          goto LABEL_59;
        }

        *(this + 8) &= ~1u;
        v5 = 14;
        goto LABEL_85;
      }

      if (v3 == 11 && (v2 & 0xF000000) == 234881024)
      {
        *(this + 8) &= ~1u;
        v5 = 6;
        goto LABEL_85;
      }
    }

    else
    {
      if (v3 == 6)
      {
        if ((v2 & 0xF000000) != 0xC000000)
        {
          goto LABEL_59;
        }

        *(this + 8) &= ~1u;
        v5 = 10;
        goto LABEL_85;
      }

      if (v3 == 7)
      {
        if ((v2 & 0xF000000) != 0xD000000)
        {
          goto LABEL_59;
        }

        *(this + 8) &= ~1u;
        v5 = 13;
        goto LABEL_85;
      }

      if (v3 == 8 && (v2 & 0xF000000) == 218103808)
      {
        *(this + 8) &= ~1u;
        v5 = 11;
        goto LABEL_85;
      }
    }

LABEL_59:
    v34[0] = "{0:x8}";
    v34[1] = 6;
    v34[2] = &v36;
    v34[3] = 1;
    v35[0] = &unk_2883ECEA0;
    v35[1] = a2;
    v36 = v35;
    v37[0] = "Unsupported arm64 relocation: address=";
    v37[2] = v34;
    v38 = 1539;
    v39[0] = v37;
    v39[2] = ", symbolnum=";
    v40 = 770;
    v30 = v2 & 0xFFFFFF;
    v31[0] = "{0:x6}";
    v31[1] = 6;
    v31[2] = &v33;
    v31[3] = 1;
    v32[0] = &unk_2883EB018;
    v32[1] = &v30;
    v33 = v32;
    v41[0] = v39;
    v41[2] = v31;
    v42 = 1538;
    v43[0] = v41;
    v43[2] = ", kind=";
    v44 = 770;
    v26 = v2 >> 28;
    v27[0] = "{0:x1}";
    v27[1] = 6;
    v27[2] = &v29;
    v27[3] = 1;
    v28[0] = &unk_2883EB018;
    v28[1] = &v26;
    v29 = v28;
    v45[0] = v43;
    v45[2] = v27;
    v46 = 1538;
    *&v47 = v45;
    *&v48 = ", pc_rel=";
    LOWORD(v49) = 770;
    v11 = "false";
    if ((v2 & 0x1000000) != 0)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = *v12;
    if (*v12)
    {
      *&v50 = &v47;
      *&v51 = v12;
      v14 = 2;
      v15 = &v50;
      LOWORD(v52) = 770;
    }

    else
    {
      v50 = v47;
      v51 = v48;
      v52 = v49;
      if (v49 == 1)
      {
        v17 = ", extern=";
        *&v53 = ", extern=";
        LOWORD(v55) = 259;
        if ((v2 & 0x8000000) != 0)
        {
          v11 = "true";
        }

        if (*v11)
        {
          v16 = 3;
          goto LABEL_68;
        }

LABEL_74:
        v56 = v53;
        v57 = v54;
        v58 = v55;
        v16 = v55;
LABEL_75:
        if (BYTE1(v58) != 1)
        {
          v16 = 2;
        }

        v18 = &v56;
        if (BYTE1(v58) == 1)
        {
          v18 = v56;
        }

        v59[0] = v18;
        v59[1] = *(&v56 + 1);
        v59[2] = ", length=";
        v60 = v16;
        v61 = 3;
        v19 = (v2 >> 25) & 3;
        v20 = "{0:d}";
        v21 = 5;
        v22 = &v25;
        v23 = 1;
        v24[0] = &unk_2883EB018;
        v24[1] = &v19;
        v25 = v24;
        operator new();
      }

      v13 = *(&v50 + 1);
      v15 = v50;
      if (BYTE1(v52) == 1)
      {
        v14 = v49;
      }

      else
      {
        v15 = &v50;
        v14 = 2;
      }
    }

    *&v53 = v15;
    *(&v53 + 1) = v13;
    *&v54 = ", extern=";
    LOBYTE(v55) = v14;
    BYTE1(v55) = 3;
    if ((v2 & 0x8000000) != 0)
    {
      v11 = "true";
    }

    if (*v11)
    {
      v16 = 2;
      v17 = &v53;
LABEL_68:
      *&v56 = v17;
      *&v57 = v11;
      LOBYTE(v58) = v16;
      BYTE1(v58) = 3;
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v2 >> 28 > 2)
  {
    if (v3 == 3)
    {
      if ((v2 & 0xF000000) != 0xD000000)
      {
        goto LABEL_59;
      }

      *(this + 8) &= ~1u;
      v5 = 7;
      goto LABEL_85;
    }

    if (v3 == 4)
    {
      if ((v2 & 0xF000000) != 0xC000000)
      {
        goto LABEL_59;
      }

      *(this + 8) &= ~1u;
      v5 = 8;
      goto LABEL_85;
    }

    if (v3 == 5 && (v2 & 0xF000000) == 218103808)
    {
      *(this + 8) &= ~1u;
      v5 = 9;
      goto LABEL_85;
    }

    goto LABEL_59;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if ((v2 & 0x9000000) != 0x8000000)
      {
        goto LABEL_59;
      }

      v10 = (v2 >> 25) & 3;
      if (v10 == 3)
      {
        *(this + 8) &= ~1u;
        v5 = 17;
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_59;
        }

        *(this + 8) &= ~1u;
        v5 = 16;
      }
    }

    else
    {
      if (v3 != 2 || (v2 & 0xF000000) != 218103808)
      {
        goto LABEL_59;
      }

      *(this + 8) &= ~1u;
      v5 = 2;
    }
  }

  else
  {
    if ((v2 & 0x1000000) != 0)
    {
      goto LABEL_59;
    }

    v9 = (v2 >> 25) & 3;
    if (v9 == 2)
    {
      *(this + 8) &= ~1u;
      v5 = 3;
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_59;
      }

      if ((v2 & 0x8000000) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }

      *(this + 8) &= ~1u;
    }
  }

LABEL_85:
  *this = v5;
}

void llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a3;
  SymbolByAddress = llvm::jitlink::MachOLinkGraphBuilder::getSymbolByAddress(a1, a2, a3);
  if (!SymbolByAddress || (*(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFuLL) + *(SymbolByAddress + 24) + **(SymbolByAddress + 8) < a3)
  {
    v7 = "{0:x16}";
    v8 = 7;
    v9 = &v12;
    v10 = 1;
    v11[0] = &unk_2883EBA18;
    v11[1] = &v13;
    v12 = v11;
    operator new();
  }

  *(a4 + 8) &= ~1u;
  *a4 = SymbolByAddress;
}

void llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(uint64_t *__return_ptr a1@<X8>, llvm::jitlink::MachOLinkGraphBuilder *this@<X0>, uint64_t a3@<X1>)
{
  v9 = a3;
  LODWORD(v10) = a3;
  v6[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(this + 20, &v10, v6) || v6[0] == *(this + 20) + 16 * *(this + 44))
  {
    v6[0] = "{0:d}";
    v6[1] = 5;
    v6[2] = &v8;
    v6[3] = 1;
    v7[0] = &unk_2883EC3C8;
    v7[1] = &v9;
    v8 = v7;
    operator new();
  }

  v5 = *(v6[0] + 8);
  *(a1 + 8) &= ~1u;
  *a1 = v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 120 * v6);
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
        v7 = (v4 + 120 * (v13 & v5));
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

llvm::raw_ostream *llvm::format_provider<int,void>::format(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *a1, v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

uint64_t llvm::jitlink::MachOLinkGraphBuilder::getSymbolByAddress(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + 96);
  for (i = *(a2 + 96); i; i = i[v7])
  {
    v5 = i[4];
    v6 = v5 > a3;
    v7 = v5 <= a3;
    if (v6)
    {
      v3 = i;
    }
  }

  if (v3 == *(a2 + 88))
  {
    return 0;
  }

  v8 = *v3;
  if (*v3)
  {
    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      v9 = v3[2];
      v10 = *v9 == v3;
      v3 = v9;
    }

    while (v10);
  }

  return v9[5];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
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

uint64_t *std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = a2[1];
  v17 = *a2;
  v18 = v6;
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v8 = *a3;
  v9 = a3[6];
  if (v17 != *a3 || (v10 = 0, v20 != v9))
  {
    v10 = 0;
    do
    {
      ++v10;
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(&v17, v21);
    }

    while (v17 != v8 || v20 != v9);
  }

  v12 = a2[1];
  v21[0] = *a2;
  v21[1] = v12;
  v13 = a2[3];
  v21[2] = a2[2];
  v21[3] = v13;
  v14 = *(a3 + 1);
  v17 = *a3;
  v18 = v14;
  v15 = *(a3 + 3);
  v19 = *(a3 + 2);
  v20 = v15;
  std::vector<llvm::jitlink::Block *>::__init_with_size[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>>(a1, v21, &v17, v10);
  return a1;
}

uint64_t *std::vector<llvm::jitlink::Block *>::__init_with_size[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>>(uint64_t *result, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<llvm::jitlink::Block *>,llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,llvm::jitlink::Block **>(uint64_t a1, _OWORD *a2, uint64_t *a3, void *a4)
{
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v13 = v6;
  v7 = *a3;
  v8 = a3[6];
  v9 = v6;
  if (*&v12[0] != *a3 || v6 != v8)
  {
    do
    {
      *a4++ = *v9;
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v12, v14);
      v9 = v13;
    }

    while (*&v12[0] != v7 || v13 != v8);
  }

  return a4;
}

uint64_t llvm::jitlink::aarch64::GOTTableManager::visitEdge(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(a4 + 24);
  v6 = 12;
  if (v5 > 0xF)
  {
    if (v5 == 16)
    {
      v6 = 6;
      goto LABEL_10;
    }

    if (v5 != 17)
    {
      if (v5 != 18)
      {
        return v4;
      }

      goto LABEL_8;
    }

LABEL_10:
    *(a4 + 24) = v6;
    *a4 = llvm::jitlink::TableManager<llvm::jitlink::aarch64::GOTTableManager>::getEntryForTarget(a1, a2, *a4);
    return 1;
  }

  if (v5 == 14)
  {
    goto LABEL_10;
  }

  if (v5 == 15)
  {
LABEL_8:
    v6 = 13;
    goto LABEL_10;
  }

  return v4;
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::aarch64::GOTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v13[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v13);
  v7 = v13[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    Entry = llvm::jitlink::aarch64::GOTTableManager::createEntry(a1, a2, a3);
    v9 = *a3;
    v11 = v9;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 1uLL);
    }

    v12 = Entry;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v11, &v12, v13);
    v7 = v13[0];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void *llvm::jitlink::aarch64::GOTTableManager::createEntry(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    llvm::jitlink::LinkGraph::createSection(a2, "$__GOT", 6, 5);
  }

  v11[0] = &llvm::jitlink::aarch64::NullPointerContent;
  v11[1] = 8;
  v9 = 8;
  v10 = -8;
  v8 = 0;
  v6 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v5, v11, &v10, &v9, &v8);
  llvm::jitlink::Block::addEdge(v6, 2, 0, a3, 0);
  return llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v6, 0, 8, 0, 0);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucket<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucket<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *result = 0;
  *result = *a3;
  *a3 = 0;
  result[1] = *a4;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::grow(uint64_t **a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        v15[1] = v4[1];
        ++*(v5 + 8);
        v14 = *v4;
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::aarch64::PLTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v13[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v13);
  v7 = v13[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    Entry = llvm::jitlink::aarch64::PLTTableManager::createEntry(a1, a2, a3);
    v9 = *a3;
    v11 = v9;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 1uLL);
    }

    v12 = Entry;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v11, &v12, v13);
    v7 = v13[0];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void *llvm::jitlink::aarch64::PLTTableManager::createEntry(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    llvm::jitlink::LinkGraph::createSection(a2, "$__STUBS", 8, 5);
  }

  EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::aarch64::GOTTableManager>::getEntryForTarget(*(a1 + 24), a2, a3);
  v11[0] = &llvm::jitlink::aarch64::PointerJumpStubContent;
  v11[1] = 12;
  v9 = 4;
  v10 = -12;
  v8 = 0;
  v6 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v4, v11, &v10, &v9, &v8);
  llvm::jitlink::Block::addEdge(v6, 12, 0, EntryForTarget, 0);
  llvm::jitlink::Block::addEdge(v6, 13, 4, EntryForTarget, 0);
  return llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v6, 0, 12, 1, 0);
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::ObjCStubsBuilder<llvm::jitlink::Block & (*)(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31[6] = *MEMORY[0x277D85DE8];
  *(a1 + 24) = a2;
  v29 = v31;
  v30 = 0x600000000;
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = *(a2 + 224) + 8 * *(a2 + 240);
  if (v9 != v6)
  {
    v10 = v6;
    v11 = v7;
    do
    {
      v12 = **v10;
      if (*v12 >= 0xEuLL)
      {
        v13 = v12[2];
        v14 = *(v12 + 22);
        if (v13 == 0x736D5F636A626F5FLL && v14 == 0x24646E655367736DLL)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v29, *v10);
        }
      }

      do
      {
        ++v10;
      }

      while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v10 != v9);
  }

  if (v30)
  {
    llvm::jitlink::ObjCStubsBuilderBase::initialize(a1, a3, v8);
    v17 = v29;
    if (*a3)
    {
      goto LABEL_26;
    }

    if (v30)
    {
      v18 = 8 * v30;
      do
      {
        v19 = *v17;
        v20 = **v17;
        v21 = *v20;
        if (*v20 >= 0xE)
        {
          v22 = 14;
        }

        else
        {
          v22 = *v20;
        }

        v26 = v20 + v22 + 16;
        v27 = v21 - v22;
        v28 = 0;
        if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 128), &v26, &v28, v16) || v28 == *(a1 + 128) + 24 * *(a1 + 144))
        {
          Selector = llvm::jitlink::ObjCStubsBuilderBase::getOrCreateSelector(a1, v26, v27, v23);
          v24 = (*(a1 + 152))(a2, *(a1 + 64), Selector, *(a1 + 72));
        }

        else
        {
          v24 = *(v28 + 16);
        }

        llvm::jitlink::LinkGraph::makeDefined(a2, v19, v24, 0, *(v24 + 32), 0, 3, 0);
        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

  *a3 = 0;
  v17 = v29;
LABEL_26:
  if (v17 != v31)
  {
    free(v17);
  }
}

__n128 llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::jitlink::ObjCStubsBuilder<llvm::jitlink::Block & (*)(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)>>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  v5 = *(a1 + 92);
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = v5;
  v6 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  v7 = *(a1 + 116);
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = v7;
  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v8;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  v9 = *(a1 + 140);
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 140) = v9;
  v10 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v10;
  *(a1 + 152) = *(a2 + 152);
  return result;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::DestroyImpl<llvm::jitlink::ObjCStubsBuilder<llvm::jitlink::Block & (*)(llvm::jitlink::LinkGraph &,llvm::jitlink::Section &,llvm::jitlink::Symbol &,llvm::jitlink::Symbol &)>>(uint64_t a1)
{
  MEMORY[0x277C69E30](*(a1 + 128), 8);
  MEMORY[0x277C69E30](*(a1 + 104), 8);

  JUMPOUT(0x277C69E30);
}

void llvm::jitlink::MachOJITLinker_arm64::~MachOJITLinker_arm64(llvm::jitlink::MachOJITLinker_arm64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::MachOJITLinker_arm64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a1 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *(a1 + 200);
    }

    v7 = *(a1 + 200) + 24 * v4;
LABEL_10:
    if (v6 != v7)
    {
      v8 = v6[2];
      v21 = *(v8 + 20);
      v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
      v11 = *(v8 + 32) + 8 * *(v8 + 48);
      if (v11 == v9)
      {
        goto LABEL_26;
      }

      v12 = v9;
      v13 = v10;
      do
      {
        v14 = *v12;
        if (v21 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
          v17 = v16;
          if (v15)
          {
            memmove(v16, __src, v15);
          }

          v14[3] = v17;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v18 = v14[5];
        v19 = v14[6];
        while (v18 != v19)
        {
          if (*(v18 + 24) >= 2u)
          {
            llvm::jitlink::aarch64::applyFixup(a1, v14, v18, a2);
            if (*a2)
            {
              return;
            }
          }

          v18 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
LABEL_26:
      while (1)
      {
        v6 += 3;
        if (v6 == v7)
        {
          break;
        }

        if (*v6 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<llvm::jitlink::MachOJITLinker_arm64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::aarch64::applyFixup(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2[3];
  v8 = *(a3 + 8);
  v9 = *a2 + v8;
  v10 = *(a3 + 24);
  if (v10 > 8)
  {
    if (*(a3 + 24) <= 0xAu)
    {
      if (v10 != 9)
      {
        if (v10 != 10)
        {
          goto LABEL_44;
        }

        v16 = *(v7 + v8);
        if ((v16 & 0x5F9FFFE0) == 0x52800000)
        {
          v17 = (v16 >> 17) & 0x30;
        }

        else
        {
          v17 = 0;
        }

        v18 = 32 * (((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + *(a3 + 16) + **(*a3 + 8)) >> v17);
        goto LABEL_56;
      }

      v19 = **(*a3 + 8) - v9 + (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(a3 + 16);
      if ((v19 & 3) == 0)
      {
        if ((v19 - 0x8000000) <= 0xFFFFFFFFEFFFFFFFLL)
        {
          goto LABEL_50;
        }

        v25 = *(v7 + v8) | (v19 >> 2) & 0x3FFFFFF;
        goto LABEL_57;
      }
    }

    else
    {
      if (v10 != 11)
      {
        if (v10 != 12)
        {
          if (v10 != 13)
          {
            goto LABEL_44;
          }

          v12 = *(*a3 + 16) + *(a3 + 16) + **(*a3 + 8);
          v13 = *(v7 + v8);
          v14 = v13 >> 30;
          if (!(v13 >> 30))
          {
            v14 = (4 * ((~v13 & 0x4800000) == 0));
          }

          if ((v13 & 0x3B000000) == 0x39000000)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if ((v12 & ~(-1 << v15)) != 0)
          {

            goto LABEL_18;
          }

          v25 = v13 | ((v12 & 0xFFF) >> v15 << 10);
LABEL_57:
          *(v7 + v8) = v25;
          goto LABEL_58;
        }

        v20 = (((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(a3 + 16) + **(*a3 + 8)) & 0xFFFFFFFFFFFFF000) - (v9 & 0xFFFFFFFFFFFFF000);
        if ((v20 + 0x100000000) >> 33)
        {
          goto LABEL_50;
        }

        v16 = *(v7 + v8);
        v18 = (v20 >> 9) & 0xFFFFE0 | (((v20 >> 12) & 3) << 29);
LABEL_56:
        v25 = v18 | v16;
        goto LABEL_57;
      }

      v21 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8) - v9;
      if ((v21 & 3) == 0)
      {
        if ((v21 - 0x100000) <= 0xFFFFFFFFFFDFFFFFLL)
        {
          goto LABEL_50;
        }

        v16 = *(v7 + v8);
        v18 = (8 * v21) & 0xFFFFE0;
        goto LABEL_56;
      }
    }

LABEL_18:
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  if (v10 - 5 < 4)
  {
    if (v10 - 5 <= 1)
    {
      v11 = **(*a3 + 8) - v9 + (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(a3 + 16);
      if (v10 != 6)
      {
        goto LABEL_43;
      }

LABEL_30:
      if (v11 == v11)
      {
        goto LABEL_31;
      }

LABEL_50:

      llvm::jitlink::makeTargetOutOfRangeError(a1, a2, a3);
    }

    v11 = v9 - (**(*a3 + 8) + (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL)) + *(a3 + 16);
    if (v10 == 8)
    {
      goto LABEL_30;
    }

LABEL_43:
    *(v7 + v8) = v11;
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    v11 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(a3 + 16) + **(*a3 + 8);
    goto LABEL_43;
  }

  if (v10 != 4)
  {
LABEL_44:
    std::operator+<char>();
    v22 = std::string::append(&v26, ", section ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *__p = *&v22->__r_.__value_.__l.__data_;
    v28 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = *a2[2];
    v29 = __p;
    v30 = v24;
    v31 = 1284;
    v32 = &v29;
    v33 = " unsupported edge kind ";
    v34 = 770;
    if (!*llvm::jitlink::aarch64::getEdgeKindName(*(a3 + 24)))
    {
      v37 = v35;
      v38 = v36;
    }

    operator new();
  }

  v11 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(a3 + 16) + **(*a3 + 8);
  if (HIDWORD(v11))
  {
    goto LABEL_50;
  }

LABEL_31:
  *(v7 + v8) = v11;
LABEL_58:
  *a4 = 0;
}

void llvm::jitlink::createLinkGraphFromMachOObject_x86_64(__int128 *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4[0] = *a1;
  v4[1] = v3;
  llvm::object::ObjectFile::createMachOObjectFile(v4);
}

void llvm::jitlink::link_MachO_x86_64(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v12 = "__TEXT,__eh_frame";
    *&v13 = 17;
    v14 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    v3 = operator new(0x20uLL, 8uLL);
    v13 = xmmword_2750C12D0;
    *v3 = "__TEXT,__eh_frame";
    v3[1] = 17;
    *(v3 + 4) = 8;
    *(v3 + 5) = 101122563;
    *(v3 + 24) = 9;
    v12 = v3;
    v14 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    v12 = "__LD,__compact_unwind";
    *&v13 = 21;
    v14 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::CompactUnwindSplitter,llvm::jitlink::CompactUnwindSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    (*(**a2 + 64))(&v12);
    if (v14 < 8)
    {
      *&v10 = llvm::jitlink::markAllSymbolsLive;
      v11 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v10);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v10);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v12);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    v14 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v6[1] + 1, &v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    v12 = llvm::jitlink::x86_64::optimizeGOTAndStubAccesses;
    v14 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v7[1] + 1, &v12);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
  }

  (*(**a2 + 72))(&v12);
  if (!v12)
  {
    operator new();
  }

  v4 = *a2;
  v5 = v12;
  v12 = 0;
  (*(*v4 + 24))(v4, &v5);
  if (v5)
  {
    (*(*v5 + 1))(v5);
  }

  if (v12)
  {
    (*(*v12 + 1))(v12);
  }

  v12 = &v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = &v7[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = v7;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = &v6[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = v6;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
}

uint64_t *anonymous namespace::buildGOTAndStubs_MachO_x86_64@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v16 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = v14;
  v13 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v19);
  v20[0] = v19[0];
  v20[1] = v19[1];
  v20[2] = v19[2];
  v20[3] = v19[3];
  llvm::jitlink::LinkGraph::blocks(this, v17);
  v18[0] = v17[4];
  v18[1] = v17[5];
  v18[2] = v17[6];
  v18[3] = v17[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v21, v20, v18);
  v4 = v21;
  v5 = v22;
  if (v21 != v22)
  {
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 40);
      v8 = *(*v4 + 48);
      while (v7 != v8)
      {
        if ((llvm::jitlink::x86_64::GOTTableManager::visitEdge(v14, this, v6, v7) & 1) == 0)
        {
          llvm::jitlink::x86_64::PLTTableManager::visitEdge(v10, this, v6, v7);
        }

        v7 += 32;
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v21;
  }

  if (v4)
  {
    v22 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v10);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v14);
}

void anonymous namespace::MachOLinkGraphBuilder_x86_64::~MachOLinkGraphBuilder_x86_64(_anonymous_namespace_::MachOLinkGraphBuilder_x86_64 *this)
{
  llvm::jitlink::MachOLinkGraphBuilder::~MachOLinkGraphBuilder(this);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::MachOLinkGraphBuilder_x86_64::addRelocations(_anonymous_namespace_::MachOLinkGraphBuilder_x86_64 *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v130[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 13);
  v6 = (*(*v5 + 352))(v5);
  v8 = v7;
  v9 = (*(*v5 + 360))(v5);
  v78 = v6;
  v79 = v8;
  if (v8 == v10 && v6 == v9)
  {
LABEL_183:
    *a2 = 0;
    return;
  }

  v12 = v9;
  v13 = v10;
  v71 = v10;
  v72 = v3;
  v69 = v9;
  v70 = a2;
  while (1)
  {
    v14 = (*(*v8 + 152))(v8, v6);
    if (!(*(*v79 + 224))(v79, v78))
    {
      break;
    }

    v15 = (*(*v79 + 272))(v79, v78);
    if (v15 != (*(*v79 + 280))())
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

LABEL_156:
    (*(*v79 + 136))(v79, &v78);
    v6 = v78;
    v8 = v79;
    if (v79 == v13 && v78 == v12)
    {
      goto LABEL_183;
    }
  }

  v16 = (*(*v5 + 160))(v5, v78);
  llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v116, v3, v16);
  if (v117)
  {
    v17 = v116;
    v116 = 0;
    *a2 = v17;
    v18 = 1;
    goto LABEL_151;
  }

  if (!*(v116 + 80))
  {
    v18 = 5;
    goto LABEL_151;
  }

  v76 = (*(*v79 + 272))(v79, v78);
  v77 = v19;
  v20 = (*(*v79 + 280))();
  v22 = v76;
  v73 = v20;
  while (v76 != v73)
  {
    Relocation = 0;
    Relocation = llvm::object::MachOObjectFile::getRelocation(v3[13], v22, v21);
    v23 = v14 + Relocation;
    llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(v3, v116, v23, &v124);
    if (v125)
    {
      a2 = v70;
      *v70 = v124;
      v18 = 1;
      goto LABEL_150;
    }

    v24 = *(v124 + 1);
    v25 = (HIDWORD(Relocation) >> 25) & 3;
    v26 = *v24;
    if ((1 << v25) + v23 > v24[4] + *v24)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v27 = v24[3];
    v28 = v23 - v26;
    v74 = v23 - v26;
    v29 = HIDWORD(Relocation) >> 28;
    if (HIDWORD(Relocation) >> 28 > 4)
    {
      if (HIDWORD(Relocation) >> 28 <= 6)
      {
        if (v29 != 5)
        {
          if (v29 != 6 || (HIDWORD(Relocation) & 0x7000000) != 0x5000000)
          {
LABEL_139:
            v124 = "{0:x8}";
            v125 = 6;
            v126 = v130;
            v127 = 1;
            v128 = &unk_2883ECEA0;
            p_Relocation = &Relocation;
            v130[0] = &v128;
            v89[0] = "Unsupported x86-64 relocation: address=";
            v89[2] = &v124;
            v90 = 1539;
            v91[0] = v89;
            v91[2] = ", symbolnum=";
            v92 = 770;
            v88 = HIDWORD(Relocation) & 0xFFFFFF;
            v118 = "{0:x6}";
            v119 = 6;
            v120 = &v123;
            v121 = 1;
            v122[0] = &unk_2883EB018;
            v122[1] = &v88;
            v123 = v122;
            v93[0] = v91;
            v93[2] = &v118;
            v94 = 1538;
            v95[0] = v93;
            v95[2] = ", kind=";
            v96 = 770;
            v84 = HIDWORD(Relocation) >> 28;
            v85[0] = "{0:x1}";
            v85[1] = 6;
            v85[2] = &v87;
            v85[3] = 1;
            v86[0] = &unk_2883EB018;
            v86[1] = &v84;
            v87 = v86;
            v97[0] = v95;
            v97[2] = v85;
            v98 = 1538;
            *&v99 = v97;
            *&v100 = ", pc_rel=";
            LOWORD(v101) = 770;
            v60 = "true";
            if ((Relocation & 0x100000000000000) == 0)
            {
              v60 = "false";
            }

            if (*v60)
            {
              v61 = &v99;
              *&v102 = &v99;
              *&v103 = v60;
              v62 = 2;
              v63 = &v102;
              LOWORD(v104) = 770;
              goto LABEL_143;
            }

            v102 = v99;
            v103 = v100;
            v104 = v101;
            v62 = v101;
            if (v101 == 1)
            {
              *&v105 = ", extern=";
              LOWORD(v107) = 259;
              v64 = "false";
              if ((Relocation & 0x800000000000000) != 0)
              {
                v64 = "true";
              }

              if (*v64)
              {
                v65 = 3;
                v66 = ", extern=";
LABEL_147:
                *&v108 = v66;
                *&v109 = v64;
                LOBYTE(v110) = v65;
                BYTE1(v110) = 3;
LABEL_166:
                if (BYTE1(v110) != 1)
                {
                  v65 = 2;
                }

                v68 = &v108;
                if (BYTE1(v110) == 1)
                {
                  v68 = v108;
                }

                v111 = v68;
                v112 = *(&v108 + 1);
                v113 = ", length=";
                v114 = v65;
                v115 = 3;
                v80 = (HIDWORD(Relocation) >> 25) & 3;
                v81[0] = "{0:d}";
                v81[1] = 5;
                v81[2] = &v83;
                v81[3] = 1;
                v82[0] = &unk_2883EB018;
                v82[1] = &v80;
                v83 = v82;
                operator new();
              }
            }

            else
            {
              v61 = *(&v102 + 1);
              v63 = &v102;
              if (BYTE1(v104) == 1)
              {
                v63 = v102;
              }

              else
              {
                v62 = 2;
              }

LABEL_143:
              *&v105 = v63;
              *(&v105 + 1) = v61;
              *&v106 = ", extern=";
              LOBYTE(v107) = v62;
              BYTE1(v107) = 3;
              v64 = "false";
              if ((Relocation & 0x800000000000000) != 0)
              {
                v64 = "true";
              }

              if (*v64)
              {
                v65 = 2;
                v66 = &v105;
                goto LABEL_147;
              }
            }

            v108 = v105;
            v109 = v106;
            v110 = v107;
            v65 = v107;
            goto LABEL_166;
          }

          v30 = (Relocation & 0x800000000000000) == 0;
          v31 = 5;
          v32 = 9;
          goto LABEL_45;
        }

        if ((HIDWORD(Relocation) & 0x9000000) != 0x8000000)
        {
          goto LABEL_139;
        }

        if (v25 == 3)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | 0x10;
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_139;
          }

          v2 = v2 & 0xFFFFFFFF00000000 | 0xF;
        }
      }

      else
      {
        if (v29 == 7)
        {
          if ((HIDWORD(Relocation) & 0x7000000) != 0x5000000)
          {
            goto LABEL_139;
          }

          v30 = (Relocation & 0x800000000000000) == 0;
          v31 = 6;
          v32 = 10;
          goto LABEL_45;
        }

        if (v29 == 8)
        {
          if ((HIDWORD(Relocation) & 0x7000000) != 0x5000000)
          {
            goto LABEL_139;
          }

          v30 = (Relocation & 0x800000000000000) == 0;
          v31 = 7;
          v32 = 11;
LABEL_45:
          if (v30)
          {
            v31 = v32;
          }

LABEL_47:
          v2 = v31 | v2 & 0xFFFFFFFF00000000;
          goto LABEL_48;
        }

        if (v29 != 9 || (HIDWORD(Relocation) & 0xF000000) != 0xD000000)
        {
          goto LABEL_139;
        }

        v2 = v2 & 0xFFFFFFFF00000000 | 0xE;
      }
    }

    else if (HIDWORD(Relocation) >> 28 <= 1)
    {
      if (v29)
      {
        if (v29 != 1 || (HIDWORD(Relocation) & 0x7000000) != 0x5000000)
        {
          goto LABEL_139;
        }

        v30 = (Relocation & 0x800000000000000) == 0;
        v31 = 4;
        v32 = 8;
        goto LABEL_45;
      }

      if ((Relocation & 0x100000000000000) != 0)
      {
        goto LABEL_139;
      }

      if (v25 == 3)
      {
        v31 = 2;
        if ((Relocation & 0x800000000000000) == 0)
        {
          v31 = 3;
        }

        goto LABEL_47;
      }

      if ((Relocation & 0x800000000000000) == 0 || v25 != 2)
      {
        goto LABEL_139;
      }

      v2 = v2 & 0xFFFFFFFF00000000 | 1;
    }

    else if (v29 == 2)
    {
      if ((HIDWORD(Relocation) & 0xF000000) != 0xD000000)
      {
        goto LABEL_139;
      }

      v2 &= 0xFFFFFFFF00000000;
    }

    else if (v29 == 3)
    {
      if ((HIDWORD(Relocation) & 0xF000000) != 0xD000000)
      {
        goto LABEL_139;
      }

      v2 = v2 & 0xFFFFFFFF00000000 | 0xC;
    }

    else
    {
      if (v29 != 4 || (HIDWORD(Relocation) & 0xF000000) != 0xD000000)
      {
        goto LABEL_139;
      }

      v2 = v2 & 0xFFFFFFFF00000000 | 0xD;
    }

LABEL_48:
    if (v2 <= 8)
    {
      if (v2 <= 3)
      {
        if (v2 <= 1)
        {
          v37 = HIDWORD(Relocation) & 0xFFFFFF;
          if (v2)
          {
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, v37);
            if (v125)
            {
              goto LABEL_159;
            }

            SymbolByAddress = *(v124 + 5);
            v34 = *(v27 + v28);
            v35 = 3;
          }

          else
          {
            llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, v37);
            if (v125)
            {
              goto LABEL_159;
            }

            SymbolByAddress = *(v124 + 5);
            v34 = *(v27 + v28);
            v35 = 11;
          }

          goto LABEL_132;
        }

        if (v2 == 2)
        {
          llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, HIDWORD(Relocation) & 0xFFFFFF);
          if (v125)
          {
            goto LABEL_159;
          }

          SymbolByAddress = *(v124 + 5);
          v34 = *(v27 + v28);
          v35 = 2;
          goto LABEL_132;
        }

        v45 = *(v27 + v28);
        llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v124, v3, (HIDWORD(Relocation) & 0xFFFFFF) - 1);
        if ((v125 & 1) == 0)
        {
          llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(v3, v124, v45, &v118);
          if (v119)
          {
            goto LABEL_124;
          }

          SymbolByAddress = v118;
          v34 = v45 - (**(v118 + 1) + (*(v118 + 2) & 0x1FFFFFFFFFFFFFFLL));
          v18 = 13;
          v46 = 1;
          v35 = 2;
          goto LABEL_128;
        }
      }

      else
      {
        if ((v2 - 5) < 3 || v2 == 4)
        {
          llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, HIDWORD(Relocation) & 0xFFFFFF);
          if (v125)
          {
            goto LABEL_159;
          }

          SymbolByAddress = *(v124 + 5);
          v34 = *(v27 + v28) - 4;
          v35 = 7;
          goto LABEL_132;
        }

        v47 = *(v27 + v28);
        llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v124, v3, (HIDWORD(Relocation) & 0xFFFFFF) - 1);
        if ((v125 & 1) == 0)
        {
          v57 = v23 + v47;
          llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(v3, v124, v57 + 4, &v118);
          if (v119)
          {
            goto LABEL_124;
          }

          SymbolByAddress = v118;
          v34 = v57 - (**(v118 + 1) + (*(v118 + 2) & 0x1FFFFFFFFFFFFFFLL));
LABEL_127:
          v18 = 13;
          v46 = 1;
          v35 = 7;
          goto LABEL_128;
        }
      }

      goto LABEL_91;
    }

    if (v2 <= 12)
    {
      if ((v2 - 9) >= 3)
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, HIDWORD(Relocation) & 0xFFFFFF);
        if (v125)
        {
          goto LABEL_159;
        }

        if (v74 <= 2)
        {
          v124 = "{0}";
          v125 = 3;
          v126 = v130;
          v127 = 1;
          v128 = &unk_2883ECF78;
          p_Relocation = &v74;
          v130[0] = &v128;
          operator new();
        }

        SymbolByAddress = *(v124 + 5);
        v34 = *(v27 + v28);
        v35 = 20;
        goto LABEL_132;
      }

      v36 = *(v27 + v28);
      llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v124, v3, (HIDWORD(Relocation) & 0xFFFFFF) - 1);
      if ((v125 & 1) == 0)
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByAddress(v3, v124, v23 + (1 << (v2 - 9)) + v36 + 4, &v118);
        if ((v119 & 1) == 0)
        {
          SymbolByAddress = v118;
          v34 = v23 + v36 - (**(v118 + 1) + (*(v118 + 2) & 0x1FFFFFFFFFFFFFFLL));
          goto LABEL_127;
        }

LABEL_124:
        v35 = 0;
        SymbolByAddress = 0;
        v34 = 0;
        v46 = 0;
        v48 = v118;
LABEL_125:
        *v70 = v48;
        v18 = 1;
LABEL_128:
        if (v125)
        {
          v58 = v124;
          v124 = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_132;
      }

LABEL_91:
      v35 = 0;
      SymbolByAddress = 0;
      v34 = 0;
      v46 = 0;
      v48 = v124;
      v124 = 0;
      goto LABEL_125;
    }

    if ((v2 - 15) >= 2)
    {
      v44 = HIDWORD(Relocation) & 0xFFFFFF;
      if (v2 == 13)
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, v44);
        if (v125)
        {
          goto LABEL_159;
        }

        SymbolByAddress = *(v124 + 5);
        v34 = *(v27 + v28) - 4;
        v35 = 15;
      }

      else
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v3, v44);
        if (v125)
        {
LABEL_159:
          *v70 = v124;
LABEL_179:
          v18 = 1;
LABEL_180:
          v12 = v69;
          a2 = v70;
          v13 = v71;
          v3 = v72;
          goto LABEL_151;
        }

        if (v74 <= 2)
        {
          v124 = "{0}";
          v125 = 3;
          v126 = v130;
          v127 = 1;
          v128 = &unk_2883ECF78;
          p_Relocation = &v74;
          v130[0] = &v128;
          operator new();
        }

        SymbolByAddress = *(v124 + 5);
        v34 = *(v27 + v28);
        v35 = 24;
      }
    }

    else
    {
      (*(*v77 + 296))(v77, &v76);
      if (v76 == v73)
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
      }

      v39 = llvm::object::MachOObjectFile::getRelocation(v3[13], v76, v38);
      v40 = v39;
      if (Relocation != v39)
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[67]>(v85);
      }

      v41 = HIDWORD(v39);
      if (((HIDWORD(Relocation) ^ HIDWORD(v39)) & 0x6000000) != 0)
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[65]>(v81);
      }

      llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v72, HIDWORD(Relocation) & 0xFFFFFF);
      v42 = v124;
      if (v125)
      {
LABEL_178:
        *v70 = v42;
        goto LABEL_179;
      }

      if ((~HIDWORD(Relocation) & 0x6000000) != 0)
      {
        v43 = *(v27 + v28);
      }

      else
      {
        v43 = *(v27 + v28);
      }

      v49 = *(v124 + 5);
      if ((v41 & 0x8000000) != 0)
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSymbolByIndex(&v124, v72, HIDWORD(v40) & 0xFFFFFF);
        v42 = v124;
        if (v125)
        {
          goto LABEL_178;
        }

        SymbolByAddress = *(v124 + 5);
      }

      else
      {
        llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v124, v72, (v41 & 0xFFFFFF) - 1);
        v42 = v124;
        if (v125)
        {
          goto LABEL_178;
        }

        SymbolByAddress = llvm::jitlink::MachOLinkGraphBuilder::getSymbolByAddress(v72, v124, *(v124 + 5));
        v43 -= **(SymbolByAddress + 8) + (*(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL);
        if (v125)
        {
          v50 = v124;
          v124 = 0;
          if (v50)
          {
            (*(*v50 + 8))(v50);
          }
        }
      }

      v51 = *(v49 + 8);
      v52 = *(SymbolByAddress + 8);
      if (v51 == v24)
      {
        v53 = v43;
        if (v52 != v24)
        {
          v56 = *v51;
LABEL_119:
          if ((~HIDWORD(Relocation) & 0x6000000) != 0)
          {
            v35 = 7;
          }

          else
          {
            v35 = 6;
          }

          v34 = v53 + v23 - (v56 + (*(v49 + 16) & 0x1FFFFFFFFFFFFFFLL));
          goto LABEL_132;
        }

        v54 = *v52;
        v55 = *(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL;
        v56 = *v51;
        if (v55 + v54 > v23)
        {
          goto LABEL_119;
        }

        v59 = (*(v49 + 16) & 0x1FFFFFFFFFFFFFFLL) + v56;
        if (v59 <= v23 && v59 >= v55 + v54)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v52 != v24)
        {
          llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
        }

        v53 = v43;
        v54 = *v52;
        v55 = *(SymbolByAddress + 16) & 0x1FFFFFFFFFFFFFFLL;
      }

      if ((~HIDWORD(Relocation) & 0x6000000) != 0)
      {
        v35 = 9;
      }

      else
      {
        v35 = 8;
      }

      v34 = v53 - v23 + v55 + v54;
      SymbolByAddress = v49;
    }

LABEL_132:
    llvm::jitlink::Block::addEdge(v24, v35, v23 - *v24, SymbolByAddress, v34);
    (*(*v77 + 296))();
    v22 = v76;
    v3 = v72;
    v13 = v71;
  }

  v18 = 0;
  a2 = v70;
LABEL_150:
  v12 = v69;
LABEL_151:
  if (v117)
  {
    v67 = v116;
    v116 = 0;
    if (v67)
    {
      (*(*v67 + 8))(v67);
    }
  }

  if (v18 == 5 || !v18)
  {
    goto LABEL_156;
  }
}

uint64_t llvm::jitlink::x86_64::GOTTableManager::visitEdge(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v6 = *(a4 + 24);
  if (v6 > 0x10)
  {
    switch(v6)
    {
      case 0x11u:
        v7 = 10;
        break;
      case 0x14u:
        v7 = 19;
        break;
      case 0x15u:
        v7 = 18;
        break;
      default:
        return result;
    }

    goto LABEL_15;
  }

  if (v6 != 10)
  {
    if (v6 == 15)
    {
      v7 = 7;
    }

    else
    {
      if (v6 != 16)
      {
        return result;
      }

      v7 = 6;
    }

LABEL_15:
    *(a4 + 24) = v7;
    *a4 = llvm::jitlink::TableManager<llvm::jitlink::x86_64::GOTTableManager>::getEntryForTarget(a1, a2, *a4);
    return 1;
  }

  if (!*(a1 + 24))
  {
    llvm::jitlink::LinkGraph::createSection(a2, "$__GOT", 6, 1);
  }

  return 0;
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::x86_64::GOTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v13[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v13);
  v7 = v13[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    Entry = llvm::jitlink::x86_64::GOTTableManager::createEntry(a1, a2, a3);
    v9 = *a3;
    v11 = v9;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 1uLL);
    }

    v12 = Entry;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v11, &v12, v13);
    v7 = v13[0];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void *llvm::jitlink::x86_64::GOTTableManager::createEntry(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    llvm::jitlink::LinkGraph::createSection(a2, "$__GOT", 6, 1);
  }

  v11[0] = &llvm::jitlink::x86_64::NullPointerContent;
  v11[1] = 8;
  v9 = 8;
  v10 = -8;
  v8 = 0;
  v6 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v5, v11, &v10, &v9, &v8);
  llvm::jitlink::Block::addEdge(v6, 2, 0, a3, 0);
  return llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v6, 0, 8, 0, 0);
}

uint64_t llvm::jitlink::x86_64::PLTTableManager::visitEdge(uint64_t a1, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  if (a4[24] != 11)
  {
    return 0;
  }

  v4 = *a4;
  if (*(*(*a4 + 8) + 8))
  {
    return 0;
  }

  a4[24] = 14;
  *a4 = llvm::jitlink::TableManager<llvm::jitlink::x86_64::PLTTableManager>::getEntryForTarget(a1, a2, v4);
  return 1;
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::x86_64::PLTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v13[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v13);
  v7 = v13[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    Entry = llvm::jitlink::x86_64::PLTTableManager::createEntry(a1, a2, a3);
    v9 = *a3;
    v11 = v9;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v9 + 8), 1uLL);
    }

    v12 = Entry;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v11, &v12, v13);
    v7 = v13[0];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void *llvm::jitlink::x86_64::PLTTableManager::createEntry(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    llvm::jitlink::LinkGraph::createSection(a2, "$__STUBS", 8, 5);
  }

  EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::x86_64::GOTTableManager>::getEntryForTarget(*(a1 + 24), a2, a3);
  v11[0] = &llvm::jitlink::x86_64::PointerJumpStubContent;
  v11[1] = 6;
  v9 = 1;
  v10 = -6;
  v8 = 0;
  v6 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v4, v11, &v10, &v9, &v8);
  llvm::jitlink::Block::addEdge(v6, 11, 2, EntryForTarget, 0);
  return llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v6, 0, 6, 1, 0);
}

void llvm::jitlink::MachOJITLinker_x86_64::~MachOJITLinker_x86_64(llvm::jitlink::MachOJITLinker_x86_64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::MachOJITLinker_x86_64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a1 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *(a1 + 200);
    }

    v7 = *(a1 + 200) + 24 * v4;
LABEL_10:
    if (v6 != v7)
    {
      v8 = v6[2];
      v21 = *(v8 + 20);
      v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
      v11 = *(v8 + 32) + 8 * *(v8 + 48);
      if (v11 == v9)
      {
        goto LABEL_26;
      }

      v12 = v9;
      v13 = v10;
      do
      {
        v14 = *v12;
        if (v21 == 2 && (v14[1] & 4) == 0)
        {
          v15 = v14[4];
          __src = v14[3];
          v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
          v17 = v16;
          if (v15)
          {
            memmove(v16, __src, v15);
          }

          v14[3] = v17;
          v14[4] = v15;
          v14[1] |= 4uLL;
        }

        v18 = v14[5];
        v19 = v14[6];
        while (v18 != v19)
        {
          if (*(v18 + 24) >= 2u)
          {
            llvm::jitlink::x86_64::applyFixup(a1, v14, v18, 0, a2);
            if (*a2)
            {
              return;
            }
          }

          v18 += 32;
        }

        do
        {
          ++v12;
        }

        while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v12 != v11);
LABEL_26:
      while (1)
      {
        v6 += 3;
        if (v6 == v7)
        {
          break;
        }

        if (*v6 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<llvm::jitlink::MachOJITLinker_x86_64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::x86_64::applyFixup(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a2[3];
  v9 = *(a3 + 2);
  v10 = *a2 + v9;
  v11 = *(a3 + 24);
  if (v11 > 6)
  {
    if (v11 <= 0x16)
    {
      if (((1 << v11) & 0x4C7800) != 0)
      {
        v12 = **(*a3 + 8) - v10 + (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2] - 4;
        goto LABEL_31;
      }

      if (v11 == 9)
      {
        v12 = v10 - (**(*a3 + 8) + (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL)) + a3[2];
        goto LABEL_31;
      }

      if (v11 == 10)
      {
        v15 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8) - (**(a4 + 8) + (*(a4 + 16) & 0x1FFFFFFFFFFFFFFLL)) + a3[2];
LABEL_22:
        *(v8 + v9) = v15;
        goto LABEL_33;
      }
    }

    if (v11 != 7)
    {
      if (v11 == 8)
      {
        v15 = v10 - (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) - **(*a3 + 8) + a3[2];
        goto LABEL_22;
      }

LABEL_26:
      std::operator+<char>();
      v18 = std::string::append(&v21, ", section ");
      v19 = v18->__r_.__value_.__r.__words[2];
      *__p = *&v18->__r_.__value_.__l.__data_;
      v23 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = *a2[2];
      v24 = __p;
      v25 = v20;
      v26 = 1284;
      v27 = &v24;
      v28 = " unsupported edge kind ";
      v29 = 770;
      if (!*llvm::jitlink::x86_64::getEdgeKindName(*(a3 + 24)))
      {
        v32 = v30;
        v33 = v31;
      }

      operator new();
    }

    v17 = **(*a3 + 8) - v10;
    v16 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2];
LABEL_30:
    v12 = v17 + v16;
LABEL_31:
    if (v12 == v12)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  if (*(a3 + 24) <= 3u)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v12 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2] + **(*a3 + 8);
        if (!HIDWORD(v12))
        {
LABEL_32:
          *(v8 + v9) = v12;
          goto LABEL_33;
        }

LABEL_36:

        llvm::jitlink::makeTargetOutOfRangeError(a1, a2, a3);
      }

      goto LABEL_26;
    }

    v14 = **(*a3 + 8);
    v13 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2];
LABEL_21:
    v15 = v13 + v14;
    goto LABEL_22;
  }

  if (v11 == 4)
  {
    v16 = **(*a3 + 8);
    v17 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2];
    goto LABEL_30;
  }

  if (v11 != 5)
  {
    if (v11 != 6)
    {
      goto LABEL_26;
    }

    v13 = **(*a3 + 8) - v10;
    v14 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + a3[2];
    goto LABEL_21;
  }

  if (((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + a3[2] + **(*a3 + 8)) >> 16)
  {
    goto LABEL_36;
  }

  *(v8 + v9) = *(*a3 + 16) + *(a3 + 8) + **(*a3 + 8);
LABEL_33:
  *a5 = 0;
}

void llvm::jitlink::MachOLinkGraphBuilder::~MachOLinkGraphBuilder(llvm::jitlink::MachOLinkGraphBuilder *this)
{
  *this = &unk_2883ECFF8;
  llvm::StringMap<std::function<llvm::Error ()(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &)>,llvm::MallocAllocator>::~StringMap(this + 184);
  MEMORY[0x277C69E30](*(this + 20), 8);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::destroyAll(this + 128);
  MEMORY[0x277C69E30](*(this + 16), 8);
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v2);
    MEMORY[0x277C69E40]();
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 8);
}

void llvm::jitlink::MachOLinkGraphBuilder::buildGraph(llvm::jitlink::MachOLinkGraphBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v86 = *MEMORY[0x277D85DE8];
  if (((*(**(this + 13) + 440))(*(this + 13)) & 1) == 0)
  {
    operator new();
  }

  v54 = a2;
  v5 = *(v3 + 13);
  v6 = (*(*v5 + 352))(v5);
  v8 = v7;
  v9 = (*(*v5 + 360))(v5);
  v62[0] = v6;
  v62[1] = v8;
  v11 = v8 == v10 && v6 == v9;
  v55 = v3;
  if (!v11)
  {
    v78[0] = 0;
    v78[1] = 0;
    v73 = 0;
    v72 = 0uLL;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v78;
    (*(**(v3 + 13) + 160))(*(v3 + 13), v6);
    if ((*(**(v3 + 13) + 64))(*(v3 + 13)))
    {
      getStruct<llvm::MachO::section_64>(*(v3 + 13), *(*(*(v3 + 13) + 80) + 8 * LODWORD(v62[0])), v12, v79);
      v13 = v80;
      v70 = *v79;
      *&v71[1] = *&v79[16];
      v14 = v83;
      v15 = BYTE4(v81);
      v16 = v81;
    }

    else
    {
      getStruct<llvm::MachO::section>(*(v3 + 13), *(*(*(v3 + 13) + 80) + 8 * LODWORD(v62[0])), v12, v79);
      v70 = *v79;
      *&v71[1] = *&v79[16];
      *&v17 = v80;
      *(&v17 + 1) = DWORD1(v80);
      v13 = v17;
      v14 = v82;
      v15 = BYTE12(v80);
      v16 = DWORD2(v80);
    }

    v71[0] = 0;
    v71[17] = 0;
    v72 = v13;
    v73 = 1 << v15;
    v74 = v14;
    if (v14 > 0x12u || ((1 << v14) & 0x41002) == 0)
    {
      v18 = *(v3 + 13);
      if ((*(&v13 + 1) + v16) > *(v18 + 24))
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
      }

      v75 = *(v18 + 16) + v16;
    }

    if (v14 < 0)
    {
      v19 = 5;
    }

    else
    {
      v19 = 3;
    }

    v20 = *(v3 + 14);
    LOWORD(v66) = 773;
    *&v64 = &v71[1];
    *(&v64 + 1) = strlen(&v71[1]);
    *&v65 = ",";
    if (v70)
    {
      *&v67 = &v64;
      *&v68 = &v70;
      LOWORD(v69) = 770;
    }

    else
    {
      v67 = v64;
      v68 = v65;
      v69 = v66;
    }

    *v79 = &v79[24];
    *&v79[8] = xmmword_2750C12F0;
    v21 = llvm::Twine::toStringRef(&v67, v79);
    v23 = v22;
    v24 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v20, v22, 0);
    v25 = v24;
    if (v23)
    {
      memmove(v24, v21, v23);
    }

    if (*v79 != &v79[24])
    {
      free(*v79);
    }

    llvm::jitlink::LinkGraph::createSection(*(v55 + 14), v25, v23, v19);
  }

  v26 = *(v3 + 34);
  if (v26)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v26);
  }

  v27 = *(v3 + 13);
  v28 = (*(*v27 + 48))(v27);
  v30 = v29;
  v31 = (*(*v27 + 56))(v27);
  v60 = v28;
  v61 = v30;
  if (v28 == v31)
  {
    goto LABEL_29;
  }

  v33 = v31;
  v56 = v31;
  while (1)
  {
    v58[0] = llvm::object::MachOObjectFile::getSymbolIndex(*(v3 + 13), v28, v32);
    v35 = (*(**(v3 + 13) + 64))(*(v3 + 13));
    v36 = *(v3 + 13);
    if (v35)
    {
      Symbol64TableEntry = llvm::object::MachOObjectFile::getSymbol64TableEntry(v36, v60, v34);
      v39 = v38;
    }

    else
    {
      Symbol64TableEntry = llvm::object::MachOObjectFile::getSymbolTableEntry(v36, v60, v34);
      v39 = v40;
    }

    *&v59 = v39;
    v41 = BYTE4(Symbol64TableEntry);
    if (BYTE4(Symbol64TableEntry) >= 0x20u)
    {
      goto LABEL_61;
    }

    if (!Symbol64TableEntry)
    {
      if ((Symbol64TableEntry & 0x100000000) != 0)
      {
        *v79 = "{0}";
        *&v79[8] = 3;
        *&v79[16] = &v81;
        *&v79[24] = 1;
        *&v80 = &unk_2883ECF20;
        *(&v80 + 1) = v58;
        v81 = &v80;
        *&v70 = "Symbol at index ";
        *v71 = v79;
        *&v71[16] = 1539;
        operator new();
      }

      v42 = 0;
      v2 &= 0xFFFFFFFFFFFFFF00;
      goto LABEL_40;
    }

    (*(*v61 + 80))(v79);
    v2 = *v79;
    if (v79[16])
    {
      break;
    }

    __s = *&v79[8];
    v42 = 1;
LABEL_40:
    if (!BYTE5(Symbol64TableEntry))
    {
      goto LABEL_45;
    }

    llvm::jitlink::MachOLinkGraphBuilder::findSectionByIndex(&v84, v55, BYTE5(Symbol64TableEntry) - 1);
    v43 = v84;
    if (v85)
    {
      goto LABEL_68;
    }

    v44 = v84[5];
    if (v39 < v44 || v39 > v84[6] + v44)
    {
      *v79 = "{0:x}";
      *&v79[8] = 5;
      *&v79[16] = &v81;
      *&v79[24] = 1;
      *&v80 = &unk_2883EC3C8;
      *(&v80 + 1) = &v59;
      v81 = &v80;
      v62[0] = "Address ";
      v62[2] = v79;
      LOWORD(v63) = 1539;
      *&v64 = v62;
      *&v65 = " for symbol ";
      LOWORD(v66) = 770;
      *&v70 = &v64;
      *v71 = v2;
      *&v71[8] = __s;
      *&v71[16] = 1282;
      operator new();
    }

    if (v84[10])
    {
LABEL_45:
      v45 = HIWORD(Symbol64TableEntry);
      v46 = (Symbol64TableEntry & 0xC0000000000000) != 0;
      if ((Symbol64TableEntry & 0x100000000) != 0)
      {
        if ((Symbol64TableEntry & 0x1000000000) != 0)
        {
          v47 = 1;
        }

        else if (__s)
        {
          v47 = *v2 == 108;
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 3;
      }

      v48 = Symbol64TableEntry >> 40;
      v3 = v55;
      v49 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v55 + 2, 48, 3);
      *v49 = v2;
      *(v49 + 8) = __s;
      *(v49 + 16) = v42;
      *(v49 + 24) = v39;
      *(v49 + 32) = v41;
      *(v49 + 33) = v48;
      *(v49 + 34) = v45;
      *(v49 + 36) = v46;
      *(v49 + 37) = v47;
      *(v49 + 40) = 0;
      *v79 = 0;
      v50 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(v55 + 20, v58, v79);
      v51 = *v79;
      if (v50)
      {
        v33 = v56;
LABEL_60:
        *(v51 + 8) = v49;
        goto LABEL_61;
      }

      v52 = *(v55 + 42);
      v53 = *(v55 + 44);
      v33 = v56;
      if (4 * v52 + 4 >= 3 * v53)
      {
        v53 *= 2;
      }

      else if (v53 + ~v52 - *(v55 + 43) > v53 >> 3)
      {
LABEL_57:
        ++*(v55 + 42);
        if (*v51 != -1)
        {
          --*(v55 + 43);
        }

        *v51 = v58[0];
        *(v51 + 8) = 0;
        goto LABEL_60;
      }

      llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::grow(v55 + 160, v53);
      *v79 = 0;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(v55 + 20, v58, v79);
      v51 = *v79;
      goto LABEL_57;
    }

    v3 = v55;
LABEL_61:
    (*(*v61 + 24))(v61, &v60);
    v28 = v60;
    if (v60 == v33)
    {
      goto LABEL_29;
    }
  }

  v43 = *v79;
LABEL_68:
  if (!v43)
  {
LABEL_29:
    operator new();
  }

  *(v54 + 8) |= 1u;
  *v54 = v43;
}

void llvm::jitlink::MachOLinkGraphBuilder::MachOLinkGraphBuilder(void *a1, void *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *a1 = &unk_2883ECFF8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a1 + 5;
  a1[4] = 0x400000000;
  a1[11] = 0;
  a1[9] = a1 + 11;
  a1[10] = 0;
  a1[12] = 1;
  a1[13] = a2;
  v5 = a2[5];
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v7 = a2[4];
    if (v5 < 0x17)
    {
      v9 = a2[5];
      if (v5)
      {
        memmove(&__dst, v7, v5);
      }

      *(&__dst + v5) = 0;
      (*(*a2 + 64))(a2);
      operator new();
    }

    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t **llvm::jitlink::MachOLinkGraphBuilder::addSectionStartSymAndBlock(uint64_t a1, int a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, unsigned int a7, int a8)
{
  v17 = a2;
  v11 = *(a1 + 112);
  if (a5)
  {
    v18[0] = a5;
    v18[1] = a6;
    v20 = a7;
    v21 = a4;
    v19 = 0;
    v12 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v11, a3, v18, &v21, &v20, &v19);
  }

  else
  {
    v18[0] = a4;
    v20 = a7;
    v21 = a6;
    v19 = 0;
    v12 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v11, a3, &v21, v18, &v20, &v19);
  }

  v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*(a1 + 112), v12, 0, a6, 0, a8);
  v18[0] = 0;
  v14 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::LookupBucketFor<unsigned int>((a1 + 128), &v17, v18);
  v15 = v18[0];
  if (!v14)
  {
    v15 = (*(a1 + 128) + 120 * *(a1 + 144));
  }

  v21 = (v13[2] & 0x1FFFFFFFFFFFFFFLL) + *v13[1];
  v18[0] = &v21;
  result = std::__tree<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>>::__emplace_unique_key_args<llvm::orc::ExecutorAddr,std::piecewise_construct_t const&,std::tuple<llvm::orc::ExecutorAddr&&>,std::tuple<>>(v15 + 12, v21, v18);
  result[5] = v13;
  return result;
}

uint64_t *llvm::jitlink::MachOLinkGraphBuilder::createStandardGraphSymbol(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, int a7)
{
  v11 = *(a2 + 24) - *a3;
  v12 = *(a1 + 112);
  if (*(a2 + 16) == 1)
  {
    v13 = llvm::jitlink::LinkGraph::addDefinedSymbol(v12, a3, v11, *a2, *(a2 + 8), a4, *(a2 + 36), *(a2 + 37), a5, a6);
  }

  else
  {
    v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(v12, a3, v11, a4, a5, a6);
  }

  v14 = v13;
  *(a2 + 40) = v13;
  if (a7)
  {
    LODWORD(v18) = *(a2 + 33) - 1;
    v19 = 0;
    v15 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::LookupBucketFor<unsigned int>((a1 + 128), &v18, &v19);
    v16 = v19;
    if (!v15)
    {
      v16 = (*(a1 + 128) + 120 * *(a1 + 144));
    }

    v18 = (v14[2] & 0x1FFFFFFFFFFFFFFLL) + *v14[1];
    v19 = &v18;
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>>::__emplace_unique_key_args<llvm::orc::ExecutorAddr,std::piecewise_construct_t const&,std::tuple<llvm::orc::ExecutorAddr&&>,std::tuple<>>(v16 + 12, v18, &v19)[5] = v14;
  }

  return v14;
}

void llvm::jitlink::CompactUnwindSplitter::operator()(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, unint64_t *a4@<X3>)
{
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a4);
  if (SectionByName)
  {
    if (*(a2 + 180) != 5)
    {
      std::operator+<char>();
      v16 = std::string::append(&v25, ": compact unwind splitting not supported on non-macho target ");
      v17 = v16->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = *(a2 + 159);
      if (v18 >= 0)
      {
        v19 = (a2 + 136);
      }

      else
      {
        v19 = *(a2 + 136);
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 159);
      }

      else
      {
        v20 = *(a2 + 144);
      }

      v21 = std::string::append(&__p, v19, v20);
      v22 = v21->__r_.__value_.__r.__words[2];
      *v27 = *&v21->__r_.__value_.__l.__data_;
      v28 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
    }

    v7 = *(a2 + 160);
    if (v7 != 38 && v7 != 3)
    {
      std::operator+<char>();
      v23 = std::string::append(&v25, ": compact unwind splitting not supported on ");
      v24 = v23->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      llvm::Triple::getArchName((a2 + 136));
      operator new();
    }

    v9 = SectionByName;
    v30 = 32;
    v10 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 32);
    v12 = v11;
    llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v9 + 32);
    v13 = *(v9 + 32) + 8 * *(v9 + 48);
    memset(v29, 0, sizeof(v29));
    if (v10 != v13)
    {
      v14 = 0;
      v15 = v10;
      while (1)
      {
        do
        {
          ++v15;
        }

        while (v15 != v12 && (*v15 | 0x1000) == 0xFFFFFFFFFFFFF000);
        ++v14;
        if (v15 == v13)
        {
          std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](v29, v14);
        }
      }
    }

    *a3 = 0;
    if (v29[0])
    {
      operator delete(v29[0]);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t **std::__tree<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>>::__emplace_unique_key_args<llvm::orc::ExecutorAddr,std::piecewise_construct_t const&,std::tuple<llvm::orc::ExecutorAddr&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 120 * v1;
    v3 = *a1 + 96;
    do
    {
      if (*(v3 - 96) <= 0xFFFFFFFD)
      {
        std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v3, *(v3 + 8));
      }

      v3 += 120;
      v2 -= 120;
    }

    while (v2);
  }
}

uint64_t llvm::StringMap<std::function<llvm::Error ()(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &)>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          std::__function::__value_func<llvm::Error ()(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &)>::~__value_func[abi:nn200100](v5 + 8);
          MEMORY[0x277C69E30](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t std::__function::__value_func<llvm::Error ()(llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection &)>::~__value_func[abi:nn200100](uint64_t a1)
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

char *llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::grow(uint64_t a1, int a2)
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
  result = operator new(120 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 120 * v10 - 120;
      v13 = vdupq_n_s64(v12 / 0x78);
      v14 = result + 240;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 60) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 30) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
        {
          *v14 = -1;
          *(v14 + 30) = -1;
        }

        v11 += 4;
        v14 += 480;
      }

      while (((v12 / 0x78 + 4) & 0x7FFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 0;
      v18 = 120 * v3;
      do
      {
        v19 = v4 + v17;
        if (*(v4 + v17) <= 0xFFFFFFFD)
        {
          v39 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection>>::LookupBucketFor<unsigned int>(a1, (v4 + v17), &v39);
          v20 = v39;
          *v39 = *v19;
          v21 = *(v19 + 8);
          *(v20 + 6) = *(v19 + 24);
          *(v20 + 2) = v21;
          v22 = *(v19 + 40);
          v23 = *(v19 + 56);
          v24 = *(v19 + 72);
          *(v20 + 11) = *(v19 + 88);
          *(v20 + 18) = v24;
          *(v20 + 14) = v23;
          *(v20 + 10) = v22;
          v25 = (v19 + 96);
          *(v20 + 12) = *(v19 + 96);
          v28 = *(v19 + 104);
          v27 = (v19 + 104);
          v26 = v28;
          *(v20 + 13) = v28;
          v29 = v20 + 26;
          v30 = v27[1];
          *(v20 + 14) = v30;
          if (v30)
          {
            v31 = 0;
            *(v26 + 16) = v29;
            *v25 = v27;
            *v27 = 0;
            v27[1] = 0;
          }

          else
          {
            *(v20 + 12) = v29;
            v31 = *v27;
          }

          ++*(a1 + 8);
          std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v25, v31);
        }

        v17 += 120;
      }

      while (v18 != v17);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = 120 * v32 - 120;
    v35 = vdupq_n_s64(v34 / 0x78);
    v36 = result + 240;
    do
    {
      v37 = vdupq_n_s64(v33);
      v38 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_2750C1210)));
      if (vuzp1_s16(v38, *v35.i8).u8[0])
      {
        *(v36 - 60) = -1;
      }

      if (vuzp1_s16(v38, *&v35).i8[2])
      {
        *(v36 - 30) = -1;
      }

      if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v37, xmmword_2750C1830)))).i32[1])
      {
        *v36 = -1;
        *(v36 + 30) = -1;
      }

      v33 += 4;
      v36 += 480;
    }

    while (((v34 / 0x78 + 4) & 0x7FFFFFFFFFFFFFCLL) != v33);
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v162 = *(a2 - 1);
      v163 = *v9;
      v164 = *(v162 + 40);
      v165 = *(*v9 + 40);
      v166 = v164 >= v165;
      if (v164 == v165)
      {
        v166 = *(v162 + 48) >= *(v163 + 48);
      }

      if (!v166)
      {
        *v9 = v162;
        *(a2 - 1) = v163;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v175 = v9 + 1;
      v177 = v9 == a2 || v175 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v177)
        {
          do
          {
            v247 = v7;
            v7 = v175;
            v249 = *v247;
            v248 = v247[1];
            v250 = *(v248 + 40);
            v251 = *(*v247 + 40);
            v252 = v250 >= v251;
            if (v250 == v251)
            {
              v252 = *(v248 + 48) >= *(v249 + 48);
            }

            if (!v252)
            {
              do
              {
                v253 = v247;
                v254 = *--v247;
                v247[2] = v249;
                v249 = v254;
                v255 = *(v254 + 40);
                v256 = v250 >= v255;
                if (v250 == v255)
                {
                  v256 = *(v248 + 48) >= *(v249 + 48);
                }
              }

              while (!v256);
              *v253 = v248;
            }

            v175 = v7 + 1;
          }

          while (v7 + 1 != a2);
        }

        return result;
      }

      if (v177)
      {
        return result;
      }

      v178 = 0;
      v179 = v9;
      while (1)
      {
        v180 = v179;
        v179 = v175;
        v182 = *v180;
        v181 = v180[1];
        v183 = *(v181 + 40);
        v184 = *(*v180 + 40);
        v185 = v183 >= v184;
        if (v183 == v184)
        {
          v185 = *(v181 + 48) >= *(v182 + 48);
        }

        if (v185)
        {
          goto LABEL_243;
        }

        v180[1] = v182;
        v186 = v9;
        if (v180 == v9)
        {
          goto LABEL_242;
        }

        v187 = v178;
        while (1)
        {
          v188 = *(v9 + v187 - 8);
          v189 = *(v188 + 40);
          if (v183 == v189)
          {
            if (*(v181 + 48) >= *(v188 + 48))
            {
              v186 = (v9 + v187);
              goto LABEL_242;
            }

            goto LABEL_239;
          }

          if (v183 >= v189)
          {
            break;
          }

LABEL_239:
          --v180;
          *(v9 + v187) = v188;
          v187 -= 8;
          if (!v187)
          {
            v186 = v9;
            goto LABEL_242;
          }
        }

        v186 = v180;
LABEL_242:
        *v186 = v181;
LABEL_243:
        v175 = v179 + 1;
        v178 += 8;
        if (v179 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v190 = (v10 - 2) >> 1;
      v191 = v190;
      do
      {
        v192 = v191;
        if (v190 >= v191)
        {
          v193 = (2 * v191) | 1;
          v194 = &v9[v193];
          if (2 * v192 + 2 < v10)
          {
            v195 = v194[1];
            v196 = *(*v194 + 40);
            result = *(v195 + 40);
            v197 = v196 >= result;
            if (v196 == result)
            {
              v197 = *(*v194 + 48) >= *(v195 + 48);
            }

            if (!v197)
            {
              ++v194;
              v193 = 2 * v192 + 2;
            }
          }

          v198 = *v194;
          v199 = v9[v192];
          v200 = *(*v194 + 40);
          v201 = *(v199 + 40);
          v202 = v200 >= v201;
          if (v200 == v201)
          {
            v202 = *(v198 + 48) >= *(v199 + 48);
          }

          if (v202)
          {
            v9[v192] = v198;
            if (v190 >= v193)
            {
              while (1)
              {
                v204 = 2 * v193;
                v193 = (2 * v193) | 1;
                v203 = &v9[v193];
                v205 = v204 + 2;
                if (v205 < v10)
                {
                  result = *v203;
                  v206 = v203[1];
                  v207 = *(*v203 + 40);
                  v208 = *(v206 + 40);
                  v209 = v207 >= v208;
                  if (v207 == v208)
                  {
                    result = *(result + 48);
                    v209 = result >= *(v206 + 48);
                  }

                  if (!v209)
                  {
                    ++v203;
                    v193 = v205;
                  }
                }

                v210 = *v203;
                v211 = *(*v203 + 40);
                v212 = v211 >= v201;
                if (v211 == v201)
                {
                  result = *(v199 + 48);
                  v212 = *(v210 + 48) >= result;
                }

                if (!v212)
                {
                  break;
                }

                *v194 = v210;
                v194 = v203;
                if (v190 < v193)
                {
                  goto LABEL_269;
                }
              }
            }

            v203 = v194;
LABEL_269:
            *v203 = v199;
          }
        }

        v191 = v192 - 1;
      }

      while (v192);
      while (2)
      {
        v213 = 0;
        v214 = *v9;
        v215 = v9;
        do
        {
          v216 = v215;
          v217 = &v215[v213];
          v215 = v217 + 1;
          v218 = 2 * v213;
          v213 = (2 * v213) | 1;
          v219 = v218 + 2;
          if (v219 < v10)
          {
            v222 = v217[2];
            v220 = v217 + 2;
            v221 = v222;
            v223 = *(v220 - 1);
            result = *(v223 + 40);
            v224 = *(v222 + 40);
            v225 = result >= v224;
            if (result == v224)
            {
              v225 = *(v223 + 48) >= *(v221 + 48);
            }

            if (!v225)
            {
              v215 = v220;
              v213 = v219;
            }
          }

          *v216 = *v215;
        }

        while (v213 <= ((v10 - 2) >> 1));
        if (v215 == --a2)
        {
LABEL_289:
          *v215 = v214;
        }

        else
        {
          *v215 = *a2;
          *a2 = v214;
          v226 = (v215 - v9 + 8) >> 3;
          v227 = v226 - 2;
          if (v226 >= 2)
          {
            v228 = v227 >> 1;
            v229 = &v9[v227 >> 1];
            v230 = *v229;
            v214 = *v215;
            v231 = *(*v229 + 40);
            v232 = *(*v215 + 40);
            v233 = v231 >= v232;
            if (v231 == v232)
            {
              v233 = *(v230 + 48) >= *(v214 + 48);
            }

            if (!v233)
            {
              *v215 = v230;
              if (v227 >= 2)
              {
                while (1)
                {
                  v234 = v228 - 1;
                  v228 = (v228 - 1) >> 1;
                  v215 = &v9[v228];
                  v235 = *v215;
                  v236 = *(*v215 + 40);
                  v237 = v236 >= v232;
                  if (v236 == v232)
                  {
                    v237 = *(v235 + 48) >= *(v214 + 48);
                  }

                  if (v237)
                  {
                    break;
                  }

                  *v229 = v235;
                  v229 = &v9[v228];
                  if (v234 <= 1)
                  {
                    goto LABEL_289;
                  }
                }
              }

              v215 = v229;
              goto LABEL_289;
            }
          }
        }

        if (v10-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    v13 = v12;
    if (v10 >= 0x81)
    {
      v14 = *v12;
      v15 = *v9;
      v16 = *(*v12 + 40);
      v17 = *(*v9 + 40);
      v18 = v16 >= v17;
      if (v16 == v17)
      {
        v18 = *(v14 + 48) >= *(v15 + 48);
      }

      if (v18)
      {
        v30 = *v8;
        v31 = *(*v8 + 40);
        v32 = v31 >= v16;
        if (v31 == v16)
        {
          v32 = *(v30 + 48) >= *(v14 + 48);
        }

        if (!v32)
        {
          *v12 = v30;
          *v8 = v14;
          v33 = *v12;
          v34 = *v9;
          v35 = *(*v12 + 40);
          v36 = *(*v9 + 40);
          v37 = v35 >= v36;
          if (v35 == v36)
          {
            v37 = *(v33 + 48) >= *(v34 + 48);
          }

          if (!v37)
          {
            *v9 = v33;
            *v12 = v34;
          }
        }
      }

      else
      {
        v19 = *v8;
        v20 = *(*v8 + 40);
        v21 = v20 >= v16;
        if (v20 == v16)
        {
          v21 = *(v19 + 48) >= *(v14 + 48);
        }

        if (!v21)
        {
          *v9 = v19;
          goto LABEL_45;
        }

        *v9 = v14;
        *v12 = v15;
        v46 = *v8;
        v47 = *(*v8 + 40);
        v48 = v47 >= v17;
        if (v47 == v17)
        {
          v48 = *(v46 + 48) >= *(v15 + 48);
        }

        if (!v48)
        {
          *v12 = v46;
LABEL_45:
          *v8 = v15;
        }
      }

      v49 = v11 - 1;
      v50 = v9[v11 - 1];
      v51 = v9[1];
      v52 = *(v50 + 40);
      v53 = *(v51 + 40);
      v54 = v52 >= v53;
      if (v52 == v53)
      {
        v54 = *(v50 + 48) >= *(v51 + 48);
      }

      if (v54)
      {
        v58 = *(a2 - 2);
        v59 = *(v58 + 40);
        v60 = v59 >= v52;
        if (v59 == v52)
        {
          v60 = *(v58 + 48) >= *(v50 + 48);
        }

        if (!v60)
        {
          v9[v49] = v58;
          *(a2 - 2) = v50;
          v61 = v9[v49];
          v62 = v9[1];
          v63 = *(v61 + 40);
          v64 = *(v62 + 40);
          v65 = v63 >= v64;
          if (v63 == v64)
          {
            v65 = *(v61 + 48) >= *(v62 + 48);
          }

          if (!v65)
          {
            v9[1] = v61;
            v9[v49] = v62;
          }
        }
      }

      else
      {
        v55 = *(a2 - 2);
        v56 = *(v55 + 40);
        v57 = v56 >= v52;
        if (v56 == v52)
        {
          v57 = *(v55 + 48) >= *(v50 + 48);
        }

        if (!v57)
        {
          v9[1] = v55;
          goto LABEL_69;
        }

        v9[1] = v50;
        v9[v49] = v51;
        v69 = *(a2 - 2);
        v70 = *(v69 + 40);
        v71 = v70 >= v53;
        if (v70 == v53)
        {
          v71 = *(v69 + 48) >= *(v51 + 48);
        }

        if (!v71)
        {
          v9[v49] = v69;
LABEL_69:
          *(a2 - 2) = v51;
        }
      }

      v74 = v12[1];
      v72 = v12 + 1;
      v73 = v74;
      v75 = v9[2];
      v76 = *(v74 + 40);
      v77 = *(v75 + 40);
      v78 = v76 >= v77;
      if (v76 == v77)
      {
        v78 = *(v73 + 48) >= *(v75 + 48);
      }

      if (v78)
      {
        v82 = *(a2 - 3);
        v83 = *(v82 + 40);
        v84 = v83 >= v76;
        if (v83 == v76)
        {
          v84 = *(v82 + 48) >= *(v73 + 48);
        }

        if (!v84)
        {
          *v72 = v82;
          *(a2 - 3) = v73;
          v85 = *v72;
          v86 = v9[2];
          v87 = *(*v72 + 40);
          v88 = *(v86 + 40);
          v89 = v87 >= v88;
          if (v87 == v88)
          {
            v89 = *(v85 + 48) >= *(v86 + 48);
          }

          if (!v89)
          {
            v9[2] = v85;
            *v72 = v86;
          }
        }
      }

      else
      {
        v79 = *(a2 - 3);
        v80 = *(v79 + 40);
        v81 = v80 >= v76;
        if (v80 == v76)
        {
          v81 = *(v79 + 48) >= *(v73 + 48);
        }

        if (!v81)
        {
          v9[2] = v79;
          goto LABEL_88;
        }

        v9[2] = v73;
        *v72 = v75;
        v90 = *(a2 - 3);
        v91 = *(v90 + 40);
        v92 = v91 >= v77;
        if (v91 == v77)
        {
          v92 = *(v90 + 48) >= *(v75 + 48);
        }

        if (!v92)
        {
          *v72 = v90;
LABEL_88:
          *(a2 - 3) = v75;
        }
      }

      v93 = *v13;
      v94 = v9[v49];
      v95 = *(*v13 + 40);
      v96 = *(v94 + 40);
      v97 = v95 >= v96;
      if (v95 == v96)
      {
        v97 = *(v93 + 48) >= *(v94 + 48);
      }

      if (!v97)
      {
        v98 = *v72;
        v99 = *(*v72 + 40);
        v100 = v99 >= v95;
        if (v99 == v95)
        {
          v100 = *(v98 + 48) >= *(v93 + 48);
        }

        if (!v100)
        {
          v9[v49] = v98;
          goto LABEL_109;
        }

        v9[v49] = v93;
        *v13 = v94;
        if (v99 == v96)
        {
          if (*(v98 + 48) >= *(v94 + 48))
          {
            goto LABEL_104;
          }

LABEL_108:
          *v13 = v98;
          v93 = v98;
LABEL_109:
          *v72 = v94;
        }

        else
        {
          if (v99 < v96)
          {
            goto LABEL_108;
          }

LABEL_104:
          v93 = v94;
        }

LABEL_110:
        v104 = *v9;
        *v9 = v93;
        *v13 = v104;
        goto LABEL_111;
      }

      v101 = *v72;
      v102 = *(*v72 + 40);
      v103 = v102 >= v95;
      if (v102 == v95)
      {
        v103 = *(v101 + 48) >= *(v93 + 48);
      }

      if (v103)
      {
        goto LABEL_110;
      }

      *v13 = v101;
      *v72 = v93;
      if (v102 == v96)
      {
        if (*(v101 + 48) >= *(v94 + 48))
        {
LABEL_101:
          v93 = v101;
          goto LABEL_110;
        }
      }

      else if (v102 >= v96)
      {
        goto LABEL_101;
      }

      v9[v49] = v101;
      v72 = v13;
      v93 = v94;
      goto LABEL_109;
    }

    v22 = *v9;
    v23 = *v12;
    v24 = *(*v9 + 40);
    v25 = *(*v13 + 40);
    v26 = v24 >= v25;
    if (v24 == v25)
    {
      v26 = *(v22 + 48) >= *(v23 + 48);
    }

    if (v26)
    {
      v38 = *v8;
      v39 = *(*v8 + 40);
      v40 = v39 >= v24;
      if (v39 == v24)
      {
        v40 = *(v38 + 48) >= *(v22 + 48);
      }

      if (!v40)
      {
        *v9 = v38;
        *v8 = v22;
        v41 = *v9;
        v42 = *v13;
        v43 = *(*v9 + 40);
        v44 = *(*v13 + 40);
        v45 = v43 >= v44;
        if (v43 == v44)
        {
          v45 = *(v41 + 48) >= *(v42 + 48);
        }

        if (!v45)
        {
          *v13 = v41;
          *v9 = v42;
        }
      }
    }

    else
    {
      v27 = *v8;
      v28 = *(*v8 + 40);
      v29 = v28 >= v24;
      if (v28 == v24)
      {
        v29 = *(v27 + 48) >= *(v22 + 48);
      }

      if (!v29)
      {
        *v13 = v27;
LABEL_64:
        *v8 = v23;
        goto LABEL_111;
      }

      *v13 = v22;
      *v9 = v23;
      v66 = *v8;
      v67 = *(*v8 + 40);
      v68 = v67 >= v25;
      if (v67 == v25)
      {
        v68 = *(v66 + 48) >= *(v23 + 48);
      }

      if (!v68)
      {
        *v9 = v66;
        goto LABEL_64;
      }
    }

LABEL_111:
    --a3;
    v105 = *v9;
    if (a4)
    {
      v106 = *(v105 + 40);
LABEL_125:
      for (i = 0; ; ++i)
      {
        v115 = v9[i + 1];
        v116 = *(v115 + 40);
        v117 = v116 >= v106;
        if (v116 == v106)
        {
          v117 = *(v115 + 48) >= *(v105 + 48);
        }

        if (v117)
        {
          break;
        }
      }

      v118 = &v9[i];
      v119 = &v9[i + 1];
      j = a2 - 1;
      if (i * 8)
      {
        while (1)
        {
          v121 = *(*j + 40);
          v122 = v121 >= v106;
          if (v121 == v106)
          {
            v122 = *(*j + 48) >= *(v105 + 48);
          }

          if (!v122)
          {
            break;
          }

          --j;
        }
      }

      else
      {
        j = a2;
        if (v119 < a2)
        {
          for (j = a2 - 1; ; --j)
          {
            v123 = *(*j + 40);
            if (v123 == v106)
            {
              if (v119 >= j || *(*j + 48) < *(v105 + 48))
              {
                break;
              }
            }

            else if (v119 >= j || v123 < v106)
            {
              break;
            }
          }
        }
      }

      if (v119 < j)
      {
        v124 = *j;
        v125 = &v9[i + 1];
        v126 = j;
        do
        {
          *v125 = v124;
          v125 += 8;
          *v126 = v115;
          while (1)
          {
            v115 = *v125;
            v127 = *(*v125 + 40);
            v128 = v127 >= v106;
            if (v127 == v106)
            {
              v128 = *(v115 + 48) >= *(v105 + 48);
            }

            if (v128)
            {
              break;
            }

            v125 += 8;
          }

          do
          {
            v129 = *--v126;
            v124 = v129;
            v130 = *(v129 + 40);
            v131 = v130 >= v106;
            if (v130 == v106)
            {
              v131 = *(v124 + 48) >= *(v105 + 48);
            }
          }

          while (v131);
        }

        while (v125 < v126);
        v118 = (v125 - 8);
      }

      if (v118 != v9)
      {
        *v9 = *v118;
      }

      *v118 = v105;
      if (v119 < j)
      {
LABEL_162:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,false>(v7, v118, a3, a4 & 1);
        a4 = 0;
        v9 = v118 + 1;
      }

      else
      {
        v132 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **>(v9, v118);
        v9 = v118 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **>(v118 + 1, a2);
        if (result)
        {
          a2 = v118;
          if (v132)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v132)
        {
          goto LABEL_162;
        }
      }
    }

    else
    {
      v107 = *(v9 - 1);
      v106 = *(v107 + 40);
      v108 = *(v105 + 40);
      v109 = v106 >= v108;
      if (v106 == v108)
      {
        if (*(v107 + 48) < *(v105 + 48))
        {
          goto LABEL_125;
        }
      }

      else
      {
        v106 = *(v105 + 40);
        if (!v109)
        {
          goto LABEL_125;
        }
      }

      v110 = *v8;
      v111 = *(*v8 + 40);
      if (v108 == v111)
      {
        if (*(v105 + 48) >= *(v110 + 48))
        {
          goto LABEL_117;
        }
      }

      else if (v108 >= v111)
      {
LABEL_117:
        for (++v9; v9 < a2; ++v9)
        {
          v112 = *(*v9 + 40);
          v113 = v108 >= v112;
          if (v108 == v112)
          {
            v113 = *(v105 + 48) >= *(*v9 + 48);
          }

          if (!v113)
          {
            break;
          }
        }

        goto LABEL_170;
      }

      for (++v9; ; ++v9)
      {
        v133 = *(*v9 + 40);
        v134 = v108 >= v133;
        if (v108 == v133)
        {
          v134 = *(v105 + 48) >= *(*v9 + 48);
        }

        if (!v134)
        {
          break;
        }
      }

LABEL_170:
      k = a2;
      if (v9 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          v136 = v108 >= v111;
          if (v108 == v111)
          {
            v136 = *(v105 + 48) >= *(v110 + 48);
          }

          if (v136)
          {
            break;
          }

          v137 = *(k - 1);
          v110 = v137;
          v111 = *(v137 + 40);
        }
      }

      if (v9 < k)
      {
        v138 = *v9;
        v139 = *k;
        do
        {
          *v9++ = v139;
          *k = v138;
          while (1)
          {
            v138 = *v9;
            v140 = *(*v9 + 40);
            v141 = v108 >= v140;
            if (v108 == v140)
            {
              v141 = *(v105 + 48) >= *(v138 + 48);
            }

            if (!v141)
            {
              break;
            }

            ++v9;
          }

          do
          {
            v142 = *--k;
            v139 = v142;
            v143 = *(v142 + 40);
            v144 = v108 >= v143;
            if (v108 == v143)
            {
              v144 = *(v105 + 48) >= *(v139 + 48);
            }
          }

          while (!v144);
        }

        while (v9 < k);
      }

      v145 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v145;
      }

      a4 = 0;
      *v145 = v105;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
      v146 = *(a2 - 1);
      v147 = v9[3];
      v148 = *(v146 + 40);
      v149 = *(v147 + 40);
      v150 = v148 >= v149;
      if (v148 == v149)
      {
        v150 = *(v146 + 48) >= *(v147 + 48);
      }

      if (!v150)
      {
        v9[3] = v146;
        *(a2 - 1) = v147;
        v152 = v9[2];
        v151 = v9[3];
        v153 = *(v151 + 40);
        v154 = *(v152 + 40);
        v155 = v153 >= v154;
        if (v153 == v154)
        {
          v155 = *(v151 + 48) >= *(v152 + 48);
        }

        if (!v155)
        {
          v9[2] = v151;
          v9[3] = v152;
          v156 = v9[1];
          v157 = *(v156 + 40);
          v158 = v153 >= v157;
          if (v153 == v157)
          {
            v158 = *(v151 + 48) >= *(v156 + 48);
          }

          if (!v158)
          {
            v9[1] = v151;
            v9[2] = v156;
            v159 = *v9;
            v160 = *(*v9 + 40);
            v161 = v153 >= v160;
            if (v153 == v160)
            {
              v161 = *(v151 + 48) >= *(v159 + 48);
            }

            if (!v161)
            {
              *v9 = v151;
              v9[1] = v159;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v167 = *v9;
  v168 = v9[1];
  v169 = *(v168 + 40);
  v170 = *(*v9 + 40);
  v171 = v169 >= v170;
  if (v169 == v170)
  {
    v171 = *(v168 + 48) >= *(v167 + 48);
  }

  if (!v171)
  {
    v172 = *(a2 - 1);
    v173 = *(v172 + 40);
    v174 = v173 >= v169;
    if (v173 == v169)
    {
      v174 = *(v172 + 48) >= *(v168 + 48);
    }

    if (v174)
    {
      *v9 = v168;
      v9[1] = v167;
      v257 = *(a2 - 1);
      v258 = *(v257 + 40);
      v259 = v258 >= v170;
      if (v258 == v170)
      {
        v259 = *(v257 + 48) >= *(v167 + 48);
      }

      if (v259)
      {
        return result;
      }

      v9[1] = v257;
    }

    else
    {
      *v9 = v172;
    }

    *(a2 - 1) = v167;
    return result;
  }

  v239 = *(a2 - 1);
  v240 = *(v239 + 40);
  v241 = v240 >= v169;
  if (v240 == v169)
  {
    v241 = *(v239 + 48) >= *(v168 + 48);
  }

  if (!v241)
  {
    v9[1] = v239;
    *(a2 - 1) = v168;
    v243 = *v9;
    v242 = v9[1];
    v244 = *(v242 + 40);
    v245 = *(*v9 + 40);
    v246 = v244 >= v245;
    if (v244 == v245)
    {
      v246 = *(v242 + 48) >= *(v243 + 48);
    }

    if (!v246)
    {
      *v9 = v242;
      v9[1] = v243;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 40);
  v7 = *(*result + 40);
  v8 = v6 >= v7;
  if (v6 == v7)
  {
    v8 = *(v4 + 48) >= *(v5 + 48);
  }

  if (v8)
  {
    v5 = *a3;
    v12 = *(*a3 + 40);
    v13 = v12 >= v6;
    if (v12 == v6)
    {
      v13 = *(v5 + 48) >= *(v4 + 48);
    }

    if (v13)
    {
      goto LABEL_20;
    }

    *a2 = v5;
    *a3 = v4;
    v14 = *a2;
    v15 = *result;
    v16 = *(*a2 + 40);
    v17 = *(*result + 40);
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      v18 = *(v14 + 48) >= *(v15 + 48);
    }

    if (!v18)
    {
      *result = v14;
      *a2 = v15;
      v4 = *a3;
    }
  }

  else
  {
    v9 = *a3;
    v10 = *(*a3 + 40);
    v11 = v10 >= v6;
    if (v10 == v6)
    {
      v11 = *(v9 + 48) >= *(v4 + 48);
    }

    if (!v11)
    {
      *result = v9;
LABEL_19:
      *a3 = v5;
LABEL_20:
      v4 = v5;
      goto LABEL_21;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    v19 = *(*a3 + 40);
    v20 = v19 >= v7;
    if (v19 == v7)
    {
      v20 = *(v4 + 48) >= *(v5 + 48);
    }

    if (!v20)
    {
      *a2 = v4;
      goto LABEL_19;
    }
  }

LABEL_21:
  v21 = *a4;
  v22 = *(*a4 + 40);
  v23 = *(v4 + 40);
  v24 = v22 >= v23;
  if (v22 == v23)
  {
    v24 = *(v21 + 48) >= *(v4 + 48);
  }

  if (!v24)
  {
    *a3 = v21;
    *a4 = v4;
    v25 = *a3;
    v26 = *a2;
    v27 = *(*a3 + 40);
    v28 = *(*a2 + 40);
    v29 = v27 >= v28;
    if (v27 == v28)
    {
      v29 = *(v25 + 48) >= *(v26 + 48);
    }

    if (!v29)
    {
      *a2 = v25;
      *a3 = v26;
      v30 = *a2;
      v31 = *result;
      v32 = *(*a2 + 40);
      v33 = *(*result + 40);
      v34 = v32 >= v33;
      if (v32 == v33)
      {
        v34 = *(v30 + 48) >= *(v31 + 48);
      }

      if (!v34)
      {
        *result = v30;
        *a2 = v31;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v26 = *a1;
        v27 = a1[1];
        v28 = *(v27 + 40);
        v29 = *(*a1 + 40);
        v30 = v28 >= v29;
        if (v28 == v29)
        {
          v30 = *(v27 + 48) >= *(v26 + 48);
        }

        if (v30)
        {
          v44 = *(a2 - 1);
          v45 = *(v44 + 40);
          v46 = v45 >= v28;
          if (v45 == v28)
          {
            v46 = *(v44 + 48) >= *(v27 + 48);
          }

          if (!v46)
          {
            a1[1] = v44;
            *(a2 - 1) = v27;
            v48 = *a1;
            v47 = a1[1];
            v49 = *(v47 + 40);
            v50 = *(*a1 + 40);
            v51 = v49 >= v50;
            if (v49 == v50)
            {
              v51 = *(v47 + 48) >= *(v48 + 48);
            }

            if (!v51)
            {
              *a1 = v47;
              a1[1] = v48;
            }
          }

          return 1;
        }

        v31 = *(a2 - 1);
        v32 = *(v31 + 40);
        v33 = v32 >= v28;
        if (v32 == v28)
        {
          v33 = *(v31 + 48) >= *(v27 + 48);
        }

        if (v33)
        {
          *a1 = v27;
          a1[1] = v26;
          v56 = *(a2 - 1);
          v57 = *(v56 + 40);
          v58 = v57 >= v29;
          if (v57 == v29)
          {
            v58 = *(v56 + 48) >= *(v26 + 48);
          }

          if (v58)
          {
            return 1;
          }

          a1[1] = v56;
        }

        else
        {
          *a1 = v31;
        }

        *(a2 - 1) = v26;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::createNormalizedSections(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSection **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v10 = *(a2 - 1);
        v11 = a1[3];
        v12 = *(v10 + 40);
        v13 = *(v11 + 40);
        v14 = v12 >= v13;
        if (v12 == v13)
        {
          v14 = *(v10 + 48) >= *(v11 + 48);
        }

        if (!v14)
        {
          a1[3] = v10;
          *(a2 - 1) = v11;
          v16 = a1[2];
          v15 = a1[3];
          v17 = *(v15 + 40);
          v18 = *(v16 + 40);
          v19 = v17 >= v18;
          if (v17 == v18)
          {
            v19 = *(v15 + 48) >= *(v16 + 48);
          }

          if (!v19)
          {
            a1[2] = v15;
            a1[3] = v16;
            v20 = a1[1];
            v21 = *(v20 + 40);
            v22 = v17 >= v21;
            if (v17 == v21)
            {
              v22 = *(v15 + 48) >= *(v20 + 48);
            }

            if (!v22)
            {
              a1[1] = v15;
              a1[2] = v20;
              v23 = *a1;
              v24 = *(*a1 + 40);
              v25 = v17 >= v24;
              if (v17 == v24)
              {
                v25 = *(v15 + 48) >= *(v23 + 48);
              }

              if (!v25)
              {
                *a1 = v15;
                a1[1] = v23;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *(v5 + 40);
      v8 = *(*a1 + 40);
      v9 = v7 >= v8;
      if (v7 == v8)
      {
        v9 = *(v5 + 48) >= *(v6 + 48);
      }

      if (!v9)
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v34 = a1 + 2;
  v35 = *a1;
  v36 = a1 + 1;
  v37 = a1[1];
  v38 = *(v37 + 40);
  v39 = *(*a1 + 40);
  v40 = v38 >= v39;
  if (v38 == v39)
  {
    v40 = *(v37 + 48) >= *(v35 + 48);
  }

  if (v40)
  {
    v52 = *v34;
    v53 = *(*v34 + 40);
    v54 = v53 >= v38;
    if (v53 == v38)
    {
      v54 = *(v52 + 48) >= *(v37 + 48);
    }

    if (!v54)
    {
      *v36 = v52;
      *v34 = v37;
      v55 = v53 >= v39;
      if (v53 == v39)
      {
        v55 = *(v52 + 48) >= *(v35 + 48);
      }

      if (!v55)
      {
        *a1 = v52;
LABEL_63:
        *v36 = v35;
      }
    }
  }

  else
  {
    v41 = *v34;
    v42 = *(*v34 + 40);
    v43 = v42 >= v38;
    if (v42 == v38)
    {
      v43 = *(v41 + 48) >= *(v37 + 48);
    }

    if (!v43)
    {
      *a1 = v41;
LABEL_62:
      v36 = a1 + 2;
      goto LABEL_63;
    }

    *a1 = v37;
    a1[1] = v35;
    v59 = v42 >= v39;
    if (v42 == v39)
    {
      v59 = *(v41 + 48) >= *(v35 + 48);
    }

    if (!v59)
    {
      *v36 = v41;
      goto LABEL_62;
    }
  }

  v60 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v61 = 0;
  v62 = 0;
  while (2)
  {
    v63 = *v60;
    v64 = *v34;
    v65 = *(*v60 + 40);
    v66 = *(*v34 + 40);
    v67 = v65 >= v66;
    if (v65 == v66)
    {
      v67 = *(v63 + 48) >= *(v64 + 48);
    }

    if (v67)
    {
      goto LABEL_78;
    }

    *v60 = v64;
    v68 = v61;
    while (1)
    {
      v69 = *(a1 + v68 + 8);
      v70 = *(v69 + 40);
      if (v65 == v70)
      {
        if (*(v63 + 48) >= *(v69 + 48))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (v65 >= v70)
      {
        break;
      }

LABEL_74:
      --v34;
      *(a1 + v68 + 16) = v69;
      v68 -= 8;
      if (v68 == -16)
      {
        v34 = a1;
        goto LABEL_77;
      }
    }

    v34 = (a1 + v68 + 16);
LABEL_77:
    *v34 = v63;
    if (++v62 != 8)
    {
LABEL_78:
      v34 = v60;
      v61 += 8;
      if (++v60 == a2)
      {
        return 1;
      }

      continue;
    }

    return v60 + 1 == a2;
  }
}

llvm::raw_ostream *llvm::detail::provider_format_adapter<char (&)[17]>::format(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v12 = 0;
    v13 = a3;
    v14 = a4;
    v6 = llvm::consumeUnsignedInteger(&v13, 0xA, &v12, a4);
    if (v14)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v12;
    }

    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = -1;
    if (v5)
    {
LABEL_9:
      v9 = strlen(v5);
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return llvm::raw_ostream::operator<<(a2, v5, v10);
}

void *llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<char (&)[17]>,llvm::detail::provider_format_adapter<char (&)[17]>,llvm::detail::stream_operator_format_adapter<llvm::orc::ExecutorAddr &>,llvm::detail::stream_operator_format_adapter<llvm::orc::ExecutorAddr>>>::formatv_object(void *result, void *a2)
{
  *result = "{0}/{1} [ {2:x16} -- {3:x16} ] ";
  result[1] = 33;
  result[2] = result + 12;
  result[3] = 4;
  v2 = a2[1];
  result[4] = &unk_2883ED020;
  result[5] = v2;
  v3 = a2[3];
  result[6] = &unk_2883ED020;
  result[7] = v3;
  v4 = a2[5];
  result[8] = &unk_2883EBA18;
  result[9] = v4;
  v5 = a2[7];
  result[10] = &unk_2883EC4C0;
  result[11] = v5;
  result[12] = result + 4;
  result[13] = result + 6;
  result[14] = result + 8;
  result[15] = result + 10;
  return result;
}

char *llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::grow(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          *(v16 + 4) = -1;
        }

        v11 += 4;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        if (*v20 <= 0xFFFFFFFD)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, v20, &v31);
          v21 = v31;
          *v31 = *v20;
          *(v21 + 1) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 3) + 4;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vdupq_n_s64(v23);
      v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_2750C1210)));
      if (vuzp1_s16(v30, *v27.i8).u8[0])
      {
        *(v28 - 8) = -1;
      }

      if (vuzp1_s16(v30, *&v27).i8[2])
      {
        *(v28 - 4) = -1;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_2750C1830)))).i32[1])
      {
        *v28 = -1;
        *(v28 + 4) = -1;
      }

      v23 += 4;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v211 = a2 - 3;
  v212 = a2 - 2;
  k = v7;
  v213 = a2;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7, v7 + 1, v8);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7, v7 + 1, v7 + 2, v8);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7, v7 + 1, v7 + 2, v7 + 3, v8);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        result = *(a2 - 1);
        v100 = *v7;
        v101 = *(result + 24);
        v102 = *(*v7 + 24);
        if (v101 == v102)
        {
          v103 = *(v100 + 34);
          if (((*(result + 34) ^ v103) & 0x200) != 0)
          {
            if ((v103 & 0x200) == 0)
            {
              return result;
            }
          }

          else
          {
            v209 = *(result + 37);
            v210 = *(v100 + 37);
            if (v209 == v210)
            {
              result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v100);
              if (!result)
              {
                return result;
              }

              v100 = *v7;
              result = *(a2 - 1);
            }

            else if (v209 >= v210)
            {
              return result;
            }
          }
        }

        else if (v101 <= v102)
        {
          return result;
        }

        *v7 = result;
        *(a2 - 1) = v100;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v126 = v11 >> 1;
      v127 = v11 >> 1;
      while (1)
      {
        v128 = v127;
        if (v126 < v127)
        {
          goto LABEL_264;
        }

        v129 = (2 * v127) | 1;
        v130 = &v7[v129];
        if (2 * v127 + 2 >= v10)
        {
          goto LABEL_229;
        }

        v131 = *v130;
        v132 = v130[1];
        v133 = *(*v130 + 24);
        v134 = *(v132 + 24);
        if (v133 == v134)
        {
          break;
        }

        if (v133 > v134)
        {
          goto LABEL_228;
        }

LABEL_229:
        result = *v130;
        v136 = v7[v128];
        v137 = *(*v130 + 24);
        v138 = *(v136 + 24);
        if (v137 == v138)
        {
          v139 = *(v136 + 34);
          a2 = v213;
          if (((*(result + 34) ^ v139) & 0x200) != 0)
          {
            if ((v139 & 0x200) != 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v155 = *(result + 37);
            v156 = *(v136 + 37);
            if (v155 == v156)
            {
              result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v7[v128]);
              if (result)
              {
                goto LABEL_264;
              }

              v136 = v7[v128];
              result = *v130;
            }

            else if (v155 < v156)
            {
              goto LABEL_264;
            }
          }
        }

        else
        {
          a2 = v213;
          if (v137 > v138)
          {
            goto LABEL_264;
          }
        }

        v7[v128] = result;
        while (1)
        {
          if (v126 < v129)
          {
            goto LABEL_263;
          }

          v140 = v130;
          v141 = 2 * v129;
          v129 = (2 * v129) | 1;
          v130 = &v7[v129];
          v142 = v141 + 2;
          if (v141 + 2 < v10)
          {
            v143 = *v130;
            v144 = v130[1];
            v145 = *(*v130 + 24);
            v146 = *(v144 + 24);
            if (v145 != v146)
            {
              if (v145 <= v146)
              {
                goto LABEL_243;
              }

LABEL_242:
              ++v130;
              v129 = v142;
              goto LABEL_243;
            }

            v147 = *(v144 + 34);
            if (((*(v143 + 34) ^ v147) & 0x200) != 0)
            {
              if ((v147 & 0x200) != 0)
              {
                goto LABEL_242;
              }
            }

            else
            {
              v153 = *(v143 + 37);
              v154 = *(v144 + 37);
              if (v153 == v154)
              {
                if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v143, v144))
                {
                  goto LABEL_242;
                }
              }

              else if (v153 < v154)
              {
                goto LABEL_242;
              }
            }
          }

LABEL_243:
          result = *v130;
          v148 = *(*v130 + 24);
          v149 = *(v136 + 24);
          if (v148 != v149)
          {
            if (v148 > v149)
            {
              goto LABEL_262;
            }

            goto LABEL_248;
          }

          v150 = *(v136 + 34);
          if (((*(result + 34) ^ v150) & 0x200) != 0)
          {
            if ((v150 & 0x200) != 0)
            {
              goto LABEL_262;
            }

            goto LABEL_248;
          }

          v151 = *(result + 37);
          v152 = *(v136 + 37);
          if (v151 != v152)
          {
            break;
          }

          result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v136);
          if (result)
          {
            goto LABEL_262;
          }

          result = *v130;
LABEL_248:
          *v140 = result;
        }

        if (v151 >= v152)
        {
          goto LABEL_248;
        }

LABEL_262:
        v130 = v140;
LABEL_263:
        *v130 = v136;
        a2 = v213;
LABEL_264:
        v127 = v128 - 1;
        if (!v128)
        {
LABEL_278:
          v162 = 0;
          v163 = *v7;
          v164 = v7;
          while (1)
          {
            v165 = v164;
            v166 = &v164[v162];
            v164 = v166 + 1;
            v167 = 2 * v162;
            v162 = (2 * v162) | 1;
            v168 = v167 + 2;
            if (v167 + 2 < v10)
            {
              v171 = v166[2];
              v170 = v166 + 2;
              v169 = v171;
              result = *(v170 - 1);
              v172 = *(result + 24);
              v173 = *(v171 + 24);
              if (v172 == v173)
              {
                v174 = *(v169 + 34);
                if (((*(result + 34) ^ v174) & 0x200) != 0)
                {
                  if ((v174 & 0x200) == 0)
                  {
                    goto LABEL_286;
                  }
                }

                else
                {
                  v175 = *(result + 37);
                  v176 = *(v169 + 37);
                  if (v175 == v176)
                  {
                    result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v169);
                    if ((result & 1) == 0)
                    {
                      goto LABEL_286;
                    }
                  }

                  else if (v175 >= v176)
                  {
                    goto LABEL_286;
                  }
                }

LABEL_285:
                v164 = v170;
                v162 = v168;
                goto LABEL_286;
              }

              if (v172 > v173)
              {
                goto LABEL_285;
              }
            }

LABEL_286:
            *v165 = *v164;
            if (v162 > ((v10 - 2) >> 1))
            {
              if (v164 == --a2)
              {
                *v164 = v163;
                goto LABEL_315;
              }

              *v164 = *a2;
              *a2 = v163;
              v177 = (v164 - v7 + 8) >> 3;
              v178 = v177 - 2;
              if (v177 < 2)
              {
                goto LABEL_315;
              }

              v179 = v178 >> 1;
              v180 = &v7[v178 >> 1];
              result = *v180;
              v161 = *v164;
              v181 = *(*v180 + 24);
              v182 = *(*v164 + 24);
              if (v181 == v182)
              {
                v183 = *(v161 + 34);
                if (((*(result + 34) ^ v183) & 0x200) != 0)
                {
                  if ((v183 & 0x200) == 0)
                  {
                    goto LABEL_315;
                  }
                }

                else
                {
                  v159 = *(result + 37);
                  v160 = *(v161 + 37);
                  if (v159 == v160)
                  {
                    result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, *v164);
                    if (!result)
                    {
                      goto LABEL_315;
                    }

                    v161 = *v164;
                    result = *v180;
                  }

                  else if (v159 >= v160)
                  {
                    goto LABEL_315;
                  }
                }
              }

              else if (v181 <= v182)
              {
                goto LABEL_315;
              }

              v184 = a2;
              *v164 = result;
              if (v178 < 2)
              {
                goto LABEL_314;
              }

              while (2)
              {
                v185 = v180;
                v186 = v179 - 1;
                v179 = (v179 - 1) >> 1;
                v180 = &v7[v179];
                result = *v180;
                v187 = *(*v180 + 24);
                v188 = *(v161 + 24);
                if (v187 != v188)
                {
                  if (v187 <= v188)
                  {
                    break;
                  }

                  goto LABEL_307;
                }

                v189 = *(v161 + 34);
                if (((*(result + 34) ^ v189) & 0x200) != 0)
                {
                  if ((v189 & 0x200) == 0)
                  {
                    break;
                  }

                  goto LABEL_307;
                }

                v190 = *(result + 37);
                v191 = *(v161 + 37);
                if (v190 == v191)
                {
                  result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, v161);
                  if (!result)
                  {
                    break;
                  }

                  result = *v180;
                  goto LABEL_307;
                }

                if (v190 < v191)
                {
LABEL_307:
                  *v185 = result;
                  if (v186 <= 1)
                  {
                    goto LABEL_314;
                  }

                  continue;
                }

                break;
              }

              v180 = v185;
LABEL_314:
              *v180 = v161;
              a2 = v184;
LABEL_315:
              if (v10-- <= 2)
              {
                return result;
              }

              goto LABEL_278;
            }
          }
        }
      }

      v135 = *(v132 + 34);
      if (((*(v131 + 34) ^ v135) & 0x200) != 0)
      {
        if ((v135 & 0x200) == 0)
        {
          goto LABEL_229;
        }
      }

      else
      {
        v157 = *(v131 + 37);
        v158 = *(v132 + 37);
        if (v157 == v158)
        {
          if ((std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v131, v132) & 1) == 0)
          {
            goto LABEL_229;
          }
        }

        else if (v157 >= v158)
        {
          goto LABEL_229;
        }
      }

LABEL_228:
      ++v130;
      v129 = 2 * v128 + 2;
      goto LABEL_229;
    }

    v12 = v10 >> 1;
    v13 = &v7[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(&v7[v10 >> 1], v7, v8);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7, &v7[v10 >> 1], v8);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7 + 1, v13 - 1, v212);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v7 + 2, &v7[v12 + 1], v211);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,0>(v13 - 1, &v7[v10 >> 1], &v7[v12 + 1]);
      v14 = *v7;
      *v7 = *v13;
      *v13 = v14;
    }

    --a3;
    v15 = *v7;
    if (a4)
    {
      goto LABEL_22;
    }

    result = *(v7 - 1);
    v16 = *(result + 24);
    v17 = *(v15 + 24);
    if (v16 == v17)
    {
      v18 = *(v15 + 34);
      if (((*(result + 34) ^ v18) & 0x200) != 0)
      {
        if ((v18 & 0x200) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_22;
      }

      v59 = *(result + 37);
      v60 = *(v15 + 37);
      if (v59 == v60)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(result, *v7);
        v15 = *v7;
        if ((result & 1) == 0)
        {
          v16 = *(v15 + 24);
          goto LABEL_96;
        }
      }

      else if (v59 >= v60)
      {
        goto LABEL_96;
      }

LABEL_22:
      for (i = 0; ; ++i)
      {
        v20 = v7[i + 1];
        v21 = *(v20 + 24);
        v22 = *(v15 + 24);
        if (v21 != v22)
        {
          if (v21 <= v22)
          {
            goto LABEL_33;
          }

          continue;
        }

        v23 = *(v15 + 34);
        if (((*(v20 + 34) ^ v23) & 0x200) != 0)
        {
          if ((v23 & 0x200) == 0)
          {
            goto LABEL_33;
          }

          continue;
        }

        v24 = *(v20 + 37);
        v25 = *(v15 + 37);
        if (v24 != v25)
        {
          break;
        }

        if ((std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v20, v15) & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        ;
      }

      if (v24 < v25)
      {
        goto LABEL_28;
      }

LABEL_33:
      v26 = &v7[i];
      v27 = &v7[i + 1];
      j = v8;
      if (i * 8)
      {
        while (1)
        {
          v29 = *j;
          v30 = *(*j + 24);
          v31 = *(v15 + 24);
          if (v30 == v31)
          {
            v32 = *(v15 + 34);
            if (((*(v29 + 34) ^ v32) & 0x200) != 0)
            {
              if ((v32 & 0x200) != 0)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v33 = *(v29 + 37);
              v34 = *(v15 + 37);
              if (v33 == v34)
              {
                if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v29, v15))
                {
                  goto LABEL_44;
                }
              }

              else if (v33 < v34)
              {
LABEL_44:
                a2 = v213;
                goto LABEL_61;
              }
            }
          }

          else if (v30 > v31)
          {
            goto LABEL_44;
          }

          --j;
        }
      }

      a2 = v213;
      j = v213;
      if (v27 < v213)
      {
        for (j = v8; ; --j)
        {
          v35 = *j;
          v36 = *(*j + 24);
          v37 = *(v15 + 24);
          if (v36 == v37)
          {
            v38 = *(v15 + 34);
            if (((*(v35 + 34) ^ v38) & 0x200) != 0)
            {
              if (v27 >= j || (v38 & 0x200) != 0)
              {
                break;
              }
            }

            else
            {
              v39 = *(v35 + 37);
              v40 = *(v15 + 37);
              if (v39 == v40)
              {
                v41 = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v35, v15);
                if (v27 >= j || (v41 & 1) != 0)
                {
                  break;
                }
              }

              else if (v27 >= j || v39 < v40)
              {
                break;
              }
            }
          }

          else if (v27 >= j || v36 > v37)
          {
            break;
          }
        }
      }

LABEL_61:
      if (v27 >= j)
      {
        goto LABEL_86;
      }

      v42 = v27;
      v43 = j;
      while (2)
      {
        v44 = *v42;
        *v42 = *v43;
        v42 += 8;
        *v43 = v44;
        while (2)
        {
          v45 = *v42;
          v46 = *(*v42 + 24);
          v47 = *(v15 + 24);
          if (v46 != v47)
          {
            if (v46 <= v47)
            {
              goto LABEL_74;
            }

LABEL_69:
            v42 += 8;
            continue;
          }

          break;
        }

        v48 = *(v15 + 34);
        if (((*(v45 + 34) ^ v48) & 0x200) != 0)
        {
          if ((v48 & 0x200) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_69;
        }

        v49 = *(v45 + 37);
        v50 = *(v15 + 37);
        if (v49 != v50)
        {
          if (v49 >= v50)
          {
            goto LABEL_74;
          }

          goto LABEL_69;
        }

        if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v45, v15))
        {
          goto LABEL_69;
        }

        do
        {
          while (1)
          {
            while (1)
            {
LABEL_74:
              while (1)
              {
                v52 = *--v43;
                v51 = v52;
                v53 = *(v52 + 24);
                v54 = *(v15 + 24);
                if (v53 == v54)
                {
                  break;
                }

                if (v53 > v54)
                {
                  goto LABEL_84;
                }
              }

              v55 = *(v15 + 34);
              if (((*(v51 + 34) ^ v55) & 0x200) == 0)
              {
                break;
              }

              if ((v55 & 0x200) != 0)
              {
                goto LABEL_84;
              }
            }

            v56 = *(v51 + 37);
            v57 = *(v15 + 37);
            if (v56 != v57)
            {
              break;
            }

            if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v51, v15))
            {
              goto LABEL_84;
            }
          }
        }

        while (v56 >= v57);
LABEL_84:
        if (v42 < v43)
        {
          continue;
        }

        break;
      }

      v26 = (v42 - 8);
LABEL_86:
      if (v26 != v7)
      {
        *v7 = *v26;
      }

      *v26 = v15;
      if (v27 < j)
      {
LABEL_91:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **,false>(v7, v26, a3, a4 & 1);
        a4 = 0;
        k = (v26 + 1);
      }

      else
      {
        v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(v7, v26);
        k = (v26 + 1);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::MachOLinkGraphBuilder::graphifyRegularSymbols(void)::$_0 &,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol **>(v26 + 1, a2);
        if (result)
        {
          a2 = v26;
          if (v58)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v58)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      if (v16 > v17)
      {
        goto LABEL_22;
      }

      v16 = *(v15 + 24);
LABEL_96:
      v61 = *v8;
      v62 = *(*v8 + 24);
      if (v16 == v62)
      {
        v63 = *(v61 + 34);
        a2 = v213;
        if (((*(v15 + 34) ^ v63) & 0x200) != 0)
        {
          if ((v63 & 0x200) != 0)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v98 = *(v15 + 37);
          v99 = *(v61 + 37);
          if (v98 == v99)
          {
            result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v61);
            if (result)
            {
              goto LABEL_113;
            }
          }

          else if (v98 < v99)
          {
LABEL_113:
            for (k = (v7 + 1); ; k += 8)
            {
              v70 = *k;
              v71 = *(v15 + 24);
              v72 = *(*k + 24);
              if (v71 == v72)
              {
                v73 = *(v70 + 34);
                if (((*(v15 + 34) ^ v73) & 0x200) != 0)
                {
                  if ((v73 & 0x200) != 0)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  v74 = *(v15 + 37);
                  v75 = *(v70 + 37);
                  if (v74 == v75)
                  {
                    result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v70);
                    if (result)
                    {
                      goto LABEL_124;
                    }
                  }

                  else if (v74 < v75)
                  {
                    goto LABEL_124;
                  }
                }
              }

              else if (v71 > v72)
              {
                goto LABEL_124;
              }
            }
          }
        }
      }

      else
      {
        a2 = v213;
        if (v16 > v62)
        {
          goto LABEL_113;
        }
      }

      for (k = (v7 + 1); k < a2; k += 8)
      {
        v64 = *k;
        v65 = *(v15 + 24);
        v66 = *(*k + 24);
        if (v65 == v66)
        {
          v67 = *(v64 + 34);
          if (((*(v15 + 34) ^ v67) & 0x200) != 0)
          {
            if ((v67 & 0x200) != 0)
            {
              break;
            }
          }

          else
          {
            v68 = *(v15 + 37);
            v69 = *(v64 + 37);
            if (v68 == v69)
            {
              result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v64);
              if (result)
              {
                break;
              }
            }

            else if (v68 < v69)
            {
              break;
            }
          }
        }

        else if (v65 > v66)
        {
          break;
        }
      }

LABEL_124:
      m = a2;
      if (k >= a2)
      {
        goto LABEL_158;
      }

      for (m = v8; ; --m)
      {
        v77 = *m;
        v78 = *(v15 + 24);
        v79 = *(*m + 24);
        if (v78 != v79)
        {
          if (v78 <= v79)
          {
            goto LABEL_158;
          }

          continue;
        }

        v80 = *(v77 + 34);
        if (((*(v15 + 34) ^ v80) & 0x200) != 0)
        {
          if ((v80 & 0x200) == 0)
          {
            goto LABEL_158;
          }

          continue;
        }

        v81 = *(v15 + 37);
        v82 = *(v77 + 37);
        if (v81 != v82)
        {
          break;
        }

        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v77);
        if ((result & 1) == 0)
        {
          goto LABEL_158;
        }

LABEL_131:
        ;
      }

      if (v81 < v82)
      {
        goto LABEL_131;
      }

LABEL_158:
      if (k < m)
      {
        v83 = *k;
        *k = *m;
        k += 8;
        *m = v83;
        while (1)
        {
          v84 = *k;
          v85 = *(v15 + 24);
          v86 = *(*k + 24);
          if (v85 == v86)
          {
            v87 = *(v84 + 34);
            if (((*(v15 + 34) ^ v87) & 0x200) != 0)
            {
              if ((v87 & 0x200) != 0)
              {
                goto LABEL_148;
              }
            }

            else
            {
              v88 = *(v15 + 37);
              v89 = *(v84 + 37);
              if (v88 == v89)
              {
                result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v84);
                if (result)
                {
                  do
                  {
                    while (1)
                    {
                      while (1)
                      {
LABEL_148:
                        while (1)
                        {
                          v91 = *--m;
                          v90 = v91;
                          v92 = *(v15 + 24);
                          v93 = *(v91 + 24);
                          if (v92 == v93)
                          {
                            break;
                          }

                          if (v92 <= v93)
                          {
                            goto LABEL_158;
                          }
                        }

                        v94 = *(v90 + 34);
                        if (((*(v15 + 34) ^ v94) & 0x200) == 0)
                        {
                          break;
                        }

                        if ((v94 & 0x200) == 0)
                        {
                          goto LABEL_158;
                        }
                      }

                      v95 = *(v15 + 37);
                      v96 = *(v90 + 37);
                      if (v95 != v96)
                      {
                        break;
                      }

                      result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v15, v90);
                      if ((result & 1) == 0)
                      {
                        goto LABEL_158;
                      }
                    }
                  }

                  while (v95 < v96);
                  goto LABEL_158;
                }
              }

              else if (v88 < v89)
              {
                goto LABEL_148;
              }
            }
          }

          else if (v85 > v86)
          {
            goto LABEL_148;
          }

          k += 8;
        }
      }

      v97 = (k - 8);
      if ((k - 8) != v7)
      {
        *v7 = *v97;
      }

      a4 = 0;
      *v97 = v15;
    }
  }

  v104 = v7 + 1;
  v106 = v7 == a2 || v104 == a2;
  if ((a4 & 1) == 0)
  {
    if (v106)
    {
      return result;
    }

    while (1)
    {
      v193 = v7;
      v7 = v104;
      v194 = *v193;
      v195 = v193[1];
      v196 = *(v195 + 24);
      v197 = *(*v193 + 3);
      if (v196 == v197)
      {
        v198 = *(v194 + 34);
        if (((*(v195 + 34) ^ v198) & 0x200) != 0)
        {
          if ((v198 & 0x200) != 0)
          {
            goto LABEL_326;
          }
        }

        else
        {
          v207 = *(v195 + 37);
          v208 = *(v194 + 37);
          if (v207 == v208)
          {
            result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v193[1], v194);
            if (result)
            {
              v195 = *v7;
              goto LABEL_326;
            }
          }

          else if (v207 < v208)
          {
            do
            {
              while (1)
              {
                while (1)
                {
LABEL_326:
                  while (1)
                  {
                    v199 = v193;
                    v193[1] = *v193;
                    v201 = *--v193;
                    v200 = v201;
                    v202 = *(v195 + 24);
                    v203 = *(v201 + 24);
                    if (v202 == v203)
                    {
                      break;
                    }

                    if (v202 <= v203)
                    {
                      goto LABEL_336;
                    }
                  }

                  v204 = *(v200 + 34);
                  if (((*(v195 + 34) ^ v204) & 0x200) == 0)
                  {
                    break;
                  }

                  if ((v204 & 0x200) == 0)
                  {
                    goto LABEL_336;
                  }
                }

                v205 = *(v195 + 37);
                v206 = *(v200 + 37);
                if (v205 != v206)
                {
                  break;
                }

                result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v195, v200);
                if ((result & 1) == 0)
                {
                  goto LABEL_336;
                }
              }
            }

            while (v205 < v206);
LABEL_336:
            *v199 = v195;
            a2 = v213;
          }
        }
      }

      else if (v196 > v197)
      {
        goto LABEL_326;
      }

      v104 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v106)
  {
    return result;
  }

  v107 = 0;
  v108 = v7;
  while (2)
  {
    v109 = v108;
    v108 = v104;
    v110 = *v109;
    v111 = v109[1];
    v112 = *(v111 + 3);
    v113 = *(*v109 + 3);
    if (v112 == v113)
    {
      v114 = *(v110 + 34);
      if (((*(v111 + 17) ^ v114) & 0x200) != 0)
      {
        if ((v114 & 0x200) == 0)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v124 = *(v111 + 37);
        v125 = *(v110 + 37);
        if (v124 == v125)
        {
          result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v109[1], v110);
          if (!result)
          {
            goto LABEL_217;
          }

          v111 = *v108;
          v110 = *v109;
        }

        else if (v124 >= v125)
        {
          goto LABEL_217;
        }
      }
    }

    else if (v112 <= v113)
    {
      goto LABEL_217;
    }

    v109[1] = v110;
    v115 = v7;
    if (v109 == v7)
    {
      goto LABEL_216;
    }

    v116 = v107;
    while (2)
    {
      v117 = (v7 + v116);
      v118 = *(v7 + v116 - 8);
      v119 = *(v111 + 3);
      v120 = *(v118 + 24);
      if (v119 != v120)
      {
        if (v119 <= v120)
        {
          break;
        }

        goto LABEL_203;
      }

      v121 = *(v118 + 34);
      if (((*(v111 + 17) ^ v121) & 0x200) != 0)
      {
        if ((v121 & 0x200) == 0)
        {
          v115 = (v7 + v116);
          goto LABEL_215;
        }

        goto LABEL_203;
      }

      v122 = *(v111 + 37);
      v123 = *(v118 + 37);
      if (v122 == v123)
      {
        result = std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v111, v118);
        if (!result)
        {
          break;
        }

        v118 = *(v117 - 1);
        goto LABEL_203;
      }

      if (v122 < v123)
      {
LABEL_203:
        --v109;
        *v117 = v118;
        v116 -= 8;
        if (!v116)
        {
          v115 = v7;
          goto LABEL_215;
        }

        continue;
      }

      break;
    }

    v115 = v109;
LABEL_215:
    a2 = v213;
LABEL_216:
    *v115 = v111;
LABEL_217:
    v104 = v108 + 1;
    v107 += 8;
    if (v108 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}