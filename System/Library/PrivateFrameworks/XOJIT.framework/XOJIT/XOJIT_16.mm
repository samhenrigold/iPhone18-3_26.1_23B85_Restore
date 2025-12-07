void llvm::jitlink::aarch64::lowerPointer64AuthEdgesToSigningFunction(llvm::jitlink::aarch64 *this, void x1_0, void a3, unint64_t *a4)
{
  v6[36] = *MEMORY[0x277D85DE8];
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(this, "$__ptrauth_sign", 15, a4);
  v5 = *(*llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 56) + 8);
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(v6, *(v5 + 24), *(v5 + 32), *(this + 47));
}

uint64_t *llvm::jitlink::aarch64::writeMovRegImm64Seq<llvm::jitlink::aarch64::lowerPointer64AuthEdgesToSigningFunction(llvm::jitlink::LinkGraph &)::$_0>(uint64_t *result, uint64_t *a2, unsigned int a3, unint64_t a4)
{
  v6 = result;
  v7 = 0;
  for (i = 0; ; i = 1)
  {
    if ((i & 1) == 0 || a4)
    {
      result = llvm::BinaryStreamWriter::writeInteger<unsigned int>(v6, *a2);
      if (*v6)
      {
        break;
      }
    }

    a4 >>= 16;
    v7 += 0x200000;
    if (v7 == 0x800000)
    {
      *v6 = 0;
      return result;
    }
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeInteger<unsigned int>(uint64_t *a1, uint64_t a2)
{
  (*(**(a2 + 24) + 16))(*(a2 + 24));
  result = llvm::WritableBinaryStreamRef::writeBytes((a2 + 8), *(a2 + 56), 4, a1);
  if (!*a1)
  {
    *(a2 + 56) += 4;
  }

  return result;
}

const char *llvm::jitlink::i386::getEdgeKindName(llvm::jitlink::i386 *this)
{
  if ((this - 2) < 0xB)
  {
    return off_279EFB818[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::i386::optimizeGOTAndStubAccesses(llvm::jitlink::i386 *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::blocks(this, v14);
  v12[0] = v14[0];
  v12[1] = v14[1];
  v12[2] = v14[2];
  v13 = v15;
  v3 = v16;
  v4 = v17;
  v5 = v15;
  if (*&v14[0] != v16 || v15 != v17)
  {
    do
    {
      v6 = *v5;
      v7 = v6[5];
      v8 = v6[6];
      while (v7 != v8)
      {
        if (*(v7 + 24) == 12)
        {
          v9 = **(*(**(*(*v7 + 8) + 40) + 8) + 40);
          if (!((**(v9 + 8) - (*v6 + *(v7 + 8)) + (*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + 2147483652u) >> 32))
          {
            *(v7 + 24) = 10;
            *v7 = v9;
          }
        }

        v7 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v12, &v11);
      v5 = v13;
    }

    while (*&v12[0] != v3 || v13 != v4);
  }

  *a2 = 0;
}

const char *llvm::jitlink::loongarch::getEdgeKindName(llvm::jitlink::loongarch *this)
{
  if ((this - 2) < 0xA)
  {
    return off_279EFB870[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

const char *llvm::jitlink::riscv::getEdgeKindName(llvm::jitlink::riscv *this)
{
  if ((this - 2) < 0x1D)
  {
    return off_279EFB8C0[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

const char *llvm::jitlink::x86_64::getEdgeKindName(llvm::jitlink::x86_64 *this)
{
  if (this - 2) < 0x17 && ((0x5FFFFFu >> (this - 2)))
  {
    return off_279EFB9A8[(this - 2)];
  }

  v2 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v2 = "Keep-Alive";
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::x86_64::optimizeGOTAndStubAccesses(llvm::jitlink::x86_64 *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::blocks(this, v23);
  v21[0] = v23[0];
  v21[1] = v23[1];
  v21[2] = v23[2];
  v22 = v24;
  v2 = v25;
  v3 = v26;
  v4 = v24;
  if (*&v23[0] != v25 || v24 != v26)
  {
    do
    {
      v5 = *v4;
      v6 = v5[5];
      v7 = v5[6];
      while (v6 != v7)
      {
        v8 = *(v6 + 24);
        if ((v8 - 18) >= 2)
        {
          if (v8 == 14)
          {
            v10 = **(*(**(*(*v6 + 8) + 40) + 8) + 40);
            if (!((**(v10 + 8) - (*v5 + *(v6 + 8)) + (*(v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + 2147483652u) >> 32))
            {
              *(v6 + 24) = 11;
LABEL_23:
              *v6 = v10;
            }
          }
        }

        else
        {
          v9 = *(v6 + 8);
          v10 = **(*(*v6 + 8) + 40);
          v11 = (*(v10 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v10 + 8);
          v12 = v11 - (*v5 + v9) + 2147483652u;
          v13 = HIDWORD(v11);
          v14 = HIDWORD(v12);
          if (v13)
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            v16 = v5[3] + v9;
            v17 = *(v16 - 2);
            if (v17 == 139 && !v14)
            {
              *(v16 - 2) = -115;
              *(v6 + 24) = 7;
              *v6 = v10;
              *(v6 + 16) -= 4;
              goto LABEL_24;
            }

            if (v17 == 255 && !v13)
            {
              if (*(v16 - 1) == 21)
              {
                *(v16 - 2) = -6041;
              }

              else
              {
                *(v16 - 2) = -23;
                *(v16 + 3) = -112;
                --*(v6 + 8);
              }

              *(v6 + 24) = 3;
              goto LABEL_23;
            }
          }
        }

LABEL_24:
        v6 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v21, v20);
      v4 = v22;
    }

    while (*&v21[0] != v2 || v22 != v3);
  }

  *a2 = 0;
}

void *llvm::orc::walkLibunwindEHFrameSection<llvm::Error (*)(void const*)>(void *result, unsigned int *a2, uint64_t a3, uint64_t (*a4)(unsigned int *))
{
  v4 = result;
  if (a3 && (v5 = a2, (v6 = *a2) != 0))
  {
    v8 = (a2 + a3);
    while (1)
    {
      v9 = v6 == 0xFFFFFFFFLL ? 12 : 4;
      v10 = v6 == 0xFFFFFFFFLL ? *(v5 + 1) + 12 : v6 + 4;
      if (*(v5 + v9))
      {
        result = a4(v5);
        if (*v4)
        {
          break;
        }
      }

      v5 = (v5 + v10);
      if (v5 != v8)
      {
        v6 = *v5;
        if (*v5)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
LABEL_14:
    *v4 = 0;
  }

  return result;
}

char *llvm::orc::shared::detail::WrapperFunctionHandlerHelper<llvm::Error ()(llvm::orc::ExecutorAddrRange),llvm::orc::shared::WrapperFunction<llvm::orc::shared::SPSError ()(llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>)>::ResultSerializer,llvm::orc::shared::SPSTuple<llvm::orc::shared::SPSExecutorAddr,llvm::orc::shared::SPSExecutorAddr>>::apply<llvm::Error (&)(llvm::orc::ExecutorAddrRange)>(char **a1, void (*a2)(void ***__return_ptr, void, void), void *a3, unint64_t a4)
{
  v33[7] = *MEMORY[0x277D85DE8];
  if (a4 >= 8 && (a4 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    a2(&v26, *a3, a3[1]);
    v5 = v26;
    v26 = 0;
    if (v5)
    {
      v27 = 1;
      v32[0] = v33;
      v32[1] = 0x200000000;
      v29 = v32;
      v30 = v5;
      llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v30, &v29);
      if (v30)
      {
        (*(*v30 + 1))(v30);
      }

      v6 = v32[0];
      v7 = v32[1];
      memset(&__p, 0, sizeof(__p));
      if (LODWORD(v32[1]))
      {
        v8 = 24 * LODWORD(v32[1]);
        v9 = LODWORD(v32[1]) - 1;
        v10 = v32[0] + 23;
        v11 = v8;
        do
        {
          v12 = *v10;
          if (v12 < 0)
          {
            v12 = *(v10 - 15);
          }

          v9 += v12;
          v10 += 24;
          v11 -= 24;
        }

        while (v11);
        std::string::reserve(&__p, v9);
        v13 = v6[23];
        if (v13 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v13 >= 0)
        {
          v15 = v6[23];
        }

        else
        {
          v15 = *(v6 + 1);
        }

        std::string::append(&__p, v14, v15);
        if (v7 != 1)
        {
          v16 = v6 + 24;
          v17 = v8 - 24;
          do
          {
            std::string::append(&__p, "\n", 1uLL);
            v18 = v16[23];
            if (v18 >= 0)
            {
              v19 = v16;
            }

            else
            {
              v19 = *v16;
            }

            if (v18 >= 0)
            {
              v20 = v16[23];
            }

            else
            {
              v20 = *(v16 + 1);
            }

            std::string::append(&__p, v19, v20);
            v16 += 24;
            v17 -= 24;
          }

          while (v17);
        }
      }

      llvm::SmallVector<std::string,2u>::~SmallVector(v32);
      LOBYTE(v5) = v27;
      if (v27)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v22 = size + 9;
        v32[0] = 0;
        v32[1] = (size + 9);
        if (size > 0xFFFFFFFFFFFFFFF6)
        {
          v23 = v32;
          v30 = v32;
          v31 = size + 9;
          if (size == -9)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = malloc_type_malloc(size + 9, 0x100004077774924uLL);
          v32[0] = v23;
          LOBYTE(v5) = v27;
        }

LABEL_36:
        *v23 = v5;
        v30 = (v23 + 1);
        v31 = v22 - 1;
        if ((v5 & 1) == 0 || llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(&v30, &__p))
        {
          *a1 = *v32;
          v32[0] = 0;
          v32[1] = 0;
          goto LABEL_41;
        }

LABEL_40:
        llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a1, "Error serializing arguments to blob in call");
LABEL_41:
        if (v32[1] < 9)
        {
          if (v32[1])
          {
            goto LABEL_46;
          }

          v25 = v32[0];
          if (!v32[0])
          {
            goto LABEL_46;
          }
        }

        else
        {
          v25 = v32[0];
        }

        free(v25);
LABEL_46:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        result = v26;
        if (v26)
        {
          return (*(*v26 + 8))(v26);
        }

        return result;
      }
    }

    else
    {
      v27 = 0;
      memset(&__p, 0, sizeof(__p));
    }

    *v32 = xmmword_2750C1210;
    v23 = v32;
    v22 = 1;
    goto LABEL_36;
  }

  return llvm::orc::shared::WrapperFunctionResult::createOutOfBandError(a1, "Could not deserialize arguments for wrapper function call");
}

uint64_t llvm::orc::runAsMain(uint64_t (*a1)(void, uint64_t), const void **a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  v6 = *(a4 + 16);
  v7 = a3 + (v6 & 1);
  if (v7)
  {
    if (!(v7 >> 61))
    {
      v23[4] = &__p;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v7);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v8 = a3 + (v6 & 1);
  v9 = v8 + 1;
  if (v8 != -1)
  {
    if (!(v9 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v9);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (*(a4 + 16))
  {
    operator new[]();
  }

  if (a3)
  {
    operator new[]();
  }

  v23[0] = 0;
  std::vector<char *>::push_back[abi:nn200100](v19, v23);
  v10 = *(a4 + 16);
  v11 = v19[0];
  v12 = a1(v10, v19[0]);
  if (v11)
  {
    operator delete(v11);
  }

  v13 = __p;
  if (__p)
  {
    v14 = v21;
    v15 = __p;
    if (v21 != __p)
    {
      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          MEMORY[0x277C69E10](v16, 0x1000C8077774924);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v21 = v13;
    operator delete(v15);
  }

  return v12;
}

uint64_t *std::vector<std::unique_ptr<char []>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
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

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void std::vector<char *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
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

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x277C69E10](v4, 0x1000C8077774924);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::orc::shared::runFinalizeActions(llvm::orc::shared::WrapperFunctionCall **a1@<X0>, uint64_t a2@<X8>)
{
  v26 = 0uLL;
  v27 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      if (*(v7 + 7))
      {
        ++v6;
      }

      v7 = (v7 + 112);
    }

    while (v7 != v5);
    if (v6)
    {
      if (v6 <= 0x492492492492492)
      {
        v32 = &v26;
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(v6);
      }

LABEL_53:
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }
  }

  if (v4 == v5)
  {
LABEL_33:
    while (v5 != v4)
    {
      v5 = (v5 - 112);
      std::allocator<llvm::orc::shared::AllocActionCallPair>::destroy[abi:nn200100](a1, v5);
    }

    a1[1] = v4;
    *(a2 + 24) &= ~1u;
    *a2 = v26;
    *(a2 + 16) = v27;
    v26 = 0uLL;
    v27 = 0;
  }

  else
  {
    v23 = a2;
    while (1)
    {
      if (*v4)
      {
        llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(&v25, v4);
        v8 = v25;
        if (v25)
        {
          break;
        }
      }

      v9 = *(v4 + 56);
      if (v9)
      {
        v10 = *(&v26 + 1);
        if (*(&v26 + 1) >= v27)
        {
          v12 = 0x6DB6DB6DB6DB6DB7 * ((*(&v26 + 1) - v26) >> 3) + 1;
          if (v12 > 0x492492492492492)
          {
            goto LABEL_53;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v27 - v26) >> 3) > v12)
          {
            v12 = 0xDB6DB6DB6DB6DB6ELL * ((v27 - v26) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v27 - v26) >> 3)) >= 0x249249249249249)
          {
            v13 = 0x492492492492492;
          }

          else
          {
            v13 = v12;
          }

          v32 = &v26;
          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(v13);
          }

          v14 = 8 * ((*(&v26 + 1) - v26) >> 3);
          *v14 = v9;
          *(v14 + 8) = v14 + 32;
          *(v14 + 16) = xmmword_2750C12E0;
          if (*(v4 + 72))
          {
            llvm::SmallVectorImpl<char>::operator=(v14 + 8, (v4 + 64));
          }

          v11 = v14 + 56;
          v15 = v14 + v26 - *(&v26 + 1);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>,llvm::orc::shared::WrapperFunctionCall*>(v26, *(&v26 + 1), v15);
          v16 = v26;
          v17 = v27;
          *&v26 = v15;
          *(&v26 + 1) = v14 + 56;
          v27 = 0;
          v31[2] = v16;
          v31[3] = v17;
          v31[0] = v16;
          v31[1] = v16;
          std::__split_buffer<llvm::orc::shared::WrapperFunctionCall>::~__split_buffer(v31);
        }

        else
        {
          **(&v26 + 1) = v9;
          *(v10 + 8) = v10 + 32;
          *(v10 + 16) = xmmword_2750C12E0;
          if (*(v4 + 72))
          {
            llvm::SmallVectorImpl<char>::operator=(v10 + 8, (v4 + 64));
          }

          v11 = v10 + 56;
        }

        *(&v26 + 1) = v11;
      }

      v4 += 112;
      if (v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        a2 = v23;
        goto LABEL_33;
      }
    }

    v25 = 0;
    v18 = 0;
    if (*(&v26 + 1) == v26)
    {
      v21 = v23;
    }

    else
    {
      v19 = 0x6DB6DB6DB6DB6DB7 * ((*(&v26 + 1) - v26) >> 3);
      v20 = (*(&v26 + 1) - 56);
      v21 = v23;
      do
      {
        llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(&v28, v20);
        v30 = v28;
        v31[0] = v18;
        v28 = 0;
        llvm::ErrorList::join(v31, &v30, &v29);
        if (v30)
        {
          (*(*v30 + 1))(v30);
        }

        if (v31[0])
        {
          (*(*v31[0] + 1))(v31[0]);
        }

        v18 = v29;
        v29 = 0;
        if (v28)
        {
          (*(*v28 + 1))(v28);
        }

        v20 = (v20 - 56);
        --v19;
      }

      while (v19);
    }

    v30 = v18;
    v31[0] = v8;
    llvm::ErrorList::join(v31, &v30, &v24);
    if (v30)
    {
      (*(*v30 + 1))(v30);
    }

    if (v31[0])
    {
      (*(*v31[0] + 1))(v31[0]);
    }

    *(v21 + 24) |= 1u;
    v22 = v25;
    *v21 = v24;
    v24 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  v31[0] = &v26;
  std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](v31);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::orc::shared::WrapperFunctionCall>,llvm::orc::shared::WrapperFunctionCall*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      v8 = a3 + v6;
      *v8 = *(v5 + v6);
      *(v8 + 16) = xmmword_2750C12E0;
      *(v8 + 8) = a3 + v6 + 32;
      if (*(v5 + v6 + 16))
      {
        llvm::SmallVectorImpl<char>::operator=(a3 + v6 + 8, (v7 + 8));
      }

      v6 += 56;
    }

    while (v7 + 56 != a2);
    do
    {
      v9 = *(v5 + 8);
      if ((v5 + 32) != v9)
      {
        free(v9);
      }

      v5 += 56;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<llvm::orc::shared::WrapperFunctionCall>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 56;
    v4 = *(v2 - 48);
    if (v4 == (v2 - 24))
    {
      v2 -= 56;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::orc::isMachOInitializerSection(void *__s2, size_t __n, void *a3, size_t a4)
{
  v8 = 352;
  for (i = &qword_2815AB950; ; i += 2)
  {
    v10 = *i;
    if (*i >= __n)
    {
      v11 = *(i - 1);
      if (!__n || !memcmp(*(i - 1), __s2, __n))
      {
        v12 = v10 >= 7 ? 7 : v10;
        if (v10 - v12 == a4 && (v10 < 8 || !memcmp((v11 + v12), a3, a4)))
        {
          break;
        }
      }
    }

    v8 -= 16;
    if (!v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t llvm::orc::isMachOInitializerSection(void *__s2, size_t __n)
{
  v4 = 352;
  for (i = &qword_2815AB950; *i != __n || __n && memcmp(*(i - 1), __s2, __n); i += 2)
  {
    v4 -= 16;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

BOOL llvm::orc::isELFInitializerSection(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >= 0xB)
  {
    v2 = *a1 == 0x72615F74696E692ELL && *(a1 + 3) == 0x79617272615F7469;
    if (v2 && (a2 == 11 || *(a1 + 11) == 46))
    {
      return 1;
    }
  }

  return result;
}

double _GLOBAL__sub_I_ObjectFormats_cpp()
{
  llvm::orc::MachOInitSectionNames = llvm::orc::MachOModInitFuncSectionName;
  unk_2815AB958 = llvm::orc::MachOObjCCatListSectionName;
  xmmword_2815AB968 = llvm::orc::MachOObjCCatList2SectionName;
  unk_2815AB978 = llvm::orc::MachOObjCClassListSectionName;
  xmmword_2815AB988 = llvm::orc::MachOObjCClassNameSectionName;
  unk_2815AB998 = llvm::orc::MachOObjCClassRefsSectionName;
  xmmword_2815AB9A8 = llvm::orc::MachOObjCConstSectionName;
  unk_2815AB9B8 = llvm::orc::MachOObjCDataSectionName;
  xmmword_2815AB9C8 = llvm::orc::MachOObjCImageInfoSectionName;
  unk_2815AB9D8 = llvm::orc::MachOObjCMethNameSectionName;
  xmmword_2815AB9E8 = llvm::orc::MachOObjCMethTypeSectionName;
  unk_2815AB9F8 = llvm::orc::MachOObjCNLCatListSectionName;
  xmmword_2815ABA08 = llvm::orc::MachOObjCNLClassListSectionName;
  unk_2815ABA18 = llvm::orc::MachOObjCProtoListSectionName;
  xmmword_2815ABA28 = llvm::orc::MachOObjCProtoRefsSectionName;
  unk_2815ABA38 = llvm::orc::MachOObjCSelRefsSectionName;
  xmmword_2815ABA48 = llvm::orc::MachOSwift5ProtoSectionName;
  unk_2815ABA58 = llvm::orc::MachOSwift5ProtosSectionName;
  xmmword_2815ABA68 = llvm::orc::MachOSwift5TypesSectionName;
  unk_2815ABA78 = llvm::orc::MachOSwift5TypeRefSectionName;
  result = *&llvm::orc::MachOSwift5FieldMetadataSectionName;
  xmmword_2815ABA88 = llvm::orc::MachOSwift5FieldMetadataSectionName;
  unk_2815ABA98 = llvm::orc::MachOSwift5EntrySectionName;
  return result;
}

void anonymous namespace::getOrcErrCat(_anonymous_namespace_ *this)
{
  {
  }
}

llvm::raw_ostream *llvm::orc::DuplicateDefinition::log(llvm::orc::DuplicateDefinition *this, llvm::raw_ostream *a2)
{
  if (*(this + 56) == 1)
  {
    v4 = *(a2 + 4);
    if ((*(a2 + 3) - v4) > 2)
    {
      *(v4 + 2) = 32;
      *v4 = 28233;
      *(a2 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(a2, "In ", 3uLL);
    }

    v5 = *(this + 55);
    if (v5 >= 0)
    {
      v6 = this + 32;
    }

    else
    {
      v6 = *(this + 4);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 55);
    }

    else
    {
      v7 = *(this + 5);
    }

    llvm::raw_ostream::write(a2, v6, v7);
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 1uLL)
    {
      *v8 = 8236;
      *(a2 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a2, ", ", 2uLL);
    }
  }

  v9 = *(a2 + 4);
  if (*(a2 + 3) - v9 > 0x1FuLL)
  {
    qmemcpy(v9, "duplicate definition of symbol '", 32);
    *(a2 + 4) += 32;
  }

  else
  {
    llvm::raw_ostream::write(a2, "duplicate definition of symbol '", 0x20uLL);
  }

  v12 = *(this + 1);
  v11 = this + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  result = llvm::raw_ostream::write(a2, v14, v15);
  v17 = *(a2 + 4);
  if (*(a2 + 3) == v17)
  {

    return llvm::raw_ostream::write(a2, "'", 1uLL);
  }

  else
  {
    *v17 = 39;
    ++*(a2 + 4);
  }

  return result;
}

void llvm::orc::DuplicateDefinition::~DuplicateDefinition(void **this)
{
  *this = &unk_2883ED808;
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883ED808;
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::OrcErrorCategory::~OrcErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void *llvm::JITSymbolFlags::fromObjectSymbol@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  result = (*(**(a1 + 8) + 40))(&v11);
  if (v12)
  {
    v5 = v11;
    *(a2 + 8) |= 1u;
    *a2 = v5;
  }

  else
  {
    v6 = v11;
    result = (*(**(a1 + 8) + 120))(&v9);
    if (v10)
    {
      v7 = v9;
      *(a2 + 8) |= 1u;
      *a2 = v7;
    }

    else
    {
      v8 = (v6 >> 1) & 2 | (v6 >> 2) & 0x14;
      if (v9 == 5)
      {
        LOWORD(v8) = v8 | 0x20;
      }

      *(a2 + 8) &= ~1u;
      *a2 = v8 << 8;
    }

    if (v12)
    {
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void std::vector<unsigned long long>::push_back[abi:nn200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t llvm::object::ObjectFile::getCommonSymbolSize(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(&v8);
  if (v9)
  {
    v7 = v8;
    v8 = 0;
    llvm::report_fatal_error(&v7);
  }

  v4 = (*(*a1 + 112))(a1, a2);
  if (v9)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      (*(*v5 + 1))(v5);
    }
  }

  return v4;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(*a1, *(a1 + 8), &v21);
  if ((v25 & 1) != 0 && (v6 = v21, *&v21 = 0, v6))
  {
    *(a3 + 152) |= 1u;
    *a3 = v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v11 = v21;
    *__p = v22;
    v22 = 0uLL;
    v8 = v23;
    v23 = 0;
    v13 = v8;
    v14[0] = v15;
    v14[1] = 0;
    v14[2] = 0;
    if (v24[1])
    {
      llvm::SmallVectorImpl<char>::operator=(v14, v24);
    }

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(v16, v15, &v11, 0, 0, 0);
    if (v14[0] != v15)
    {
      free(v14[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::initContent(v16, v15), (v9 = *&v15[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(a3, v16);
    }

    v16[0] = &unk_2883ED8A0;
    if (v19 != &v20)
    {
      free(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v21);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::initContent(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v9);
  v4 = v9;
  if ((v11 & 1) == 0)
  {
    if (v10)
    {
      v5 = 40 * v10;
      v6 = (v9 + 4);
      while (1)
      {
        v7 = *v6;
        if (*v6 == 2)
        {
          break;
        }

        if (v7 != 18)
        {
          if (v7 != 11)
          {
            goto LABEL_11;
          }

          v8 = (a1 + 120);
          if (*(a1 + 120))
          {
            goto LABEL_11;
          }

LABEL_10:
          *v8 = v6 - 1;
          goto LABEL_11;
        }

        v8 = (a1 + 136);
        if (!*(a1 + 136))
        {
          goto LABEL_10;
        }

LABEL_11:
        v6 += 10;
        v5 -= 40;
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v8 = (a1 + 128);
      if (*(a1 + 128))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    v4 = 0;
    *(a1 + 48) = 1;
  }

  *a2 = v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883ED8A0;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883ED8A0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a3 + 48))
  {
    llvm::SmallVectorImpl<char>::operator=(a1 + 96, a3 + 40);
  }

  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  return a1;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883ED8A0;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolFlags(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v33, a1 + 7);
  v6 = v33;
  if (v34)
  {
    v33 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v6;
    goto LABEL_83;
  }

  v7 = *(v33 + 12);
  if ((v7 & 0xF0) == 0x20)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x10)
  {
    v8 = 0;
  }

  if (*(v33 + 14) == -15)
  {
    v8 |= 8u;
  }

  if ((v7 & 0xF) - 3 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x80;
  }

  v10 = a1[16];
  if (v10)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, v10, &v30);
    v11 = v30;
    if (v32)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v11;
      goto LABEL_83;
    }

    v12 = v6 == v30;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[15];
  if (v13)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1 + 7, v13, &v30);
    v11 = v30;
    if (v32)
    {
      goto LABEL_19;
    }

    v12 |= v6 == v30;
  }

  v14 = v9 | 0x80;
  if (v12)
  {
    v9 |= 0x80u;
  }

  v15 = *(a1[7] + 18);
  switch(v15)
  {
    case 183:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v29 = v30;
        v30 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v29);
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        if (v32)
        {
          v16 = v30;
          v30 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v9;
      }

      else
      {
        v17 = v9;
        if (v31 >= 2)
        {
          v17 = v14;
          if (*v30 != 25636)
          {
            if (*v30 == 30756)
            {
              v17 = v14;
            }

            else
            {
              v17 = v9;
            }
          }
        }
      }

      v9 = v17;
      break;
    case 40:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v29 = v30;
        v30 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v29);
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        if (v32)
        {
          v18 = v30;
          v30 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = v9;
        goto LABEL_62;
      }

      if (v31)
      {
        v19 = v9;
        if (v31 == 1)
        {
LABEL_62:
          if ((v6[6] & 0xF) == 2)
          {
            v19 = v19 & 0xFFFFFEFF | ((*(v6 + 1) & 1) << 8);
          }

          v9 = v19;
          break;
        }

        if (*v30 != 25636)
        {
          v19 = v14;
          if (*v30 != 29732)
          {
            if (*v30 == 24868)
            {
              v19 = v14;
            }

            else
            {
              v19 = v9;
            }
          }

          goto LABEL_62;
        }
      }

      v19 = v14;
      goto LABEL_62;
    case 243:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v20 = v30;
        v30 = 0;
        v28 = v20;
        llvm::consumeError(&v28);
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }
      }

      else if (!v31)
      {
        v9 = v14;
      }

      if (v32)
      {
        v21 = v30;
        v30 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }

      break;
  }

  if (v6[7])
  {
    v22 = *(v6 + 12);
    v23 = v22 & 0xF;
    if (v23 != 5 && v6[7] != 65522)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v9 |= 1u;
    v22 = *(v6 + 12);
    v23 = v22 & 0xF;
    if (v23 != 5)
    {
      goto LABEL_71;
    }
  }

  v9 |= 0x10u;
LABEL_71:
  v24 = v22 >> 4;
  if (v24 <= 0xA && ((1 << v24) & 0x406) != 0)
  {
    v25 = *(v6 + 13) & 3;
    if (v25 == 3 || (*(v6 + 13) & 3) == 0)
    {
      v9 |= 0x40u;
    }
  }

  else
  {
    v25 = *(v6 + 13) & 3;
  }

  if (v23 == 10)
  {
    v26 = v9 | 0x20;
  }

  else
  {
    v26 = v9;
  }

  if (v25 == 2)
  {
    v26 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v26;
LABEL_83:
  if (v34)
  {
    v27 = v33;
    v33 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = *(v1 + 20) > 0xFu;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, *(v1 + 20) >> 4);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolName(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v31, a1 + 7);
  if (v32)
  {
    v6 = v31;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a2, &v29, a1 + 7);
  v7 = v29;
  if ((v30 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(v29 + 24), &v27, a1 + 7);
    v8 = v27;
    if (v28)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
LABEL_26:
      if (v30)
      {
        v14 = v29;
        v29 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      goto LABEL_29;
    }

    *&v23 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStringTable(a1 + 7, v27, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v23, v25);
    if (v26)
    {
      v9 = v25[0];
      *(a3 + 16) |= 1u;
      *a3 = v9;
LABEL_23:
      if (v28)
      {
        v13 = v27;
        v27 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      goto LABEL_26;
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getName(v31, v25[0], v25[1], &v23);
    v10 = v24;
    if ((v24 & 1) != 0 || !*(&v23 + 1))
    {
      if ((*(v31 + 12) & 0xF) == 3)
      {
        (*(*a1 + 128))(&v20, a1, a2);
        if ((v22 & 1) == 0)
        {
          if (v24)
          {
            v16 = v23;
            *&v23 = 0;
          }

          else
          {
            v16 = 0;
          }

          v19 = v16;
          llvm::consumeError(&v19);
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          (*(*v21 + 144))(v21, v20);
          if (v22)
          {
            v17 = v20;
            v20 = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }

          if (v24)
          {
            v18 = v23;
            *&v23 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          goto LABEL_20;
        }

        v11 = v20;
        v20 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v10 = v24;
      }

      *(a3 + 16) = *(a3 + 16) & 0xFE | v10 & 1;
      if (v10)
      {
        *a3 = v23;
LABEL_20:
        if (v26)
        {
          v12 = v25[0];
          v25[0] = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(a3 + 16) = *(a3 + 16) & 0xFE | v24 & 1;
    }

    *a3 = v23;
    goto LABEL_20;
  }

  *(a3 + 16) |= 1u;
  *a3 = v7;
LABEL_29:
  if (v32)
  {
    v15 = v31;
    v31 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolAddress(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ObjectFile::getSymbolValue(a1, a2, &v25);
  if (v26)
  {
    v6 = v25;
LABEL_4:
    *(a3 + 8) |= 1u;
    *a3 = v6;
    return;
  }

  v7 = v25;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v23, (a1 + 56));
  v6 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v8 = *(v23 + 14);
  if ((v8 - 65521) < 2 || v8 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v7;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a2, &v21, (a1 + 56));
  if (v22)
  {
    v10 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v10;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 1)
  {
    v11 = *(a1 + 136);
    if (v11)
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable((a1 + 56), v11, &v16);
      if (v17)
      {
        v10 = v16;
        goto LABEL_14;
      }

      v12 = *(&v16 + 1);
      v13 = v16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *&v16 = v13;
    *(&v16 + 1) = v12;
    v17 = 1;
    v18 = 0;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v10 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v7 += v19[3];
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v7;
LABEL_25:
  if (v22)
  {
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v24)
  {
    v15 = v23;
    v23 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolValueImpl(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v7, (a1 + 56));
  if (v8)
  {
    v6 = v7;
    v7 = 0;
    llvm::report_fatal_error(&v6);
  }

  result = *(v7 + 4);
  if (*(v7 + 14) != -15)
  {
    v4 = *(*(a1 + 56) + 18);
    if ((v4 == 40 || v4 == 8) && (*(v7 + 12) & 0xF) == 2)
    {
      return result & 0xFFFFFFFE;
    }
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolAlignment(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v4, (a1 + 56));
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  if (*(v4 + 14) == -14)
  {
    return *(v4 + 4);
  }

  else
  {
    return 0;
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolType(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v7, (a1 + 56));
  v4 = v7;
  if (v8)
  {
    *(a3 + 8) |= 1u;
    *a3 = v4;
    return;
  }

  v5 = *(v7 + 12) & 0xF;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      *(a3 + 8) &= ~1u;
      v6 = 3;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      *(a3 + 8) &= ~1u;
      v6 = 4;
      goto LABEL_16;
    }

    if (v5 != 5)
    {
LABEL_14:
      *(a3 + 8) &= ~1u;
      v6 = 1;
      goto LABEL_16;
    }

LABEL_11:
    *(a3 + 8) &= ~1u;
    v6 = 2;
    goto LABEL_16;
  }

  if ((*(v7 + 12) & 0xF) == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = 0;
    return;
  }

  if (v5 == 1)
  {
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  *(a3 + 8) &= ~1u;
  v6 = 5;
LABEL_16:
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v12, a1 + 7);
  if (v13)
  {
    v6 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(v3, &v10, a1 + 7);
    if (v11)
    {
      v7 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v7;
    }

    else
    {
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection(a1, v12, v10, a3);
      if (v11)
      {
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }
    }

    if (v13)
    {
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v7);
  if (v8)
  {
    v3 = v7;
    v7 = 0;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v4 = v7;
  if (v8)
  {
    v7 = 0;
    if (v4)
    {
      (*(*v4 + 1))(v4);
    }
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContents@<X0>(llvm::object *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1] == 8)
  {
    v4 = *(result + 2);
    *(a3 + 16) &= ~1u;
    *a3 = v4;
    *(a3 + 8) = 0;
  }

  else
  {
    v6 = (result + 16);
    v7 = *(result + 2);
    v11[0] = *(result + 1);
    v11[1] = v7;
    result = llvm::object::Binary::checkOffset(v11, a2[4] + *&v11[0], a2[5], &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = a2[5];
      v10 = *v6 + a2[4];
      *(a3 + 16) &= ~1u;
      *a3 = v10;
      *(a3 + 8) = v9;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 1)
  {
    return 0;
  }

  if ((*(a2 + 8) & 2) != 0)
  {
    return (*(a2 + 8) & 4) == 0;
  }

  return 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (v2 & 4) != 0 || (*(a2 + 8) & 1) == 0;
  return (v2 & 2) != 0 && v3;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 8)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 8) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::isDebugSection(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v6);
  if (v8)
  {
    v5 = v6;
    v6 = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (v8)
    {
      result = v6;
      v6 = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v7 < 6)
  {
    return 0;
  }

  if (*v6 == 1650811950 && *(v6 + 4) == 26485)
  {
    return 1;
  }

  if (v7 == 6)
  {
    return 0;
  }

  if (*v6 == 1701083694 && *(v6 + 3) == 1735746149)
  {
    return 1;
  }

  if (v7 != 10)
  {
    return 0;
  }

  return *v6 == 0x646E695F6264672ELL && *(v6 + 8) == 30821;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v5);
  result = v5;
  if ((v6 & 1) == 0)
  {
    return ((a2 - v5) / *(*(a1 + 56) + 46));
  }

  v5 = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_rel_end(void *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = a2[1];
  if (v5 == 4 || v5 == 9)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(RelSection + 6), &v16, a1 + 7);
    if (v17)
    {
      v9 = v16;
      v16 = 0;
      v11 = v9;
      *&v12.__val_ = llvm::errorToErrorCode(&v11);
      v12.__cat_ = v10;
      std::error_code::message(&v13, &v12);
      v15 = 260;
      v14 = &v13;
      llvm::report_fatal_error(&v14, 1);
    }

    return v4 | ((a2[5] / a2[9] + HIDWORD(v4)) << 32);
  }

  return v4;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocatedSection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  if (v5 == 4 || v5 == 9)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(*(a2 + 28), &v10, a1 + 7);
    v7 = v10;
    if (v11)
    {
      *(a3 + 16) |= 1u;
    }

    else
    {
      *(a3 + 16) &= ~1u;
      *(a3 + 8) = a1;
    }

    *a3 = v7;
  }

  else
  {
    v8 = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = v8;
    *(a3 + 8) = v9;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationOffset(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  return *Rel;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationSymbol(uint64_t a1, unint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  v6 = *(Rel + 1);
  if (v6 > 0xFF)
  {
    return *(RelSection + 6) | ((v6 >> 8) << 32);
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationType(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) == 9)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2);
  }

  return *(Rel + 4);
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1 + 7;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v28);
  if ((v30 & 1) == 0 && v29)
  {
    v4 = v28;
    v5 = v28 + 40 * v29;
    do
    {
      if (*(v4 + 4) == 6)
      {
        v6 = (*(v4 + 16) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 17 || v7 == 7 || v7 == 23)
            {
              v24 = *(v8 - 1);
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v24);
            }

            v9 = *v8;
            v8 += 2;
            v7 = v9;
          }

          while (v9);
        }
      }

      v4 += 40;
    }

    while (v4 != v5);
    if (v29)
    {
      v10 = 0;
      v11 = v28;
      v12 = v28 + 40 * v29;
      do
      {
        v13 = __p;
        if (__p != v26)
        {
          while (*v13 != *(v11 + 12))
          {
            if (++v13 == v26)
            {
              goto LABEL_33;
            }
          }
        }

        if (v13 != v26)
        {
          v14 = *(a2 + 16);
          if (v10 >= v14)
          {
            v15 = (v10 - *a2) >> 4;
            if ((v15 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v16 = v14 - *a2;
            v17 = v16 >> 3;
            if (v16 >> 3 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF0)
            {
              v18 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v18);
            }

            v19 = (16 * v15);
            *v19 = v11;
            v19[1] = a1;
            v10 = (16 * v15 + 16);
            v20 = *(a2 + 8) - *a2;
            v21 = 16 * v15 - v20;
            memcpy(v19 - v20, *a2, v20);
            v22 = *a2;
            *a2 = v21;
            *(a2 + 8) = v10;
            *(a2 + 16) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v10 = v11;
            v10[1] = a1;
            v10 += 2;
          }

          *(a2 + 8) = v10;
        }

LABEL_33:
        v11 += 40;
      }

      while (v11 != v12);
    }
  }

  if (v30)
  {
    v23 = v28;
    v28 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_begin(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v2);
  result = v2;
  if (v3)
  {
    v2 = 0;
    if (result)
    {
      (*(*result + 8))(result);
      return 0;
    }
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::section_end(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), v2);
  result = v2[0];
  if ((v3 & 1) == 0)
  {
    return v2[0] + 40 * v2[1];
  }

  v2[0] = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getFileFormatName(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 4);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
    }

    v5 = *(v3 + 18);
    if (v5 > 82)
    {
      if (v5 <= 223)
      {
        if (v5 > 104)
        {
          if (v5 == 105)
          {
            return "elf32-msp430";
          }

          if (v5 == 164)
          {
            return "elf32-hexagon";
          }
        }

        else
        {
          if (v5 == 83)
          {
            return "elf32-avr";
          }

          if (v5 == 94)
          {
            return "elf32-xtensa";
          }
        }
      }

      else if (v5 <= 243)
      {
        if (v5 == 224)
        {
          return "elf32-amdgpu";
        }

        if (v5 == 243)
        {
          return "elf32-littleriscv";
        }
      }

      else
      {
        switch(v5)
        {
          case 244:
            return "elf32-lanai";
          case 252:
            return "elf32-csky";
          case 258:
            return "elf32-loongarch";
        }
      }

      return "elf32-unknown";
    }

    if (v5 > 7)
    {
      if (v5 > 19)
      {
        switch(v5)
        {
          case 20:
            return "elf32-powerpcle";
          case 40:
            return "elf32-littlearm";
          case 62:
            return "elf32-x86-64";
        }

        return "elf32-unknown";
      }

      if (v5 == 8)
      {
        return "elf32-mips";
      }

      if (v5 != 18)
      {
        return "elf32-unknown";
      }

      return "elf32-sparc";
    }

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        return "elf32-m68k";
      }

      if (v5 == 6)
      {
        return "elf32-iamcu";
      }
    }

    else
    {
      if (v5 == 2)
      {
        return "elf32-sparc";
      }

      if (v5 == 3)
      {
        return "elf32-i386";
      }
    }

    return "elf32-unknown";
  }

  v7 = *(v3 + 18);
  if (v7 > 182)
  {
    if (v7 > 246)
    {
      switch(v7)
      {
        case 247:
          return "elf64-bpf";
        case 251:
          return "elf64-ve";
        case 258:
          return "elf64-loongarch";
      }
    }

    else
    {
      switch(v7)
      {
        case 183:
          return "elf64-littleaarch64";
        case 224:
          return "elf64-amdgpu";
        case 243:
          return "elf64-littleriscv";
      }
    }
  }

  else if (v7 > 21)
  {
    switch(v7)
    {
      case 22:
        return "elf64-s390";
      case 43:
        return "elf64-sparc";
      case 62:
        return "elf64-x86-64";
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        return "elf64-i386";
      case 8:
        return "elf64-mips";
      case 21:
        return "elf64-powerpcle";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getArch(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 18);
  if (v4 > 0x52)
  {
    if (*(v3 + 18) > 0xF2u)
    {
      if (*(v3 + 18) > 0xFAu)
      {
        if (v4 == 251)
        {
          return 60;
        }

        if (v4 == 252)
        {
          return 10;
        }

        if (v4 != 258)
        {
          return 0;
        }

        v9 = *(v3 + 4);
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            return 14;
          }

          goto LABEL_69;
        }

        return 13;
      }

      else
      {
        if (v4 != 243)
        {
          if (v4 == 244)
          {
            return 55;
          }

          if (v4 == 247)
          {
            return 8;
          }

          return 0;
        }

        v11 = *(v3 + 4);
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            return 28;
          }

LABEL_69:
          llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
        }

        return 27;
      }
    }

    else
    {
      if (*(v3 + 18) <= 0xA3u)
      {
        switch(v4)
        {
          case 'S':
            return 7;
          case '^':
            return 40;
          case 'i':
            return 20;
        }

        return 0;
      }

      if (v4 == 164)
      {
        return 12;
      }

      if (v4 == 183)
      {
        return 3;
      }

      if (v4 != 224)
      {
        return 0;
      }

      v6 = *(v3 + 36);
      v7 = v6 - 1;
      if ((v6 - 32) >= 0x28)
      {
        v8 = 0;
      }

      else
      {
        v8 = 26;
      }

      if (v7 >= 0x10)
      {
        return v8;
      }

      else
      {
        return 25;
      }
    }
  }

  else
  {
    if (*(v3 + 18) > 0x13u)
    {
      if (*(v3 + 18) > 0x27u)
      {
        switch(v4)
        {
          case '(':
            return 1;
          case '+':
            return 30;
          case '>':
            return 38;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x14u:
            return 22;
          case 0x15u:
            return 24;
          case 0x16u:
            return 32;
        }
      }

      return 0;
    }

    if (*(v3 + 18) <= 5u)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v4 == 4)
          {
            return 15;
          }

          return 0;
        }

        return 37;
      }

      return 31;
    }

    if (v4 == 6)
    {
      return 37;
    }

    if (v4 != 8)
    {
      if (v4 != 18)
      {
        return 0;
      }

      return 31;
    }

    v10 = *(v3 + 4);
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        return 19;
      }

      goto LABEL_69;
    }

    return 17;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = *(v2 + 24);
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSize(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v4, (a1 + 56));
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 8);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolBinding(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v4, (a1 + 56));
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 12) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolOther(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v4, (a1 + 56));
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 13);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolELFType(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a2, HIDWORD(a2), &v4, (a1 + 56));
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 12) & 0xF;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationAddend(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(a1, a2) + 1) != 4)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = *(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(a1, a2) + 2);
  *(a3 + 8) &= ~1u;
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getBuildAttributes(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::ELFAttributeParser *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v17);
  if (v19)
  {
    v6 = v17;
    v17 = 0;
    *a3 = v6;
    goto LABEL_16;
  }

  if (!v18)
  {
    goto LABEL_7;
  }

  v7 = (v17 + 4);
  v8 = 40 * v18;
  while (*v7 != 1879048195)
  {
    v7 += 10;
    v8 -= 40;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<char>((a1 + 56), (v7 - 1), &v14);
  v9 = v14;
  if (v16)
  {
    goto LABEL_15;
  }

  if (*v14 != 65 || v15 == 1)
  {
    v9 = 0;
LABEL_15:
    *a3 = v9;
    goto LABEL_16;
  }

  llvm::ELFAttributeParser::parse(a2, v14, v15, 1, a3);
  v12 = *a3;
  if (v16)
  {
    v13 = v14;
    v14 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if (!v12)
  {
LABEL_7:
    *a3 = 0;
  }

LABEL_16:
  if (v19)
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

uint64_t *std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::__vallocate[abi:nn200100](a1, 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3));
  }

  return a1;
}

void std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X8>, void *a4@<X0>)
{
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1, &v9, a4);
  v7 = v9;
  if (v10)
  {
    *(a3 + 8) |= 1u;
    *a3 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(v9, a2, a3, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::sections((a1 + 56), &v9);
  v5 = v9;
  if (v10)
  {
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a3 << 32;
    v6 = ((a2 - v9) / 0x28uLL);
  }

  return v7 | v6;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(a1, a3, v13);
  if ((v14 & 1) == 0)
  {
    a3 = v13[0];
LABEL_6:
    v10 = a4[1];
    v12[0] = *a4;
    v12[1] = v10;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a5, a1, a2, a3, v12);
    if ((v14 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v9 = v13[0];
  v13[0] = 0;
  *(a5 + 8) |= 1u;
  *a5 = v9;
LABEL_7:
  v11 = v13[0];
  v13[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, _OWORD *a5@<X4>)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a5[1];
  v10[0] = *a5;
  v10[1] = v7;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(a3, a4, v10, &v11);
  if (v12)
  {
    v8 = v11;
    *(a1 + 8) |= 1u;
    *a1 = v8;
  }

  else if (v11)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(v11, a1, a2);
    if (v12)
    {
      v9 = v11;
      v11 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0;
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 14);
  if (v5 == 0xFFFF)
  {
    v6 = a3[1];
    v8[0] = *a3;
    v8[1] = v6;
    llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,false>>((a1 - a2) >> 4, v8, &v9);
    if (v10)
    {
      v7 = v9;
      *(a4 + 8) |= 1u;
      *a4 = v7;
      return;
    }

    *(a4 + 8) &= ~1u;
    v5 = v9;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    if ((v5 + 256) <= 0x100u)
    {
      *a4 = 0;
      return;
    }
  }

  *a4 = v5;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSymbolSection(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSHNDXTable(a1 + 7, v8, &v15);
    if (v16)
    {
      v9 = v15;
LABEL_7:
      *(a4 + 16) |= 1u;
      *a4 = v9;
      return;
    }

    v10 = *(&v15 + 1);
    v11 = v15;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *&v15 = v11;
  *(&v15 + 1) = v10;
  v16 = 1;
  v17 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a1 + 7, a2, a3, &v15, &v18);
  v9 = v18;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18)
  {
    *(a4 + 16) &= ~1u;
    *a4 = v9;
    *(a4 + 8) = a1;
  }

  else
  {
    v12 = (*(*a1 + 360))(a1);
    *(a4 + 16) &= ~1u;
    *a4 = v12;
    *(a4 + 8) = v13;
    if (v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }
  }
}

const void **llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 1))(v2);
  }

  return result;
}

const void ***llvm::handleErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(const void ***result@<X0>, const void ***a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 6))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v9 = v6;
          v7 = *v4;
          *v4 = 0;
          (*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID);
          v8 = v7;
          llvm::ErrorList::join(&v9, &v8, &v10);
          v6 = v10;
          v10 = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          if (v9)
          {
            (*(*v9 + 1))(v9);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 1))(v3);
    }

    else
    {
      result = (*(*v3 + 6))(v3, &llvm::ErrorInfoBase::ID);
      *a2 = v3;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

llvm::object *llvm::object::Binary::checkOffset@<X0>(llvm::object *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (__CFADD__(a3, a2) || (*result <= a2 ? (v5 = a3 + a2 > *result + *(result + 1)) : (v5 = 1), v5))
  {
    *&v6.__val_ = llvm::object::object_category(result);

    return llvm::errorCodeToError(4, v6, a4);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a2, &v10, (a1 + 56));
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRel(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>((a1 + 56), a2, HIDWORD(a2), &v10);
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRela(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>((a1 + 56), a2, HIDWORD(a2), &v10);
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a2, &v9, a1);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(a1, v9, v4, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(a1, a2, v21);
  if (v22)
  {
    v7 = v21[0];
    v8 = *(a4 + 8) | 1;
  }

  else
  {
    if (v21[1] <= a3)
    {
      v10 = 8 * a3;
      v11[0] = "can't read an entry at 0x";
      v11[2] = &v10;
      v12 = 3587;
      v13[0] = v11;
      v13[2] = ": it goes past the end of the section (0x";
      v14 = 770;
      v9 = a2[5];
      v15[0] = v13;
      v15[2] = &v9;
      v16 = 3586;
      v17 = v15;
      v18 = ")";
      v19 = 770;
      v20 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = v21[0] + 8 * a3;
    v8 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v8;
  *a4 = v7;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(a2, &v9, a1);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(a1, v9, v4, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(a1, a2, v21);
  if (v22)
  {
    v7 = v21[0];
    v8 = *(a4 + 8) | 1;
  }

  else
  {
    if (v21[1] <= a3)
    {
      v10 = 12 * a3;
      v11[0] = "can't read an entry at 0x";
      v11[2] = &v10;
      v12 = 3587;
      v13[0] = v11;
      v13[2] = ": it goes past the end of the section (0x";
      v14 = 770;
      v9 = a2[5];
      v15[0] = v13;
      v15[2] = &v9;
      v16 = 3586;
      v17 = v15;
      v18 = ")";
      v19 = 770;
      v20 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = v21[0] + 12 * a3;
    v8 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v8;
  *a4 = v7;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getRelocationTypeName(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  v7 = *(*a1 + 18);
  if (v7 == 8 && *(v6 + 4) == 2)
  {
    ELFRelocationTypeName = llvm::object::getELFRelocationTypeName(8, a2);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, ELFRelocationTypeName, &ELFRelocationTypeName[v9]);
    v10 = llvm::object::getELFRelocationTypeName(*(*a1 + 18), BYTE1(a2));
    v12 = v11;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v10, &v10[v12]);
    v13 = llvm::object::getELFRelocationTypeName(*(*a1 + 18), BYTE2(a2));
    v15 = v14;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    v16 = &v13[v15];
    v17 = a3;
    v18 = v13;
  }

  else
  {
    v19 = llvm::object::getELFRelocationTypeName(v7, a2);
    v16 = &v19[v20];
    v17 = a3;
    v18 = v19;
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(v17, v18, v16);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && *(v1 + 20) > 0xFu;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::toDRI(a1, v1, *(v1 + 20) >> 4);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t *llvm::Expected<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 152);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    (*v3)(a1);
  }

  return a1;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(*a1, *(a1 + 8), &v21);
  if ((v25 & 1) != 0 && (v6 = v21, *&v21 = 0, v6))
  {
    *(a3 + 152) |= 1u;
    *a3 = v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v11 = v21;
    *__p = v22;
    v22 = 0uLL;
    v8 = v23;
    v23 = 0;
    v13 = v8;
    v14[0] = v15;
    v14[1] = 0;
    v14[2] = 0;
    if (v24[1])
    {
      llvm::SmallVectorImpl<char>::operator=(v14, v24);
    }

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(v16, v15, &v11, 0, 0, 0);
    if (v14[0] != v15)
    {
      free(v14[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::initContent(v16, v15), (v9 = *&v15[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(a3, v16);
    }

    v16[0] = &unk_2883EDAD8;
    if (v19 != &v20)
    {
      free(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v21);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::initContent(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v9);
  v4 = v9;
  if ((v11 & 1) == 0)
  {
    if (v10)
    {
      v5 = 40 * v10;
      v6 = (v9 + 4);
      while (1)
      {
        v7 = bswap32(*v6);
        if (v7 == 2)
        {
          break;
        }

        if (v7 != 18)
        {
          if (v7 != 11)
          {
            goto LABEL_11;
          }

          v8 = (a1 + 120);
          if (*(a1 + 120))
          {
            goto LABEL_11;
          }

LABEL_10:
          *v8 = v6 - 1;
          goto LABEL_11;
        }

        v8 = (a1 + 136);
        if (!*(a1 + 136))
        {
          goto LABEL_10;
        }

LABEL_11:
        v6 += 10;
        v5 -= 40;
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v8 = (a1 + 128);
      if (*(a1 + 128))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    v4 = 0;
    *(a1 + 48) = 1;
  }

  *a2 = v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDAD8;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 14;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883EDAD8;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a3 + 48))
  {
    llvm::SmallVectorImpl<char>::operator=(a1 + 96, a3 + 40);
  }

  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  return a1;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDAD8;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolFlags(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v33);
  v6 = v33;
  if (v34)
  {
    v33 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v6;
    goto LABEL_67;
  }

  v7 = *(v33 + 12);
  if ((v7 & 0xF0) == 0x20)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x10)
  {
    v8 = 0;
  }

  if (*(v33 + 14) == -3585)
  {
    v8 |= 8u;
  }

  if ((v7 & 0xF) - 3 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x80;
  }

  v10 = a1[16];
  if (v10)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, v10, &v30);
    v11 = v30;
    if (v32)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v11;
      goto LABEL_67;
    }

    v12 = v6 == v30;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[15];
  if (v13)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, v13, &v30);
    v11 = v30;
    if (v32)
    {
      goto LABEL_19;
    }

    v12 |= v6 == v30;
  }

  v14 = v9 | 0x80;
  if (v12)
  {
    v9 |= 0x80u;
  }

  v15 = *(a1[7] + 18);
  switch(v15)
  {
    case 46848:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v29 = v30;
        v30 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v29);
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        if (v32)
        {
          v16 = v30;
          v30 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v9;
      }

      else
      {
        v17 = v9;
        if (v31 >= 2)
        {
          v17 = v14;
          if (*v30 != 25636)
          {
            if (*v30 == 30756)
            {
              v17 = v14;
            }

            else
            {
              v17 = v9;
            }
          }
        }
      }

      v9 = v17;
      break;
    case 10240:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v29 = v30;
        v30 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v29);
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        if (v32)
        {
          v18 = v30;
          v30 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = v9;
        goto LABEL_84;
      }

      if (v31)
      {
        v19 = v9;
        if (v31 == 1)
        {
          goto LABEL_84;
        }

        if (*v30 != 25636)
        {
          v19 = v14;
          if (*v30 != 29732)
          {
            if (*v30 == 24868)
            {
              v19 = v14;
            }

            else
            {
              v19 = v9;
            }
          }

          goto LABEL_84;
        }
      }

      v19 = v14;
LABEL_84:
      if ((v6[6] & 0xF) == 2)
      {
        v9 = HIWORD(*(v6 + 1)) & 0x100 | v19;
      }

      else
      {
        v9 = v19;
      }

      break;
    case 62208:
      (*(*a1 + 80))(&v30, a1, a2);
      if (v32)
      {
        v24 = v30;
        v30 = 0;
        v28 = v24;
        llvm::consumeError(&v28);
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }
      }

      else if (!v31)
      {
        v9 = v14;
      }

      if (v32)
      {
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      break;
  }

  if (v6[7])
  {
    v20 = *(v6 + 12);
    v21 = v20 & 0xF;
    if (v21 != 5 && v6[7] != 62207)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v9 |= 1u;
    v20 = *(v6 + 12);
    v21 = v20 & 0xF;
    if (v21 != 5)
    {
      goto LABEL_51;
    }
  }

  v9 |= 0x10u;
LABEL_51:
  v22 = v20 >> 4;
  if (v22 <= 0xA && ((1 << v22) & 0x406) != 0)
  {
    v23 = *(v6 + 13) & 3;
    if (v23 == 3 || (*(v6 + 13) & 3) == 0)
    {
      v9 |= 0x40u;
    }
  }

  else
  {
    v23 = *(v6 + 13) & 3;
  }

  if (v21 == 10)
  {
    v25 = v9 | 0x20;
  }

  else
  {
    v25 = v9;
  }

  if (v23 == 2)
  {
    v25 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v25;
LABEL_67:
  if (v34)
  {
    v26 = v33;
    v33 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = bswap32(*(v1 + 20)) > 0xF;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, bswap32(*(v1 + 20)) >> 4);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolName(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v31);
  if (v32)
  {
    v6 = v31;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, a2, &v29);
  v7 = v29;
  if ((v30 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(v29 + 24)), &v27);
    v8 = v27;
    if (v28)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
LABEL_26:
      if (v30)
      {
        v14 = v29;
        v29 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      goto LABEL_29;
    }

    *&v23 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStringTable(a1 + 7, v27, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v23, v25);
    if (v26)
    {
      v9 = v25[0];
      *(a3 + 16) |= 1u;
      *a3 = v9;
LABEL_23:
      if (v28)
      {
        v13 = v27;
        v27 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      goto LABEL_26;
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getName(v31, v25[0], v25[1], &v23);
    v10 = v24;
    if ((v24 & 1) != 0 || !*(&v23 + 1))
    {
      if ((v31[3] & 0xF) == 3)
      {
        (*(*a1 + 128))(&v20, a1, a2);
        if ((v22 & 1) == 0)
        {
          if (v24)
          {
            v16 = v23;
            *&v23 = 0;
          }

          else
          {
            v16 = 0;
          }

          v19 = v16;
          llvm::consumeError(&v19);
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          (*(*v21 + 144))(v21, v20);
          if (v22)
          {
            v17 = v20;
            v20 = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }

          if (v24)
          {
            v18 = v23;
            *&v23 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          goto LABEL_20;
        }

        v11 = v20;
        v20 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v10 = v24;
      }

      *(a3 + 16) = *(a3 + 16) & 0xFE | v10 & 1;
      if (v10)
      {
        *a3 = v23;
LABEL_20:
        if (v26)
        {
          v12 = v25[0];
          v25[0] = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(a3 + 16) = *(a3 + 16) & 0xFE | v24 & 1;
    }

    *a3 = v23;
    goto LABEL_20;
  }

  *(a3 + 16) |= 1u;
  *a3 = v7;
LABEL_29:
  if (v32)
  {
    v15 = v31;
    v31 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolAddress(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ObjectFile::getSymbolValue(a1, a2, &v25);
  if (v26)
  {
    v6 = v25;
LABEL_4:
    *(a3 + 8) |= 1u;
    *a3 = v6;
    return;
  }

  v7 = v25;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v6 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v8 = bswap32(*(v23 + 14)) >> 16;
  if (v8 - 65521 < 2 || v8 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v7;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), a2, &v21);
  if (v22)
  {
    v10 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v10;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 256)
  {
    v11 = *(a1 + 136);
    if (v11)
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable((a1 + 56), v11, &v16);
      if (v17)
      {
        v10 = v16;
        goto LABEL_14;
      }

      v12 = *(&v16 + 1);
      v13 = v16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *&v16 = v13;
    *(&v16 + 1) = v12;
    v17 = 1;
    v18 = 0;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v10 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v7 += bswap32(v19[3]);
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v7;
LABEL_25:
  if (v22)
  {
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v24)
  {
    v15 = v23;
    v23 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolValueImpl(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v6);
  if (v7)
  {
    v5 = v6;
    v6 = 0;
    llvm::report_fatal_error(&v5);
  }

  result = bswap32(*(v6 + 4));
  if (*(v6 + 14) != -3585)
  {
    v4 = *(*(a1 + 56) + 18);
    if ((v4 == 10240 || v4 == 2048) && (*(v6 + 12) & 0xF) == 2)
    {
      return result & 0xFFFFFFFE;
    }
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolAlignment(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  if (*(v4 + 14) == -3329)
  {
    return bswap32(*(v4 + 4));
  }

  else
  {
    return 0;
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolType(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v7);
  v4 = v7;
  if (v8)
  {
    *(a3 + 8) |= 1u;
    *a3 = v4;
    return;
  }

  v5 = *(v7 + 12) & 0xF;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      *(a3 + 8) &= ~1u;
      v6 = 3;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      *(a3 + 8) &= ~1u;
      v6 = 4;
      goto LABEL_16;
    }

    if (v5 != 5)
    {
LABEL_14:
      *(a3 + 8) &= ~1u;
      v6 = 1;
      goto LABEL_16;
    }

LABEL_11:
    *(a3 + 8) &= ~1u;
    v6 = 2;
    goto LABEL_16;
  }

  if ((*(v7 + 12) & 0xF) == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = 0;
    return;
  }

  if (v5 == 1)
  {
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  *(a3 + 8) &= ~1u;
  v6 = 5;
LABEL_16:
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v6 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v7 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v7;
    }

    else
    {
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection(a1, v12, v10, a3);
      if (v11)
      {
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }
    }

    if (v13)
    {
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v7);
  if (v8)
  {
    v3 = v7;
    v7 = 0;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v4 = v7;
  if (v8)
  {
    v7 = 0;
    if (v4)
    {
      (*(*v4 + 1))(v4);
    }
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((a2 - v4) >> 3);
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContents@<X0>(llvm::object *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[1] == 0x8000000)
  {
    v4 = *(result + 2);
    *(a3 + 16) &= ~1u;
    *a3 = v4;
    *(a3 + 8) = 0;
  }

  else
  {
    v6 = (result + 16);
    v7 = *(result + 2);
    v11[0] = *(result + 1);
    v11[1] = v7;
    result = llvm::object::Binary::checkOffset(v11, bswap32(a2[4]) + *&v11[0], bswap32(a2[5]), &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = *v6 + bswap32(a2[4]);
      v10 = bswap32(a2[5]);
      *(a3 + 16) &= ~1u;
      *a3 = v9;
      *(a3 + 8) = v10;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x1000000)
  {
    return 0;
  }

  v2 = bswap32(*(a2 + 8));
  return (v2 & 2) != 0 && (v2 & 4) == 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a2 + 8));
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  return (v2 & 1) == 0;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 11) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::isDebugSection(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v6);
  if (v8)
  {
    v5 = v6;
    v6 = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (v8)
    {
      result = v6;
      v6 = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v7 < 6)
  {
    return 0;
  }

  if (*v6 == 1650811950 && *(v6 + 4) == 26485)
  {
    return 1;
  }

  if (v7 == 6)
  {
    return 0;
  }

  if (*v6 == 1701083694 && *(v6 + 3) == 1735746149)
  {
    return 1;
  }

  if (v7 != 10)
  {
    return 0;
  }

  return *v6 == 0x646E695F6264672ELL && *(v6 + 8) == 30821;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v5);
  result = v5;
  if ((v6 & 1) == 0)
  {
    return ((a2 - v5) / (bswap32(*(*(a1 + 56) + 46)) >> 16));
  }

  v5 = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_rel_end(void *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = a2[1];
  if (v5 == 0x4000000 || v5 == 150994944)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(RelSection + 6)), &v16);
    if (v17)
    {
      v9 = v16;
      v16 = 0;
      v11 = v9;
      *&v12.__val_ = llvm::errorToErrorCode(&v11);
      v12.__cat_ = v10;
      std::error_code::message(&v13, &v12);
      v15 = 260;
      v14 = &v13;
      llvm::report_fatal_error(&v14, 1);
    }

    return v4 | ((bswap32(a2[5]) / bswap32(a2[9]) + HIDWORD(v4)) << 32);
  }

  return v4;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocatedSection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = bswap32(*(a2 + 4));
  if (v5 == 4 || v5 == 9)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, bswap32(*(a2 + 28)), &v10);
    v7 = v10;
    if (v11)
    {
      *(a3 + 16) |= 1u;
    }

    else
    {
      *(a3 + 16) &= ~1u;
      *(a3 + 8) = a1;
    }

    *a3 = v7;
  }

  else
  {
    v8 = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = v8;
    *(a3 + 8) = v9;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationOffset(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  return bswap32(*Rel);
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationSymbol(uint64_t a1, unint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  v6 = bswap32(*(Rel + 1));
  if (v6 > 0xFF)
  {
    return bswap32(*(RelSection + 6)) | ((v6 >> 8) << 32);
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationType(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2);
  }

  return *(Rel + 7);
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 56;
  v5 = (*(*a1 + 320))(a1);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v31);
  if ((v33 & 1) == 0 && v32)
  {
    v4 = v31;
    v5 = v31 + 40 * v32;
    do
    {
      if (*(v4 + 4) == 100663296)
      {
        v6 = (bswap32(*(v4 + 16)) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 285212672 || v7 == 117440512 || v7 == 385875968)
            {
              v27 = bswap32(*(v8 - 1));
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v27);
            }

            v11 = *v8;
            v8 += 2;
            v7 = v11;
          }

          while (v11);
        }
      }

      v4 += 40;
    }

    while (v4 != v5);
    if (v32)
    {
      v12 = 0;
      v13 = v31;
      v14 = v31 + 40 * v32;
      do
      {
        v15 = __p;
        if (__p != v29)
        {
          v16 = bswap32(*(v13 + 12));
          while (*v15 != v16)
          {
            if (++v15 == v29)
            {
              goto LABEL_39;
            }
          }
        }

        if (v15 != v29)
        {
          v17 = *(a2 + 16);
          if (v12 >= v17)
          {
            v18 = (v12 - *a2) >> 4;
            if ((v18 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v19 = v17 - *a2;
            v20 = v19 >> 3;
            if (v19 >> 3 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v21);
            }

            v22 = (16 * v18);
            *v22 = v13;
            v22[1] = a1;
            v12 = (16 * v18 + 16);
            v23 = *(a2 + 8) - *a2;
            v24 = 16 * v18 - v23;
            memcpy(v22 - v23, *a2, v23);
            v25 = *a2;
            *a2 = v24;
            *(a2 + 8) = v12;
            *(a2 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v13;
            v12[1] = a1;
            v12 += 2;
          }

          *(a2 + 8) = v12;
        }

LABEL_39:
        v13 += 40;
      }

      while (v13 != v14);
    }
  }

  if (v33)
  {
    v26 = v31;
    v31 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_begin(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v2);
  result = v2;
  if (v3)
  {
    v2 = 0;
    if (result)
    {
      (*(*result + 8))(result);
      return 0;
    }
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::section_end(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), v2);
  result = v2[0];
  if ((v3 & 1) == 0)
  {
    return v2[0] + 40 * v2[1];
  }

  v2[0] = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getFileFormatName(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 4);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
    }

    v5 = bswap32(*(v3 + 18)) >> 16;
    if (v5 > 82)
    {
      if (v5 <= 223)
      {
        if (v5 > 104)
        {
          if (v5 == 105)
          {
            return "elf32-msp430";
          }

          if (v5 == 164)
          {
            return "elf32-hexagon";
          }
        }

        else
        {
          if (v5 == 83)
          {
            return "elf32-avr";
          }

          if (v5 == 94)
          {
            return "elf32-xtensa";
          }
        }
      }

      else if (v5 <= 243)
      {
        if (v5 == 224)
        {
          return "elf32-amdgpu";
        }

        if (v5 == 243)
        {
          return "elf32-littleriscv";
        }
      }

      else
      {
        switch(v5)
        {
          case 244:
            return "elf32-lanai";
          case 252:
            return "elf32-csky";
          case 258:
            return "elf32-loongarch";
        }
      }

      return "elf32-unknown";
    }

    if (v5 > 7)
    {
      if (v5 > 19)
      {
        switch(v5)
        {
          case 20:
            return "elf32-powerpc";
          case 40:
            return "elf32-bigarm";
          case 62:
            return "elf32-x86-64";
        }

        return "elf32-unknown";
      }

      if (v5 == 8)
      {
        return "elf32-mips";
      }

      if (v5 != 18)
      {
        return "elf32-unknown";
      }

      return "elf32-sparc";
    }

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        return "elf32-m68k";
      }

      if (v5 == 6)
      {
        return "elf32-iamcu";
      }
    }

    else
    {
      if (v5 == 2)
      {
        return "elf32-sparc";
      }

      if (v5 == 3)
      {
        return "elf32-i386";
      }
    }

    return "elf32-unknown";
  }

  v7 = bswap32(*(v3 + 18)) >> 16;
  if (v7 > 182)
  {
    if (v7 > 246)
    {
      switch(v7)
      {
        case 247:
          return "elf64-bpf";
        case 251:
          return "elf64-ve";
        case 258:
          return "elf64-loongarch";
      }
    }

    else
    {
      switch(v7)
      {
        case 183:
          return "elf64-bigaarch64";
        case 224:
          return "elf64-amdgpu";
        case 243:
          return "elf64-littleriscv";
      }
    }
  }

  else if (v7 > 21)
  {
    switch(v7)
    {
      case 22:
        return "elf64-s390";
      case 43:
        return "elf64-sparc";
      case 62:
        return "elf64-x86-64";
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        return "elf64-i386";
      case 8:
        return "elf64-mips";
      case 21:
        return "elf64-powerpc";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getArch(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = bswap32(*(v3 + 18)) >> 16;
  if (v4 > 82)
  {
    if (v4 > 242)
    {
      if (v4 > 250)
      {
        switch(v4)
        {
          case 251:
            return 60;
          case 252:
            return 10;
          case 258:
            v6 = *(v3 + 4);
            if (v6 != 1)
            {
              if (v6 == 2)
              {
                return 14;
              }

              goto LABEL_62;
            }

            return 13;
          default:
            return 0;
        }
      }

      else
      {
        switch(v4)
        {
          case 243:
            v8 = *(v3 + 4);
            if (v8 == 1)
            {
              return 27;
            }

            else
            {
              if (v8 != 2)
              {
                goto LABEL_62;
              }

              return 28;
            }

          case 244:
            return 55;
          case 247:
            return 9;
          default:
            return 0;
        }
      }
    }

    else if (v4 > 163)
    {
      if (v4 == 164)
      {
        return 12;
      }

      else
      {
        if (v4 != 183)
        {
          return 0;
        }

        return 4;
      }
    }

    else
    {
      switch(v4)
      {
        case 'S':
          return 7;
        case '^':
          return 40;
        case 'i':
          return 20;
        default:
          return 0;
      }
    }
  }

  else if (v4 > 19)
  {
    if (v4 > 39)
    {
      switch(v4)
      {
        case '(':
          return 1;
        case '+':
          return 30;
        case '>':
          return 38;
        default:
          return 0;
      }
    }

    else
    {
      switch(v4)
      {
        case 20:
          return 21;
        case 21:
          return 23;
        case 22:
          return 32;
        default:
          return 0;
      }
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v4 == 4)
          {
            return 15;
          }

          return 0;
        }

        return 37;
      }

      return 29;
    }

    if (v4 == 6)
    {
      return 37;
    }

    if (v4 != 8)
    {
      if (v4 == 18)
      {
        return 29;
      }

      return 0;
    }

    v7 = *(v3 + 4);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        return 18;
      }

LABEL_62:
      llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
    }

    return 16;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = bswap32(*(v2 + 24));
  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSize(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return bswap32(*(v4 + 8));
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolBinding(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 12) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolOther(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 13);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolELFType(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 12) & 0xF;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationAddend(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(a1, a2) + 1) != 0x4000000)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap32(*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(a1, a2) + 2));
  *(a3 + 8) &= ~1u;
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getBuildAttributes(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::ELFAttributeParser *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v17);
  if (v19)
  {
    v6 = v17;
    v17 = 0;
    *a3 = v6;
    goto LABEL_16;
  }

  if (!v18)
  {
    goto LABEL_7;
  }

  v7 = (v17 + 4);
  v8 = 40 * v18;
  while (*v7 != 50331760)
  {
    v7 += 10;
    v8 -= 40;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<char>((a1 + 56), (v7 - 1), &v14);
  v9 = v14;
  if (v16)
  {
    goto LABEL_15;
  }

  if (*v14 != 65 || v15 == 1)
  {
    v9 = 0;
LABEL_15:
    *a3 = v9;
    goto LABEL_16;
  }

  llvm::ELFAttributeParser::parse(a2, v14, v15, 0, a3);
  v12 = *a3;
  if (v16)
  {
    v13 = v14;
    v14 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if (!v12)
  {
LABEL_7:
    *a3 = 0;
  }

LABEL_16:
  if (v19)
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(void *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v9);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1, v9, a3, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::sections((a1 + 56), &v9);
  v5 = v9;
  if (v10)
  {
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a3 << 32;
    v6 = ((a2 - v9) / 0x28uLL);
  }

  return v7 | v6;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>>(a1, a3, v13);
  if ((v14 & 1) == 0)
  {
    a3 = v13[0];
LABEL_6:
    v10 = a4[1];
    v12[0] = *a4;
    v12[1] = v10;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, a3, v12, a5);
    if ((v14 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v9 = v13[0];
  v13[0] = 0;
  *(a5 + 8) |= 1u;
  *a5 = v9;
LABEL_7:
  v11 = v13[0];
  v13[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a5[1];
  v11[0] = *a5;
  v11[1] = v8;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex(a2, a3, v11, &v12);
  if (v13)
  {
    v9 = v12;
    *(a6 + 8) |= 1u;
    *a6 = v9;
  }

  else if (v12)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, v12, a6);
    if (v13)
    {
      v10 = v12;
      v12 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  else
  {
    *(a6 + 8) &= ~1u;
    *a6 = 0;
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionIndex(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 14);
  if (v5 == 0xFFFF)
  {
    v7 = a3[1];
    v9[0] = *a3;
    v9[1] = v7;
    llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)0,false>>((a1 - a2) >> 4, v9, &v10);
    if (v11)
    {
      v8 = v10;
      *(a4 + 8) |= 1u;
      *a4 = v8;
      return;
    }

    *(a4 + 8) &= ~1u;
    v6 = v10;
  }

  else
  {
    v6 = __rev16(v5);
    *(a4 + 8) &= ~1u;
    if ((v6 + 256) <= 0x100u)
    {
      *a4 = 0;
      return;
    }
  }

  *a4 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSymbolSection(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a1[17];
  if (v8)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSHNDXTable(a1 + 7, v8, &v15);
    if (v16)
    {
      v9 = v15;
LABEL_7:
      *(a4 + 16) |= 1u;
      *a4 = v9;
      return;
    }

    v10 = *(&v15 + 1);
    v11 = v15;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *&v15 = v11;
  *(&v15 + 1) = v10;
  v16 = 1;
  v17 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1 + 7, a2, a3, &v15, &v18);
  v9 = v18;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18)
  {
    *(a4 + 16) &= ~1u;
    *a4 = v9;
    *(a4 + 8) = a1;
  }

  else
  {
    v12 = (*(*a1 + 360))(a1);
    *(a4 + 16) &= ~1u;
    *a4 = v12;
    *(a4 + 8) = v13;
    if (v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }
  }
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelSection(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection((a1 + 56), a2, &v10);
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRel(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>((a1 + 56), a2, HIDWORD(a2), &v10);
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRela(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>((a1 + 56), a2, HIDWORD(a2), &v10);
  if (v11)
  {
    v3 = v10;
    v10 = 0;
    v5 = v3;
    *&v6.__val_ = llvm::errorToErrorCode(&v5);
    v6.__cat_ = v4;
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::report_fatal_error(&v8, 1);
  }

  return v10;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v9);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(a1, v9, v4, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(void *a1@<X0>, unsigned int *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,false>>(a1, a2, v21);
  if (v22)
  {
    v7 = v21[0];
    v8 = *(a4 + 8) | 1;
  }

  else
  {
    if (v21[1] <= a3)
    {
      v10 = 8 * a3;
      v11[0] = "can't read an entry at 0x";
      v11[2] = &v10;
      v12 = 3587;
      v13[0] = v11;
      v13[2] = ": it goes past the end of the section (0x";
      v14 = 770;
      v9 = bswap32(a2[5]);
      v15[0] = v13;
      v15[2] = &v9;
      v16 = 3586;
      v17 = v15;
      v18 = ")";
      v19 = 770;
      v20 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = v21[0] + 8 * a3;
    v8 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v8;
  *a4 = v7;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSection(a1, a2, &v9);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(v9, v4, a4, a1);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getEntry<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>, void *a4@<X0>)
{
  v23 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(a4, a1, v21);
  if (v22)
  {
    v7 = v21[0];
    v8 = *(a3 + 8) | 1;
  }

  else
  {
    if (v21[1] <= a2)
    {
      v10 = 12 * a2;
      v11[0] = "can't read an entry at 0x";
      v11[2] = &v10;
      v12 = 3587;
      v13[0] = v11;
      v13[2] = ": it goes past the end of the section (0x";
      v14 = 770;
      v9 = bswap32(a1[5]);
      v15[0] = v13;
      v15[2] = &v9;
      v16 = 3586;
      v17 = v15;
      v18 = ")";
      v19 = 770;
      v20 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = v21[0] + 12 * a2;
    v8 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v8;
  *a3 = v7;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>,true>>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[9] != 201326592)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v31);
    v11 = std::string::insert(&v31, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v33, " has invalid sh_entsize: expected ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *__p = *&v13->__r_.__value_.__l.__data_;
    v37 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v35.__r_.__value_.__r.__words[0] = 12;
    v39[0] = __p;
    v40 = &v35;
    v41 = 2564;
    v42[0] = v39;
    v43 = ", but got ";
    v44 = 770;
    v15 = bswap32(a2[9]);
    v45 = v42;
    v46 = v15;
    v47 = 2050;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v5 = bswap32(a2[5]);
  if (v5 % 0xC)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v35);
    v6 = std::string::insert(&v35, 0, "section ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v31, " has an invalid sh_size (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v33;
    v37 = v5;
    v38 = 2052;
    v39[0] = __p;
    v40 = ") which is not a multiple of its sh_entsize (";
    v41 = 770;
    v10 = bswap32(a2[9]);
    v42[0] = v39;
    v43 = v10;
    v44 = 2050;
    v45 = v42;
    v46 = ")";
    v47 = 770;
    LODWORD(v30.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v16 = bswap32(a2[4]);
  if (__CFADD__(v16, v5))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v35);
    v17 = std::string::insert(&v35, 0, "section ");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v31, " has a sh_offset (0x");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v30.__r_.__value_.__r.__words[0] = v16;
    __p[0] = &v33;
    v37 = &v30;
    v38 = 3588;
    v39[0] = __p;
    v40 = ") + sh_size (0x";
    v41 = 770;
    v29.__r_.__value_.__r.__words[0] = v5;
    v42[0] = v39;
    v43 = &v29;
    v44 = 3586;
    v45 = v42;
    v46 = ") that cannot be represented";
    v47 = 770;
    LODWORD(v28) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (a1[1] < (v5 + v16))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,false>>(a1, a2, &v29);
    v21 = std::string::insert(&v29, 0, "section ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v30, " has a sh_offset (0x");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v27 = v5;
    v28 = v16;
    v31.__r_.__value_.__r.__words[0] = &v35;
    v31.__r_.__value_.__r.__words[2] = &v28;
    v32 = 3588;
    v33.__r_.__value_.__r.__words[0] = &v31;
    v33.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v34 = 770;
    __p[0] = &v33;
    v37 = &v27;
    v38 = 3586;
    v39[0] = __p;
    v40 = ") that is greater than the file size (0x";
    v41 = 770;
    v26 = a1[1];
    v42[0] = v39;
    v43 = &v26;
    v44 = 3586;
    v45 = v42;
    v46 = ")";
    v47 = 770;
    v48 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v25 = *a1 + v16;
  *(a3 + 16) &= ~1u;
  *a3 = v25;
  *(a3 + 8) = v5 / 0xC;
}

void *llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(*a1 + 18);
  if (v5 == 2048 && *(*a1 + 4) == 2)
  {
    ELFRelocationTypeName = llvm::object::getELFRelocationTypeName(8, a2);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, ELFRelocationTypeName, &ELFRelocationTypeName[v8]);
    v9 = llvm::object::getELFRelocationTypeName((bswap32(*(*a1 + 18)) >> 16), BYTE1(a2));
    v11 = v10;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v9, &v9[v11]);
    v12 = llvm::object::getELFRelocationTypeName((bswap32(*(*a1 + 18)) >> 16), BYTE2(a2));
    v14 = v13;
    llvm::SmallVectorImpl<char>::append(a3, 1uLL, 47);
    v15 = &v12[v14];
    v16 = a3;
    v17 = v12;
  }

  else
  {
    v18 = llvm::object::getELFRelocationTypeName(__rev16(v5), a2);
    v15 = &v18[v19];
    v16 = a3;
    v17 = v18;
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(v16, v17, v15);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 && bswap32(*(v1 + 20)) > 0xF;
  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_end(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::toDRI(a1, v1, bswap32(*(v1 + 20)) >> 4);
  }

  else
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::dynamic_symbol_begin(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v4;
  v6 = *(a2 + 56);
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::vector[abi:nn200100](__p, (a2 + 72));
  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v9;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<char>::operator=(v8, a2 + 96);
  }

  llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::ELFObjectFile(a1, v9, &v6, *(a2 + 120), *(a2 + 128), *(a2 + 136));
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create(*a1, *(a1 + 8), &v21);
  if ((v25 & 1) != 0 && (v6 = v21, *&v21 = 0, v6))
  {
    *(a3 + 152) |= 1u;
    *a3 = v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v11 = v21;
    *__p = v22;
    v22 = 0uLL;
    v8 = v23;
    v23 = 0;
    v13 = v8;
    v14[0] = v15;
    v14[1] = 0;
    v14[2] = 0;
    if (v24[1])
    {
      llvm::SmallVectorImpl<char>::operator=(v14, v24);
    }

    llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(v16, v15, &v11, 0, 0, 0);
    if (v14[0] != v15)
    {
      free(v14[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (a2 && (llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::initContent(v16, v15), (v9 = *&v15[0]) != 0))
    {
      *(a3 + 152) |= 1u;
      *a3 = v9;
    }

    else
    {
      *(a3 + 152) &= ~1u;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(a3, v16);
    }

    v16[0] = &unk_2883EDF48;
    if (v19 != &v20)
    {
      free(v19);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  return llvm::Expected<llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>>::~Expected(&v21);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::initContent(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v9);
  v4 = v9;
  if ((v11 & 1) == 0)
  {
    if (v10)
    {
      v5 = v10 << 6;
      v6 = (v9 + 4);
      while (1)
      {
        v7 = bswap32(*v6);
        if (v7 == 2)
        {
          break;
        }

        if (v7 != 18)
        {
          if (v7 != 11)
          {
            goto LABEL_11;
          }

          v8 = (a1 + 120);
          if (*(a1 + 120))
          {
            goto LABEL_11;
          }

LABEL_10:
          *v8 = v6 - 1;
          goto LABEL_11;
        }

        v8 = (a1 + 136);
        if (!*(a1 + 136))
        {
          goto LABEL_10;
        }

LABEL_11:
        v6 += 16;
        v5 -= 64;
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v8 = (a1 + 128);
      if (*(a1 + 128))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    v4 = 0;
    *(a1 + 48) = 1;
  }

  *a2 = v4;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDF48;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::ELFObjectFile(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 16;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2883EDF48;
  *(a1 + 48) = 0;
  *(a1 + 56) = *a3;
  std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100]((a1 + 72), (a3 + 16));
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (*(a3 + 48))
  {
    llvm::SmallVectorImpl<char>::operator=(a1 + 96, a3 + 40);
  }

  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  return a1;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::~ELFObjectFile(void *a1)
{
  *a1 = &unk_2883EDF48;
  v2 = a1[12];
  if (v2 != a1 + 15)
  {
    free(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolFlags(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v32);
  v6 = v32;
  if (v33)
  {
    v32 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v6;
    goto LABEL_82;
  }

  v7 = *(v32 + 4);
  if ((v7 & 0xF0) == 0x20)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x10)
  {
    v8 = 0;
  }

  if (*(v32 + 6) == -3585)
  {
    v8 |= 8u;
  }

  if ((v7 & 0xF) - 3 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x80;
  }

  v10 = a1[16];
  if (v10)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, v10, &v29);
    v11 = v29;
    if (v31)
    {
LABEL_19:
      *(a3 + 8) |= 1u;
      *a3 = v11;
      goto LABEL_82;
    }

    v12 = v6 == v29;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[15];
  if (v13)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, v13, &v29);
    v11 = v29;
    if (v31)
    {
      goto LABEL_19;
    }

    v12 |= v6 == v29;
  }

  v14 = v9 | 0x80;
  if (v12)
  {
    v9 |= 0x80u;
  }

  v15 = *(a1[7] + 18);
  switch(v15)
  {
    case 46848:
      (*(*a1 + 80))(&v29, a1, a2);
      if (v31)
      {
        v28 = v29;
        v29 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v28);
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        if (v31)
        {
          v16 = v29;
          v29 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v17 = v9;
      }

      else
      {
        v17 = v9;
        if (v30 >= 2)
        {
          v17 = v14;
          if (*v29 != 25636)
          {
            if (*v29 == 30756)
            {
              v17 = v14;
            }

            else
            {
              v17 = v9;
            }
          }
        }
      }

LABEL_63:
      v9 = v17;
      break;
    case 10240:
      (*(*a1 + 80))(&v29, a1, a2);
      if (v31)
      {
        v28 = v29;
        v29 = 0;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v28);
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        if (v31)
        {
          v18 = v29;
          v29 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v17 = v9;
      }

      else
      {
        if (!v30)
        {
          goto LABEL_60;
        }

        v17 = v9;
        if (v30 == 1)
        {
          goto LABEL_61;
        }

        if (*v29 == 25636)
        {
LABEL_60:
          v17 = v14;
        }

        else
        {
          v17 = v14;
          if (*v29 != 29732)
          {
            if (*v29 == 24868)
            {
              v17 = v14;
            }

            else
            {
              v17 = v9;
            }
          }
        }
      }

LABEL_61:
      if ((v6[2] & 0xF) == 2)
      {
        v9 = v6[7] & 0x100 | v17;
        break;
      }

      goto LABEL_63;
    case 62208:
      (*(*a1 + 80))(&v29, a1, a2);
      if (v31)
      {
        v19 = v29;
        v29 = 0;
        v27 = v19;
        llvm::consumeError(&v27);
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      else if (!v30)
      {
        v9 = v14;
      }

      if (v31)
      {
        v20 = v29;
        v29 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      break;
  }

  if (v6[3])
  {
    v21 = *(v6 + 4);
    v22 = v21 & 0xF;
    if (v22 != 5 && v6[3] != 62207)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v9 |= 1u;
    v21 = *(v6 + 4);
    v22 = v21 & 0xF;
    if (v22 != 5)
    {
      goto LABEL_70;
    }
  }

  v9 |= 0x10u;
LABEL_70:
  v23 = v21 >> 4;
  if (v23 <= 0xA && ((1 << v23) & 0x406) != 0)
  {
    v24 = *(v6 + 5) & 3;
    if (v24 == 3 || (*(v6 + 5) & 3) == 0)
    {
      v9 |= 0x40u;
    }
  }

  else
  {
    v24 = *(v6 + 5) & 3;
  }

  if (v22 == 10)
  {
    v25 = v9 | 0x20;
  }

  else
  {
    v25 = v9;
  }

  if (v24 == 2)
  {
    v25 |= 0x200u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v25;
LABEL_82:
  if (v33)
  {
    v26 = v32;
    v32 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::symbol_begin(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v2 = bswap64(*(v1 + 32)) > 0x17;
  }

  else
  {
    v2 = 0;
  }

  return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, v2);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::symbol_end(void *a1)
{
  v1 = a1[16];
  if (v1)
  {
    return llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(a1, v1, bswap64(*(v1 + 32)) / 0x18);
  }

  else
  {
    return (*(*a1 + 48))(a1);
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolName(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v31);
  if (v32)
  {
    v6 = v31;
    *(a3 + 16) |= 1u;
    *a3 = v6;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, a2, &v29);
  v7 = v29;
  if ((v30 & 1) == 0)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(v29 + 40)), &v27);
    v8 = v27;
    if (v28)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
LABEL_26:
      if (v30)
      {
        v14 = v29;
        v29 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      goto LABEL_29;
    }

    *&v23 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStringTable(a1 + 7, v27, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v23, v25);
    if (v26)
    {
      v9 = v25[0];
      *(a3 + 16) |= 1u;
      *a3 = v9;
LABEL_23:
      if (v28)
      {
        v13 = v27;
        v27 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      goto LABEL_26;
    }

    llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getName(v31, v25[0], v25[1], &v23);
    v10 = v24;
    if ((v24 & 1) != 0 || !*(&v23 + 1))
    {
      if ((v31[1] & 0xF) == 3)
      {
        (*(*a1 + 128))(&v20, a1, a2);
        if ((v22 & 1) == 0)
        {
          if (v24)
          {
            v16 = v23;
            *&v23 = 0;
          }

          else
          {
            v16 = 0;
          }

          v19 = v16;
          llvm::consumeError(&v19);
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          (*(*v21 + 144))(v21, v20);
          if (v22)
          {
            v17 = v20;
            v20 = 0;
            if (v17)
            {
              (*(*v17 + 8))(v17);
            }
          }

          if (v24)
          {
            v18 = v23;
            *&v23 = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          goto LABEL_20;
        }

        v11 = v20;
        v20 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v10 = v24;
      }

      *(a3 + 16) = *(a3 + 16) & 0xFE | v10 & 1;
      if (v10)
      {
        *a3 = v23;
LABEL_20:
        if (v26)
        {
          v12 = v25[0];
          v25[0] = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(a3 + 16) = *(a3 + 16) & 0xFE | v24 & 1;
    }

    *a3 = v23;
    goto LABEL_20;
  }

  *(a3 + 16) |= 1u;
  *a3 = v7;
LABEL_29:
  if (v32)
  {
    v15 = v31;
    v31 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolAddress(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::object::ObjectFile::getSymbolValue(a1, a2, &v25);
  if (v26)
  {
    v6 = v25;
LABEL_4:
    *(a3 + 8) |= 1u;
    *a3 = v6;
    return;
  }

  v7 = v25;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v23);
  v6 = v23;
  if (v24)
  {
    goto LABEL_4;
  }

  v8 = bswap32(*(v23 + 6)) >> 16;
  if (v8 - 65521 < 2 || v8 == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = v7;
    return;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection((a1 + 56), a2, &v21);
  if (v22)
  {
    v10 = v21;
    v21 = 0;
LABEL_14:
    *(a3 + 8) |= 1u;
    *a3 = v10;
    goto LABEL_25;
  }

  if (*(*(a1 + 56) + 16) == 256)
  {
    v11 = *(a1 + 136);
    if (v11)
    {
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable((a1 + 56), v11, &v16);
      if (v17)
      {
        v10 = v16;
        goto LABEL_14;
      }

      v12 = *(&v16 + 1);
      v13 = v16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *&v16 = v13;
    *(&v16 + 1) = v12;
    v17 = 1;
    v18 = 0;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection((a1 + 56), v23, v21, &v16, &v19);
    v10 = v19;
    if (v20)
    {
      goto LABEL_14;
    }

    if (v19)
    {
      v7 += bswap64(v19[2]);
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v7;
LABEL_25:
  if (v22)
  {
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v24)
  {
    v15 = v23;
    v23 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolValueImpl(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v6);
  if (v7)
  {
    v5 = v6;
    v6 = 0;
    llvm::report_fatal_error(&v5);
  }

  result = bswap64(*(v6 + 8));
  if (*(v6 + 6) != -3585)
  {
    v4 = *(*(a1 + 56) + 18);
    if ((v4 == 10240 || v4 == 2048) && (*(v6 + 4) & 0xF) == 2)
    {
      result &= ~1uLL;
    }
  }

  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolAlignment(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  if (*(v4 + 6) == -3329)
  {
    return bswap64(*(v4 + 8));
  }

  else
  {
    return 0;
  }
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolType(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v7);
  v4 = v7;
  if (v8)
  {
    *(a3 + 8) |= 1u;
    *a3 = v4;
    return;
  }

  v5 = *(v7 + 4) & 0xF;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      *(a3 + 8) &= ~1u;
      v6 = 3;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      *(a3 + 8) &= ~1u;
      v6 = 4;
      goto LABEL_16;
    }

    if (v5 != 5)
    {
LABEL_14:
      *(a3 + 8) &= ~1u;
      v6 = 1;
      goto LABEL_16;
    }

LABEL_11:
    *(a3 + 8) &= ~1u;
    v6 = 2;
    goto LABEL_16;
  }

  if ((*(v7 + 4) & 0xF) == 0)
  {
    *(a3 + 8) &= ~1u;
    *a3 = 0;
    return;
  }

  if (v5 == 1)
  {
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  *(a3 + 8) &= ~1u;
  v6 = 5;
LABEL_16:
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSection(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1 + 7, a2, HIDWORD(a2), &v12);
  if (v13)
  {
    v6 = v12;
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, v3, &v10);
    if (v11)
    {
      v7 = v10;
      *(a3 + 16) |= 1u;
      *a3 = v7;
    }

    else
    {
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSection(a1, v12, v10, a3);
      if (v11)
      {
        v8 = v10;
        v10 = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }
    }

    if (v13)
    {
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionIndex(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v7);
  if (v8)
  {
    v3 = v7;
    v7 = 0;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  llvm::handleAllErrors<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionIndex(llvm::object::DataRefImpl)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v4 = v7;
  if (v8)
  {
    v7 = 0;
    if (v4)
    {
      (*(*v4 + 1))(v4);
    }
  }

  return (a2 - v4) >> 6;
}

llvm::object *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContents@<X0>(llvm::object *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 4) == 0x8000000)
  {
    v4 = *(result + 2);
    *(a3 + 16) &= ~1u;
    *a3 = v4;
    *(a3 + 8) = 0;
  }

  else
  {
    v6 = (result + 16);
    v7 = *(result + 2);
    v11[0] = *(result + 1);
    v11[1] = v7;
    result = llvm::object::Binary::checkOffset(v11, bswap64(*(a2 + 24)) + *&v11[0], bswap64(*(a2 + 32)), &v12);
    v8 = v12;
    if (v12)
    {
      *(a3 + 16) |= 1u;
      *a3 = v8;
    }

    else
    {
      v9 = *v6 + bswap64(*(a2 + 24));
      v10 = bswap64(*(a2 + 32));
      *(a3 + 16) &= ~1u;
      *a3 = v9;
      *(a3 + 8) = v10;
    }
  }

  return result;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isSectionData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x1000000)
  {
    return 0;
  }

  v2 = bswap64(*(a2 + 8));
  return (v2 & 2) != 0 && (v2 & 4) == 0;
}

BOOL llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isBerkeleyText(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*(a2 + 8));
  if ((v2 & 2) == 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  return (v2 & 1) == 0;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isBerkeleyData(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 248))(a1) & 1) != 0 || *(a2 + 4) == 0x8000000)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 15) >> 1) & 1;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::isDebugSection(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v6);
  if (v8)
  {
    v5 = v6;
    v6 = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (v8)
    {
      result = v6;
      v6 = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v7 < 6)
  {
    return 0;
  }

  if (*v6 == 1650811950 && *(v6 + 4) == 26485)
  {
    return 1;
  }

  if (v7 == 6)
  {
    return 0;
  }

  if (*v6 == 1701083694 && *(v6 + 3) == 1735746149)
  {
    return 1;
  }

  if (v7 != 10)
  {
    return 0;
  }

  return *v6 == 0x646E695F6264672ELL && *(v6 + 8) == 30821;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v5);
  result = v5;
  if ((v6 & 1) == 0)
  {
    return ((a2 - v5) / (bswap32(*(*(a1 + 56) + 58)) >> 16));
  }

  v5 = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_rel_end(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 272))(a1);
  v5 = *(a2 + 4);
  if (v5 == 0x4000000 || v5 == 150994944)
  {
    RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, v4);
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(RelSection + 10)), &v16);
    if (v17)
    {
      v9 = v16;
      v16 = 0;
      v11 = v9;
      *&v12.__val_ = llvm::errorToErrorCode(&v11);
      v12.__cat_ = v10;
      std::error_code::message(&v13, &v12);
      v15 = 260;
      v14 = &v13;
      llvm::report_fatal_error(&v14, 1);
    }

    v4 += (bswap64(*(a2 + 32)) / bswap64(*(a2 + 56))) << 32;
  }

  return v4;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocatedSection(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = bswap32(*(a2 + 4));
  if (v5 == 4 || v5 == 9)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1 + 7, bswap32(*(a2 + 44)), &v10);
    v7 = v10;
    if (v11)
    {
      *(a3 + 16) |= 1u;
    }

    else
    {
      *(a3 + 16) &= ~1u;
      *(a3 + 8) = a1;
    }

    *a3 = v7;
  }

  else
  {
    v8 = (*(*a1 + 360))(a1);
    *(a3 + 16) &= ~1u;
    *a3 = v8;
    *(a3 + 8) = v9;
  }
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationOffset(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  return bswap64(*Rel);
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationSymbol(void *a1, unint64_t a2)
{
  RelSection = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2);
  if (*(RelSection + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  v6 = a1[7];
  if (*(v6 + 18) == 2048 && *(v6 + 4) == 2)
  {
    v7 = bswap64(Rel[1]);
    if (*(v6 + 5) == 1)
    {
      v8 = v7 << 32;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = bswap64(Rel[1]);
  }

  if (HIDWORD(v8))
  {
    return v8 & 0xFFFFFFFF00000000 | bswap32(*(RelSection + 10));
  }

  else
  {
    return (*(*a1 + 56))(a1);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationType(uint64_t a1, unint64_t a2)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) == 150994944)
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRel(a1, a2);
  }

  else
  {
    Rel = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2);
  }

  v5 = *(a1 + 56);
  if (*(v5 + 18) == 2048 && *(v5 + 4) == 2)
  {
    v6 = bswap64(Rel[1]);
    v7 = *(v5 + 5) == 1;
    v8 = (v6 >> 24) & 0xFF0000 | HIBYTE(v6) | (v6 >> 8) & 0xFF000000 | (v6 >> 40) & 0xFF00;
    if (!v7)
    {
      LODWORD(v8) = v6;
    }
  }

  else
  {
    LODWORD(v8) = bswap64(Rel[1]);
  }

  return v8;
}

void *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 56;
  v5 = (*(*a1 + 320))(a1, a2);

  return llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::getRelocationTypeName(v4, v5, a3);
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_relocation_sections(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v31);
  if ((v33 & 1) == 0 && v32)
  {
    v4 = v31;
    v5 = v31 + (v32 << 6);
    do
    {
      if (*(v4 + 4) == 100663296)
      {
        v6 = (bswap64(*(v4 + 24)) + *(a1 + 16));
        v7 = *v6;
        if (*v6)
        {
          v8 = v6 + 2;
          do
          {
            if (v7 == 0x1100000000000000 || v7 == 0x700000000000000 || v7 == 0x1700000000000000)
            {
              v27 = bswap64(*(v8 - 1));
              std::vector<unsigned long long>::push_back[abi:nn200100](&__p, &v27);
            }

            v11 = *v8;
            v8 += 2;
            v7 = v11;
          }

          while (v11);
        }
      }

      v4 += 64;
    }

    while (v4 != v5);
    if (v32)
    {
      v12 = 0;
      v13 = v31;
      v14 = v31 + (v32 << 6);
      do
      {
        v15 = __p;
        if (__p != v29)
        {
          v16 = bswap64(*(v13 + 16));
          while (*v15 != v16)
          {
            if (++v15 == v29)
            {
              goto LABEL_39;
            }
          }
        }

        if (v15 != v29)
        {
          v17 = *(a2 + 16);
          if (v12 >= v17)
          {
            v18 = (v12 - *a2) >> 4;
            if ((v18 + 1) >> 60)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v19 = v17 - *a2;
            v20 = v19 >> 3;
            if (v19 >> 3 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::SectionRef>>(a2, v21);
            }

            v22 = (16 * v18);
            *v22 = v13;
            v22[1] = a1;
            v12 = (16 * v18 + 16);
            v23 = *(a2 + 8) - *a2;
            v24 = 16 * v18 - v23;
            memcpy(v22 - v23, *a2, v23);
            v25 = *a2;
            *a2 = v24;
            *(a2 + 8) = v12;
            *(a2 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v13;
            v12[1] = a1;
            v12 += 2;
          }

          *(a2 + 8) = v12;
        }

LABEL_39:
        v13 += 64;
      }

      while (v13 != v14);
    }
  }

  if (v33)
  {
    v26 = v31;
    v31 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_begin(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v2);
  result = v2;
  if (v3)
  {
    v2 = 0;
    if (result)
    {
      (*(*result + 8))(result);
      return 0;
    }
  }

  return result;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::section_end(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), v2);
  result = v2[0];
  if ((v3 & 1) == 0)
  {
    return v2[0] + (v2[1] << 6);
  }

  v2[0] = 0;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

const char *llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getFileFormatName(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 4);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
    }

    v5 = bswap32(*(v3 + 18)) >> 16;
    if (v5 > 82)
    {
      if (v5 <= 223)
      {
        if (v5 > 104)
        {
          if (v5 == 105)
          {
            return "elf32-msp430";
          }

          if (v5 == 164)
          {
            return "elf32-hexagon";
          }
        }

        else
        {
          if (v5 == 83)
          {
            return "elf32-avr";
          }

          if (v5 == 94)
          {
            return "elf32-xtensa";
          }
        }
      }

      else if (v5 <= 243)
      {
        if (v5 == 224)
        {
          return "elf32-amdgpu";
        }

        if (v5 == 243)
        {
          return "elf32-littleriscv";
        }
      }

      else
      {
        switch(v5)
        {
          case 244:
            return "elf32-lanai";
          case 252:
            return "elf32-csky";
          case 258:
            return "elf32-loongarch";
        }
      }

      return "elf32-unknown";
    }

    if (v5 > 7)
    {
      if (v5 > 19)
      {
        switch(v5)
        {
          case 20:
            return "elf32-powerpc";
          case 40:
            return "elf32-bigarm";
          case 62:
            return "elf32-x86-64";
        }

        return "elf32-unknown";
      }

      if (v5 == 8)
      {
        return "elf32-mips";
      }

      if (v5 != 18)
      {
        return "elf32-unknown";
      }

      return "elf32-sparc";
    }

    if (v5 > 3)
    {
      if (v5 == 4)
      {
        return "elf32-m68k";
      }

      if (v5 == 6)
      {
        return "elf32-iamcu";
      }
    }

    else
    {
      if (v5 == 2)
      {
        return "elf32-sparc";
      }

      if (v5 == 3)
      {
        return "elf32-i386";
      }
    }

    return "elf32-unknown";
  }

  v7 = bswap32(*(v3 + 18)) >> 16;
  if (v7 > 182)
  {
    if (v7 > 246)
    {
      switch(v7)
      {
        case 247:
          return "elf64-bpf";
        case 251:
          return "elf64-ve";
        case 258:
          return "elf64-loongarch";
      }
    }

    else
    {
      switch(v7)
      {
        case 183:
          return "elf64-bigaarch64";
        case 224:
          return "elf64-amdgpu";
        case 243:
          return "elf64-littleriscv";
      }
    }
  }

  else if (v7 > 21)
  {
    switch(v7)
    {
      case 22:
        return "elf64-s390";
      case 43:
        return "elf64-sparc";
      case 62:
        return "elf64-x86-64";
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        return "elf64-i386";
      case 8:
        return "elf64-mips";
      case 21:
        return "elf64-powerpc";
    }
  }

  return "elf64-unknown";
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getArch(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *(a1 + 56);
  v4 = bswap32(*(v3 + 18)) >> 16;
  if (v4 > 82)
  {
    if (v4 > 242)
    {
      if (v4 > 250)
      {
        switch(v4)
        {
          case 251:
            return 60;
          case 252:
            return 10;
          case 258:
            v6 = *(v3 + 4);
            if (v6 != 1)
            {
              if (v6 == 2)
              {
                return 14;
              }

              goto LABEL_62;
            }

            return 13;
          default:
            return 0;
        }
      }

      else
      {
        switch(v4)
        {
          case 243:
            v8 = *(v3 + 4);
            if (v8 == 1)
            {
              return 27;
            }

            else
            {
              if (v8 != 2)
              {
                goto LABEL_62;
              }

              return 28;
            }

          case 244:
            return 55;
          case 247:
            return 9;
          default:
            return 0;
        }
      }
    }

    else if (v4 > 163)
    {
      if (v4 == 164)
      {
        return 12;
      }

      else
      {
        if (v4 != 183)
        {
          return 0;
        }

        return 4;
      }
    }

    else
    {
      switch(v4)
      {
        case 'S':
          return 7;
        case '^':
          return 40;
        case 'i':
          return 20;
        default:
          return 0;
      }
    }
  }

  else if (v4 > 19)
  {
    if (v4 > 39)
    {
      switch(v4)
      {
        case '(':
          return 1;
        case '+':
          return 30;
        case '>':
          return 38;
        default:
          return 0;
      }
    }

    else
    {
      switch(v4)
      {
        case 20:
          return 21;
        case 21:
          return 23;
        case 22:
          return 32;
        default:
          return 0;
      }
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v4 == 4)
          {
            return 15;
          }

          return 0;
        }

        return 37;
      }

      return 29;
    }

    if (v4 == 6)
    {
      return 37;
    }

    if (v4 != 8)
    {
      if (v4 == 18)
      {
        return 29;
      }

      return 0;
    }

    v7 = *(v3 + 4);
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        return 18;
      }

LABEL_62:
      llvm::report_fatal_error("Invalid ELFCLASS!", 1, a3);
    }

    return 16;
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStartAddress@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *(a2 + 8) &= ~1u;
  *a2 = bswap64(*(v2 + 24));
  return result;
}

unint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolSize(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return bswap64(*(v4 + 16));
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolBinding(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 4) >> 4;
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolOther(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 5);
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSymbolELFType(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>((a1 + 56), a2, HIDWORD(a2), &v4);
  if (v5)
  {
    v3 = v4;
    v4 = 0;
    llvm::report_fatal_error(&v3);
  }

  return *(v4 + 4) & 0xF;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelocationAddend(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRelSection(a1, a2) + 1) != 0x4000000)
  {
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap64(llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getRela(a1, a2)[2]);
  *(a3 + 8) &= ~1u;
  *a3 = v6;
}

void llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getBuildAttributes(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::ELFAttributeParser *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v17);
  if (v19)
  {
    v6 = v17;
    v17 = 0;
    *a3 = v6;
    goto LABEL_16;
  }

  if (!v18)
  {
    goto LABEL_7;
  }

  v7 = (v17 + 4);
  v8 = v18 << 6;
  while (*v7 != 50331760)
  {
    v7 += 16;
    v8 -= 64;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>((a1 + 56), (v7 - 1), &v14);
  v9 = v14;
  if (v16)
  {
    goto LABEL_15;
  }

  if (*v14 != 65 || v15 == 1)
  {
    v9 = 0;
LABEL_15:
    *a3 = v9;
    goto LABEL_16;
  }

  llvm::ELFAttributeParser::parse(a2, v14, v15, 0, a3);
  v12 = *a3;
  if (v16)
  {
    v13 = v14;
    v14 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if (!v12)
  {
LABEL_7:
    *a3 = 0;
  }

LABEL_16:
  if (v19)
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getDynamicSymbolIterators@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_begin(a1);
  v6 = v5;
  result = llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::dynamic_symbol_end(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v8;
  return result;
}

uint64_t *std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 6);
  }

  return a1;
}

void std::vector<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1, a2, &v9);
  v7 = v9;
  if (v10)
  {
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, v9, v4, a4);
    if (v10)
    {
      v8 = v9;
      v9 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v7);
  if (v8)
  {
    v5 = v7[0];
    v6 = *(a3 + 8) | 1;
  }

  else
  {
    if (v7[1] <= a2)
    {
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v5 = v7[0] + (a2 << 6);
    v6 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v6;
  *a3 = v5;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(void *a1@<X0>, unint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, a2, v21);
  if (v22)
  {
    v7 = v21[0];
    v8 = *(a4 + 8) | 1;
  }

  else
  {
    if (v21[1] <= a3)
    {
      v10 = 24 * a3;
      v11[0] = "can't read an entry at 0x";
      v11[2] = &v10;
      v12 = 3587;
      v13[0] = v11;
      v13[2] = ": it goes past the end of the section (0x";
      v14 = 770;
      v9 = bswap64(a2[4]);
      v15[0] = v13;
      v15[2] = &v9;
      v16 = 3586;
      v17 = v15;
      v18 = ")";
      v19 = 770;
      v20 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = v21[0] + 24 * a3;
    v8 = *(a4 + 8) & 0xFE;
  }

  *(a4 + 8) = v8;
  *a4 = v7;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = bswap64(v4);
  v28 = v5;
  if (v4)
  {
    v6 = *(v3 + 58);
    if (v6 != 0x4000)
    {
      v25 = "invalid e_shentsize in ELF header: ";
      v26 = __rev16(v6);
      v27 = 2307;
      v21[0] = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v7 = a1[1];
    v8 = v5 + 64;
    if (v5 <= 0xFFFFFFFFFFFFFFBFLL)
    {
      v9 = v8 >= v7;
      v10 = v8 == v7;
    }

    else
    {
      v9 = 1;
      v10 = 0;
    }

    if (!v10 && v9)
    {
      v25 = "section header table goes past the end of the file: e_shoff = 0x";
      v26 = &v28;
      v27 = 3587;
      v21[0] = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v13 = v3 + v5;
    v14 = *(v3 + 60);
    v15 = __rev16(v14);
    v24 = v15;
    if (!v14)
    {
      v15 = bswap64(*(v13 + 32));
      v24 = v15;
      if (v15 >> 58)
      {
        *v21 = "invalid number of sections specified in the NULL section's sh_size field (";
        v22 = &v24;
        v23 = 3075;
        v25 = v21;
        v26 = ")";
        v27 = 770;
        LODWORD(v19[0]) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }
    }

    v9 = __CFADD__(v5, v15 << 6);
    v16 = v5 + (v15 << 6);
    if (v9)
    {
      v17[0] = "invalid section header table offset (e_shoff = 0x";
      v17[2] = &v28;
      v18 = 3587;
      v19[0] = v17;
      v19[2] = ") or invalid number of sections specified in the first section header's sh_size field (0x";
      v20 = 770;
      *v21 = v19;
      v22 = &v24;
      v23 = 3586;
      v25 = v21;
      v26 = ")";
      v27 = 770;
      v29 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    if (v16 > v7)
    {
      v25 = "section table goes past the end of file";
      v27 = 259;
      v21[0] = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a2 + 16) &= ~1u;
    *a2 = v13;
    *(a2 + 8) = v15;
  }

  else
  {
    v11 = a1[2];
    v12 = a1[3];
    if (v11 == v12)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) &= ~1u;
    }

    else
    {
      *(a2 + 16) &= ~1u;
      *a2 = v11;
      *(a2 + 8) = (v12 - v11) >> 6;
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[7] != 0x1800000000000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v28);
    v12 = std::string::insert(&v28, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v30, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v34 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = 24;
    v38[0] = __p;
    v39 = &v32;
    v40 = 2564;
    v41[0] = v38;
    v42 = ", but got ";
    v43 = 770;
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap64(a2[3]);
  v7 = bswap64(a2[4]);
  v36 = v7;
  v37 = v6;
  if (v7 % 0x18)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v32);
    v8 = std::string::insert(&v32, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3076;
    v38[0] = __p;
    v39 = ") which is not a multiple of its sh_entsize (";
    v40 = 770;
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v41[0] = v38;
    v42 = &v27;
    v43 = 3074;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (__CFADD__(v6, v7))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v32);
    v16 = std::string::insert(&v32, 0, "section ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, " has a sh_offset (0x");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v37;
    v35 = 3588;
    v38[0] = __p;
    v39 = ") + sh_size (0x";
    v40 = 770;
    v41[0] = v38;
    v42 = &v36;
    v43 = 3586;
    v44 = v41;
    v45 = ") that cannot be represented";
    v46 = 770;
    LODWORD(v27.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v7 + v6 > a1[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v26);
    v20 = std::string::insert(&v26, 0, "section ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v27, " has a sh_offset (0x");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v28.__r_.__value_.__r.__words[0] = &v32;
    v28.__r_.__value_.__r.__words[2] = &v37;
    v29 = 3588;
    v30.__r_.__value_.__r.__words[0] = &v28;
    v30.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v31 = 770;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3586;
    v38[0] = __p;
    v39 = ") that is greater than the file size (0x";
    v40 = 770;
    v25 = a1[1];
    v41[0] = v38;
    v42 = &v25;
    v43 = 3586;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    v47 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v24 = *a1 + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v24;
  *(a3 + 8) = v7 / 0x18;
}

void llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v13);
  if (v14)
  {
    v5 = v13[0];
    v13[0] = 0;
    v12.__r_.__value_.__r.__words[0] = v5;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12);
    if (v12.__r_.__value_.__r.__words[0])
    {
      (*(*v12.__r_.__value_.__l.__data_ + 8))(v12.__r_.__value_.__r.__words[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(a3, "[unknown index]");
  }

  else
  {
    std::to_string(&v11, (a2 - v13[0]) >> 6);
    v6 = std::string::insert(&v11, 0, "[index ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "]");
    v9 = v8->__r_.__value_.__r.__words[2];
    *a3 = *&v8->__r_.__value_.__l.__data_;
    a3[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  if (v14)
  {
    v10 = v13[0];
    v13[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }
}

uint64_t llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::toDRI(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections((a1 + 56), &v9);
  v5 = v9;
  if (v10)
  {
    v9 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a3;
    v6 = ((a2 - v9) >> 6);
  }

  return v6 | (v7 << 32);
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getStringTable(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 50331648)
  {
    goto LABEL_10;
  }

  llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v29);
  v10 = std::string::insert(&v29, 0, "invalid sh_type for string table section ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v30, ": expected SHT_STRTAB, but got ");
  v13 = v12->__r_.__value_.__r.__words[2];
  v34 = *&v12->__r_.__value_.__l.__data_;
  v35 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(*(a2 + 4)));
  v31[0] = &v34;
  v31[2] = ELFSectionTypeName;
  v31[3] = v15;
  v32 = 1284;
  a3(&v28, a4, v31);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v16 = v28.__r_.__value_.__r.__words[0];
  if (!v28.__r_.__value_.__r.__words[0])
  {
LABEL_10:
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>(a1, a2, &v34);
    v17 = v34;
    if (v35)
    {
      *&v34 = 0;
      *(a5 + 16) |= 1u;
      *a5 = v17;
    }

    else
    {
      v18 = *(&v34 + 1);
      if (!*(&v34 + 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v28);
        v23 = std::string::insert(&v28, 0, "SHT_STRTAB string table section ");
        v24 = v23->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v29, " is empty");
        v26 = v25->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v32 = 260;
        v31[0] = &v30;
        v33 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      if (*(v34 + *(&v34 + 1) - 1))
      {
        llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v28);
        v19 = std::string::insert(&v28, 0, "SHT_STRTAB string table section ");
        v20 = v19->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        v21 = std::string::append(&v29, " is non-null terminated");
        v22 = v21->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v32 = 260;
        v31[0] = &v30;
        v33 = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      *(a5 + 16) &= ~1u;
      *a5 = v17;
      *(a5 + 8) = v18;
    }

    if (v35)
    {
      v27 = v34;
      *&v34 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else
  {
    *(a5 + 16) |= 1u;
    *a5 = v16;
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<char>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = bswap64(*(a2 + 24));
  v6 = bswap64(*(a2 + 32));
  v37 = v6;
  v38 = v5;
  if (__CFADD__(v5, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v24);
    v7 = std::string::insert(&v24, 0, "section ");
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v19, " has a sh_offset (0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v22 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v25[0] = __p;
    v26 = &v38;
    v27 = 3588;
    v28[0] = v25;
    v29 = ") + sh_size (0x";
    v30 = 770;
    v31[0] = v28;
    v32 = &v37;
    v33 = 3586;
    v34 = v31;
    v35 = ") that cannot be represented";
    v36 = 770;
    LODWORD(v18.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v6 + v5 > a1[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v17);
    v11 = std::string::insert(&v17, 0, "section ");
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v18, " has a sh_offset (0x");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v19.__r_.__value_.__r.__words[0] = &v24;
    v19.__r_.__value_.__r.__words[2] = &v38;
    v20 = 3588;
    __p[0] = &v19;
    v22 = ") + sh_size (0x";
    v23 = 770;
    v25[0] = __p;
    v26 = &v37;
    v27 = 3586;
    v28[0] = v25;
    v29 = ") that is greater than the file size (0x";
    v30 = 770;
    v16 = a1[1];
    v31[0] = v28;
    v32 = &v16;
    v33 = 3586;
    v34 = v31;
    v35 = ")";
    v36 = 770;
    v39 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v15 = *a1 + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v6;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::sections(a1, v8);
  if (v9)
  {
    v6 = v8[0];
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable(a1, a2, v8[0], v8[1], a3);
    if (v9)
    {
      v7 = v8[0];
      v8[0] = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    goto LABEL_6;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)0,true>>>(a1, a3, v13);
  if ((v14 & 1) == 0)
  {
    a3 = v13[0];
LABEL_6:
    v10 = a4[1];
    v12[0] = *a4;
    v12[1] = v10;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSection(a1, a2, a3, v12, a5);
    if ((v14 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v9 = v13[0];
  v13[0] = 0;
  *(a5 + 8) |= 1u;
  *a5 = v9;
LABEL_7:
  v11 = v13[0];
  v13[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSHNDXTable(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>(a1, a2, &v31);
  v10 = v31;
  if (v33)
  {
    v31 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v11 = bswap32(*(a2 + 40));
    if (a4 <= v11)
    {
      v27 = "invalid section index: ";
      v28 = v11;
      v29 = 2051;
      v23[0] = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v12 = a3 + (v11 << 6);
    v13 = *(v12 + 4);
    if (v13 != 0x2000000 && v13 != 184549376)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName((bswap32(*(*a1 + 18)) >> 16), bswap32(v13));
      v26 = 1283;
      *v23 = "SHT_SYMTAB_SHNDX section is linked with ";
      v24 = ELFSectionTypeName;
      v25 = v18;
      v27 = v23;
      v28 = " section (expected SHT_SYMTAB/SHT_DYNSYM)";
      v29 = 770;
      LODWORD(v20[0]) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v15 = v32;
    v22 = bswap64(*(v12 + 32)) / 0x18;
    if (v32 != v22)
    {
      v19 = v32;
      v20[0] = "SHT_SYMTAB_SHNDX has ";
      v20[2] = &v19;
      v21 = 2563;
      *v23 = v20;
      v24 = " entries, but the symbol table associated has ";
      v26 = 770;
      v27 = v23;
      v28 = &v22;
      v29 = 3074;
      v30 = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    *(a5 + 16) &= ~1u;
    *(a5 + 8) = v15;
  }

  *a5 = v10;
  if (v33)
  {
    v16 = v31;
    v31 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)0,1ul,1ul>>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[7] != 0x400000000000000)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v28);
    v12 = std::string::insert(&v28, 0, "section ");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v30, " has invalid sh_entsize: expected ");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v34 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = 4;
    v38[0] = __p;
    v39 = &v32;
    v40 = 2564;
    v41[0] = v38;
    v42 = ", but got ";
    v43 = 770;
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = bswap64(a2[3]);
  v7 = bswap64(a2[4]);
  v36 = v7;
  v37 = v6;
  if ((v7 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v32);
    v8 = std::string::insert(&v32, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3076;
    v38[0] = __p;
    v39 = ") which is not a multiple of its sh_entsize (";
    v40 = 770;
    v27.__r_.__value_.__r.__words[0] = bswap64(a2[7]);
    v41[0] = v38;
    v42 = &v27;
    v43 = 3074;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (__CFADD__(v6, v7))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v32);
    v16 = std::string::insert(&v32, 0, "section ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, " has a sh_offset (0x");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v30;
    v34 = &v37;
    v35 = 3588;
    v38[0] = __p;
    v39 = ") + sh_size (0x";
    v40 = 770;
    v41[0] = v38;
    v42 = &v36;
    v43 = 3586;
    v44 = v41;
    v45 = ") that cannot be represented";
    v46 = 770;
    LODWORD(v27.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (v7 + v6 > a1[1])
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)0,true>>(a1, a2, &v26);
    v20 = std::string::insert(&v26, 0, "section ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v27, " has a sh_offset (0x");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v28.__r_.__value_.__r.__words[0] = &v32;
    v28.__r_.__value_.__r.__words[2] = &v37;
    v29 = 3588;
    v30.__r_.__value_.__r.__words[0] = &v28;
    v30.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v31 = 770;
    __p[0] = &v30;
    v34 = &v36;
    v35 = 3586;
    v38[0] = __p;
    v39 = ") that is greater than the file size (0x";
    v40 = 770;
    v25 = a1[1];
    v41[0] = v38;
    v42 = &v25;
    v43 = 3586;
    v44 = v41;
    v45 = ")";
    v46 = 770;
    v47 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v24 = *a1 + v6;
  *(a3 + 16) &= ~1u;
  *a3 = v24;
  *(a3 + 8) = v7 >> 2;
}