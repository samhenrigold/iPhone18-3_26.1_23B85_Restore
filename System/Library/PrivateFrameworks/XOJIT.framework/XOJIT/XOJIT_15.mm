void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::sections(a1, v8);
  if (v9)
  {
    v6 = v8[0];
    *(a3 + 16) |= 1u;
    *a3 = v6;
  }

  else
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(a1, a2, v8[0], v8[1], a3);
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

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSHNDXTable(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>(a1, a2, &v31);
  v10 = v31;
  if (v33)
  {
    v31 = 0;
    *(a5 + 16) |= 1u;
  }

  else
  {
    v11 = *(a2 + 40);
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
    if (v13 != 2 && v13 != 11)
    {
      ELFSectionTypeName = llvm::object::getELFSectionTypeName(*(*a1 + 18), v13);
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
    v22 = *(v12 + 32) / 0x18uLL;
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

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[7] != 4)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v28);
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
    v27.__r_.__value_.__r.__words[0] = a2[7];
    v44 = v41;
    v45 = &v27;
    v46 = 3074;
    LODWORD(v26.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[3];
  v7 = a2[4];
  v36 = v7;
  v37 = v6;
  if ((v7 & 3) != 0)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v32);
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
    v27.__r_.__value_.__r.__words[0] = a2[7];
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v32);
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
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,true>>(a1, a2, &v26);
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

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTableForSymtab(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 2 && v6 != 11)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v8 = *(a2 + 40);
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    v11 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v9[0] = llvm::object::defaultWarningHandler;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getStringTable(a1, a3 + (v8 << 6), llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, v9, a5);
}

void llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSymbolLinkageAndScope(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 4) >> 4;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 10)
    {
      goto LABEL_11;
    }

    v6 = 0;
    LOWORD(v5) = 1;
    v7 = 1;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_13;
      }

LABEL_11:
      v10[0] = "Unrecognized symbol binding ";
      v11 = v5;
      v12 = 2307;
      v13[0] = v10;
      v14 = " for ";
      v15 = 770;
      v16 = v13;
      v17 = a2;
      v18 = a3;
      v19 = 1282;
      getErrorErrorCat();
      operator new();
    }

    v7 = 0;
    LOWORD(v5) = 3;
    v6 = 3;
  }

LABEL_13:
  v9 = *(a1 + 5) & 3;
  if (v9 == 1)
  {
    v10[0] = "Unrecognized symbol visibility ";
    v11 = 1;
    v12 = 2307;
    v13[0] = v10;
    v14 = " for ";
    v15 = 770;
    v16 = v13;
    v17 = a2;
    v18 = a3;
    v19 = 1282;
    getErrorErrorCat();
    operator new();
  }

  if (v9 != 2)
  {
    LOWORD(v5) = v6;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v7 | (v5 << 8);
}

void llvm::object::getExtendedSymbolTableIndex<llvm::object::ELFType<(llvm::support::endianness)1,true>>(unsigned int a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v23[0] = "found an extended symbol index (";
    v24 = a1;
    v25 = 2051;
    v29 = v23;
    v31 = "), but unable to locate the extended symbol index table";
    v32 = 770;
    LODWORD(v21[0]) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v4 = a1;
  llvm::object::DataRegion<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>::operator[](a2, a1, &v27);
  if (v28)
  {
    v21[0] = "unable to read an extended symbol table at index ";
    v21[2] = v4;
    v22 = 2051;
    v23[0] = v21;
    v24 = ": ";
    v25 = 770;
    v26 = v27;
    v27 = 0;
    v29 = &v31;
    v30 = 0x200000000;
    v20.__r_.__value_.__r.__words[0] = &v29;
    llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v26, &v20);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v5 = v29;
    v6 = v30;
    memset(&v20, 0, sizeof(v20));
    if (v30)
    {
      v7 = 24 * v30;
      v8 = v30 - 1;
      v9 = v29 + 23;
      v10 = v7;
      do
      {
        v11 = *v9;
        if (v11 < 0)
        {
          v11 = *(v9 - 15);
        }

        v8 += v11;
        v9 += 24;
        v10 -= 24;
      }

      while (v10);
      std::string::reserve(&v20, v8);
      v12 = *(v5 + 23);
      if (v12 >= 0)
      {
        v13 = v5;
      }

      else
      {
        v13 = *v5;
      }

      if (v12 >= 0)
      {
        v14 = *(v5 + 23);
      }

      else
      {
        v14 = v5[1];
      }

      std::string::append(&v20, v13, v14);
      if (v6 != 1)
      {
        v15 = v5 + 3;
        v16 = v7 - 24;
        do
        {
          std::string::append(&v20, "\n", 1uLL);
          v17 = *(v15 + 23);
          if (v17 >= 0)
          {
            v18 = v15;
          }

          else
          {
            v18 = *v15;
          }

          if (v17 >= 0)
          {
            v19 = *(v15 + 23);
          }

          else
          {
            v19 = v15[1];
          }

          std::string::append(&v20, v18, v19);
          v15 += 3;
          v16 -= 24;
        }

        while (v16);
      }
    }

    llvm::SmallVector<std::string,2u>::~SmallVector(&v29);
    v29 = v23;
    v31 = &v20;
    v32 = 1026;
    LODWORD(v26) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  *(a3 + 8) &= ~1u;
  *a3 = v27;
}

void anonymous namespace::ELFJITLinker_aarch64::~ELFJITLinker_aarch64(_anonymous_namespace_::ELFJITLinker_aarch64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_aarch64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
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

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_aarch64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_i386@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v12, 1, &v13);
  v6 = v13;
  if ((v14 & 1) == 0)
  {
    v7 = *(v13 + 4);
    v8 = *(v13 + 5);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::object::ObjectFile::makeTriple(__p, v6);
    llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder_i386(v12, v7, v8, v6 + 56, &v11, __p);
  }

  v13 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v13);
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_i386(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_i386(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v11);
    if (v12 < 8)
    {
      *&v9 = llvm::jitlink::markAllSymbolsLive;
      v10 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v5, &v9);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v9);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v5, &v11);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
    v12 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v5[1] + 1, &v11);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
    *&v11 = llvm::jitlink::i386::optimizeGOTAndStubAccesses;
    v12 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v6[1] + 1, &v11);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
  }

  (*(**a2 + 72))(&v11);
  if (!v11)
  {
    operator new();
  }

  v3 = *a2;
  v4 = v11;
  *&v11 = 0;
  (*(*v3 + 24))(v3, &v4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *&v11 = &v7;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = &v6[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = v6;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = &v5[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = v5;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
}

uint64_t *anonymous namespace::buildTables_ELF_i386@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = v23;
  v22 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v28);
  v29[0] = v28[0];
  v29[1] = v28[1];
  v29[2] = v28[2];
  v29[3] = v28[3];
  llvm::jitlink::LinkGraph::blocks(this, v26);
  v27[0] = v26[4];
  v27[1] = v26[5];
  v27[2] = v26[6];
  v27[3] = v26[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v30, v29, v27);
  v4 = v30;
  v18 = v31;
  if (v30 != v31)
  {
    while (1)
    {
      v5 = *(*v4 + 40);
      v6 = *(*v4 + 48);
      while (v5 != v6)
      {
        v7 = *(v5 + 24);
        switch(v7)
        {
          case 9:
            *(v5 + 24) = 8;
            EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(v23, this, *v5);
LABEL_21:
            *v5 = EntryForTarget;
            break;
          case 8:
            if (!v25)
            {
              llvm::jitlink::LinkGraph::createSection(this, "$__GOT", 6, 1);
            }

            break;
          case 10:
            v8 = *v5;
            if ((*(*(*v5 + 8) + 8) & 1) == 0)
            {
              *(v5 + 24) = 12;
              *&v28[0] = 0;
              v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v19, v8, v28);
              v10 = *&v28[0];
              if (!v9)
              {
                v10 = v19[0] + 16 * v20;
              }

              if (v10 == v19[0] + 16 * v20)
              {
                v11 = v22;
                if (!v22)
                {
                  llvm::jitlink::LinkGraph::createSection(this, "$__STUBS", 8, 5);
                }

                v12 = llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(v21, this, v8);
                *&v28[0] = &llvm::jitlink::i386::PointerJumpStubContent;
                *(&v28[0] + 1) = 6;
                *&v26[0] = 0;
                *&v29[0] = 8;
                *&v27[0] = 0;
                v13 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v11, v28, v26, v29, v27);
                llvm::jitlink::Block::addEdge(v13, 3, 2, v12, 0);
                v14 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v13, 0, 6, 1, 0);
                v15 = *v8;
                *&v26[0] = v15;
                if ((v15 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((v15 + 8), 1uLL);
                }

                *(&v26[0] + 1) = v14;
                llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v19, v26, v26 + 1, v28);
                v10 = *&v28[0];
                if ((*&v26[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
                {
                  atomic_fetch_add((*&v26[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
                }
              }

              EntryForTarget = *(v10 + 8);
              goto LABEL_21;
            }

            break;
        }

        v5 += 32;
      }

      v4 += 8;
      if (v4 == v18)
      {
        v4 = v30;
        break;
      }
    }
  }

  if (v4)
  {
    v31 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v19);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v23);
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::i386::GOTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v15[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v15);
  v7 = v15[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      llvm::jitlink::LinkGraph::createSection(a2, "$__GOT", 6, 1);
    }

    v15[0] = &llvm::jitlink::i386::NullPointerContent;
    v15[1] = 4;
    v13 = 0;
    v16 = 0;
    v17 = 8;
    v9 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v8, v15, &v13, &v17, &v16);
    llvm::jitlink::Block::addEdge(v9, 3, 0, a3, 0);
    v10 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v9, 0, 4, 0, 0);
    v11 = *a3;
    v13 = v11;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v11 + 8), 1uLL);
    }

    v14 = v10;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v13, &v14, v15);
    v7 = v15[0];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder_i386(void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *__p = *a6;
  v7 = *(a6 + 16);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0;
  v8 = *(a6 + 24);
  v9 = *(a6 + 40);
  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(a1, a4, &v10, __p, a2, a3, llvm::jitlink::i386::getEdgeKindName);
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (1)
    {
      v8 = v5[1];
      if (v8 == 4)
      {
        getErrorErrorCat();
        *&v20 = 3;
        *(&v20 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if (v8 == 9)
      {
        break;
      }

      *a2 = 0;
LABEL_36:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(v5[7], &v25, *(a1 + 24));
    if (v26)
    {
      v9 = v25;
      *a2 = v25;
      goto LABEL_35;
    }

    v10 = *(a1 + 24);
    *&v20 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v10, v25, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v20, &v23);
    if (v24)
    {
      v11 = v23;
      *&v23 = 0;
      *a2 = v11;
      goto LABEL_28;
    }

    if ((*(a1 + 72) & 1) == 0 && (v20 = v23, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v20) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v25))
    {
      *a2 = 0;
LABEL_28:
      if (v24)
      {
        v18 = v23;
        *&v23 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      if (v26)
      {
        v19 = v25;
        v25 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      v9 = *a2;
LABEL_35:
      if (v9)
      {
        return;
      }

      goto LABEL_36;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
    if (!GraphBlock)
    {
      v22 = 1283;
      *&v20 = v7;
      v21 = v23;
      getErrorErrorCat();
      operator new();
    }

    v13 = GraphBlock;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,false>>(*(a1 + 24), v5, &v20);
    v14 = v20;
    v15 = v7;
    if (v21)
    {
      *&v20 = 0;
    }

    else
    {
      if (*(&v20 + 1))
      {
        v16 = 8 * *(&v20 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(a1, v14, v25, v13, a2);
          if (*a2)
          {
            goto LABEL_24;
          }

          v14 += 2;
          v16 -= 8;
        }

        while (v16);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_24:
    if (v21)
    {
      v17 = v20;
      *&v20 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v7 = v15;
    goto LABEL_28;
  }

LABEL_37:
  *a2 = 0;
}

void llvm::jitlink::ELFLinkGraphBuilder_i386<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a2[1];
  v11 = v10 >> 8;
  v41 = v10 >> 8;
  if (v10 > 0xFF)
  {
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 48), v11, &v45, *(a1 + 24));
    if (v46)
    {
      v12 = v45;
      v45 = 0;
      *a5 = v12;
      goto LABEL_40;
    }
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v11);
  if (!GraphSymbol)
  {
    v16 = *(a1 + 112);
    v33 = &unk_2883ECF20;
    v34 = &v41;
    v35[0] = &unk_2883ED130;
    v35[1] = v45 + 14;
    v36 = &unk_2883ECC68;
    v37 = v16;
    v38 = &v33;
    v39 = v35;
    v40 = &v36;
    getErrorErrorCat();
    v43 = 3;
    v44 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
  }

  v14 = *(a2 + 4);
  v42 = v14;
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = 4;
      }

      else
      {
        v15 = 9;
      }
    }

    else if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_26;
  }

  if (v14 <= 9)
  {
    if (v14 == 4)
    {
      v15 = 10;
      goto LABEL_26;
    }

    if (v14 == 9)
    {
      v15 = 8;
      goto LABEL_26;
    }

LABEL_44:
    v33 = &unk_2883EB018;
    v34 = &v42;
    v35[0] = &v33;
    operator new();
  }

  if (v14 != 10)
  {
    if (v14 == 20)
    {
      v15 = 5;
      goto LABEL_26;
    }

    if (v14 == 21)
    {
      v15 = 6;
LABEL_26:
      v18 = 0;
      v17 = *a2 + *(a3 + 12) - *a4;
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v17 = *a2 + *(a3 + 12) - *a4;
  v18 = *(a4[3] + v17);
  v15 = 7;
LABEL_27:
  v19 = a4[6];
  v20 = a4[7];
  if (v19 >= v20)
  {
    v22 = a4[5];
    v23 = (v19 - v22) >> 5;
    v24 = v23 + 1;
    if ((v23 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v25 = v20 - v22;
    if (v25 >> 4 > v24)
    {
      v24 = v25 >> 4;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFE0)
    {
      v26 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((a4 + 5), v26);
    }

    v27 = 32 * v23;
    *v27 = GraphSymbol;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    *(v27 + 24) = v15;
    v21 = 32 * v23 + 32;
    v28 = a4[5];
    v29 = a4[6] - v28;
    v30 = (32 * v23 - v29);
    memcpy(v30, v28, v29);
    v31 = a4[5];
    a4[5] = v30;
    a4[6] = v21;
    a4[7] = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v19 = GraphSymbol;
    *(v19 + 8) = v17;
    *(v19 + 16) = v18;
    v21 = v19 + 32;
    *(v19 + 24) = v15;
  }

  a4[6] = v21;
  *a5 = 0;
LABEL_40:
  if (v46)
  {
    v32 = v45;
    v45 = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }
}

void llvm::jitlink::ELFJITLinker_i386::~ELFJITLinker_i386(llvm::jitlink::ELFJITLinker_i386 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_i386>::fixUpBlocks(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208))
  {
    v4 = *(a2 + 216);
    if (v4)
    {
      v5 = 24 * v4;
      v6 = *(a2 + 200);
      while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v6 = *(a2 + 200);
    }

    v7 = *(a2 + 200) + 24 * v4;
    if (v6 != v7)
    {
      v31 = v7;
      while (1)
      {
        v8 = v6[2];
        v33 = *(v8 + 20);
        v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v8 + 32);
        v32 = *(v8 + 32) + 8 * *(v8 + 48);
        if (v32 != v9)
        {
          break;
        }

LABEL_46:
        for (v6 += 3; ; v6 += 3)
        {
          if (v6 == v31)
          {
            goto LABEL_51;
          }

          if (*v6 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }

        if (v6 == v31)
        {
          goto LABEL_51;
        }
      }

      v11 = v9;
      v12 = v10;
LABEL_12:
      v13 = *v11;
      if (v33 == 2 && (v13[1] & 4) == 0)
      {
        v15 = v13[3];
        v14 = v13[4];
        v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v14, 0);
        v17 = v16;
        if (v14)
        {
          memmove(v16, v15, v14);
        }

        v13[3] = v17;
        v13[4] = v14;
        v13[1] |= 4uLL;
      }

      v19 = v13[5];
      v18 = v13[6];
      while (1)
      {
        if (v19 == v18)
        {
          do
          {
            ++v11;
          }

          while (v11 != v12 && (*v11 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v11 == v32)
          {
            goto LABEL_46;
          }

          goto LABEL_12;
        }

        v20 = *(v19 + 24);
        if (v20 >= 2)
        {
          break;
        }

LABEL_39:
        v19 += 32;
      }

      v21 = v13[3];
      v22 = *(v19 + 8);
      v23 = *v13 + v22;
      if (*(v19 + 24) > 6u)
      {
        if (v20 - 10 < 3)
        {
LABEL_27:
          v25 = **(*v19 + 8) - v23 + *(*v19 + 16) + *(v19 + 16) - 4;
LABEL_37:
          *(v21 + v22) = v25;
          goto LABEL_38;
        }

        if (v20 != 7)
        {
          if (v20 != 8)
          {
            std::operator+<char>();
            v28 = std::string::append(&v36, ", section ");
            v29 = v28->__r_.__value_.__r.__words[2];
            *__p = *&v28->__r_.__value_.__l.__data_;
            v38 = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            v30 = *v13[2];
            v39 = __p;
            v40 = v30;
            v41 = 1284;
            v42 = &v39;
            v43 = " unsupported edge kind ";
            v44 = 770;
            if (!*llvm::jitlink::i386::getEdgeKindName(*(v19 + 24)))
            {
              v47 = v45;
              v48 = v46;
            }

            operator new();
          }

          v25 = *(*v19 + 16) + **(*v19 + 8) - (**(*(a1 + 152) + 8) + *(*(a1 + 152) + 16)) + *(v19 + 16);
          goto LABEL_37;
        }

        v27 = **(*v19 + 8) - v23;
        v26 = *(*v19 + 16) + *(v19 + 16);
      }

      else
      {
        if (*(v19 + 24) > 3u)
        {
          if (v20 != 4)
          {
            if (v20 == 5)
            {
              v24 = *(*v19 + 16) + *(v19 + 16) + **(*v19 + 8);
              if ((v24 & 0xFFFF0000) != 0)
              {
LABEL_25:
                llvm::jitlink::makeTargetOutOfRangeError(a2, v13, v19);
              }
            }

            else
            {
              v24 = **(*v19 + 8) - v23 + *(*v19 + 16) + *(v19 + 16) - 4;
              if (v24 != v24)
              {
                goto LABEL_25;
              }
            }

            *(v21 + v22) = v24;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v20 == 2)
        {
LABEL_38:
          *a3 = 0;
          goto LABEL_39;
        }

        v26 = **(*v19 + 8);
        v27 = *(*v19 + 16) + *(v19 + 16);
      }

      v25 = v27 + v26;
      goto LABEL_37;
    }
  }

LABEL_51:
  *a3 = 0;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_i386>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::ELFJITLinker_i386::ELFJITLinker_i386(std::unique_ptr<llvm::jitlink::JITLinkContext>,std::unique_ptr<llvm::jitlink::LinkGraph>,llvm::jitlink::PassConfiguration)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = a2;
  v43 = v5;
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = (*(a2 + 224) + 8 * *(a2 + 240));
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v44, v6, v8, v9, v9);
  v11 = v44;
  v12 = v45;
  if (v44 != v45)
  {
    v39 = v5;
    do
    {
      v13 = *v11;
      v14 = **v11;
      if (v14 && *v14 == 21)
      {
        v15 = v14[2];
        v16 = v14[3];
        v17 = *(v14 + 29);
        v18 = v15 == 0x5F4C41424F4C475FLL && v16 == 0x545F54455346464FLL;
        if (v18 && v17 == 0x5F454C4241545F54)
        {
          v20 = v43;
          SectionByName = llvm::jitlink::LinkGraph::findSectionByName(v42, "$__GOT", 6, v10);
          if (SectionByName)
          {
            v22 = SectionByName;
            *(v20 + 152) = v13;
            v47 = SectionByName;
            v49[0] = 0;
            v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(v40, &v47, v49);
            v24 = v49[0];
            if (!v23)
            {
              v24 = (v40[0] + 24 * v41);
            }

            if (v24 == (v40[0] + 24 * v41))
            {
              llvm::jitlink::SectionRange::SectionRange(&v46, v22);
              v47 = v22;
              v48 = v46;
              llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(v40, &v47, &v48, v49);
              v24 = v49[0];
            }

            v25 = v24[1];
            if (v25)
            {
              llvm::jitlink::LinkGraph::makeDefined(a2, v13, v25, 0, 0, 0, 3, 0);
            }

            else
            {
              llvm::jitlink::LinkGraph::makeAbsolute(a2, v13, 0);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v44;
    v5 = v39;
  }

  if (v11)
  {
    v45 = v11;
    operator delete(v11);
  }

  if (!*(v5 + 152))
  {
    v26 = llvm::jitlink::LinkGraph::findSectionByName(a2, "$__GOT", 6, v10);
    if (v26)
    {
      v27 = v26;
      v28 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v26 + 56);
      v30 = *(v27 + 56) + 8 * *(v27 + 72);
      if (v30 == v28)
      {
LABEL_39:
        llvm::jitlink::SectionRange::SectionRange(v49, v27);
        if (v49[0])
        {
          v37 = llvm::jitlink::LinkGraph::addDefinedSymbol(a2, v49[0], 0, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 3, 0, 1);
        }

        else
        {
          v37 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a2, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 0, 3, 1);
        }

        *(v5 + 152) = v37;
      }

      else
      {
        while (1)
        {
          v31 = **v28;
          if (v31 && *v31 == 21)
          {
            v32 = v31[2];
            v33 = v31[3];
            v34 = *(v31 + 29);
            v35 = v32 == 0x5F4C41424F4C475FLL && v33 == 0x545F54455346464FLL;
            if (v35 && v34 == 0x5F454C4241545F54)
            {
              break;
            }
          }

          do
          {
            ++v28;
          }

          while (v28 != v29 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v28 == v30)
          {
            goto LABEL_39;
          }
        }

        *(v5 + 152) = *v28;
      }
    }
  }

  *a3 = 0;
  return MEMORY[0x277C69E30](v40[0], 8);
}

uint64_t llvm::jitlink::LinkGraph::makeAbsolute(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if ((*(v6 + 8) & 3) != 0)
  {
    v7 = *(v6 + 16);
    v15[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v7 + 56, v15);
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
    v9 = v8[1] & 0xFFFFFFFFFFFFFFFCLL | 2;
    *v8 = a3;
    v8[1] = v9;
    v10 = *(a2 + 16) & 0xFE00000000000000;
    *(a2 + 8) = v8;
  }

  else
  {
    v15[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase((a1 + 56), v15);
    v11 = *(a2 + 8);
    v12 = v11[1] | 2;
    *v11 = a3;
    v11[1] = v12;
    v10 = *(a2 + 16) | 0xC00000000000000;
  }

  *(a2 + 16) = v10;
  v14 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 62), &v14, v15);
}

uint64_t *std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a4)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      do
      {
        ++v7;
      }

      while (v7 != a3 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v6;
    }

    while (v7 != a4);
  }

  std::vector<llvm::jitlink::Symbol *>::__init_with_size[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator>(a1, a2, a3, a4, a5, v6);
  return a1;
}

uint64_t *std::vector<llvm::jitlink::Symbol *>::__init_with_size[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  if (a6)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](result, a6);
  }

  return result;
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_loongarch@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v26[0] = *a1;
  v26[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v26, 1, &v32);
  v6 = v32;
  if ((v33 & 1) == 0)
  {
    v7 = (*(*v32 + 392))(v32);
    v8 = v32;
    if (v7 == 14)
    {
      v9 = v32[4];
      v10 = v32[5];
      v16 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      llvm::object::ObjectFile::makeTriple(&v22, v8);
      v31 = v16;
      v27 = v22;
      v11 = v23;
      v22 = 0uLL;
      v23 = 0;
      v29 = v24;
      v28 = v11;
      v30 = v25;
      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(v26, v8 + 56, &v31, &v27, v9, v10, llvm::jitlink::loongarch::getEdgeKindName);
    }

    v12 = v32[4];
    v13 = v32[5];
    v17 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    llvm::object::ObjectFile::makeTriple(__p, v8);
    v31 = v17;
    v27 = *__p;
    v14 = v19;
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    v29 = v20;
    v28 = v14;
    v30 = v21;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(v26, v8 + 56, &v31, &v27, v12, v13, llvm::jitlink::loongarch::getEdgeKindName);
  }

  v32 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v32);
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFLinkGraphBuilder_loongarch(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_loongarch(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_loongarch(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v14 = ".eh_frame";
    *&v15 = 9;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v4 = *(*a1 + 184);
    v5 = operator new(0x20uLL, 8uLL);
    v15 = xmmword_2750C12D0;
    *v5 = ".eh_frame";
    v5[1] = 9;
    *(v5 + 4) = v4;
    *(v5 + 5) = 117768707;
    *(v5 + 24) = 6;
    v14 = v5;
    v16 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
    v14 = ".eh_frame";
    *&v15 = 9;
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameNullTerminator,llvm::jitlink::EHFrameNullTerminator,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
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
    v16 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v14);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v14);
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

uint64_t *anonymous namespace::buildTables_ELF_loongarch@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v27 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v23 = v25;
  v24 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v30);
  v31[0] = v30[0];
  v31[1] = v30[1];
  v31[2] = v30[2];
  v31[3] = v30[3];
  llvm::jitlink::LinkGraph::blocks(this, v28);
  v29[0] = v28[4];
  v29[1] = v28[5];
  v29[2] = v28[6];
  v29[3] = v28[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v32, v31, v29);
  v4 = v32;
  v5 = v33;
  if (v32 != v33)
  {
    while (1)
    {
      v7 = *(*v4 + 40);
      v6 = *(*v4 + 48);
      while (v7 != v6)
      {
        v8 = *(v7 + 24);
        if (v8 != 4)
        {
          if (v8 == 10)
          {
            v9 = 8;
          }

          else
          {
            if (v8 != 11)
            {
              goto LABEL_11;
            }

            v9 = 9;
          }

          *(v7 + 24) = v9;
          EntryForTarget = llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(v25, this, *v7);
          goto LABEL_10;
        }

        v11 = *v7;
        if ((*(*(*v7 + 8) + 8) & 1) == 0)
        {
          *&v30[0] = 0;
          v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v21, v11, v30);
          v13 = *&v30[0];
          if (!v12)
          {
            v13 = v21[0] + 16 * v22;
          }

          if (v13 == v21[0] + 16 * v22)
          {
            v14 = v24;
            if (!v24)
            {
              llvm::jitlink::LinkGraph::createSection(this, "$__STUBS", 8, 5);
            }

            v15 = llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(v23, this, v11);
            if (*(this + 46) == 8)
            {
              v16 = &llvm::jitlink::loongarch::LA64StubContent;
            }

            else
            {
              v16 = &llvm::jitlink::loongarch::LA32StubContent;
            }

            *&v30[0] = v16;
            *(&v30[0] + 1) = 12;
            *&v28[0] = 0;
            *&v31[0] = 4;
            *&v29[0] = 0;
            v17 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v14, v30, v28, v31, v29);
            llvm::jitlink::Block::addEdge(v17, 8, 0, v15, 0);
            llvm::jitlink::Block::addEdge(v17, 9, 4, v15, 0);
            v18 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v17, 0, 12, 1, 0);
            v19 = *v11;
            *&v28[0] = v19;
            if ((v19 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v19 + 8), 1uLL);
            }

            *(&v28[0] + 1) = v18;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v21, v28, v28 + 1, v30);
            v13 = *&v30[0];
            if ((*&v28[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v28[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          EntryForTarget = *(v13 + 8);
LABEL_10:
          *v7 = EntryForTarget;
        }

LABEL_11:
        v7 += 32;
      }

      v4 += 8;
      if (v4 == v5)
      {
        v4 = v32;
        break;
      }
    }
  }

  if (v4)
  {
    v33 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v21);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v25);
}

uint64_t llvm::jitlink::TableManager<llvm::jitlink::loongarch::GOTTableManager>::getEntryForTarget(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v18[0] = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, v18);
  v7 = v18[0];
  if (!v6)
  {
    v7 = *a1 + 16 * *(a1 + 16);
  }

  if (v7 == *a1 + 16 * *(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      llvm::jitlink::LinkGraph::createSection(a2, "$__GOT", 6, 5);
    }

    v9 = a2[46];
    v18[0] = &llvm::jitlink::loongarch::NullPointerContent;
    v18[1] = v9;
    v16 = 0;
    v19 = 0;
    v20 = v9;
    v10 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v8, v18, &v16, &v20, &v19);
    v11 = v10;
    if (a2[46] == 8)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    llvm::jitlink::Block::addEdge(v10, v12, 0, a3, 0);
    v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v11, 0, a2[46], 0, 0);
    v14 = *a3;
    v16 = v14;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v14 + 8), 1uLL);
    }

    v17 = v13;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(a1, &v16, &v17, v18);
    v7 = v18[0];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v7 + 8);
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    do
    {
      if (*(v5 + 4) != 4)
      {
        *a2 = 0;
        goto LABEL_63;
      }

      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(v5 + 44), &v48, *(a1 + 24));
      if (v49)
      {
        v7 = v48;
        *a2 = v48;
        if (v7)
        {
          return;
        }

        goto LABEL_63;
      }

      v8 = *(a1 + 24);
      *&v28 = llvm::object::defaultWarningHandler;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v8, v48, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v28, &v46);
      if (v47)
      {
        v9 = v46;
        *&v46 = 0;
        *a2 = v9;
        goto LABEL_56;
      }

      if ((*(a1 + 72) & 1) == 0 && (v28 = v46, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v28) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v48))
      {
        *a2 = 0;
        goto LABEL_56;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, *(v5 + 44));
      if (!GraphBlock)
      {
        LOWORD(v30) = 1283;
        *&v28 = "Refencing a section that wasn't added to the graph: ";
        v29 = v46;
        getErrorErrorCat();
        operator new();
      }

      v11 = GraphBlock;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v5, &v43);
      v12 = v43;
      if (v45)
      {
        v43 = 0;
      }

      else
      {
        if (v44)
        {
          v13 = 24 * v44;
          v14 = v43 + 8;
          do
          {
            v15 = v48;
            v16 = *(v14 + 4);
            v36 = v16;
            llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), v14 - 8, &v50, *(a1 + 48));
            if (v51)
            {
              v17 = v50;
              v50 = 0;
              *a2 = v17;
            }

            else
            {
              GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v16);
              if (!GraphSymbol)
              {
                v21 = *(a1 + 112);
                *&v28 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
                *(&v28 + 1) = 113;
                *&v29 = v35;
                *(&v29 + 1) = 3;
                v30 = &unk_2883ECF20;
                v31 = &v36;
                v32[0] = &unk_2883ED130;
                v32[1] = v50 + 6;
                v33 = &unk_2883ECC68;
                v34 = v21;
                v35[0] = &v30;
                v35[1] = v32;
                v35[2] = &v33;
                getErrorErrorCat();
                v41 = 3;
                v42 = &getErrorErrorCat(void)::ErrorErrorCat;
                llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
              }

              v19 = *v14;
              v40 = v19;
              if (v19 > 71)
              {
                if (v19 > 75)
                {
                  if (v19 == 76)
                  {
                    v20 = 11;
                  }

                  else
                  {
                    if (v19 != 99)
                    {
LABEL_50:
                      *&v28 = "{0:d}: ";
                      *(&v28 + 1) = 7;
                      *&v29 = v32;
                      *(&v29 + 1) = 1;
                      v30 = &unk_2883EB018;
                      v31 = &v40;
                      v32[0] = &v30;
                      v37 = "Unsupported loongarch relocation:";
                      v38 = &v28;
                      v39 = 1539;
                      llvm::object::getELFRelocationTypeName(0x102, v19);
                      operator new();
                    }

                    v20 = 5;
                  }
                }

                else if (v19 == 72)
                {
                  v20 = 9;
                }

                else
                {
                  if (v19 != 75)
                  {
                    goto LABEL_50;
                  }

                  v20 = 10;
                }
              }

              else if (v19 > 65)
              {
                if (v19 == 66)
                {
                  v20 = 4;
                }

                else
                {
                  if (v19 != 71)
                  {
                    goto LABEL_50;
                  }

                  v20 = 8;
                }
              }

              else if (v19 == 1)
              {
                v20 = 3;
              }

              else
              {
                if (v19 != 2)
                {
                  goto LABEL_50;
                }

                v20 = 2;
              }

              v22 = *(v14 + 8);
              v23 = *(v14 - 8) + v15[4] - *v11;
              *&v28 = GraphSymbol;
              DWORD2(v28) = v23;
              *&v29 = v22;
              BYTE8(v29) = v20;
              llvm::jitlink::Block::addEdge(v11, &v28);
              *a2 = 0;
            }

            if (v51)
            {
              v24 = v50;
              v50 = 0;
              if (v24)
              {
                (*(*v24 + 8))(v24);
              }
            }

            if (*a2)
            {
              goto LABEL_53;
            }

            v14 += 24;
            v13 -= 24;
          }

          while (v13);
        }

        v12 = 0;
      }

      *a2 = v12;
LABEL_53:
      if (v45)
      {
        v25 = v43;
        v43 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

LABEL_56:
      if (v47)
      {
        v26 = v46;
        *&v46 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      if (v49)
      {
        v27 = v48;
        v48 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (*a2)
      {
        return;
      }

LABEL_63:
      v5 += 64;
    }

    while (v5 != v6);
  }

  *a2 = 0;
}

void anonymous namespace::ELFLinkGraphBuilder_loongarch<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>;
    while (1)
    {
      if (v5[1] != 4)
      {
        *a2 = 0;
        goto LABEL_66;
      }

      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(v5[7], &v50, *(a1 + 24));
      if (v51)
      {
        v8 = v50;
        *a2 = v50;
        if (v8)
        {
          return;
        }

        goto LABEL_66;
      }

      v9 = *(a1 + 24);
      *&v30 = llvm::object::defaultWarningHandler;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v9, v50, v7, &v30, &v48);
      if (v49)
      {
        v10 = v48;
        *&v48 = 0;
        *a2 = v10;
        goto LABEL_59;
      }

      if ((*(a1 + 72) & 1) == 0 && (v30 = v48, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v30) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v50))
      {
        *a2 = 0;
        goto LABEL_59;
      }

      GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
      if (!GraphBlock)
      {
        LOWORD(v32) = 1283;
        *&v30 = "Refencing a section that wasn't added to the graph: ";
        v31 = v48;
        getErrorErrorCat();
        operator new();
      }

      v12 = GraphBlock;
      llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(*(a1 + 24), v5, &v45);
      v13 = v45;
      v29 = v7;
      if (v47)
      {
        v45 = 0;
        goto LABEL_54;
      }

      if (v46)
      {
        break;
      }

LABEL_53:
      v13 = 0;
LABEL_54:
      *a2 = v13;
LABEL_55:
      if (v47)
      {
        v26 = v45;
        v45 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      v7 = v29;
LABEL_59:
      if (v49)
      {
        v27 = v48;
        *&v48 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (v51)
      {
        v28 = v50;
        v50 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }
      }

      if (*a2)
      {
        return;
      }

LABEL_66:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_67;
      }
    }

    v14 = 12 * v46;
    v15 = (v45 + 4);
    while (1)
    {
      v16 = v50;
      v17 = *v15;
      v18 = *v15 >> 8;
      v38 = v18;
      if (v17 > 0xFF)
      {
        llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 48), v18, &v52, *(a1 + 24));
        if (v53)
        {
          v19 = v52;
          v52 = 0;
          *a2 = v19;
          goto LABEL_46;
        }
      }

      else
      {
        v53 = 0;
        v52 = 0;
      }

      GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v18);
      if (!GraphSymbol)
      {
        v22 = *(a1 + 112);
        *&v30 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
        *(&v30 + 1) = 113;
        *&v31 = v37;
        *(&v31 + 1) = 3;
        v32 = &unk_2883ECF20;
        v33 = &v38;
        v34[0] = &unk_2883ED130;
        v34[1] = v52 + 14;
        v35 = &unk_2883ECC68;
        v36 = v22;
        v37[0] = &v32;
        v37[1] = v34;
        v37[2] = &v35;
        getErrorErrorCat();
        v43 = 3;
        v44 = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
      }

      v21 = *v15;
      v42 = v21;
      if (v21 > 71)
      {
        if (v21 > 75)
        {
          if (v21 == 76)
          {
            LOBYTE(v21) = 11;
          }

          else
          {
            if (v21 != 99)
            {
LABEL_52:
              *&v30 = "{0:d}: ";
              *(&v30 + 1) = 7;
              *&v31 = v34;
              *(&v31 + 1) = 1;
              v32 = &unk_2883EB018;
              v33 = &v42;
              v34[0] = &v32;
              v39 = "Unsupported loongarch relocation:";
              v40 = &v30;
              v41 = 1539;
              llvm::object::getELFRelocationTypeName(0x102, v21);
              operator new();
            }

            LOBYTE(v21) = 5;
          }
        }

        else if (v21 == 72)
        {
          LOBYTE(v21) = 9;
        }

        else
        {
          if (v21 != 75)
          {
            goto LABEL_52;
          }

          LOBYTE(v21) = 10;
        }
      }

      else if (v21 > 65)
      {
        if (v21 == 66)
        {
          LOBYTE(v21) = 4;
        }

        else
        {
          if (v21 != 71)
          {
            goto LABEL_52;
          }

          LOBYTE(v21) = 8;
        }
      }

      else if (v21 == 1)
      {
        LOBYTE(v21) = 3;
      }

      else if (v21 != 2)
      {
        goto LABEL_52;
      }

      v23 = v15[1];
      v24 = *(v15 - 1) + v16[3] - *v12;
      *&v30 = GraphSymbol;
      DWORD2(v30) = v24;
      *&v31 = v23;
      BYTE8(v31) = v21;
      llvm::jitlink::Block::addEdge(v12, &v30);
      *a2 = 0;
LABEL_46:
      if (v53)
      {
        v25 = v52;
        v52 = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      if (*a2)
      {
        goto LABEL_55;
      }

      v15 += 3;
      v14 -= 12;
      if (!v14)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_67:
  *a2 = 0;
}

void llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[9] != 12)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v33);
    v13 = std::string::insert(&v33, 0, "section ");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v35, " has invalid sh_entsize: expected ");
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v39 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v37.__r_.__value_.__r.__words[0] = 12;
    v41[0] = __p;
    v42 = &v37;
    v43 = 2564;
    v44[0] = v41;
    v45 = ", but got ";
    v46 = 770;
    v17 = a2[9];
    v47 = v44;
    v48 = v17;
    v49 = 2050;
    LODWORD(v32.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v6 = a2[5];
  v7 = a2[5] / 0xC;
  if (a2[5] % 0xC)
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v37);
    v8 = std::string::insert(&v37, 0, "section ");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v33, " has an invalid sh_size (");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v35;
    v39 = v6;
    v40 = 2052;
    v41[0] = __p;
    v42 = ") which is not a multiple of its sh_entsize (";
    v43 = 770;
    v12 = a2[9];
    v44[0] = v41;
    v45 = v12;
    v46 = 2050;
    v47 = v44;
    v48 = ")";
    v49 = 770;
    LODWORD(v32.__r_.__value_.__l.__data_) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v18 = a2[4];
  if (__CFADD__(v18, v6))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v37);
    v19 = std::string::insert(&v37, 0, "section ");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v33, " has a sh_offset (0x");
    v22 = v21->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__r.__words[0] = v18;
    __p[0] = &v35;
    v39 = &v32;
    v40 = 3588;
    v41[0] = __p;
    v42 = ") + sh_size (0x";
    v43 = 770;
    v31.__r_.__value_.__r.__words[0] = v6;
    v44[0] = v41;
    v45 = &v31;
    v46 = 3586;
    v47 = v44;
    v48 = ") that cannot be represented";
    v49 = 770;
    LODWORD(v30) = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  if (a1[1] < (v6 + v18))
  {
    llvm::object::getSecIndexForError<llvm::object::ELFType<(llvm::support::endianness)1,false>>(a1, a2, &v31);
    v23 = std::string::insert(&v31, 0, "section ");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v32, " has a sh_offset (0x");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v29 = v6;
    v30 = v18;
    v33.__r_.__value_.__r.__words[0] = &v37;
    v33.__r_.__value_.__r.__words[2] = &v30;
    v34 = 3588;
    v35.__r_.__value_.__r.__words[0] = &v33;
    v35.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v36 = 770;
    __p[0] = &v35;
    v39 = &v29;
    v40 = 3586;
    v41[0] = __p;
    v42 = ") that is greater than the file size (0x";
    v43 = 770;
    v28 = a1[1];
    v44[0] = v41;
    v45 = &v28;
    v46 = 3586;
    v47 = v44;
    v48 = ")";
    v49 = 770;
    v50 = 3;
    llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
  }

  v27 = *a1 + v18;
  *(a3 + 16) &= ~1u;
  *a3 = v27;
  *(a3 + 8) = v7;
}

void anonymous namespace::ELFJITLinker_loongarch::~ELFJITLinker_loongarch(_anonymous_namespace_::ELFJITLinker_loongarch *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_loongarch>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 208))
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = 24 * v3;
      v5 = *(a1 + 200);
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 3;
        v4 -= 24;
        if (!v4)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v5 = *(a1 + 200);
    }

    v6 = *(a1 + 200) + 24 * v3;
    if (v5 != v6)
    {
      v36 = v6;
      while (1)
      {
        v7 = v5[2];
        v38 = *(v7 + 20);
        v8 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
        v37 = *(v7 + 32) + 8 * *(v7 + 48);
        if (v37 != v8)
        {
          break;
        }

LABEL_55:
        for (v5 += 3; ; v5 += 3)
        {
          if (v5 == v36)
          {
            goto LABEL_60;
          }

          if (*v5 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }

        if (v5 == v36)
        {
          goto LABEL_60;
        }
      }

      v10 = v8;
      v11 = v9;
LABEL_12:
      v12 = *v10;
      if (v38 == 2 && (v12[1] & 4) == 0)
      {
        v14 = v12[3];
        v13 = v12[4];
        v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v13, 0);
        v16 = v15;
        if (v13)
        {
          memmove(v15, v14, v13);
        }

        v12[3] = v16;
        v12[4] = v13;
        v12[1] |= 4uLL;
      }

      v18 = v12[5];
      v17 = v12[6];
      while (1)
      {
        if (v18 == v17)
        {
          do
          {
            ++v10;
          }

          while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v10 == v37)
          {
            goto LABEL_55;
          }

          goto LABEL_12;
        }

        v19 = v18[24];
        if (v19 >= 2)
        {
          break;
        }

LABEL_50:
        v18 += 32;
      }

      v20 = v12[3];
      v21 = *(v18 + 2);
      v22 = *v12 + v21;
      v23 = (*(*v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v18 + 8);
      v24 = *(v18 + 2);
      if (v18[24] > 5u)
      {
        if (v18[24] <= 7u)
        {
          if (v19 != 6)
          {
            v26 = v23 + v24 - v22;
            goto LABEL_35;
          }

          v27 = v22 - v23;
LABEL_37:
          v25 = v27 + v24;
          if (v25 != v25)
          {
            goto LABEL_46;
          }

          goto LABEL_38;
        }

        if (v19 == 8)
        {
          v32 = ((((v23 + v24) & 0x800) + v23 + v24) & 0xFFFFFFFFFFFFF000) - (v22 & 0xFFFFFFFFFFFFF000);
          if (v32 != v32)
          {
LABEL_46:
            llvm::jitlink::makeTargetOutOfRangeError(a1, v12, v18);
          }

          v30 = *(v20 + v21) | (v32 >> 7);
          goto LABEL_44;
        }

        if (v19 != 9)
        {
          std::operator+<char>();
          v33 = std::string::append(&v40, ", section ");
          v34 = v33->__r_.__value_.__r.__words[2];
          *__p = *&v33->__r_.__value_.__l.__data_;
          v42 = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = *v12[2];
          v43 = __p;
          v44 = v35;
          v45 = 1284;
          v46 = &v43;
          v47 = " unsupported edge kind ";
          v48 = 770;
          if (!*llvm::jitlink::loongarch::getEdgeKindName(v18[24]))
          {
            v51 = v49;
            v52 = v50;
          }

          operator new();
        }

        v28 = *(v20 + v21);
        v29 = ((*(*v18 + 16) + **(*v18 + 8) + v24) & 0xFFF) << 10;
      }

      else
      {
        if (v18[24] <= 3u)
        {
          if (v19 != 2)
          {
            v25 = v23 + v24;
            if (HIDWORD(v25))
            {
              goto LABEL_46;
            }

LABEL_38:
            *(v20 + v21) = v25;
            goto LABEL_45;
          }

          v26 = v23 + v24;
LABEL_35:
          *(v20 + v21) = v26;
LABEL_45:
          *a2 = 0;
          goto LABEL_50;
        }

        if (v19 != 4)
        {
          v27 = v23 - v22;
          goto LABEL_37;
        }

        v31 = v23 - v22 + v24;
        if ((v31 + 0x8000000) >> 28)
        {
          goto LABEL_46;
        }

        if ((v31 & 3) != 0)
        {
          llvm::jitlink::makeAlignmentError(v22, v31, 4u, v18);
        }

        v29 = *(v20 + v21);
        v28 = (v31 << 8) & 0x3FFFC00 | (v31 >> 18) & 0x3FF;
      }

      v30 = v28 | v29;
LABEL_44:
      *(v20 + v21) = v30;
      goto LABEL_45;
    }
  }

LABEL_60:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<anonymous namespace::ELFJITLinker_loongarch>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_riscv@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v26[0] = *a1;
  v26[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v26, 1, &v32);
  v6 = v32;
  if ((v33 & 1) == 0)
  {
    v7 = (*(*v32 + 392))(v32);
    v8 = v32;
    if (v7 == 28)
    {
      v9 = v32[4];
      v10 = v32[5];
      v16 = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      llvm::object::ObjectFile::makeTriple(&v22, v8);
      v31 = v16;
      v27 = v22;
      v11 = v23;
      v22 = 0uLL;
      v23 = 0;
      v29 = v24;
      v28 = v11;
      v30 = v25;
      llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(v26, v8 + 56, &v31, &v27, v9, v10, llvm::jitlink::riscv::getEdgeKindName);
    }

    v12 = v32[4];
    v13 = v32[5];
    v17 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    llvm::object::ObjectFile::makeTriple(__p, v8);
    v31 = v17;
    v27 = *__p;
    v14 = v19;
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    v29 = v20;
    v28 = v14;
    v30 = v21;
    llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::ELFLinkGraphBuilder(v26, v8 + 56, &v31, &v27, v12, v13, llvm::jitlink::riscv::getEdgeKindName);
  }

  v32 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v32);
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::~ELFLinkGraphBuilder_riscv(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED240;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::~ELFLinkGraphBuilder_riscv(llvm::jitlink::ELFLinkGraphBuilderBase *a1)
{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);
}

{
  *a1 = &unk_2883ED070;
  MEMORY[0x277C69E30](*(a1 + 16), 8);
  MEMORY[0x277C69E30](*(a1 + 13), 8);
  MEMORY[0x277C69E30](*(a1 + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_riscv(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v11);
    if (v12 < 8)
    {
      *&v9 = llvm::jitlink::markAllSymbolsLive;
      v10 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v5, &v9);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v9);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v5, &v11);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
    v12 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v5[1] + 1, &v11);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
  }

  (*(**a2 + 72))(&v11);
  if (!v11)
  {
    operator new();
  }

  v3 = *a2;
  v4 = v11;
  *&v11 = 0;
  (*(*v3 + 24))(v3, &v4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *&v11 = &v7;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = &v6[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = v6;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = &v5[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
  *&v11 = v5;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v11);
}

uint64_t *llvm::jitlink::PerGraphGOTAndPLTStubsBuilder<anonymous namespace::PerGraphGOTAndPLTStubsBuilder_ELF_riscv>::asPass@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = a1;
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  llvm::jitlink::LinkGraph::blocks(a1, v29);
  v30[0] = v29[0];
  v30[1] = v29[1];
  v30[2] = v29[2];
  v30[3] = v29[3];
  llvm::jitlink::LinkGraph::blocks(a1, v27);
  v28[0] = v27[4];
  v28[1] = v27[5];
  v28[2] = v27[6];
  v28[3] = v27[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v31, v30, v28);
  v4 = v31;
  v19 = v32;
  if (v31 != v32)
  {
    while (1)
    {
      v6 = *(*v4 + 40);
      v5 = *(*v4 + 48);
      while (v6 != v5)
      {
        v7 = *(v6 + 24);
        if (v7 == 7)
        {
          v10 = *v6;
          *&v29[0] = 0;
          v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v23, v10, v29);
          v12 = *&v29[0];
          if (!v11)
          {
            v12 = v23[0] + 16 * v24;
          }

          if (v12 == v23[0] + 16 * v24)
          {
            if (!v26)
            {
              llvm::jitlink::LinkGraph::createSection(v20, "$__STUBS", 8, 5);
            }

            if (v20[46] == 8)
            {
            }

            else
            {
            }

            *&v29[0] = v13;
            *(&v29[0] + 1) = 16;
            *&v27[0] = 0;
            *&v30[0] = 4;
            *&v28[0] = 0;
            v14 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v20, v26, v29, v27, v30, v28);
            llvm::jitlink::Block::addEdge(v14, 6, 0, GOTEntry, 0);
            v16 = llvm::jitlink::LinkGraph::addAnonymousSymbol(v20, v14, 0, 16, 1, 0);
            v17 = *v10;
            *&v27[0] = v17;
            if ((v17 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v17 + 8), 1uLL);
            }

            *(&v27[0] + 1) = v16;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v23, v27, v27 + 1, v29);
            v12 = *&v29[0];
            if ((*&v27[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v27[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          v8 = *(v12 + 8);
          v9 = 6;
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_21;
          }

          v9 = 9;
        }

        *(v6 + 24) = v9;
        *v6 = v8;
LABEL_21:
        v6 += 32;
      }

      v4 += 8;
      if (v4 == v19)
      {
        v4 = v31;
        break;
      }
    }
  }

  *a2 = 0;
  if (v4)
  {
    v32 = v4;
    operator delete(v4);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v23);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v21);
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v5 + (v3 << 6);
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (*(v5 + 4) != 4)
    {
      *a2 = 0;
LABEL_35:
      v5 += 64;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(v5 + 44), &v24, *(a1 + 24));
    if (v25)
    {
      v8 = v24;
      *a2 = v24;
      goto LABEL_34;
    }

    v9 = *(a1 + 24);
    *&v19 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v9, v24, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v19, &v22);
    if (v23)
    {
      v10 = v22;
      *&v22 = 0;
      *a2 = v10;
      goto LABEL_27;
    }

    if ((*(a1 + 72) & 1) == 0 && (v19 = v22, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v19) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v24))
    {
      *a2 = 0;
LABEL_27:
      if (v23)
      {
        v17 = v22;
        *&v22 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      if (v25)
      {
        v18 = v24;
        v24 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v8 = *a2;
LABEL_34:
      if (v8)
      {
        return;
      }

      goto LABEL_35;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, *(v5 + 44));
    if (!GraphBlock)
    {
      v21 = 1283;
      *&v19 = v7;
      v20 = v22;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    v13 = v7;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(a1 + 24), v5, &v19);
    v14 = v19;
    if (v20)
    {
      *&v19 = 0;
    }

    else
    {
      if (*(&v19 + 1))
      {
        v15 = 24 * *(&v19 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addSingleRelocation(a1, v14, v24, v12, a2);
          if (*a2)
          {
            goto LABEL_23;
          }

          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_23:
    if (v20)
    {
      v16 = v19;
      *&v19 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    v7 = v13;
    goto LABEL_27;
  }

LABEL_36:
  *a2 = 0;
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,true>>::addSingleRelocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  if (v7 == 51)
  {
LABEL_2:
    *a5 = 0;
    return;
  }

  v8 = *(a2 + 16);
  v32 = v8;
  if (v7 == 43)
  {
    if (v8)
    {
      v9 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      v38 = (v10 | (v10 >> 16) | ((v10 | (v10 >> 16)) >> 32)) + 1;
      if (v38 >= 3)
      {
        *&v22 = "Unsupported relocation R_RISCV_ALIGN with alignment {0} larger than 2 (addend: {1})";
        *(&v22 + 1) = 83;
        v23 = &v29;
        v24 = 2;
        v25 = &unk_2883EC3C8;
        v26 = &v38;
        v27 = &unk_2883ED4B0;
        v28 = &v32;
        v29 = &v25;
        v30 = &v27;
        llvm::make_error<llvm::jitlink::JITLinkError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned long long &>,llvm::detail::provider_format_adapter<long long &>>>>(a5, &v22);
      }
    }

    goto LABEL_2;
  }

  v37 = v7;
  v11 = v7 - 1;
  if ((v7 - 1) > 0x38 || ((0x1F818FF0FCF8003uLL >> v11) & 1) == 0)
  {
    *&v22 = "{0:d}: ";
    *(&v22 + 1) = 7;
    v23 = &v27;
    v24 = 1;
    v25 = &unk_2883EB018;
    v26 = &v37;
    v27 = &v25;
    v33 = "Unsupported riscv relocation:";
    v35 = &v22;
    v36 = 1539;
    llvm::object::getELFRelocationTypeName(0xF3, v7);
    operator new();
  }

  v15 = byte_2750C4238[v11];
  v16 = HIDWORD(v7);
  v37 = HIDWORD(v7);
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), a2, &v38, *(a1 + 48));
  if (v39)
  {
    v17 = v38;
    v38 = 0;
    *a5 = v17;
  }

  else
  {
    GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v16);
    if (!GraphSymbol)
    {
      v20 = *(a1 + 112);
      *&v22 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
      *(&v22 + 1) = 113;
      v23 = v31;
      v24 = 3;
      v25 = &unk_2883ECF20;
      v26 = &v37;
      v27 = &unk_2883ED130;
      v28 = (v38 + 6);
      v29 = &unk_2883ECC68;
      LODWORD(v30) = v20;
      v31[0] = &v25;
      v31[1] = &v27;
      v31[2] = &v29;
      getErrorErrorCat();
      v33 = 3;
      v34 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
    }

    v19 = *a2 + *(a3 + 16) - *a4;
    *&v22 = GraphSymbol;
    DWORD2(v22) = v19;
    v23 = v8;
    LOBYTE(v24) = v15;
    llvm::jitlink::Block::addEdge(a4, &v22);
    *a5 = 0;
  }

  if (v39)
  {
    v21 = v38;
    v38 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addRelocations(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = &v5[10 * v3];
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (v5[1] != 4)
    {
      *a2 = 0;
LABEL_35:
      v5 += 10;
      if (v5 == v6)
      {
        goto LABEL_36;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSection(v5[7], &v24, *(a1 + 24));
    if (v25)
    {
      v8 = v24;
      *a2 = v24;
      goto LABEL_34;
    }

    v9 = *(a1 + 24);
    *&v19 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionName(v9, v24, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v19, &v22);
    if (v23)
    {
      v10 = v22;
      *&v22 = 0;
      *a2 = v10;
      goto LABEL_27;
    }

    if ((*(a1 + 72) & 1) == 0 && (v19 = v22, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v19) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*a1 + 40))(a1, v24))
    {
      *a2 = 0;
LABEL_27:
      if (v23)
      {
        v17 = v22;
        *&v22 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      if (v25)
      {
        v18 = v24;
        v24 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v8 = *a2;
LABEL_34:
      if (v8)
      {
        return;
      }

      goto LABEL_35;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(a1, v5[7]);
    if (!GraphBlock)
    {
      v21 = 1283;
      *&v19 = v7;
      v20 = v22;
      getErrorErrorCat();
      operator new();
    }

    v12 = GraphBlock;
    v13 = v7;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>,true>>(*(a1 + 24), v5, &v19);
    v14 = v19;
    if (v20)
    {
      *&v19 = 0;
    }

    else
    {
      if (*(&v19 + 1))
      {
        v15 = 12 * *(&v19 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(a1, v14, v24, v12, a2);
          if (*a2)
          {
            goto LABEL_23;
          }

          v14 += 3;
          v15 -= 12;
        }

        while (v15);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_23:
    if (v20)
    {
      v16 = v19;
      *&v19 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    v7 = v13;
    goto LABEL_27;
  }

LABEL_36:
  *a2 = 0;
}

void llvm::jitlink::ELFLinkGraphBuilder_riscv<llvm::object::ELFType<(llvm::support::endianness)1,false>>::addSingleRelocation(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  if (v7 == 51)
  {
LABEL_2:
    *a5 = 0;
    return;
  }

  v8 = a2[2];
  v31 = v8;
  if (v7 == 43)
  {
    if (v8)
    {
      v9 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
      v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
      v37 = (v10 | (v10 >> 16) | ((v10 | (v10 >> 16)) >> 32)) + 1;
      if (v37 >= 3)
      {
        *&v21 = "Unsupported relocation R_RISCV_ALIGN with alignment {0} larger than 2 (addend: {1})";
        *(&v21 + 1) = 83;
        v22 = &v28;
        v23 = 2;
        v24 = &unk_2883EC3C8;
        v25 = &v37;
        v26 = &unk_2883ED4B0;
        v27 = &v31;
        v28 = &v24;
        v29 = &v26;
        llvm::make_error<llvm::jitlink::JITLinkError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned long long &>,llvm::detail::provider_format_adapter<long long &>>>>(a5, &v21);
      }
    }

    goto LABEL_2;
  }

  v36 = v7;
  if ((v7 - 1) > 0x38u || ((0x1F818FF0FCF8003uLL >> (v7 - 1)) & 1) == 0)
  {
    *&v21 = "{0:d}: ";
    *(&v21 + 1) = 7;
    v22 = &v26;
    v23 = 1;
    v24 = &unk_2883EB018;
    v25 = &v36;
    v26 = &v24;
    v32 = "Unsupported riscv relocation:";
    v34 = &v21;
    v35 = 1539;
    llvm::object::getELFRelocationTypeName(0xF3, v7);
    operator new();
  }

  v14 = byte_2750C4238[(v7 - 1)];
  v15 = v7 >> 8;
  v36 = v7 >> 8;
  if (v7 <= 0xFF)
  {
    LOBYTE(v38) = 0;
    v37 = 0;
LABEL_15:
    GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v15);
    if (!GraphSymbol)
    {
      v19 = *(a1 + 112);
      *&v21 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
      *(&v21 + 1) = 113;
      v22 = v30;
      v23 = 3;
      v24 = &unk_2883ECF20;
      v25 = &v36;
      v26 = &unk_2883ED130;
      v27 = (v37 + 14);
      v28 = &unk_2883ECC68;
      LODWORD(v29) = v19;
      v30[0] = &v24;
      v30[1] = &v26;
      v30[2] = &v28;
      getErrorErrorCat();
      v32 = 3;
      v33 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
    }

    v18 = *a2 + *(a3 + 12) - *a4;
    *&v21 = GraphSymbol;
    DWORD2(v21) = v18;
    v22 = v8;
    LOBYTE(v23) = v14;
    llvm::jitlink::Block::addEdge(a4, &v21);
    *a5 = 0;
    goto LABEL_18;
  }

  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getEntry<llvm::object::Elf_Sym_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>>>(*(a1 + 48), v15, &v37, *(a1 + 24));
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = v37;
  v37 = 0;
  *a5 = v16;
LABEL_18:
  if (v38)
  {
    v20 = v37;
    v37 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }
}

uint64_t llvm::jitlink::PerGraphGOTAndPLTStubsBuilder<anonymous namespace::PerGraphGOTAndPLTStubsBuilder_ELF_riscv>::getGOTEntry(uint64_t *a1, uint64_t *a2)
{
  v17[0] = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1 + 1, a2, v17);
  v5 = v17[0];
  if (!v4)
  {
    v5 = a1[1] + 16 * *(a1 + 6);
  }

  if (v5 == a1[1] + 16 * *(a1 + 6))
  {
    v6 = *a1;
    v7 = a1[7];
    if (!v7)
    {
      llvm::jitlink::LinkGraph::createSection(*a1, "$__GOT", 6, 1);
    }

    v8 = *(*a1 + 184);
    v17[1] = v8;
    v15 = 0;
    v19 = v8;
    v18 = 0;
    v9 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v6, v7, v17, &v15, &v19, &v18);
    v10 = v9;
    if (*(*a1 + 184) == 8)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    llvm::jitlink::Block::addEdge(v9, v11, 0, a2, 0);
    v12 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*a1, v10, 0, *(*a1 + 184), 0, 0);
    v13 = *a2;
    v15 = v13;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v13 + 8), 1uLL);
    }

    v16 = v12;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>((a1 + 1), &v15, &v16, v17);
    v5 = v17[0];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return *(v5 + 8);
}

void llvm::jitlink::ELFJITLinker_riscv::~ELFJITLinker_riscv(llvm::jitlink::ELFJITLinker_riscv *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_riscv>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a1 + 208))
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = 24 * v3;
      v5 = *(a1 + 200);
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 3;
        v4 -= 24;
        if (!v4)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v5 = *(a1 + 200);
    }

    v6 = *(a1 + 200) + 24 * v3;
    if (v5 != v6)
    {
      v49 = v6;
      do
      {
        v7 = v5[2];
        v8 = *(v7 + 20);
        v9 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
        v11 = *(v7 + 32) + 8 * *(v7 + 48);
        if (v11 != v9)
        {
          v12 = v9;
          v13 = v10;
          do
          {
            v14 = *v12;
            if (v8 == 2 && (v14[1] & 4) == 0)
            {
              v16 = v14[3];
              v15 = v14[4];
              v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, v15, 0);
              v18 = v17;
              if (v15)
              {
                memmove(v17, v16, v15);
              }

              v14[3] = v18;
              v14[4] = v15;
              v14[1] |= 4uLL;
            }

            v19 = v14[5];
            v20 = v14[6];
            while (v19 != v20)
            {
              if (*(v19 + 24) >= 2u)
              {
                v21 = v19[2];
                v22 = (v14[3] + v21);
                v23 = *v14 + v21;
                switch(*(v19 + 24))
                {
                  case 2:
                  case 0x1D:
                    v24 = **(*v19 + 8);
                    v25 = *(*v19 + 16);
                    goto LABEL_46;
                  case 3:
                    v37 = **(*v19 + 8);
                    v38 = *(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL;
                    goto LABEL_48;
                  case 4:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 2048) >= 0x1000)
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    v42 = vdupq_n_s32(**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]);
                    v43 = vshlq_u32(v42, xmmword_2750C41E0);
                    v43.i32[3] = vshlq_u32(v42, xmmword_2750C41F0).i32[3];
                    v44 = vandq_s8(v43, xmmword_2750C4200);
                    *v44.i8 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
                    v26 = v44.i32[0] | *v22 & 0x1FFF07F | v44.i32[1];
                    goto LABEL_72;
                  case 5:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 0x80000) >= 0x100000)
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    *v22 = v27 & 0xFF000 | ((v27 >> 20) << 31) | (((v27 >> 1) & 0x3FF) << 21) | (((v27 >> 11) & 1) << 20) | *v22 & 0xFFF;
                    goto LABEL_73;
                  case 6:
                    if ((**(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2) + 2147485696u) >> 32)
                    {
                      goto LABEL_75;
                    }

                    v39 = v22[1] | ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]) << 20);
                    *v22 |= (**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4] + 2048) & 0xFFFFF000;
                    v22[1] = v39;
                    goto LABEL_73;
                  case 9:
                    v41 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    goto LABEL_57;
                  case 0xA:
                    llvm::jitlink::getRISCVPCRelHi20(&v51, *(*(*v19 + 8) + 40), *(*(*v19 + 8) + 48), *(*v19 + 16));
                    if (v52)
                    {
                      goto LABEL_60;
                    }

                    v32 = *(*v51 + 16) + v51[4] + **(*v51 + 8) - (**(*v19 + 8) + *(*v19 + 16));
                    goto LABEL_43;
                  case 0xB:
                    llvm::jitlink::getRISCVPCRelHi20(&v51, *(*(*v19 + 8) + 40), *(*(*v19 + 8) + 48), *(*v19 + 16));
                    if (v52)
                    {
LABEL_60:
                      v45 = v51;
                      *a2 = v51;
                      if (v45)
                      {
                        return;
                      }
                    }

                    else
                    {
                      v40 = *(*v51 + 16) + v51[4] + **(*v51 + 8) - (**(*v19 + 8) + *(*v19 + 16));
LABEL_71:
                      v26 = *v22 & 0x1FFF07F | ((v40 >> 5) << 25) | ((v40 & 0x1F) << 7);
LABEL_72:
                      *v22 = v26;
LABEL_73:
                      *a2 = 0;
                    }

                    break;
                  case 0xC:
                    v41 = (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2) + **(*v19 + 8);
LABEL_57:
                    if ((v41 + 2147485696) >> 32)
                    {
                      goto LABEL_75;
                    }

                    v26 = (v41 + 2048) & 0xFFFFF000 | *v22 & 0xFFF;
                    goto LABEL_72;
                  case 0xD:
                    v32 = *(*v19 + 16) + v19[4] + **(*v19 + 8);
LABEL_43:
                    v31 = *v22 & 0xFFFFF | (v32 << 20);
                    goto LABEL_44;
                  case 0xE:
                    v40 = *(*v19 + 16) + v19[4] + **(*v19 + 8);
                    goto LABEL_71;
                  case 0xF:
                    v34 = **(*v19 + 8);
                    v35 = *(*v19 + 16) + *v22;
                    goto LABEL_39;
                  case 0x10:
                    v29 = **(*v19 + 8);
                    v30 = *(*v19 + 16) + *v22;
                    goto LABEL_28;
                  case 0x11:
                    v24 = **(*v19 + 8);
                    v25 = *(*v19 + 16) + *v22;
LABEL_46:
                    v26 = v25 + v19[4] + v24;
                    goto LABEL_72;
                  case 0x12:
                    v37 = **(*v19 + 8);
                    v38 = (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *v22;
LABEL_48:
                    v36 = v38 + *(v19 + 2) + v37;
                    goto LABEL_49;
                  case 0x13:
                    v33 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_64;
                  case 0x14:
                    v28 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_68;
                  case 0x15:
                    v26 = *v22 - (*(*v19 + 16) + v19[4]) - **(*v19 + 8);
                    goto LABEL_72;
                  case 0x16:
                    v36 = *v22 - ((*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2)) - **(*v19 + 8);
LABEL_49:
                    *v22 = v36;
                    goto LABEL_73;
                  case 0x17:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (v27 >> 1 != (v27 >> 1))
                    {
                      goto LABEL_75;
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
                      goto LABEL_76;
                    }

                    v46 = vdupq_n_s32(**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]);
                    v47 = vshlq_u32(v46, xmmword_2750C41B0);
                    v47.i32[2] = vshlq_u32(v46, xmmword_2750C41C0).i32[2];
                    v48 = vandq_s8(v47, xmmword_2750C41D0);
                    *v48.i8 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
                    v28 = *v22 & 0xE383 | v48.i32[0] | ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]) >> 3) & 4 | v48.i32[1];
                    goto LABEL_68;
                  case 0x18:
                    v27 = **(*v19 + 8) - v23 + (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + *(v19 + 2);
                    if (((v27 >> 1) + 1024) >= 0x800)
                    {
LABEL_75:
                      llvm::jitlink::makeTargetOutOfRangeError(a1, v14, v19);
                    }

                    if ((**(*v19 + 8) - v23 + *(*v19 + 16) + v19[4]))
                    {
LABEL_76:
                      llvm::jitlink::makeAlignmentError(v23, v27, 2u, v19);
                    }

                    v28 = *v22 & 0xE003 | (v27 >> 3) & 4 | (2 * v27) & 0x1600 | (((v27 >> 4) & 1) << 11) | (v27 >> 2) & 0x100 | (((v27 >> 6) & 1) << 7) | (v27 >> 1) & 0x40 | (8 * ((v27 >> 1) & 7));
LABEL_68:
                    *v22 = v28;
                    goto LABEL_73;
                  case 0x19:
                    v33 = *v22 & 0xC0 | (*v22 + v19[4] - *(*v19 + 16) - **(*v19 + 8)) & 0x3F;
LABEL_64:
                    *v22 = v33;
                    goto LABEL_73;
                  case 0x1A:
                    v31 = *v22 & 0xFFFFFFC0 | (*(*v19 + 16) + v19[4] + **(*v19 + 8)) & 0x3F;
LABEL_44:
                    *v22 = v31;
                    goto LABEL_73;
                  case 0x1B:
                    v34 = **(*v19 + 8);
                    v35 = *(*v19 + 16);
LABEL_39:
                    *v22 = v35 + *(v19 + 16) + v34;
                    goto LABEL_73;
                  case 0x1C:
                    v29 = **(*v19 + 8);
                    v30 = *(*v19 + 16);
LABEL_28:
                    *v22 = v30 + *(v19 + 8) + v29;
                    goto LABEL_73;
                  case 0x1E:
                    v26 = **(*v19 + 8) - v23 + *(*v19 + 16) + v19[4];
                    goto LABEL_72;
                  default:
                    goto LABEL_73;
                }
              }

              v19 += 8;
            }

            do
            {
              ++v12;
            }

            while (v12 != v13 && (*v12 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v12 != v11);
        }

        for (v5 += 3; ; v5 += 3)
        {
          if (v5 == v49)
          {
            goto LABEL_85;
          }

          if (*v5 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }
      }

      while (v5 != v49);
    }
  }

LABEL_85:
  *a2 = 0;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_riscv>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::getRISCVPCRelHi20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a2)
  {
    v9 = a3;
    goto LABEL_22;
  }

  v4 = a4 & 0x1FFFFFFFFFFFFFFLL;
  v5 = (a3 - a2) >> 5;
  while (1)
  {
    v6 = v5 >> 1;
    v7 = a2 + 32 * (v5 >> 1);
    v8 = *(v7 + 8);
    if (v4 <= v8)
    {
      break;
    }

    a2 = v7 + 32;
    v6 = v5 + ~v6;
LABEL_7:
    v5 = v6;
    if (!v6)
    {
      v9 = a2;
      a3 = a2;
      goto LABEL_22;
    }
  }

  if (v4 < v8)
  {
    a3 = a2 + 32 * (v5 >> 1);
    goto LABEL_7;
  }

  v9 = a2 + 32 * (v5 >> 1);
  if (v5 != 1)
  {
    do
    {
      v10 = v6 >> 1;
      v11 = a2 + 32 * (v6 >> 1);
      v12 = *(v11 + 8);
      v13 = v11 + 32;
      v6 += ~(v6 >> 1);
      if (v4 > v12)
      {
        a2 = v13;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v6);
    v9 = a2;
  }

  v14 = v7 + 32;
  if (a3 != v7 + 32)
  {
    v15 = (a3 - (v7 + 32)) >> 5;
    a3 = v14;
    do
    {
      v16 = v15 >> 1;
      v17 = a3 + 32 * (v15 >> 1);
      v18 = *(v17 + 8);
      v19 = v17 + 32;
      v15 += ~(v15 >> 1);
      if (v4 < v18)
      {
        v15 = v16;
      }

      else
      {
        a3 = v19;
      }
    }

    while (v15);
  }

LABEL_22:
  if (a3 == v9)
  {
LABEL_25:
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  while (*(v9 + 24) != 9)
  {
    v9 += 32;
    if (v9 == a3)
    {
      goto LABEL_25;
    }
  }

  *(a1 + 8) &= ~1u;
  *a1 = v9;
}

uint64_t *llvm::jitlink::createLinkGraphFromELFObject_x86_64@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  llvm::object::ObjectFile::createELFObjectFile(v11, 1, &v12);
  v6 = v12;
  if ((v13 & 1) == 0)
  {
    v7 = *(v12 + 32);
    v8 = *(v12 + 40);
    v10 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::jitlink::ELFLinkGraphBuilder_x86_64::ELFLinkGraphBuilder_x86_64(v11, v7, v8, &v10, v6 + 56);
  }

  v12 = 0;
  *(a3 + 8) |= 1u;
  *a3 = v6;
  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v12);
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::~ELFLinkGraphBuilder_x86_64(llvm::jitlink::ELFLinkGraphBuilder_x86_64 *this)
{
  *this = &unk_2883ED240;
  MEMORY[0x277C69E30](*(this + 16), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);

  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(this);
}

{
  *this = &unk_2883ED240;
  MEMORY[0x277C69E30](*(this + 16), 8);
  MEMORY[0x277C69E30](*(this + 13), 8);
  MEMORY[0x277C69E30](*(this + 10), 8);
  llvm::jitlink::ELFLinkGraphBuilderBase::~ELFLinkGraphBuilderBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::link_ELF_x86_64(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    v13 = ".eh_frame";
    *&v14 = 9;
    v15 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::DWARFRecordSectionSplitter,llvm::jitlink::DWARFRecordSectionSplitter,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v7, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    v3 = operator new(0x20uLL, 8uLL);
    v14 = xmmword_2750C12D0;
    *v3 = ".eh_frame";
    v3[1] = 9;
    *(v3 + 4) = 8;
    *(v3 + 5) = 101122563;
    *(v3 + 24) = 9;
    v13 = v3;
    v15 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameEdgeFixer,llvm::jitlink::EHFrameEdgeFixer,void>::Callbacks;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v7, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    v13 = ".eh_frame";
    *&v14 = 9;
    v15 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::jitlink::EHFrameNullTerminator,llvm::jitlink::EHFrameNullTerminator,void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v7, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    (*(**a2 + 64))(&v13);
    if (v15 < 8)
    {
      *&v11 = llvm::jitlink::markAllSymbolsLive;
      v12 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v7, &v11);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v11);
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v7, &v13);
    }

    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    v15 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v7[1] + 1, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    v4 = operator new(0x20uLL, 8uLL);
    v13 = v4;
    v14 = xmmword_2750C12D0;
    *v4 = 0;
    v4[1] = 0;
    *(v4 + 4) = 0;
    v4[3] = llvm::jitlink::identifyELFSectionStartAndEndSymbols;
    v15 = (off_2815A4380 + 4);
    MEMORY[0x277C69E30](0, 8);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v8, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
    MEMORY[0x277C69E30](0, 8);
    v13 = llvm::jitlink::x86_64::optimizeGOTAndStubAccesses;
    v15 = (llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2);
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](&v8[1] + 1, &v13);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v13);
  }

  (*(**a2 + 72))(&v13);
  if (!v13)
  {
    operator new();
  }

  v5 = *a2;
  v6 = v13;
  v13 = 0;
  (*(*v5 + 24))(v5, &v6);
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  if (v13)
  {
    (*(*v13 + 1))(v13);
  }

  v13 = &v9;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = &v8[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = &v7[1] + 1;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = v7;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v13);
}

uint64_t *anonymous namespace::buildTables_ELF_x86_64@<X0>(_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v28 = 0;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v24 = v26;
  v25 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  llvm::jitlink::LinkGraph::blocks(this, v31);
  v32[0] = v31[0];
  v32[1] = v31[1];
  v32[2] = v31[2];
  v32[3] = v31[3];
  llvm::jitlink::LinkGraph::blocks(this, v29);
  v30[0] = v29[4];
  v30[1] = v29[5];
  v30[2] = v29[6];
  v30[3] = v29[7];
  std::vector<llvm::jitlink::Block *>::vector[abi:nn200100]<llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>,0>(&v33, v32, v30);
  v4 = v33;
  v5 = v34;
  if (v33 != v34)
  {
    v18 = a2;
    do
    {
      v6 = *v4;
      v8 = *(*v4 + 40);
      v7 = *(*v4 + 48);
      while (v8 != v7)
      {
        if ((llvm::jitlink::x86_64::GOTTableManager::visitEdge(v26, this, v6, v8) & 1) == 0 && (llvm::jitlink::x86_64::PLTTableManager::visitEdge(v22, this, v6, v8) & 1) == 0 && v8[24] == 23)
        {
          v8[24] = 7;
          v9 = *v8;
          *&v31[0] = 0;
          v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v19, v9, v31);
          v11 = *&v31[0];
          if (!v10)
          {
            v11 = v19[0] + 16 * v20;
          }

          if (v11 == v19[0] + 16 * v20)
          {
            v12 = v21;
            if (!v21)
            {
              llvm::jitlink::LinkGraph::createSection(this, "$__TLSINFO", 10, 1);
            }

            v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(this, 16, 0);
            *v13 = 0;
            v13[1] = 0;
            *&v31[0] = v13;
            *(&v31[0] + 1) = 16;
            *&v29[0] = 0;
            *&v32[0] = 8;
            *&v30[0] = 0;
            v14 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(this, v12, v31, v29, v32, v30);
            llvm::jitlink::Block::addEdge(v14, 2, 8, v9, 0);
            v15 = llvm::jitlink::LinkGraph::addAnonymousSymbol(this, v14, 0, 16, 0, 0);
            v16 = *v9;
            *&v29[0] = v16;
            if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v16 + 8), 1uLL);
            }

            *(&v29[0] + 1) = v15;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::try_emplace<llvm::jitlink::Symbol *>(v19, v29, v29 + 1, v31);
            v11 = *&v31[0];
            if ((*&v29[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*&v29[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          *v8 = *(v11 + 8);
        }

        v8 += 32;
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v33;
    a2 = v18;
  }

  if (v4)
  {
    v34 = v4;
    operator delete(v4);
  }

  *a2 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v19);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v22);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v26);
}

uint64_t llvm::jitlink::identifyELFSectionStartAndEndSymbols(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *a2 - 1;
  if (v5 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 1uLL);
  }

  v6 = *v4;
  if (*v4 < 7uLL)
  {
    if (v6 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (*(v4 + 16) != 1953718111 || *(v4 + 19) != 1953653108)
  {
LABEL_10:
    if (*(v4 + 16) != 1852137311 || *(v4 + 20) != 100)
    {
      goto LABEL_14;
    }

    result = llvm::jitlink::LinkGraph::findSectionByName(a1, v4 + 21, v6 - 5, a4);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  result = llvm::jitlink::LinkGraph::findSectionByName(a1, v4 + 23, *v4 - 7, a4);
  if (!result)
  {
LABEL_14:
    result = 0;
  }

LABEL_15:
  if (v5 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::ELFLinkGraphBuilder_x86_64(void *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = "x86_64-unknown-linux";
  v10 = 259;
  llvm::Triple::Triple(__p, &v9);
  llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,true>>::ELFLinkGraphBuilder(a1, a5, &v12, __p, a2, a3, llvm::jitlink::x86_64::getEdgeKindName);
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::addRelocations(llvm::jitlink::ELFLinkGraphBuilder_x86_64 *this@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  if (v3)
  {
    v5 = *(this + 4);
    v6 = v5 + (v3 << 6);
    v7 = "Refencing a section that wasn't added to the graph: ";
    while (1)
    {
      v8 = *(v5 + 4);
      if (v8 == 9)
      {
        getErrorErrorCat();
        *&v20 = 3;
        *(&v20 + 1) = &getErrorErrorCat(void)::ErrorErrorCat;
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      if (v8 == 4)
      {
        break;
      }

      *a2 = 0;
LABEL_36:
      v5 += 64;
      if (v5 == v6)
      {
        goto LABEL_37;
      }
    }

    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSection(*(v5 + 44), &v25, *(this + 3));
    if (v26)
    {
      v9 = v25;
      *a2 = v25;
      goto LABEL_35;
    }

    v10 = *(this + 3);
    *&v20 = llvm::object::defaultWarningHandler;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionName(v10, v25, llvm::function_ref<llvm::Error ()(llvm::Twine const&)>::callback_fn<llvm::Error (*)(llvm::Twine const&)>, &v20, &v23);
    if (v24)
    {
      v11 = v23;
      *&v23 = 0;
      *a2 = v11;
      goto LABEL_28;
    }

    if ((*(this + 72) & 1) == 0 && (v20 = v23, std::__find[abi:nn200100]<char const* const*,char const* const*,llvm::StringRef,std::__identity>(llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames, &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0], &v20) != &llvm::jitlink::ELFLinkGraphBuilderBase::DwarfSectionNames[unk_2809A2CF0]) || (*(*this + 40))(this, v25))
    {
      *a2 = 0;
LABEL_28:
      if (v24)
      {
        v18 = v23;
        *&v23 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      if (v26)
      {
        v19 = v25;
        v25 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      v9 = *a2;
LABEL_35:
      if (v9)
      {
        return;
      }

      goto LABEL_36;
    }

    GraphBlock = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphBlock(this, *(v5 + 44));
    if (!GraphBlock)
    {
      v22 = 1283;
      *&v20 = v7;
      v21 = v23;
      getErrorErrorCat();
      operator new();
    }

    v13 = GraphBlock;
    llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getSectionContentsAsArray<llvm::object::Elf_Rel_Impl<llvm::object::ELFType<(llvm::support::endianness)1,true>,true>>(*(this + 3), v5, &v20);
    v14 = v20;
    v15 = v7;
    if (v21)
    {
      *&v20 = 0;
    }

    else
    {
      if (*(&v20 + 1))
      {
        v16 = 24 * *(&v20 + 1);
        do
        {
          llvm::jitlink::ELFLinkGraphBuilder_x86_64::addSingleRelocation(this, v14, v25, v13, a2);
          if (*a2)
          {
            goto LABEL_24;
          }

          v14 += 24;
          v16 -= 24;
        }

        while (v16);
      }

      v14 = 0;
    }

    *a2 = v14;
LABEL_24:
    if (v21)
    {
      v17 = v20;
      *&v20 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v7 = v15;
    goto LABEL_28;
  }

LABEL_37:
  *a2 = 0;
}

void llvm::jitlink::ELFLinkGraphBuilder_x86_64::addSingleRelocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 12);
  v42 = v10;
  llvm::object::ELFFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::getRelocationSymbol(*(a1 + 24), a2, &v49, *(a1 + 48));
  if (v50)
  {
    v11 = v49;
    v49 = 0;
    *a5 = v11;
    goto LABEL_50;
  }

  GraphSymbol = llvm::jitlink::ELFLinkGraphBuilder<llvm::object::ELFType<(llvm::support::endianness)1,false>>::getGraphSymbol(a1, v10);
  if (!GraphSymbol)
  {
    v16 = *(a1 + 112);
    v32 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, shndx: {1} Size of table: {2}";
    v33 = 113;
    v34 = v41;
    v35 = 3;
    v36 = &unk_2883ECF20;
    v37 = &v42;
    v38[0] = &unk_2883ED130;
    v38[1] = v49 + 6;
    v39 = &unk_2883ECC68;
    v40 = v16;
    v41[0] = &v36;
    v41[1] = v38;
    v41[2] = &v39;
    getErrorErrorCat();
    v47 = 3;
    v48 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,llvm::formatv_object<std::tuple<llvm::detail::provider_format_adapter<unsigned int &>,llvm::detail::stream_operator_format_adapter<llvm::support::detail::packed_endian_specific_integral<unsigned short,(llvm::support::endianness)1,1ul,1ul> const&>,llvm::detail::provider_format_adapter<unsigned int>>>,std::error_code>();
  }

  v13 = *(a2 + 8);
  v46 = v13;
  if (v13 > 23)
  {
    if (v13 <= 27)
    {
      if (v13 != 24)
      {
        if (v13 == 25)
        {
          v14 = *(a2 + 16);
          v15 = 10;
          goto LABEL_37;
        }

        if (v13 != 27)
        {
          goto LABEL_54;
        }

        v14 = *(a2 + 16);
        v15 = 17;
        goto LABEL_37;
      }
    }

    else
    {
      if (v13 > 40)
      {
        if (v13 == 41)
        {
          v14 = 0;
          v15 = 21;
          goto LABEL_37;
        }

        if (v13 == 42)
        {
          v14 = 0;
          v15 = 20;
          goto LABEL_37;
        }

        goto LABEL_54;
      }

      if (v13 == 28)
      {
        v14 = *(a2 + 16);
        v15 = 16;
        goto LABEL_37;
      }

      if (v13 != 29)
      {
        goto LABEL_54;
      }
    }

    v14 = *(a2 + 16);
    v15 = 6;
    goto LABEL_37;
  }

  if (v13 > 8)
  {
    if (v13 <= 10)
    {
      v14 = *(a2 + 16);
      if (v13 == 9)
      {
        v15 = 15;
      }

      else
      {
        v15 = 3;
      }

      goto LABEL_37;
    }

    if (v13 == 11)
    {
      v14 = *(a2 + 16);
      v15 = 4;
      goto LABEL_37;
    }

    if (v13 == 19)
    {
      v14 = *(a2 + 16);
      v15 = 23;
      goto LABEL_37;
    }

LABEL_54:
    v32 = "{0:d}: ";
    v33 = 7;
    v34 = v38;
    v35 = 1;
    v36 = &unk_2883EB018;
    v37 = &v46;
    v38[0] = &v36;
    v43 = "Unsupported x86-64 relocation type ";
    v44 = &v32;
    v45 = 1539;
    llvm::object::getELFRelocationTypeName(0x3E, v13);
    operator new();
  }

  if (v13 == 1)
  {
    v14 = *(a2 + 16);
    v15 = 2;
    goto LABEL_37;
  }

  if (v13 == 2)
  {
    v14 = *(a2 + 16);
    v15 = 7;
    goto LABEL_37;
  }

  if (v13 != 4)
  {
    goto LABEL_54;
  }

  v14 = *(a2 + 16) + 4;
  v15 = 11;
LABEL_37:
  v17 = *a2 + *(a3 + 16) - *a4;
  v18 = *(a4 + 48);
  v19 = *(a4 + 56);
  if (v18 >= v19)
  {
    v21 = *(a4 + 40);
    v22 = (v18 - v21) >> 5;
    v23 = v22 + 1;
    if ((v22 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v24 = v19 - v21;
    if (v24 >> 4 > v23)
    {
      v23 = v24 >> 4;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFE0)
    {
      v25 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(a4 + 40, v25);
    }

    v26 = 32 * v22;
    *v26 = GraphSymbol;
    *(v26 + 8) = v17;
    *(v26 + 16) = v14;
    *(v26 + 24) = v15;
    v20 = 32 * v22 + 32;
    v27 = *(a4 + 40);
    v28 = *(a4 + 48) - v27;
    v29 = (32 * v22 - v28);
    memcpy(v29, v27, v28);
    v30 = *(a4 + 40);
    *(a4 + 40) = v29;
    *(a4 + 48) = v20;
    *(a4 + 56) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = GraphSymbol;
    *(v18 + 8) = v17;
    *(v18 + 16) = v14;
    v20 = v18 + 32;
    *(v18 + 24) = v15;
  }

  *(a4 + 48) = v20;
  *a5 = 0;
LABEL_50:
  if (v50)
  {
    v31 = v49;
    v49 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::DefineExternalSectionStartAndEndSymbols<llvm::jitlink::SectionRangeSymbolDesc (&)(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = (*(a2 + 224) + 8 * *(a2 + 240));
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v23, v6, v8, v9, v9);
  v10 = v23;
  v11 = v24;
  if (v23 == v24)
  {
    goto LABEL_16;
  }

  do
  {
    v12 = *v10;
    v13 = (*(a1 + 24))(a2, *v10);
    if (!v13)
    {
      goto LABEL_14;
    }

    v15 = v13;
    v16 = v14;
    v26 = v13;
    v28[0] = 0;
    v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(a1, &v26, v28);
    v18 = v28[0];
    if (!v17)
    {
      v18 = *a1 + 24 * *(a1 + 16);
    }

    if (v18 == *a1 + 24 * *(a1 + 16))
    {
      llvm::jitlink::SectionRange::SectionRange(&v25, v15);
      v26 = v15;
      v27 = v25;
      llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(a1, &v26, &v27, v28);
      v18 = v28[0];
    }

    v19 = *(v18 + 8);
    if (v16)
    {
      if (v19)
      {
        v20 = a2;
        v21 = v12;
        v22 = 0;
LABEL_12:
        llvm::jitlink::LinkGraph::makeDefined(v20, v21, v19, v22, 0, 0, 3, 0);
        goto LABEL_14;
      }
    }

    else if (v19)
    {
      v19 = *(v18 + 16);
      v22 = *(v19 + 32);
      v20 = a2;
      v21 = v12;
      goto LABEL_12;
    }

    llvm::jitlink::LinkGraph::makeAbsolute(a2, v12, v19);
LABEL_14:
    ++v10;
  }

  while (v10 != v11);
  v10 = v23;
LABEL_16:
  *a3 = 0;
  if (v10)
  {
    v24 = v10;
    operator delete(v10);
  }
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::MoveImpl<llvm::jitlink::DefineExternalSectionStartAndEndSymbols<llvm::jitlink::SectionRangeSymbolDesc (&)(llvm::jitlink::LinkGraph &,llvm::jitlink::Symbol &)>>(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *a2 = 0;
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = *(result + 12);
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  *(result + 24) = *(a2 + 24);
  return result;
}

void llvm::jitlink::ELFJITLinker_x86_64::~ELFJITLinker_x86_64(llvm::jitlink::ELFJITLinker_x86_64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_x86_64>::fixUpBlocks(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208))
  {
    v6 = *(a2 + 216);
    if (v6)
    {
      v7 = 24 * v6;
      v8 = *(a2 + 200);
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 += 3;
        v7 -= 24;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v8 = *(a2 + 200);
    }

    v9 = *(a2 + 200) + 24 * v6;
LABEL_10:
    if (v8 != v9)
    {
      v10 = v8[2];
      v23 = *(v10 + 20);
      v11 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v10 + 32);
      v22 = *(v10 + 32) + 8 * *(v10 + 48);
      if (v22 == v11)
      {
        goto LABEL_26;
      }

      v13 = v11;
      v14 = v12;
      do
      {
        v15 = *v13;
        if (v23 == 2 && (v15[1] & 4) == 0)
        {
          v16 = v15[4];
          __src = v15[3];
          v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v16, 0);
          v18 = v17;
          if (v16)
          {
            memmove(v17, __src, v16);
          }

          v15[3] = v18;
          v15[4] = v16;
          v15[1] |= 4uLL;
        }

        v19 = v15[5];
        v20 = v15[6];
        while (v19 != v20)
        {
          if (*(v19 + 24) >= 2u)
          {
            llvm::jitlink::x86_64::applyFixup(a2, v15, v19, *(a1 + 152), a3);
            if (*a3)
            {
              return;
            }
          }

          v19 += 32;
        }

        do
        {
          ++v13;
        }

        while (v13 != v14 && (*v13 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v13 != v22);
LABEL_26:
      while (1)
      {
        v8 += 3;
        if (v8 == v9)
        {
          break;
        }

        if (*v8 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_10;
        }
      }
    }
  }

LABEL_6:
  *a3 = 0;
}

void llvm::jitlink::JITLinker<llvm::jitlink::ELFJITLinker_x86_64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::ELFJITLinker_x86_64::ELFJITLinker_x86_64(std::unique_ptr<llvm::jitlink::JITLinkContext>,std::unique_ptr<llvm::jitlink::LinkGraph>,llvm::jitlink::PassConfiguration)::{lambda(llvm::jitlink::LinkGraph &)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v42 = a2;
  v43 = v5;
  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v8 = v7;
  llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(a2 + 224);
  v9 = (*(a2 + 224) + 8 * *(a2 + 240));
  std::vector<llvm::jitlink::Symbol *>::vector[abi:nn200100]<llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,0>(&v44, v6, v8, v9, v9);
  v11 = v44;
  v12 = v45;
  if (v44 != v45)
  {
    v39 = v5;
    do
    {
      v13 = *v11;
      v14 = **v11;
      if (v14 && *v14 == 21)
      {
        v15 = v14[2];
        v16 = v14[3];
        v17 = *(v14 + 29);
        v18 = v15 == 0x5F4C41424F4C475FLL && v16 == 0x545F54455346464FLL;
        if (v18 && v17 == 0x5F454C4241545F54)
        {
          v20 = v43;
          SectionByName = llvm::jitlink::LinkGraph::findSectionByName(v42, "$__GOT", 6, v10);
          if (SectionByName)
          {
            v22 = SectionByName;
            *(v20 + 152) = v13;
            v47 = SectionByName;
            v49[0] = 0;
            v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::LookupBucketFor<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*>(v40, &v47, v49);
            v24 = v49[0];
            if (!v23)
            {
              v24 = (v40[0] + 24 * v41);
            }

            if (v24 == (v40[0] + 24 * v41))
            {
              llvm::jitlink::SectionRange::SectionRange(&v46, v22);
              v47 = v22;
              v48 = v46;
              llvm::DenseMapBase<llvm::DenseMap<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>,llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>,llvm::DenseMapInfo<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,void>,llvm::detail::DenseMapPair<llvm::object::Elf_Shdr_Impl<llvm::object::ELFType<(llvm::support::endianness)1,false>> const*,llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>>::try_emplace<llvm::ArrayRef<llvm::support::detail::packed_endian_specific_integral<unsigned int,(llvm::support::endianness)1,1ul,1ul>>>(v40, &v47, &v48, v49);
              v24 = v49[0];
            }

            v25 = v24[1];
            if (v25)
            {
              llvm::jitlink::LinkGraph::makeDefined(a2, v13, v25, 0, 0, 0, 3, 0);
            }

            else
            {
              llvm::jitlink::LinkGraph::makeAbsolute(a2, v13, 0);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v44;
    v5 = v39;
  }

  if (v11)
  {
    v45 = v11;
    operator delete(v11);
  }

  if (!*(v5 + 152))
  {
    v26 = llvm::jitlink::LinkGraph::findSectionByName(a2, "$__GOT", 6, v10);
    if (v26)
    {
      v27 = v26;
      v28 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v26 + 56);
      v30 = *(v27 + 56) + 8 * *(v27 + 72);
      if (v30 == v28)
      {
LABEL_39:
        llvm::jitlink::SectionRange::SectionRange(v49, v27);
        if (v49[0])
        {
          v37 = llvm::jitlink::LinkGraph::addDefinedSymbol(a2, v49[0], 0, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 3, 0, 1);
        }

        else
        {
          v37 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(a2, "_GLOBAL_OFFSET_TABLE_", 0x15uLL, 0, 0, 0, 3, 1);
        }

        *(v5 + 152) = v37;
      }

      else
      {
        while (1)
        {
          v31 = **v28;
          if (v31 && *v31 == 21)
          {
            v32 = v31[2];
            v33 = v31[3];
            v34 = *(v31 + 29);
            v35 = v32 == 0x5F4C41424F4C475FLL && v33 == 0x545F54455346464FLL;
            if (v35 && v34 == 0x5F454C4241545F54)
            {
              break;
            }
          }

          do
          {
            ++v28;
          }

          while (v28 != v29 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v28 == v30)
          {
            goto LABEL_39;
          }
        }

        *(v5 + 152) = *v28;
      }
    }
  }

  *a3 = 0;
  return MEMORY[0x277C69E30](v40[0], 8);
}

void llvm::jitlink::createLinkGraphFromCOFFObject(unsigned __int8 **a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (llvm::identify_magic(*a1, v7) != 24)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  if (v7 <= 0x13)
  {
LABEL_3:
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[22]>(a3);
  }

  if (v7 >= 0x44 && *v6 == 77 && v6[1] == 90)
  {
    v8 = *(v6 + 15);
    v9 = &v6[v8];
    if (*&v6[v8] != 17744)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[19]>(a3);
    }

    if (v7 < v8 + 24)
    {
      goto LABEL_3;
    }

    v10 = 0;
    v6 = v9 + 4;
LABEL_12:
    v11 = v10 + 6;
    if (v6)
    {
      v11 = v6;
    }

    v12 = *v11;
    if (v12 == 34404)
    {
      v13 = *(a1 + 1);
      v23[0] = *a1;
      v23[1] = v13;
      v22 = *a2;
      *a2 = 0;
      *(a2 + 1) = 0;
      llvm::jitlink::createLinkGraphFromCOFFObject_x86_64(v23);
    }

    v18 = 1283;
    v14 = a1[2];
    v15 = a1[3];
    v17[0] = "Unsupported target machine architecture in COFF object ";
    v17[2] = v14;
    v17[3] = v15;
    v19 = v17;
    v20 = ": ";
    v21 = 770;
    operator new();
  }

  if (!*v6)
  {
    v10 = 0;
    if (*(v6 + 1) != -1 || v7 < 0x38)
    {
      goto LABEL_12;
    }

    if (*(v6 + 2) >= 2u && *(v6 + 12) == 0x4BA9BAEED1BAA1C7 && *(v6 + 20) == 0xB8DCA46AF6FA20AFLL)
    {
      v10 = v6;
      v6 = 0;
      goto LABEL_12;
    }
  }

  v10 = 0;
  goto LABEL_12;
}

void llvm::jitlink::link_COFF(llvm::jitlink::LinkGraph **a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 40) != 38)
  {
    std::operator+<char>();
    llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
  }

  *a1 = 0;
  v7 = v2;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  llvm::jitlink::link_COFF_x86_64(&v7, &v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v5);
    MEMORY[0x277C69E40]();
  }
}

void COFFOptTable::~COFFOptTable(COFFOptTable *this)
{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::COFFDirectiveParser::parse(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54[32] = *MEMORY[0x277D85DE8];
  v52 = v54;
  v53 = 0x1000000000;
  v49 = v51;
  v50 = 0x1000000000;
  llvm::cl::TokenizeWindowsCommandLineNoCopy(a2, a3, (a1 + 96), &v52);
  if (v53)
  {
    v8 = v52;
    v9 = (v52 + 16 * v53);
    v10 = (a2 + a3);
    do
    {
      v12 = *v8;
      v11 = v8[1];
      v13 = (*v8 + v11);
      if (v13 == v10 || *v13)
      {
        v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 96), v11 + 1, 0);
        v15 = v14;
        if (v11)
        {
          memcpy(v14, v12, v11);
        }

        *(v15 + v11) = 0;
      }

      else
      {
        v15 = *v8;
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v49, v15);
      v8 += 2;
    }

    while (v8 != v9);
  }

  v32 = 0;
  llvm::opt::OptTable::ParseArgs(optTable, v49, v50, &v32 + 1, &v32, 0, 0, &v33);
  if (v32)
  {
    operator new();
  }

  *(a4 + 352) &= ~1u;
  *a4 = &unk_2883ED650;
  v16 = (a4 + 24);
  *(a4 + 8) = a4 + 24;
  *(a4 + 16) = 0x1000000000;
  v17 = v35;
  if (v35 && &v33 != a4)
  {
    v18 = __src;
    if (__src != v37)
    {
      *(a4 + 8) = __src;
      v19 = v36;
      *(a4 + 16) = v17;
      *(a4 + 20) = v19;
      __src = v37;
      v36 = 0;
      goto LABEL_22;
    }

    if (v35 < 0x11)
    {
      v20 = v35;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 8, (a4 + 24), v35, 8);
      v20 = v35;
      if (!v35)
      {
LABEL_21:
        *(a4 + 16) = v17;
        goto LABEL_22;
      }

      v18 = __src;
      v16 = *(a4 + 8);
    }

    memcpy(v16, v18, 8 * v20);
    goto LABEL_21;
  }

LABEL_22:
  *(a4 + 152) = v38;
  *(a4 + 160) = v39;
  v38 = 0;
  v39 = 0;
  *(a4 + 168) = v40;
  v40 = 0;
  v35 = 0;
  *a4 = &unk_2883EFAF8;
  v21 = (a4 + 192);
  *(a4 + 176) = a4 + 192;
  *(a4 + 184) = 0x1000000000;
  v22 = v42;
  if (v42 && &v33 != a4)
  {
    v23 = v41;
    if (v41 != v44)
    {
      *(a4 + 176) = v41;
      v24 = v43;
      *(a4 + 184) = v22;
      *(a4 + 188) = v24;
      v41 = v44;
      v43 = 0;
LABEL_32:
      v42 = 0;
      goto LABEL_33;
    }

    if (v42 < 0x11)
    {
      v25 = v42;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 176, (a4 + 192), v42, 8);
      v25 = v42;
      if (!v42)
      {
LABEL_31:
        *(a4 + 184) = v22;
        goto LABEL_32;
      }

      v23 = v41;
      v21 = *(a4 + 176);
    }

    memcpy(v21, v23, 8 * v25);
    goto LABEL_31;
  }

LABEL_33:
  *(a4 + 320) = a4 + 320;
  *(a4 + 328) = a4 + 320;
  *(a4 + 336) = 0;
  v26 = v47;
  if (v47)
  {
    v28 = v45;
    v27 = v46;
    v29 = *(v45 + 8);
    v30 = *v46;
    *(v30 + 8) = v29;
    *v29 = v30;
    v31 = *(a4 + 320);
    *(v31 + 8) = v27;
    *v27 = v31;
    *(a4 + 320) = v28;
    *(v28 + 8) = a4 + 320;
    *(a4 + 336) = v26;
    v47 = 0;
  }

  *(a4 + 344) = v48;
  llvm::opt::InputArgList::~InputArgList(&v33);
  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }
}

void llvm::opt::PrecomputedOptTable::~PrecomputedOptTable(llvm::opt::PrecomputedOptTable *this)
{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }
}

{
  *this = &unk_2883EFB20;
  v2 = *(this + 7);
  if (v2 != this + 80)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::opt::InputArgList::~InputArgList(llvm::opt::InputArgList *this)
{
  llvm::opt::InputArgList::releaseMemory(this);
  std::__list_imp<std::string>::clear(this + 40);
  v2 = *(this + 22);
  if (v2 != this + 192)
  {
    free(v2);
  }

  llvm::opt::ArgList::~ArgList(this);
}

void llvm::opt::ArgList::~ArgList(llvm::opt::ArgList *this)
{
  *this = &unk_2883ED650;
  MEMORY[0x277C69E30](*(this + 19), 4);
  v2 = *(this + 1);
  if (v2 != this + 24)
  {
    free(v2);
  }
}

void std::__list_imp<std::string>::clear(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    if (v2 != result)
    {
      do
      {
        v5 = *(v2 + 8);
        std::__list_imp<std::string>::__delete_node[abi:nn200100](result, v2);
        v2 = v5;
      }

      while (v5 != result);
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:nn200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t _GLOBAL__sub_I_COFFDirectiveParser_cpp()
{
  v0 = llvm::opt::OptTable::OptTable(optTable, &infoTable, 5, 1);
  optTable[0] = &unk_2883ED628;
  qword_2815A4668 = &PrefixTable_init;
  unk_2815A4670 = 4;
  llvm::opt::OptTable::buildPrefixChars(v0);
  optTable[0] = &unk_2883ED600;

  return __cxa_atexit(COFFOptTable::~COFFOptTable, optTable, &dword_274E5C000);
}

void llvm::jitlink::COFFLinkGraphBuilder::COFFLinkGraphBuilder(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2883ED678;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = a2[5];
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    *(&__dst + v8) = 0;
  }

  else
  {
    __dst = 0uLL;
    v16 = 0;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
  }

  else
  {
    v9 = *a4;
  }

  v10 = *(a4 + 24);
  v11 = *(a4 + 40);
  llvm::Triple::setObjectFormat(&v9, 1);
  __p = v9;
  memset(&v9, 0, sizeof(v9));
  v13 = v10;
  v14 = v11;
  (*(*a2 + 376))(a2);
  operator new();
}

void llvm::jitlink::COFFLinkGraphBuilder::~COFFLinkGraphBuilder(llvm::jitlink::COFFLinkGraphBuilder *this)
{
  *this = &unk_2883ED678;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 38);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(this + 35);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(this + 256);
  MEMORY[0x277C69E30](*(this + 32), 8);
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 96);
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v4);
    MEMORY[0x277C69E40]();
  }

  v7 = (this + 56);
  std::vector<std::set<std::pair<unsigned long long,llvm::jitlink::Symbol *>>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

void llvm::jitlink::COFFLinkGraphBuilder::buildGraph(llvm::jitlink::COFFLinkGraphBuilder *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(**(this + 10) + 440))(*(this + 10)) & 1) == 0)
  {
    llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
  }

  llvm::jitlink::COFFLinkGraphBuilder::graphifySections(this, &v5);
  v4 = v5;
  if (v5 || (llvm::jitlink::COFFLinkGraphBuilder::graphifySymbols(&v5, this), (v4 = v5) != 0) || ((*(*this + 16))(&v5, this), (v4 = v5) != 0))
  {
    *(a2 + 8) |= 1u;
  }

  else
  {
    *(a2 + 8) &= ~1u;
    v4 = *(this + 11);
    *(this + 11) = 0;
  }

  *a2 = v4;
}

void llvm::jitlink::COFFLinkGraphBuilder::graphifySections(llvm::jitlink::COFFLinkGraphBuilder *this@<X0>, uint64_t *a2@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = *(v5 + 2);
    if (v6 == 0xFFFF)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = *(*(v4 + 56) + 44);
  }

  v7 = (v6 + 1);
  v8 = *(this + 26);
  v9 = *(this + 27);
  v10 = (v9 - v8) >> 3;
  if (v7 > v10)
  {
    v11 = v7 - v10;
    v12 = *(this + 28);
    if (v11 > (v12 - v9) >> 3)
    {
      v13 = v12 - v8;
      if (v13 >> 2 > v7)
      {
        v7 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v7;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(this + 208, v14);
    }

    bzero(*(this + 27), 8 * v11);
    v15 = v9 + 8 * v11;
    goto LABEL_17;
  }

  if (v7 < v10)
  {
    v15 = v8 + 8 * v7;
LABEL_17:
    *(this + 27) = v15;
  }

  for (i = 1; ; ++i)
  {
    v17 = *(this + 10);
    v18 = *(v17 + 6);
    if (v18)
    {
      v19 = *(v18 + 2);
      if (v19 == 0xFFFF)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = *(*(v17 + 7) + 44);
    }

    if (i > v19)
    {
      *a2 = 0;
      return;
    }

    llvm::object::COFFObjectFile::getSection(&v77, v17, i);
    if (v78)
    {
      *a2 = v77;
      return;
    }

    v20 = v77;
    llvm::object::COFFObjectFile::getSectionName(*(this + 10), v77, &v79);
    v22 = v79.n128_u64[0];
    if (v80)
    {
      v23 = 0;
    }

    else
    {
      v23 = v79.n128_i64[1];
    }

    if (v80)
    {
      v24 = 0;
    }

    else
    {
      v24 = v79.n128_u64[0];
    }

    if (v80)
    {
      v79.n128_u64[0] = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    v25 = v20[9];
    if ((v25 & 0x20000000) != 0)
    {
      v26 = 5;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26 | (2 * (v25 >> 31));
    SectionByName = llvm::jitlink::LinkGraph::findSectionByName(*(this + 11), v24, v23, v21);
    if (!SectionByName)
    {
      llvm::jitlink::LinkGraph::createSection(*(this + 11), v24, v23, v27);
    }

    if (*(SectionByName + 16) != v27)
    {
      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v29 = v20[9];
    if ((v29 & 0x80) != 0)
    {
      v33 = *(this + 10);
      v35 = v33[8];
      v34 = v33[9];
      if (*(v33 + 4) == 0 || !v33[2])
      {
        v36 = v20[4];
        if (!v35)
        {
LABEL_52:
          if (v34)
          {
            v34 = *(v34 + 24);
          }

          goto LABEL_56;
        }
      }

      else
      {
        v36 = v20[4];
        if (v36 >= v20[2])
        {
          v36 = v20[2];
        }

        if (!v35)
        {
          goto LABEL_52;
        }
      }

      v34 = *(v35 + 28);
LABEL_56:
      v37 = *(this + 11);
      v38 = v34 + v20[3];
      LODWORD(v39) = 1 << (((v29 >> 20) & 0xF) - 1);
      if (((v29 >> 20) & 0xF) != 0)
      {
        v39 = v39;
      }

      else
      {
        v39 = 16;
      }

      v79.n128_u64[0] = v38;
      v73.n128_u64[0] = v36;
      if ((v29 & 8) != 0)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      v76.n128_u64[0] = v40;
      v69 = 0;
      *(*(this + 26) + 8 * i) = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v37, SectionByName, &v73, &v79, v76.n128_u64, &v69);
      continue;
    }

    v69 = 0;
    v70 = 0;
    llvm::object::COFFObjectFile::getSectionContents(*(this + 10), v20, &v69, a2);
    if (*a2)
    {
      return;
    }

    v30 = v69;
    v31 = v70;
    if (v23 != 8 || *v24 != 0x657674636572642ELL)
    {
      goto LABEL_97;
    }

    llvm::jitlink::COFFDirectiveParser::parse(this + 96, v69, v70, &v79);
    if (v81)
    {
      v32 = v79.n128_u64[0];
      v79.n128_u64[0] = 0;
      *a2 = v32;
    }

    else
    {
      if (v80 && !*v79.n128_u64[1])
      {
        v67 = 8 * v80 - 8;
        v41 = v79.n128_u64[1];
        while (v67)
        {
          v68 = *(v41 + 8);
          v41 += 8;
          v67 -= 8;
          if (v68)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v41 = v79.n128_u64[1];
LABEL_66:
        v42 = v79.n128_u64[1] + 8 * v80;
        if (v41 != v42)
        {
          v43 = *v41;
LABEL_68:
          v44 = *v43[6];
          v76.n128_u64[0] = v44;
          if (v44)
          {
            v45 = strlen(v44);
          }

          else
          {
            v45 = 0;
          }

          v76.n128_u64[1] = v45;
          v46 = *(*v43 + 12);
          if (v46 == 5)
          {
            v52 = llvm::jitlink::LinkGraph::addExternalSymbol(*(this + 11), v44, v45, 0, 0);
            v52[2] |= 0x1000000000000000uLL;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v52)[1] = v52;
          }

          else if (v46 == 3)
          {
            LOBYTE(v72) = 61;
            llvm::StringRef::split(&v76, &v72, 1uLL, &v73);
            v47 = v73.n128_u64[1];
            if (!v73.n128_u64[1] || !v75)
            {
              llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
            }

            v48 = v73.n128_u64[0];
            llvm::jitlink::LinkGraph::intern(*(this + 11), v74, v75, &v72);
            llvm::jitlink::LinkGraph::intern(*(this + 11), v48, v47, &v71);
            v73.n128_u64[0] = 0;
            v49 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 32, &v71, &v73);
            v50 = v73.n128_u64[0];
            if (v49)
            {
              v51 = *(v73.n128_u64[0] + 8);
            }

            else
            {
              v53 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(this + 256, &v71, &v71, v73.n128_u64[0]);
              v50 = v53;
              if ((*v53 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*v53 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }

              v51 = 0;
              *v53 = 0;
              v53[1] = 0;
              *v53 = v71;
              v71 = 0;
            }

            if ((v51 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v51 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v54 = 0;
            v55 = v71;
            *(v50 + 8) = v72;
            v72 = 0;
            if (v55 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v55 + 1, 0xFFFFFFFFFFFFFFFFLL);
              v54 = v72;
            }

            if (v54 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v54 + 1, 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          while (1)
          {
            v41 += 8;
            if (v41 == v42)
            {
              break;
            }

            v43 = *v41;
            if (*v41)
            {
              if (v41 != v42)
              {
                goto LABEL_68;
              }

              break;
            }
          }
        }
      }

      *a2 = 0;
    }

    if (v81)
    {
      v56 = v79.n128_u64[0];
      v79.n128_u64[0] = 0;
      if (v56)
      {
        (*(*v56 + 8))(v56);
      }
    }

    else
    {
      llvm::opt::InputArgList::~InputArgList(&v79);
    }

    if (*a2)
    {
      break;
    }

    v20 = v77;
LABEL_97:
    v57 = *(this + 10);
    v58 = *(v57 + 64);
    if (v58)
    {
      v59 = *(v58 + 28);
    }

    else
    {
      v59 = *(v57 + 72);
      if (v59)
      {
        v59 = *(v59 + 24);
      }
    }

    v60 = *(this + 11);
    v61 = v59 + v20[3];
    v62 = v20[9];
    LODWORD(v63) = 1 << (((v62 >> 20) & 0xF) - 1);
    if (((v62 >> 20) & 0xF) != 0)
    {
      v63 = v63;
    }

    else
    {
      v63 = 16;
    }

    if ((v62 & 8) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = v63;
    }

    v79.n128_u64[0] = v30;
    v79.n128_u64[1] = v31;
    v72 = 0;
    v73.n128_u64[0] = v61;
    v76.n128_u64[0] = v64;
    v65 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v60, SectionByName, &v79, &v73, v76.n128_u64, &v72);
    v66 = v78;
    *(*(this + 26) + 8 * i) = v65;
    if (v66)
    {
      v77 = 0;
      (*(*v20 + 8))(v20);
    }
  }

  if ((v78 & 1) != 0 && v77)
  {
    (*(*v77 + 8))(v77);
  }
}

void llvm::jitlink::COFFLinkGraphBuilder::graphifySymbols(uint64_t *__return_ptr a1@<X8>, llvm::jitlink::COFFLinkGraphBuilder *this@<X0>)
{
  v216[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 10);
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v7 + 2);
    if (v8 == 0xFFFF)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = *(*(v6 + 56) + 44);
  }

  v9 = (v8 + 1);
  v11 = *(this + 7);
  v10 = *(this + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
  v13 = v9 - v12;
  v183 = a1;
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v18 = v11 + 24 * v9;
      if (v10 != v18)
      {
        do
        {
          v19 = v10 - 24;
          std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy(v10 - 24, *(v10 - 16));
          v10 = v19;
        }

        while (v19 != v18);
      }

      *(this + 8) = v18;
    }
  }

  else
  {
    v14 = *(this + 9);
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3) < v13)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v11) >> 3);
      v16 = 0x5555555555555556 * ((v14 - v11) >> 3);
      if (v16 <= v9)
      {
        v16 = v9;
      }

      if (v15 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_352;
    }

    v20 = v10 + 24 * v13;
    v21 = 24 * v9 - 24 * v12;
    v22 = (v10 + 8);
    do
    {
      *v22 = 0;
      v22[1] = 0;
      *(v22 - 1) = v22;
      v22 += 3;
      v21 -= 24;
    }

    while (v21);
    *(this + 8) = v20;
  }

  v23 = *(this + 10);
  v24 = *(v23 + 48);
  if (v24)
  {
    v25 = *(v24 + 2);
    if (v25 == 0xFFFF)
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = *(*(v23 + 56) + 44);
  }

  v26 = (v25 + 1);
  v28 = *(this + 1);
  v27 = *(this + 2);
  v29 = 0xAAAAAAAAAAAAAAABLL * (&v27[-v28] >> 3);
  v30 = v26 - v29;
  if (v26 <= v29)
  {
    if (v26 < v29)
    {
      *(this + 2) = v28 + 24 * v26;
    }
  }

  else
  {
    v31 = *(this + 3);
    if (0xAAAAAAAAAAAAAAABLL * ((v31 - v27) >> 3) < v30)
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v28) >> 3);
      v33 = 0x5555555555555556 * ((v31 - v28) >> 3);
      if (v33 > v26)
      {
        v26 = v33;
      }

      if (v32 >= 0x555555555555555)
      {
        v34 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v34 = v26;
      }

      if (v34 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_352;
    }

    v35 = &v27[24 * v30];
    do
    {
      *v27 = 0;
      v27[16] = 0;
      v27 += 24;
    }

    while (v27 != v35);
    *(this + 2) = v35;
  }

  v36 = *(this + 10);
  if (!v36[12] && !v36[13])
  {
    goto LABEL_46;
  }

  v37 = v36[6];
  if (v37)
  {
    if (*(v37 + 2) != -1)
    {
      v38 = (v37 + 12);
      goto LABEL_48;
    }

LABEL_46:
    v39 = 0;
    v40 = (this + 240);
    v41 = *(this + 29);
    v42 = (*(this + 30) - v41) >> 3;
    goto LABEL_56;
  }

  v38 = (v36[7] + 52);
LABEL_48:
  v39 = *v38;
  v40 = (this + 240);
  v43 = *(this + 30);
  v41 = *(this + 29);
  v42 = (v43 - v41) >> 3;
  if (v39 > v42)
  {
    v44 = v39 - v42;
    v45 = *(this + 31);
    if (v44 > (v45 - v43) >> 3)
    {
      v46 = v45 - v41;
      if (v46 >> 2 > v39)
      {
        v39 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v39;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(this + 232, v47);
    }

    bzero(*(this + 30), 8 * v44);
    v48 = v43 + 8 * v44;
    goto LABEL_59;
  }

LABEL_56:
  if (v42 > v39)
  {
    v48 = v41 + 8 * v39;
LABEL_59:
    *v40 = v48;
  }

  for (i = 0; ; ++i)
  {
    v50 = *(this + 10);
    if (v50[12] || (v51 = v50[13]) != 0)
    {
      v52 = v50[6];
      if (!v52)
      {
        v51 = (v50[7] + 52);
        goto LABEL_67;
      }

      if (*(v52 + 2) != -1)
      {
        v51 = (v52 + 12);
LABEL_67:
        LODWORD(v51) = *v51;
        goto LABEL_69;
      }

      LODWORD(v51) = 0;
    }

LABEL_69:
    if (i >= v51)
    {
      break;
    }

    llvm::object::COFFObjectFile::getSymbol(v50, i, &v201);
    if (v203)
    {
      *a1 = v201;
      return;
    }

    if (v201)
    {
      v53 = v201;
    }

    else
    {
      v53 = v202;
    }

    llvm::object::COFFObjectFile::getSymbolName(&v204, v53, *(this + 10));
    if (v205)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(&v204 + 1);
    }

    if (v205)
    {
      v55 = 0;
    }

    else
    {
      v55 = v204;
    }

    if ((v205 & 1) != 0 && v204)
    {
      (*(*v204 + 8))();
    }

    v184 = v2;
    if (v201)
    {
      v56 = *(v201 + 12);
      if (v56 >> 8 > 0xFE)
      {
        v57 = v3;
        v58 = 0;
        v189 = v56;
        goto LABEL_116;
      }
    }

    else
    {
      v56 = *(v202 + 12);
    }

    v189 = v56;
    if (v56 < 1)
    {
      v57 = v3;
      v58 = 0;
    }

    else
    {
      llvm::object::COFFObjectFile::getSection(&v199, *(this + 10), v56);
      if (v200)
      {
        v210 = "{0:d}: ";
        v211 = 7;
        v212 = v216;
        v213 = 1;
        v214 = &unk_2883ED6A0;
        v215 = &v189;
        v216[0] = &v214;
        v190[0] = "Invalid COFF section number:";
        v191 = &v210;
        v192 = 1539;
        v193[0] = v190;
        v194 = " (";
        v195 = 770;
        v59 = v199;
        v199 = 0;
        *&v204 = &v205;
        *(&v204 + 1) = 0x200000000;
        v197[0] = v59;
        v188.__r_.__value_.__r.__words[0] = &v204;
        llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v197, &v188);
        if (v197[0])
        {
          (*(*v197[0] + 8))(v197[0]);
        }

        v60 = v204;
        v61 = DWORD2(v204);
        memset(&v188, 0, sizeof(v188));
        if (DWORD2(v204))
        {
          v62 = DWORD2(v204) - 1;
          v63 = (v204 + 23);
          v64 = 24 * DWORD2(v204);
          do
          {
            v65 = *v63;
            if (v65 < 0)
            {
              v65 = *(v63 - 15);
            }

            v62 += v65;
            v63 += 24;
            v64 -= 24;
          }

          while (v64);
          std::string::reserve(&v188, v62);
          v66 = *(v60 + 23);
          if (v66 >= 0)
          {
            v67 = v60;
          }

          else
          {
            v67 = *v60;
          }

          if (v66 >= 0)
          {
            v68 = *(v60 + 23);
          }

          else
          {
            v68 = *(v60 + 8);
          }

          std::string::append(&v188, v67, v68);
          if (v61 != 1)
          {
            v69 = v60 + 24;
            v70 = 24 * v61 - 24;
            do
            {
              std::string::append(&v188, "\n", 1uLL);
              v71 = *(v69 + 23);
              if (v71 >= 0)
              {
                v72 = v69;
              }

              else
              {
                v72 = *v69;
              }

              if (v71 >= 0)
              {
                v73 = *(v69 + 23);
              }

              else
              {
                v73 = *(v69 + 8);
              }

              std::string::append(&v188, v72, v73);
              v69 += 24;
              v70 -= 24;
            }

            while (v70);
          }
        }

        llvm::SmallVector<std::string,2u>::~SmallVector(&v204);
        v74 = v195;
        if (v195 == 1)
        {
          v197[0] = &v188;
          v198 = 260;
        }

        else if (v195)
        {
          if (HIBYTE(v195) != 1)
          {
            v74 = 2;
          }

          v102 = v193;
          if (HIBYTE(v195) == 1)
          {
            v102 = v193[0];
          }

          v197[0] = v102;
          v197[1] = v193[1];
          v197[2] = &v188;
          LOBYTE(v198) = v74;
          HIBYTE(v198) = 4;
        }

        else
        {
          v198 = 256;
        }

        operator new();
      }

      v57 = v3;
      v58 = v199;
    }

LABEL_116:
    llvm::jitlink::LinkGraph::intern(*(this + 11), v55, v54, &v187);
    v75 = v201;
    if (v201)
    {
      v76 = *(v201 + 16);
      if (v76 == 105)
      {
        v78 = (v201 + 18);
        goto LABEL_128;
      }

      if (v76 != 103)
      {
        if (v76 == 2 && !*(v201 + 12) && !*(v201 + 8))
        {
          goto LABEL_203;
        }

LABEL_141:
        v185 = v187;
        if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v187 + 1, 1uLL);
          v75 = v201;
        }

        v188.__r_.__value_.__r.__words[0] = v75;
        v188.__r_.__value_.__l.__size_ = v202;
        v196 = i;
        if (llvm::object::COFFSymbolRef::isCommon(&v188))
        {
          v90 = *(this + 11);
          v91 = *(this + 25);
          v2 = v184;
          if (!v91)
          {
            llvm::jitlink::LinkGraph::createSection(*(this + 11), "__common", 8, 3);
          }

          size = v188.__r_.__value_.__r.__words[0];
          if (!v188.__r_.__value_.__r.__words[0])
          {
            size = v188.__r_.__value_.__l.__size_;
          }

          v93 = *(size + 8);
          *&v204 = 0;
          v210 = v93;
          v197[0] = v93;
          v193[0] = 0;
          v94 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,unsigned long long &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v90, v91, &v210, &v204, v197, v193);
          v95 = v185;
          v3 = v57;
          if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v185 + 1, 1uLL);
          }

          v96 = v188.__r_.__value_.__r.__words[0];
          if (!v188.__r_.__value_.__r.__words[0])
          {
            v96 = v188.__r_.__value_.__l.__size_;
          }

          v97 = *(v96 + 8);
          v98 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v90, 32, 3);
          *v98 = v95;
          *(v98 + 1) = v94;
          *(v98 + 2) = 0x200000000000000;
          *(v98 + 3) = v97;
          v99 = v94[2];
          v210 = v98;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v99 + 56, &v210, &v204);
          v200 &= ~1u;
          v199 = v98;
          goto LABEL_180;
        }

        v100 = v188.__r_.__value_.__r.__words[0];
        v2 = v184;
        if (v188.__r_.__value_.__r.__words[0])
        {
          v101 = *(v188.__r_.__value_.__r.__words[0] + 12);
          if (v101 != 0xFFFF)
          {
            if ((v101 + 256) < 0x101u)
            {
              goto LABEL_156;
            }

            goto LABEL_166;
          }

LABEL_172:
          v106 = *(this + 11);
          *&v204 = v185;
          v3 = v57;
          if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v185 + 1, 1uLL);
            v100 = v188.__r_.__value_.__r.__words[0];
          }

          v107 = v188.__r_.__value_.__l.__size_;
          if (v100)
          {
            v107 = v100;
          }

          v108 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(v106, &v204, *(v107 + 8), 0, 0, 3, 0);
          v200 &= ~1u;
          v199 = v108;
          v109 = v204;
          v110 = (v109 != -32) & __CFADD__(v109 - 1, 33);
LABEL_177:
          if (v110)
          {
            goto LABEL_180;
          }

LABEL_178:
          atomic_fetch_add((v109 + 8), 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_180;
        }

        v101 = *(v188.__r_.__value_.__l.__size_ + 12);
        if (v101 == -1)
        {
          goto LABEL_172;
        }

        if (v101 <= 0)
        {
LABEL_156:
          *&v204 = "{0:d}";
          *(&v204 + 1) = 5;
          v205 = v209;
          v206 = 1;
          v207 = &unk_2883ED6A0;
          v208 = &v196;
          v209[0] = &v207;
          operator new();
        }

LABEL_166:
        if (v101 >= ((*(this + 30) - *(this + 29)) >> 3) || (v103 = *(*(this + 26) + 8 * v101)) == 0)
        {
          v200 &= ~1u;
          v199 = 0;
          v3 = v57;
          goto LABEL_180;
        }

        if (v188.__r_.__value_.__r.__words[0])
        {
          v104 = *(v188.__r_.__value_.__r.__words[0] + 16);
          if (v104 != 2)
          {
            if (v104 != 3)
            {
              v105 = v188.__r_.__value_.__r.__words[0];
LABEL_215:
              if (v104 != 6)
              {
                *&v204 = "{0:d}";
                *(&v204 + 1) = 5;
                v205 = v209;
                v206 = 1;
                v207 = &unk_2883ECD40;
                LOBYTE(v208) = v104;
                v209[0] = &v207;
                v190[0] = "Unsupported storage class ";
                v191 = &v204;
                v192 = 1539;
                v193[0] = v190;
                v194 = " in symbol ";
                v195 = 770;
                v210 = "{0:d}";
                v211 = 5;
                v212 = v216;
                v213 = 1;
                v214 = &unk_2883ED6A0;
                v215 = &v196;
                v216[0] = &v214;
                operator new();
              }

              goto LABEL_216;
            }

            v105 = v188.__r_.__value_.__r.__words[0];
            if (!*(v188.__r_.__value_.__r.__words[0] + 17))
            {
              goto LABEL_216;
            }

            v105 = v188.__r_.__value_.__r.__words[0];
            if ((*(v58 + 37) & 0x10) == 0)
            {
              goto LABEL_216;
            }

            if (*(v188.__r_.__value_.__r.__words[0] + 32) == 5)
            {
              v122 = *(v188.__r_.__value_.__r.__words[0] + 30);
              v105 = v188.__r_.__value_.__r.__words[0];
              goto LABEL_233;
            }

            v136 = (v188.__r_.__value_.__r.__words[0] + 18);
            v137 = *(v188.__r_.__value_.__r.__words[0] + 12);
            if (v137 >> 8 >= 0xFF)
            {
              v137 = v137;
            }

LABEL_259:
            v3 = v57;
            if (*(*(this + 1) + 24 * v137 + 16) == 1)
            {
              v135 = "COMDAT export request already exists before symbol ";
LABEL_261:
              v197[0] = v135;
              v198 = 259;
              *&v204 = "{0:d}";
              *(&v204 + 1) = 5;
              v205 = v209;
              v206 = 1;
              v207 = &unk_2883ED6A0;
              v208 = &v196;
              v209[0] = &v207;
              v195 = 262;
              v193[0] = &v204;
              llvm::operator+(v197, v193, &v210);
              llvm::make_error<llvm::jitlink::JITLinkError,llvm::Twine>();
            }

            llvm::jitlink::COFFLinkGraphBuilder::createCOMDATExportRequest(&v199, this, i, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_, v136);
            goto LABEL_180;
          }

          v123 = *(v58 + 37);
          v105 = v188.__r_.__value_.__r.__words[0];
          v3 = v57;
          if ((v123 & 0x10) != 0)
          {
            v124 = *(v188.__r_.__value_.__r.__words[0] + 12);
            if (v124 >> 8 > 0xFE)
            {
              v124 = v124;
            }

LABEL_250:
            if ((*(*(this + 1) + 24 * v124 + 16) & 1) == 0)
            {
              v135 = "No pending COMDAT export for symbol ";
              goto LABEL_261;
            }

            *&v204 = v185;
            if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v185 + 1, 1uLL);
              v100 = v188.__r_.__value_.__r.__words[0];
            }

            llvm::jitlink::COFFLinkGraphBuilder::exportCOMDATSymbol(&v199, this, &v204, v100, v188.__r_.__value_.__l.__size_);
            v109 = v204;
            if ((v204 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              goto LABEL_178;
            }

            goto LABEL_180;
          }

          goto LABEL_242;
        }

        v105 = v188.__r_.__value_.__l.__size_;
        v104 = *(v188.__r_.__value_.__l.__size_ + 18);
        if (v104 == 2)
        {
          if ((*(v58 + 37) & 0x10) != 0)
          {
            v124 = *(v188.__r_.__value_.__l.__size_ + 12);
            v3 = v57;
            goto LABEL_250;
          }

          v3 = v57;
LABEL_242:
          v131 = *(this + 11);
          v132 = *(v105 + 8);
          *&v204 = v185;
          if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v185 + 1, 1uLL);
            v100 = v188.__r_.__value_.__r.__words[0];
          }

          v133 = (v100 + 14);
          if (!v100)
          {
            v133 = (v188.__r_.__value_.__l.__size_ + 16);
          }

          v134 = llvm::jitlink::LinkGraph::addDefinedSymbol(v131, v103, v132, &v204, 0, 0, 0, (*v133 & 0xF0) == 32, 0);
          if ((v204 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v204 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 38, &v185)[1] = v134;
          v200 &= ~1u;
          v199 = v134;
          goto LABEL_180;
        }

        if (v104 != 3)
        {
          goto LABEL_215;
        }

        if (!*(v188.__r_.__value_.__l.__size_ + 19) || (*(v58 + 37) & 0x10) == 0)
        {
LABEL_216:
          v118 = *(this + 11);
          v119 = *(v105 + 8);
          *&v204 = v185;
          if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v185 + 1, 1uLL);
            v100 = v188.__r_.__value_.__r.__words[0];
          }

          v120 = (v100 + 14);
          if (!v100)
          {
            v120 = (v188.__r_.__value_.__l.__size_ + 16);
          }

          v121 = llvm::jitlink::LinkGraph::addDefinedSymbol(v118, v103, v119, &v204, 0, 0, 3, (*v120 & 0xF0) == 32, 0);
          v200 &= ~1u;
          v199 = v121;
          v109 = v204;
          v110 = (v109 != -32) & __CFADD__(v109 - 1, 33);
          v3 = v57;
          goto LABEL_177;
        }

        if (*(v188.__r_.__value_.__l.__size_ + 34) != 5)
        {
          v136 = (v188.__r_.__value_.__l.__size_ + 20);
          v137 = *(v188.__r_.__value_.__l.__size_ + 12);
          goto LABEL_259;
        }

        v122 = *(v188.__r_.__value_.__l.__size_ + 32) | (*(v188.__r_.__value_.__l.__size_ + 36) << 16);
LABEL_233:
        v3 = v57;
        v125 = *(this + 11);
        v126 = *(v105 + 8);
        v210 = v185;
        if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v185 + 1, 1uLL);
          v100 = v188.__r_.__value_.__r.__words[0];
        }

        v127 = (v100 + 14);
        if (!v100)
        {
          v127 = (v188.__r_.__value_.__l.__size_ + 16);
        }

        v128 = llvm::jitlink::LinkGraph::addDefinedSymbol(v125, v103, v126, &v210, 0, 0, 3, (*v127 & 0xF0) == 32, 0);
        v129 = v128;
        if ((v210 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v210 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v130 = *(*(this + 26) + 8 * v122);
        *&v204 = v128;
        DWORD2(v204) = 0;
        v205 = 0;
        LOBYTE(v206) = 1;
        std::vector<llvm::jitlink::Edge>::emplace_back<llvm::jitlink::Edge>(v130 + 40, &v204);
        v200 &= ~1u;
        v199 = v129;
        v2 = v184;
LABEL_180:
        if (v185 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v185 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (v200)
        {
          v111 = 0;
          *a1 = v199;
          goto LABEL_195;
        }

        v57 = v3;
        v112 = v199;
LABEL_185:
        if (v112)
        {
          llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(this, v189, i, v112);
        }
      }
    }

    else
    {
      v77 = *(v202 + 18);
      if (v77 == 2)
      {
        if (*(v202 + 12) || *(v202 + 8))
        {
          goto LABEL_141;
        }

LABEL_203:
        v186 = v187;
        if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v187 + 1, 1uLL);
          v75 = v201;
        }

        v116 = v202;
        *&v204 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 35, &v186, &v204))
        {
          v112 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, &v186)[1];
        }

        else
        {
          if (v75)
          {
            v117 = v75;
          }

          else
          {
            v117 = v116;
          }

          v112 = llvm::jitlink::LinkGraph::addExternalSymbol(*(this + 11), v186 + 2, *v186, *(v117 + 8), 0);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v112)[1] = v112;
        }

        if (v186 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v186 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        goto LABEL_185;
      }

      if (v77 != 103)
      {
        if (v77 == 105)
        {
          v78 = (v202 + 20);
LABEL_128:
          v79 = *v78;
          v80 = v78[1];
          v81 = *(this + 5);
          v82 = *(this + 6);
          if (v81 >= v82)
          {
            v84 = *(this + 4);
            v85 = v81 - v84;
            v86 = (v81 - v84) >> 5;
            v87 = v86 + 1;
            if ((v86 + 1) >> 59)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v88 = v82 - v84;
            if (v88 >> 4 > v87)
            {
              v87 = v88 >> 4;
            }

            if (v88 >= 0x7FFFFFFFFFFFFFE0)
            {
              v89 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = v87;
            }

            if (v89)
            {
              if (!(v89 >> 59))
              {
                operator new();
              }

LABEL_352:
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v113 = 32 * v86;
            *v113 = i;
            *(v113 + 4) = v79;
            *(v113 + 8) = v80;
            *(v113 + 16) = v55;
            *(v113 + 24) = v54;
            v83 = 32 * v86 + 32;
            memcpy(0, v84, v85);
            *(this + 4) = 0;
            *(this + 5) = v83;
            *(this + 6) = 0;
            if (v84)
            {
              operator delete(v84);
            }

            a1 = v183;
          }

          else
          {
            *v81 = i;
            *(v81 + 4) = v79;
            *(v81 + 8) = v80;
            v83 = v81 + 32;
            *(v81 + 16) = v55;
            *(v81 + 24) = v54;
          }

          *(this + 5) = v83;
          goto LABEL_191;
        }

        goto LABEL_141;
      }
    }

LABEL_191:
    if (v201)
    {
      v114 = (v201 + 17);
    }

    else
    {
      v114 = (v202 + 19);
    }

    i += *v114;
    v111 = 1;
    v3 = v57;
    v2 = v184;
LABEL_195:
    if (v187 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v187 + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((v203 & 1) != 0 && (v115 = v201, v201 = 0, v115))
    {
      (*(*v115 + 8))(v115);
      if ((v111 & 1) == 0)
      {
        return;
      }
    }

    else if (!v111)
    {
      return;
    }
  }

  v138 = *(this + 4);
  v139 = *(this + 5);
  if (v138 == v139)
  {
LABEL_292:
    *v183 = 0;
    goto LABEL_293;
  }

  while (1)
  {
    v140 = *(v138 + 4);
    if ((v140 & 0x80000000) != 0 || (v141 = *(this + 29), v140 >= ((*(this + 30) - v141) >> 3)) || (v142 = *(v141 + 8 * v140)) == 0)
    {
      *&v204 = "{0:d}";
      *(&v204 + 1) = 5;
      v205 = v209;
      v206 = 1;
      v207 = &unk_2883ED6A0;
      v208 = v138;
      v209[0] = &v207;
      operator new();
    }

    llvm::object::COFFObjectFile::getSymbol(*(this + 10), *v138, &v210);
    if (v212)
    {
      v182 = v210;
      *v183 = v210;
      if (!v182)
      {
        goto LABEL_293;
      }

      return;
    }

    if (*(v138 + 8) == 3)
    {
      v143 = 0;
    }

    else
    {
      v143 = 3;
    }

    llvm::jitlink::LinkGraph::intern(*(this + 11), *(v138 + 16), *(v138 + 24), v197);
    v144 = v142[1];
    v145 = *(v144 + 8);
    if ((v145 & 1) == 0)
    {
      operator new();
    }

    v146 = *(this + 11);
    v147 = v142[2];
    *&v204 = v197[0];
    v148 = v147;
    if (v197[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v197[0] + 1, 1uLL);
      v148 = v142[2];
    }

    v149 = llvm::jitlink::LinkGraph::addDefinedSymbol(v146, v144, v147 & 0x1FFFFFFFFFFFFFFLL, &v204, v142[3], 1, v143, (v148 & 0x2000000000000000) != 0, 0);
    if ((v204 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v204 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v197[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add(v197[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v145)
    {
      if (v210)
      {
        v150 = *(v210 + 6);
        if (v150 >> 8 <= 0xFE)
        {
          v151 = *(v210 + 6);
        }

        else
        {
          v151 = v150;
        }
      }

      else
      {
        v151 = *(v211 + 12);
      }

      llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(this, v151, *v138, v149);
    }

    else
    {
      *v183 = v149;
    }

    if (v212)
    {
      v152 = v210;
      v210 = 0;
      if (v152)
      {
        (*(*v152 + 8))(v152);
      }
    }

    if ((v145 & 1) == 0)
    {
      break;
    }

    v138 += 32;
    if (v138 == v139)
    {
      goto LABEL_292;
    }
  }

  if (!*v183)
  {
LABEL_293:
    if (*(this + 66))
    {
      v153 = *(this + 68);
      if (v153)
      {
        v154 = 16 * v153;
        v155 = *(this + 32);
        while ((*v155 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v155 += 2;
          v154 -= 16;
          if (!v154)
          {
            goto LABEL_317;
          }
        }
      }

      else
      {
        v155 = *(this + 32);
      }

      v156 = *(this + 32) + 16 * v153;
      if (v155 != v156)
      {
LABEL_303:
        v157 = v155[1];
        v210 = v157;
        if ((v157 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v157 + 8), 1uLL);
        }

        v158 = *v155;
        v197[0] = v158;
        if ((v158 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v158 + 8), 1uLL);
        }

        *&v204 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 38, &v210, &v204))
        {
          *&v204 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(this + 35, v197, &v204))
          {
            v159 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 38, &v210)[1];
            v160 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(this + 35, v197);
            llvm::jitlink::LinkGraph::makeDefined(*(this + 11), v160[1], v159[1], v159[2] & 0x1FFFFFFFFFFFFFFLL, v159[3], 1, 3, 0);
          }
        }

        if (v197[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v197[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        if ((v210 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v210 + 1, 0xFFFFFFFFFFFFFFFFLL);
        }

        while (1)
        {
          v155 += 2;
          if (v155 == v156)
          {
            break;
          }

          if ((*v155 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v155 != v156)
            {
              goto LABEL_303;
            }

            break;
          }
        }
      }
    }

LABEL_317:
    v161 = *(this + 10);
    v162 = *(v161 + 48);
    v163 = 1;
    if (!v162)
    {
      goto LABEL_321;
    }

    while (2)
    {
      v164 = *(v162 + 2);
      if (v164 == 0xFFFF)
      {
        v164 = 0;
      }

LABEL_322:
      if (v163 <= v164)
      {
        v165 = (*(this + 7) + 24 * v163);
        if (!v165[2] || (v168 = *v165, v167 = v165 + 1, v166 = v168, v167 == v168))
        {
LABEL_344:
          ++v163;
          if (v162)
          {
            continue;
          }

LABEL_321:
          v164 = *(*(v161 + 56) + 44);
          goto LABEL_322;
        }

        v169 = 0;
        v170 = *(*(*(this + 26) + 8 * v163) + 32);
        while (2)
        {
          v171 = *v167;
          v172 = *v167;
          v173 = v167;
          if (*v167)
          {
            do
            {
              v174 = v172;
              v172 = v172[1];
            }

            while (v172);
          }

          else
          {
            do
            {
              v174 = v173[2];
              v175 = *v174 == v173;
              v173 = v174;
            }

            while (v175);
          }

          v176 = *v167;
          v177 = v167;
          if (v171)
          {
            do
            {
              v178 = v176;
              v176 = v176[1];
            }

            while (v176);
          }

          else
          {
            do
            {
              v178 = v177[2];
              v175 = *v178 == v177;
              v177 = v178;
            }

            while (v175);
          }

          v179 = v174[4];
          v180 = v178[5];
          if ((*(v180 + 16) & 0x1FFFFFFFFFFFFFFLL) != v170)
          {
            v169 = v170 - v179;
          }

          if (*(v180 + 24))
          {
            if (!v171)
            {
              goto LABEL_342;
            }

            do
            {
LABEL_340:
              v181 = v171;
              v171 = v171[1];
            }

            while (v171);
          }

          else
          {
            *(v180 + 24) = v169;
            if (v171)
            {
              goto LABEL_340;
            }

            do
            {
LABEL_342:
              v181 = v167[2];
              v175 = *v181 == v167;
              v167 = v181;
            }

            while (v175);
          }

          v170 = v179;
          v167 = v181;
          if (v181 == v166)
          {
            goto LABEL_344;
          }

          continue;
        }
      }

      break;
    }

    *v183 = 0;
  }
}

uint64_t *llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(uint64_t *result, unsigned int a2, int a3, unint64_t a4)
{
  *(result[29] + 8 * a3) = a4;
  if (a2 >= 1)
  {
    v4 = *(a4 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v5 = *(result[7] + 24 * a2 + 8);
    if (!v5)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = v5[4];
        if (v7 <= v4)
        {
          break;
        }

LABEL_4:
        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      if (v7 >= v4)
      {
        v8 = v6[5];
        if (v8 > a4)
        {
          goto LABEL_4;
        }

        if (v8 >= a4)
        {
          return result;
        }
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL llvm::object::COFFSymbolRef::isCommon(llvm::object::COFFSymbolRef *this)
{
  v1 = *this;
  if (!*this)
  {
    v1 = *(this + 1);
    v4 = *(v1 + 18);
    if ((v4 == 2 || v4 == 104) && !*(v1 + 12))
    {
      return *(v1 + 8) != 0;
    }

    return 0;
  }

  v2 = *(v1 + 16);
  v3 = v2 == 104 || v2 == 2;
  if (!v3 || *(v1 + 12))
  {
    return 0;
  }

  return *(v1 + 8) != 0;
}

void *llvm::jitlink::COFFLinkGraphBuilder::exportCOMDATSymbol(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    LODWORD(v10) = *(a5 + 12);
    goto LABEL_5;
  }

  LODWORD(v10) = *(a4 + 12);
  if (v10 >> 8 <= 0xFE)
  {
LABEL_5:
    if (v10 < 1 || v10 >= ((a2[30] - a2[29]) >> 3))
    {
      v11 = 0;
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = *(a2[26] + 8 * v10);
      if (!a4)
      {
LABEL_8:
        v10 = *(a5 + 12);
        v12 = a5;
        goto LABEL_15;
      }
    }

    LODWORD(v10) = *(a4 + 12);
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  if (v10 >> 8 >= 0xFF)
  {
    v10 = v10;
  }

  else
  {
    v10 = v10;
  }

  v12 = a4;
LABEL_15:
  v13 = a2[1] + 24 * v10;
  v14 = a2[11];
  v15 = *(v12 + 8);
  v16 = *a3;
  v22 = v16;
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v16 + 8), 1uLL);
  }

  v17 = (a4 + 14);
  if (!a4)
  {
    v17 = (a5 + 16);
  }

  v18 = llvm::jitlink::LinkGraph::addDefinedSymbol(v14, v11, v15, &v22, 0, *(v13 + 4), 0, (*v17 & 0xF0) == 32, 0);
  if ((v22 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a4)
  {
    v19 = *(a4 + 12);
    if (v19 >> 8 <= 0xFE)
    {
      v20 = *(a4 + 12);
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = *(a5 + 12);
  }

  llvm::jitlink::COFFLinkGraphBuilder::setGraphSymbol(a2, v20, *v13, v18);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(a2 + 38, a3);
  result[1] = v18;
  if (*(v13 + 16) == 1)
  {
    *(v13 + 16) = 0;
  }

  *(a1 + 8) &= ~1u;
  *a1 = v18;
  return result;
}

void llvm::jitlink::COFFLinkGraphBuilder::createCOMDATExportRequest(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a6 + 14);
  if (v6 > 2)
  {
    if (v6 - 3 >= 2 && v6 != 6)
    {
      if (v6 == 7)
      {
        llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
      }

LABEL_17:
      v12[0] = &unk_2883ED6D0;
      v12[1] = a6 + 14;
      v12[2] = v12;
      operator new();
    }

    goto LABEL_8;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = *a6;
  if (a4)
  {
    v9 = *(a4 + 12);
    if (v9 >> 8 > 0xFE)
    {
      v9 = v9;
    }
  }

  else
  {
    v9 = *(a5 + 12);
  }

  v10 = *(a2 + 8) + 24 * v9;
  v11 = *(v10 + 16);
  *v10 = a3;
  *(v10 + 4) = v7;
  *(v10 + 8) = v8;
  if ((v11 & 1) == 0)
  {
    *(v10 + 16) = 1;
  }

  *(a1 + 8) &= ~1u;
  *a1 = 0;
}

void std::vector<llvm::jitlink::Edge>::emplace_back<llvm::jitlink::Edge>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::vector<std::set<std::pair<unsigned long long,llvm::jitlink::Symbol *>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 3;
        std::__tree<std::__value_type<llvm::StringRef,llvm::StringRef>,std::__map_value_compare<llvm::StringRef,std::__value_type<llvm::StringRef,llvm::StringRef>,std::less<llvm::StringRef>,true>,std::allocator<std::__value_type<llvm::StringRef,llvm::StringRef>>>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>,llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::Symbol *>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a2, a2, v9);
    v5 = v6;
    if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    v7 = *a2;
    *v6 = *a2;
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v7 + 8), 1uLL);
    }

    v6[1] = 0;
  }

  return v5;
}

char *llvm::jitlink::getCOFFX86RelocationKindName(llvm::jitlink *this, unsigned __int8 a2)
{
  if ((this - 25) >= 5)
  {
    return llvm::jitlink::x86_64::getEdgeKindName(this);
  }

  else
  {
    return off_279EFB668[(this - 25)];
  }
}

void llvm::jitlink::createLinkGraphFromCOFFObject_x86_64(_OWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = *a1;
  v5 = v3;
  llvm::object::COFFObjectFile::create();
}

void llvm::jitlink::link_COFF_x86_64(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  memset(v6, 0, sizeof(v6));
  if ((*(**a2 + 56))(*a2, *a1 + 136))
  {
    (*(**a2 + 64))(&v12);
    if (v13 < 8)
    {
      v3 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallbacksHolder<llvm::Error (*)(llvm::jitlink::LinkGraph &),llvm::Error (*)(llvm::jitlink::LinkGraph &),void>::Callbacks + 2;
      *&v10 = llvm::jitlink::markAllSymbolsLive;
    }

    else
    {
      std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v12);
      *&v10 = ".pdata";
      *(&v10 + 1) = 6;
      v3 = _MergedGlobals_9 + 2;
    }

    v11 = v3;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](v6, &v10);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v10);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v12);
    *&v12 = *a2;
    v13 = &off_2815A43A0 + 2;
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
  *&v12 = 0;
  (*(*v4 + 24))(v4, &v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *&v12 = &v8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  *&v12 = &v7[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  *&v12 = v7;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  *&v12 = &v6[1] + 8;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  *&v12 = v6;
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v12);
}

void anonymous namespace::COFFLinkGraphBuilder_x86_64::~COFFLinkGraphBuilder_x86_64(_anonymous_namespace_::COFFLinkGraphBuilder_x86_64 *this)
{
  llvm::jitlink::COFFLinkGraphBuilder::~COFFLinkGraphBuilder(this);

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::COFFLinkGraphBuilder_x86_64::addRelocations(_anonymous_namespace_::COFFLinkGraphBuilder_x86_64 *this@<X0>, uint64_t *a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  v5 = (*(*v4 + 352))(v4);
  v7 = v6;
  v8 = (*(*v4 + 360))(v4);
  v48 = v5;
  v49 = v7;
  v10 = v7 == v9 && v5 == v8;
  if (v10)
  {
LABEL_82:
    *a2 = 0;
    return;
  }

  v11 = v8;
  v12 = v9;
  v46 = v8;
  v47 = a2;
  while (1)
  {
    llvm::object::COFFObjectFile::getSectionName(*(this + 10), v5, &v59);
    if ((v60 & 1) == 0)
    {
      v14 = (*(*v49 + 160))(v49, v48);
      if (v14 > 0x7FFFFFFE || (v14 + 1) >= ((*(this + 30) - *(this + 29)) >> 3) || (v15 = *(*(this + 26) + 8 * (v14 + 1))) == 0)
      {
        LOWORD(v55) = 1283;
        *&v53 = "Referencing a section that wasn't added to the graph: ";
        v54 = v59;
        getErrorErrorCat();
        operator new();
      }

      v16 = (*(*v49 + 272))(v49, v48);
      v18 = v17;
      v19 = (*(*v49 + 280))();
      v50 = v16;
      v51 = v18;
      if (v16 == v19)
      {
LABEL_12:
        v13 = 0;
        v11 = v46;
        a2 = v47;
        goto LABEL_14;
      }

      v21 = v19;
      while (1)
      {
        v22 = (*(*v51 + 312))(v51, v16);
        if (v22 == (*(**(this + 10) + 56))(*(this + 10)))
        {
          v44 = (*(*v49 + 160))(v49, v48);
          *&v53 = "Invalid symbol index in relocation entry. index: {0}, section: {1}";
          *(&v53 + 1) = 66;
          v54.n128_u64[0] = v58;
          v54.n128_u64[1] = 2;
          v55 = &unk_2883ED728;
          v56 = (v16 + 4);
LABEL_80:
          v57[0] = &unk_2883EB9E8;
          v57[1] = v44;
          v58[0] = &v55;
          v58[1] = v57;
          getErrorErrorCat();
          operator new();
        }

        v23 = *(this + 10);
        v24 = v23[12];
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v22;
        }

        if (v24)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        if (!v24)
        {
          v24 = v23[13];
        }

        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = v25;
        }

        v28 = v27 - v24;
        v10 = v23[6] == 0;
        v29 = 18;
        if (v10)
        {
          v29 = 20;
        }

        v30 = v28 / v29;
        v52 = v30;
        if ((v30 & 0x80000000) != 0 || (v31 = *(this + 29), v30 >= ((*(this + 30) - v31) >> 3)) || (v32 = *(v31 + 8 * (v30 & 0x7FFFFFFF))) == 0)
        {
          v44 = (*(*v49 + 160))(v49, v48);
          *&v53 = "Could not find symbol at given index, did you add it to JITSymbolTable? index: {0}, section: {1}";
          *(&v53 + 1) = 96;
          v54.n128_u64[0] = v58;
          v54.n128_u64[1] = 2;
          v55 = &unk_2883ED6A0;
          v56 = &v52;
          goto LABEL_80;
        }

        v33 = (*(*v49 + 152))(v49, v48);
        v34 = (*(*v51 + 304))() + v33 - *v15;
        v35 = v15[3];
        v36 = (*(*v51 + 320))();
        if (v36 <= 6)
        {
          if (v36 <= 3)
          {
            if (v36 == 1)
            {
              v37 = *(v35 + v34);
              v38 = 27;
            }

            else
            {
              if (v36 != 3)
              {
LABEL_81:
                v45 = (*(*v51 + 320))(v51, v50);
                *&v53 = "{0:d}";
                *(&v53 + 1) = 5;
                v54.n128_u64[0] = v57;
                v54.n128_u64[1] = 1;
                v55 = &unk_2883EB9E8;
                v56 = v45;
                v57[0] = &v55;
                operator new();
              }

              v37 = *(v35 + v34);
              v38 = 26;
            }

            goto LABEL_66;
          }

          if (v36 == 4)
          {
            v37 = *(v35 + v34);
          }

          else if (v36 == 5)
          {
            v37 = *(v35 + v34) - 1;
          }

          else
          {
            v37 = *(v35 + v34) - 2;
          }

          goto LABEL_65;
        }

        if (v36 <= 8)
        {
          break;
        }

        if (v36 == 9)
        {
          v37 = *(v35 + v34) - 5;
LABEL_65:
          v38 = 25;
          goto LABEL_66;
        }

        if (v36 == 10)
        {
          if (v26)
          {
            v39 = *(v26 + 12);
            if (v39 != 0xFFFF)
            {
              if (v39 >> 8 > 0xFE)
              {
                v39 = v39;
              }

LABEL_70:
              v40 = v39;
LABEL_77:
              v37 = *(v35 + v34);
              v32 = llvm::jitlink::LinkGraph::addAbsoluteSymbol(*(this + 11), "secidx", 6uLL, v40, 2, 0, 3, 0);
              v38 = 28;
              goto LABEL_66;
            }
          }

          else
          {
            v39 = *(v25 + 12);
            if (v39 != -1)
            {
              goto LABEL_70;
            }
          }

          v41 = *(this + 10);
          v42 = *(v41 + 48);
          if (v42)
          {
            v43 = *(v42 + 2);
            if (v43 == 0xFFFF)
            {
              v43 = 0;
            }
          }

          else
          {
            v43 = *(*(v41 + 56) + 44);
          }

          v40 = (v43 + 1);
          goto LABEL_77;
        }

        if (v36 != 11)
        {
          goto LABEL_81;
        }

        if ((*(v32[1] + 8) & 1) == 0)
        {
          goto LABEL_67;
        }

        v37 = *(v35 + v34);
        v38 = 29;
LABEL_66:
        *&v53 = v32;
        DWORD2(v53) = v34;
        v54.n128_u64[0] = v37;
        v54.n128_u8[8] = v38;
        llvm::jitlink::Block::addEdge(v15, &v53);
LABEL_67:
        (*(*v51 + 296))(v51, &v50);
        v16 = v50;
        if (v50 == v21)
        {
          goto LABEL_12;
        }
      }

      if (v36 == 7)
      {
        v37 = *(v35 + v34) - 3;
      }

      else
      {
        v37 = *(v35 + v34) - 4;
      }

      goto LABEL_65;
    }

    v13 = v59.n128_u64[0];
    v59.n128_u64[0] = 0;
LABEL_14:
    if (v60)
    {
      v20 = v59.n128_u64[0];
      v59.n128_u64[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    if (v13)
    {
      break;
    }

    (*(*v49 + 136))(v49, &v48);
    v5 = v48;
    if (v49 == v12 && v48 == v11)
    {
      goto LABEL_82;
    }
  }

  *a2 = v13;
}

uint64_t *llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::SEHFrameKeepAlivePass>@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>, unint64_t *a4@<X3>)
{
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a4);
  if (result)
  {
    v7 = result;
    result = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((result + 4));
    v9 = *(v7 + 32) + 8 * *(v7 + 48);
    if (v9 != result)
    {
      v10 = result;
      v11 = v8;
      do
      {
        v12 = *v10;
        v13 = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, *v10, 0, 0, 0, 0);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v15 = *(v12 + 40);
        v14 = *(v12 + 48);
        if (v15 == v14)
        {
          v17 = 0;
        }

        else
        {
          v16 = v13;
          do
          {
            if (*(*(*v15 + 8) + 8))
            {
              v25 = *(*v15 + 8);
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v26, &v25, &v22);
            }

            v15 += 32;
          }

          while (v15 != v14);
          v17 = v26;
          if (v27)
          {
            v18 = v26;
            if (v28)
            {
              v19 = 8 * v28;
              v18 = v26;
              while ((*v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                ++v18;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_23;
                }
              }
            }

            v20 = &v26[v28];
            if (v18 != v20)
            {
              v21 = *v18;
LABEL_18:
              *&v22 = v16;
              DWORD2(v22) = 0;
              v23 = 0;
              v24 = 1;
              llvm::jitlink::Block::addEdge(v21, &v22);
              while (++v18 != v20)
              {
                v21 = *v18;
                if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  if (v18 != v20)
                  {
                    goto LABEL_18;
                  }

                  break;
                }
              }

              v17 = v26;
            }
          }
        }

LABEL_23:
        result = MEMORY[0x277C69E30](v17, 8);
        do
        {
          ++v10;
        }

        while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v10 != v9);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<llvm::jitlink::link_COFF_x86_64(std::unique_ptr<llvm::jitlink::LinkGraph>,std::unique_ptr<llvm::jitlink::JITLinkContext>)::$_0>@<X0>(llvm::jitlink::LinkGraph *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 15);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = v5;
  v37 = v4;
  v38 = 0;
  std::mutex::lock(v5);
  LODWORD(v48) = 0;
  v6 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v5[1], "__ImageBase", 0xBuLL, &v48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v6 + 1, 1uLL);
  }

  std::mutex::unlock(v5);
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v38 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v38 = v6;
  llvm::jitlink::LinkGraph::blocks(a2, v41);
  v39[0] = v41[0];
  v39[1] = v41[1];
  v7 = v42;
  v39[2] = v41[2];
  v40 = v42;
  v8 = v43;
  v9 = v44;
  v10 = v42.n128_u64[0];
  if (*&v41[0] == v43 && v42.n128_u64[0] == v44)
  {
    goto LABEL_51;
  }

  while (2)
  {
    v11 = *v10;
    v12 = *(v11 + 40);
    v13 = *(v11 + 48);
    while (v12 != v13)
    {
      v14 = *(v12 + 24);
      if (v14 <= 0x1A)
      {
        if (v14 != 25)
        {
          if (v14 != 26)
          {
            goto LABEL_45;
          }

          v21 = v35;
          if (!v35)
          {
            llvm::jitlink::LinkGraph::defined_symbols(&v48, a2);
            v46[0] = v48;
            v46[1] = v49;
            v46[2] = v50;
            v47 = v51;
            v22 = v52;
            v23 = v53;
            v24 = v51;
            if (v48 == v52 && v47 == v53)
            {
LABEL_32:
              v48 = 0uLL;
              LODWORD(v49) = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(&v48, &v38)[2] = 0;
              *&v46[0] = 0;
              v45[0] = 0;
              operator new();
            }

            while (1)
            {
              v25 = *v24;
              if (*v25 == v38)
              {
                break;
              }

              llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v46, v45);
              v24 = v47;
              if (*&v46[0] == v22 && v47 == v23)
              {
                goto LABEL_32;
              }
            }

            v21 = (*(v25 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v25 + 8);
            v35 = v21;
          }

          v29 = *(v12 + 16) - v21;
          goto LABEL_43;
        }

        v27 = 12;
      }

      else
      {
        switch(v14)
        {
          case 0x1Bu:
            v27 = 2;
            break;
          case 0x1Cu:
            v27 = 5;
            break;
          case 0x1Du:
            v15 = *(v12 + 16);
            v16 = *(*(*v12 + 8) + 16);
            if (v34)
            {
              v17 = ((v16 >> 4) ^ (v16 >> 9)) & (v34 - 1);
              v18 = *(v33[0] + 16 * v17);
              if (v18 != v16)
              {
                v19 = 1;
                while (v18 != -4096)
                {
                  v20 = v17 + v19++;
                  v17 = v20 & (v34 - 1);
                  v18 = *(v33[0] + 16 * v17);
                  if (v18 == v16)
                  {
                    goto LABEL_40;
                  }
                }

                goto LABEL_36;
              }
            }

            else
            {
LABEL_36:
              llvm::jitlink::SectionRange::SectionRange(&v48, v16);
              if (v48)
              {
                v28 = *v48;
              }

              else
              {
                v28 = 0;
              }

              *&v46[0] = v16;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v33, v46)[1] = v28;
            }

LABEL_40:
            *&v48 = v16;
            v29 = v15 - llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(v33, &v48)[1];
LABEL_43:
            *(v12 + 16) = v29;
            v27 = 3;
            break;
          default:
            goto LABEL_45;
        }
      }

      *(v12 + 24) = v27;
LABEL_45:
      v12 += 32;
    }

    v7 = llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v39, &v48);
    v10 = v40.n128_u64[0];
    if (*&v39[0] != v8 || v40.n128_u64[0] != v9)
    {
      continue;
    }

    break;
  }

LABEL_51:
  *a3 = 0;
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v38 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  return MEMORY[0x277C69E30](v33[0], 8, v7);
}

uint64_t *llvm::jitlink::createLookupContinuation<anonymous namespace::COFFLinkGraphLowering_x86_64::getImageBaseAddress(llvm::jitlink::LinkGraph &,llvm::jitlink::JITLinkContext &)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1}>(anonymous namespace::COFFLinkGraphLowering_x86_64::getImageBaseAddress(llvm::jitlink::LinkGraph &,llvm::jitlink::JITLinkContext &)::{lambda(llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)#1})::Impl::run(uint64_t a1, uint64_t a2, __n128 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 24) & 1;
  v3 = *a2;
  if (v13)
  {
    *a2 = 0;
    v10 = 0;
    v4 = *(a1 + 8);
  }

  else
  {
    a3.n128_u64[0] = 0;
    v11 = *(a2 + 8);
    v5 = v11;
    v12 = *(a2 + 16);
    v6 = v12;
    *(a2 + 16) = 0;
    *a2 = a3;
    v10 = v3;
    v7 = &v3[3 * v6];
    if (v5)
    {
      if (v6)
      {
        v8 = 24 * v6;
        while ((*v3 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v3 += 3;
          v8 -= 24;
          if (!v8)
          {
            goto LABEL_8;
          }
        }
      }
    }

    else
    {
LABEL_8:
      v3 = v7;
    }

    v4 = *(a1 + 16);
    v3 = v3[1];
  }

  *v4 = v3;
  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v10);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
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
    llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

void anonymous namespace::COFFJITLinker_x86_64::~COFFJITLinker_x86_64(_anonymous_namespace_::COFFJITLinker_x86_64 *this)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(this);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::JITLinker<anonymous namespace::COFFJITLinker_x86_64>::fixUpBlocks(uint64_t a1@<X1>, void *a2@<X8>)
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

void llvm::jitlink::JITLinker<anonymous namespace::COFFJITLinker_x86_64>::~JITLinker(llvm::jitlink::JITLinkerBase *a1)
{
  llvm::jitlink::JITLinkerBase::~JITLinkerBase(a1);

  JUMPOUT(0x277C69E40);
}

void llvm::jitlink::aarch32::makeUnexpectedOpcodeError(void *a1, uint64_t (*a2)(uint64_t), __int16 *a3, __int16 *a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *a4;
  v7 = "Invalid opcode [ 0x{0:x4}, 0x{1:x4} ] for relocation: {2}";
  v8 = 57;
  v9 = v16;
  v10 = 3;
  v11 = &unk_2883ED7D8;
  v12 = v5;
  v13 = &unk_2883ED7D8;
  v14 = v6;
  v15[0] = &unk_2883ECD10;
  v15[1] = a2(a5);
  v16[0] = &v11;
  v16[1] = &v13;
  v16[2] = v15;
  operator new();
}

void llvm::jitlink::aarch32::readAddendData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(a3 + 24) & 0xFE) != 2)
  {
    std::operator+<char>();
    v10 = std::string::append(&v13, ", section ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v15 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = **(a2 + 16);
    v16 = __p;
    v17 = v12;
    v18 = 1284;
    v19 = &v16;
    v20 = " can not read implicit addend for aarch32 edge kind ";
    v21 = 770;
    if (!*(*(a1 + 192))(*(a3 + 24)))
    {
      v24 = v22;
      v25 = v23;
    }

    operator new();
  }

  v8 = *(*(a2 + 24) + *(a3 + 8));
  v9 = bswap32(v8);
  if ((*(a1 + 188) - 1) >= 2)
  {
    v8 = v9;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v8;
}

void llvm::jitlink::aarch32::readAddendArm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 4)
  {
    v5 = (*(a1 + 192))(4, a2);
    if (v5)
    {
      strlen(v5);
    }

    operator new();
  }

  std::operator+<char>();
  v8 = std::string::append(&v11, ", section ");
  v9 = v8->__r_.__value_.__r.__words[2];
  *__p = *&v8->__r_.__value_.__l.__data_;
  v13 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = **(a2 + 16);
  v14 = __p;
  v15 = v10;
  v16 = 1284;
  v17 = &v14;
  v18 = " can not read implicit addend for aarch32 edge kind ";
  v19 = 770;
  if (!*(*(a1 + 192))(*(a3 + 24)))
  {
    v22 = v20;
    v23 = v21;
  }

  operator new();
}

void llvm::jitlink::aarch32::readAddendThumb(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = (*(a2 + 24) + *(a3 + 8));
  v10 = *(a3 + 24);
  if (v10 > 6)
  {
    if (v10 == 7)
    {
      v19 = *v9;
      if ((*v9 & 0xFBF0) != 0xF240 || (v20 = v9[1], (v20 & 0x80000000) != 0))
      {
        v21 = *(a1 + 192);
        v22 = v9 + 1;
        v23 = a5;
        v24 = 7;
        goto LABEL_25;
      }
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_13;
      }

      v19 = *v9;
      if ((*v9 & 0xFBF0) != 0xF2C0 || (v20 = v9[1], (v20 & 0x80000000) != 0))
      {
        v21 = *(a1 + 192);
        v22 = v9 + 1;
        v23 = a5;
        v24 = 8;
        goto LABEL_25;
      }
    }

    v31 = ((2 * v19) & 0x800 | (v19 << 12) | (v20 >> 4) & 0x700 | v20);
    goto LABEL_29;
  }

  if (v10 != 5)
  {
    if (v10 == 6)
    {
      v11 = *v9;
      if ((v11 & 0xF800) == 0xF000)
      {
        v12 = v9[1];
        if (v12 < 0)
        {
          v13 = v9[1];
          if ((v12 & 0x1000) != 0)
          {
            v32 = (*(a1 + 192))(6);
            if (v32)
            {
              strlen(v32);
            }

            operator new();
          }

          v14 = *a4 == 1;
          v15 = ((v11 << 54) | ((v9[1] & 0x7FF) << 43)) >> 42;
          v16 = ((v13 << 10) ^ (v11 << 13)) & 0x800000;
          v17 = ((v13 << 11) ^ (v11 << 12)) & 0x400000;
          v18 = (v11 << 14) & 0x1000000 | ((v11 & 0x3FF) << 12) | (2 * (v13 & 0x7FF));
          goto LABEL_27;
        }
      }

      v21 = *(a1 + 192);
      v22 = v9 + 1;
      v23 = a5;
      v24 = 6;
LABEL_25:
      llvm::jitlink::aarch32::makeUnexpectedOpcodeError(v23, v21, v9, v22, v24);
    }

LABEL_13:
    std::operator+<char>();
    v25 = std::string::append(&v33, ", section ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *__p = *&v25->__r_.__value_.__l.__data_;
    v35 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = **(a2 + 16);
    v36 = __p;
    v37 = v27;
    v38 = 1284;
    v39 = &v36;
    v40 = " can not read implicit addend for aarch32 edge kind ";
    v41 = 770;
    if (!*(*(a1 + 192))(*(a3 + 24)))
    {
      v44 = v42;
      v45 = v43;
    }

    operator new();
  }

  v28 = *v9;
  v29 = v9[1];
  if ((v28 & 0xF800) != 0xF000 || v29 >> 14 <= 2)
  {
    v21 = *(a1 + 192);
    v22 = v9 + 1;
    v23 = a5;
    v24 = 5;
    goto LABEL_25;
  }

  v14 = *a4 == 1;
  v15 = ((v28 << 54) | ((v29 & 0x7FF) << 43)) >> 42;
  v16 = ((v29 << 10) ^ (v28 << 13)) & 0x800000;
  v17 = ((v29 << 11) ^ (v28 << 12)) & 0x400000;
  v18 = (v28 << 14) & 0x1000000 | ((v28 & 0x3FF) << 12) | (2 * (v29 & 0x7FF));
LABEL_27:
  v31 = (((v18 | v16 | v17) ^ 0xC00000u) << 39) >> 39;
  if (!v14)
  {
    v31 = v15;
  }

LABEL_29:
  *(a5 + 8) &= ~1u;
  *a5 = v31;
}

void llvm::jitlink::aarch32::applyFixupData(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a3 + 2);
  v8 = a3[24];
  v9 = *(a3 + 2);
  v10 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  if (v8 == 3)
  {
    v11 = v10 + v9;
  }

  else
  {
    if (v8 != 2)
    {
      std::operator+<char>();
      v13 = std::string::append(&v16, ", section ");
      v14 = v13->__r_.__value_.__r.__words[2];
      *__p = *&v13->__r_.__value_.__l.__data_;
      v18 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = *a2[2];
      v19 = __p;
      v20 = v15;
      v21 = 1284;
      v22 = &v19;
      v23 = " encountered unfixable aarch32 edge kind ";
      v24 = 770;
      if (!*(*(a1 + 192))(a3[24]))
      {
        v27 = v25;
        v28 = v26;
      }

      operator new();
    }

    v11 = v10 + v9 - (*a2 + v7);
  }

  if (v11 != v11)
  {

    llvm::jitlink::makeTargetOutOfRangeError(a1, a2, a3);
  }

  v12 = bswap32(v11);
  if (*(a1 + 188) == 1)
  {
    v12 = v11;
  }

  *(a2[3] + v7) = v12;
  *a4 = 0;
}

void llvm::jitlink::aarch32::applyFixupArm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24) == 4)
  {
    v5 = (*(a1 + 192))(4, a2);
    if (v5)
    {
      strlen(v5);
    }

    operator new();
  }

  std::operator+<char>();
  v8 = std::string::append(&v11, ", section ");
  v9 = v8->__r_.__value_.__r.__words[2];
  *__p = *&v8->__r_.__value_.__l.__data_;
  v13 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = **(a2 + 16);
  v14 = __p;
  v15 = v10;
  v16 = 1284;
  v17 = &v14;
  v18 = " encountered unfixable aarch32 edge kind ";
  v19 = 770;
  if (!*(*(a1 + 192))(*(a3 + 24)))
  {
    v22 = v20;
    v23 = v21;
  }

  operator new();
}

void llvm::jitlink::aarch32::applyFixupThumb(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  v9 = *(a3 + 2);
  v10 = (a2[3] + v9);
  v11 = a3[24];
  v12 = *(a3 + 2);
  v13 = *(*a3 + 16);
  v14 = (v13 & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  v15 = v14 | 1;
  if (v13 < 0)
  {
    v14 |= 1uLL;
  }

  if (a3[24] <= 6u)
  {
    v16 = *a2 + v9;
    if (v11 == 5)
    {
      v26 = v10[1];
      if ((*v10 & 0xF800) == 0xF000 && v26 >> 14 > 2)
      {
        v35 = v14 - v16 + v12;
        if (v13 < 0 == ((v26 & 0x1000) == 0))
        {
          if (v13 < 0)
          {
            LOWORD(v26) = v26 & 0xEFFF;
            v10[1] = v26;
            v35 |= 1uLL;
          }

          else
          {
            LOWORD(v26) = v26 & 0xEFFE;
            v10[1] = v26;
            v35 = (v35 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }

        if (*a4 == 1)
        {
          if (!((v35 + 0x1000000) >> 25))
          {
            *v10 = (v35 >> 14) & 0x400 | (v35 >> 12) & 0x3FF | 0xF000;
            LOWORD(v35) = (v26 & 0xD000 | ((v35 >> 11) ^ (v35 >> 13)) & 0x800 | ((v35 >> 11) ^ (v35 >> 10)) & 0x2000 | (v35 >> 1) & 0x7FF) ^ 0x2800;
LABEL_40:
            v10[1] = v35;
            goto LABEL_41;
          }
        }

        else if (v35 + 0x200000 < 0x400000)
        {
          *v10 = (v35 >> 12) & 0x7FF | 0xF000;
          LODWORD(v35) = v26 & 0xD000 | 0x2800 | (v35 >> 1) & 0x7FF;
          goto LABEL_40;
        }

LABEL_56:

        llvm::jitlink::makeTargetOutOfRangeError(a1, a2, a3);
      }

      v28 = *(a1 + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 5;
LABEL_31:

      llvm::jitlink::aarch32::makeUnexpectedOpcodeError(v30, v28, v31, v29, v32);
    }

    if (v11 == 6)
    {
      if ((*v10 & 0xF800) == 0xF000)
      {
        v17 = v10[1];
        if (v17 < 0)
        {
          v18 = v10[1];
          if ((v17 & 0x1000) != 0)
          {
            v36 = (*(a1 + 192))(6);
            if (v36)
            {
              strlen(v36);
            }

            operator new();
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            v19 = (*(a1 + 192))(6);
            if (v19)
            {
              strlen(v19);
            }

            operator new();
          }

          v37 = v15 - v16 + v12;
          if (*a4 == 1)
          {
            if (!((v37 + 0x1000000) >> 25))
            {
              v38 = llvm::jitlink::aarch32::encodeImmBT4BlT1BlxT2_J1J2(v37);
              *v10 = v38 | 0xF000;
              LODWORD(v35) = v18 & 0xC000 | HIWORD(v38);
              goto LABEL_40;
            }
          }

          else if (v37 + 0x200000 < 0x400000)
          {
            *v10 = (v37 >> 12) & 0x7FF | 0xF000;
            LODWORD(v35) = v17 & 0xC000 | (v37 >> 1) & 0x7FF | 0x2800;
            goto LABEL_40;
          }

          goto LABEL_56;
        }
      }

      v28 = *(a1 + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 6;
      goto LABEL_31;
    }

LABEL_17:
    std::operator+<char>();
    v23 = std::string::append(&v39, ", section ");
    v24 = v23->__r_.__value_.__r.__words[2];
    *__p = *&v23->__r_.__value_.__l.__data_;
    v41 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = *a2[2];
    v42 = __p;
    v43 = v25;
    v44 = 1284;
    v45 = &v42;
    v46 = " encountered unfixable aarch32 edge kind ";
    v47 = 770;
    if (!*(*(a1 + 192))(a3[24]))
    {
      v50 = v48;
      v51 = v49;
    }

    operator new();
  }

  if (v11 == 7)
  {
    if ((*v10 & 0xFBF0) != 0xF240 || (v33 = v10[1], v33 < 0))
    {
      v28 = *(a1 + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 7;
      goto LABEL_31;
    }

    v34 = v14 + v12;
    *v10 = (v34 >> 1) & 0x400 | (v34 >> 12) | 0xF240;
    v22 = v33 & 0xF00 | v34 | (((v34 >> 8) & 7) << 12);
  }

  else
  {
    if (v11 != 8)
    {
      goto LABEL_17;
    }

    if ((*v10 & 0xFBF0) != 0xF2C0 || (v20 = v10[1], v20 < 0))
    {
      v28 = *(a1 + 192);
      v29 = v10 + 1;
      v30 = a5;
      v31 = v10;
      v32 = 8;
      goto LABEL_31;
    }

    v21 = v14 + v12;
    *v10 = ((v21 >> 16) >> 1) & 0x400 | (WORD1(v21) >> 12) | 0xF2C0;
    v22 = v20 & 0xF00 | BYTE2(v21) | (v21 >> 12) & 0x7000;
  }

  v10[1] = v22;
LABEL_41:
  *a5 = 0;
}

void *llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::createEntry(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::addStub<10ul>(a1, a2, &llvm::jitlink::aarch32::Thumbv7ABS, 4uLL);
  llvm::jitlink::Block::addEdge(v5, 7, 0, a3, 0);
  llvm::jitlink::Block::addEdge(v5, 8, 4, a3, 0);
  result = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v5, 0, v5[4], 1, 0);
  result[2] |= 0x8000000000000000;
  return result;
}

void *llvm::jitlink::aarch32::StubsManager<(llvm::jitlink::aarch32::StubsFlavor)1>::addStub<10ul>(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    llvm::jitlink::LinkGraph::createSection(a2, "__llvm_jitlink_STUBS", 20, 5);
  }

  v10[0] = a3;
  v10[1] = 10;
  v8 = a4;
  v9 = 0;
  v7 = 0;
  return llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, v5, v10, &v9, &v8, &v7);
}

const char *llvm::jitlink::aarch32::getEdgeKindName(llvm::jitlink::aarch32 *this)
{
  if (this - 2) < 7 && ((0x7Du >> (this - 2)))
  {
    return off_279EFB690[(this - 2)];
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

llvm::raw_ostream *llvm::detail::provider_format_adapter<unsigned short>::format(uint64_t a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
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

    return llvm::write_integer(a2, *(a1 + 8), v14, v12);
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

  return llvm::write_hex(a2, *(a1 + 8), v7, v10, 1);
}

const char *llvm::jitlink::aarch64::getEdgeKindName(llvm::jitlink::aarch64 *this)
{
  if (this - 2) < 0x13 && ((0x7FFFDu >> (this - 2)))
  {
    return off_279EFB780[(this - 2)];
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

void llvm::jitlink::aarch64::createEmptyPointerSigningFunction(llvm::jitlink::aarch64 *this)
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
    v6 = 0;
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 40);
      v9 = *(v7 + 48);
      while (v8 != v9)
      {
        if (*(v8 + 24) == 3)
        {
          ++v6;
        }

        v8 += 32;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(v12, v11);
      v5 = v13;
    }

    while (*&v12[0] != v3 || v13 != v4);
  }

  llvm::jitlink::LinkGraph::createSection(this, "$__ptrauth_sign", 15, 5);
}