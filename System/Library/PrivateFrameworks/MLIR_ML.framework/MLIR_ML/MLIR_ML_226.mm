uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>@<X0>(uint64_t a1@<X0>, llvm::hashing::detail **a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL);
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              *(v23 + 8) = *(v22 + 8);
              ++*(a1 + 8);
            }

            v22 = (v22 + 24);
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = result + 24 * v10;
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 += 24;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = result + 24 * v13;
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 += 24;
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL);
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_25736B6D0;
      *(v25 + 24) = xmmword_25736B6D0;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

void **llvm::SmallString<256u>::operator=(void **a1, const void *a2, size_t __n)
{
  v5 = 0;
  a1[1] = 0;
  if (a1[2] < __n)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__n)
  {
    memcpy(*a1, a2, __n);
    v5 = a1[1];
  }

  a1[1] = &v5[__n];
  return a1;
}

uint64_t llvm::vfs::RedirectingFileSystem::RemapEntry::RemapEntry(uint64_t a1, int a2, void *__src, size_t __len, void *a5, size_t a6, int a7)
{
  *a1 = &unk_2868A26E0;
  *(a1 + 8) = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = (a1 + 16);
  *(a1 + 39) = __len;
  if (__len)
  {
    memmove(v12, __src, __len);
  }

  *(v12 + __len) = 0;
  *a1 = &unk_2868A26C0;
  v13 = (a1 + 40);
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 63) = a6;
  if (a6)
  {
    memmove(v13, a5, a6);
  }

  *(v13 + a6) = 0;
  *(a1 + 64) = a7;
  return a1;
}

void llvm::vfs::RedirectingFileSystem::FileEntry::~FileEntry(void **this)
{
  *this = &unk_2868A26C0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[2]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A26C0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[2]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

void llvm::vfs::RedirectingFileSystem::RemapEntry::~RemapEntry(void **this)
{
  *this = &unk_2868A26C0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[2]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A26C0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[2]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

void llvm::vfs::RedirectingFileSystem::Entry::~Entry(void **this)
{
  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x259C63180);
}

void llvm::vfs::RedirectingFileSystem::DirectoryRemapEntry::~DirectoryRemapEntry(void **this)
{
  *this = &unk_2868A26C0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[2]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A26C0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A26E0;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[2]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

void llvm::vfs::RedirectingFileSystem::DirectoryEntry::~DirectoryEntry(void **this)
{
  *this = &unk_2868A2738;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }

  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2868A2738;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }

  *this = &unk_2868A26E0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x259C63180);
}

_BYTE *llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<char const*,llvm::StringRef>(_BYTE *a1, const char **a2, uint64_t a3, char a4)
{
  v7 = *a2;
  v8 = strlen(*a2);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  a1[23] = v8;
  if (v8)
  {
    memmove(a1, v7, v8);
  }

  a1[v9] = 0;
  v10 = *(a3 + 8);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = *a3;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v12 = a1 + 24;
  a1[47] = v10;
  if (v10)
  {
    memmove(v12, v11, v10);
  }

  *(v12 + v10) = 0;
  a1[48] = a4;
  return a1;
}

llvm::raw_ostream *anonymous namespace::JSONWriter::startDirectory(void **a1, std::string::value_type *a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = a2;
  v6 = a3;
  if (v4)
  {
    v7 = a1[1][2 * v4 - 1];
    if (a3 >= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = a3;
    }

    v6 = a3 - v8;
    v5 = &a2[v8];
  }

  if (v4 >= *(a1 + 5))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = &a1[1][2 * v4];
  *v9 = a2;
  *(v9 + 8) = a3;
  LODWORD(v9) = *(a1 + 4) + 1;
  *(a1 + 4) = v9;
  v10 = 4 * v9;
  v11 = llvm::raw_ostream::indent(*a1, 4 * v9);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 2683;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "{\n", 2uLL);
  }

  v13 = llvm::raw_ostream::indent(*a1, v10 | 2u);
  v14 = v13[4];
  if (v13[3] - v14 > 0x14uLL)
  {
    qmemcpy(v14, "'type': 'directory',\n", 21);
    v13[4] += 21;
  }

  else
  {
    llvm::raw_ostream::write(v13, "'type': 'directory',\n", 0x15uLL);
  }

  v15 = llvm::raw_ostream::indent(*a1, v10 | 2u);
  v16 = v15[4];
  if ((v15[3] - v16) > 8)
  {
    *(v16 + 8) = 34;
    *v16 = *"'name': ";
    v17 = v15;
    v15[4] += 9;
  }

  else
  {
    v17 = llvm::raw_ostream::write(v15, "'name': ", 9uLL);
  }

  llvm::yaml::escape(v5, v6, 1, &__p);
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

  v20 = llvm::raw_ostream::write(v17, p_p, size);
  v21 = v20[4];
  if ((v20[3] - v21) > 2)
  {
    *(v21 + 2) = 10;
    *v21 = 11298;
    v20[4] += 3;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::raw_ostream::write(v20, ",\n", 3uLL);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_27:
  result = llvm::raw_ostream::indent(*a1, v10 | 2u);
  v23 = *(result + 4);
  if (*(result + 3) - v23 <= 0xDuLL)
  {
    return llvm::raw_ostream::write(result, "'contents': [\n", 0xEuLL);
  }

  qmemcpy(v23, "'contents': [\n", 14);
  *(result + 4) += 14;
  return result;
}

llvm::raw_ostream *anonymous namespace::JSONWriter::writeEntry(void **a1, std::string::value_type *a2, uint64_t a3, std::string::value_type *a4, uint64_t a5)
{
  v10 = 4 * *(a1 + 4);
  v11 = llvm::raw_ostream::indent(*a1, v10 + 4);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 2683;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "{\n", 2uLL);
  }

  v13 = llvm::raw_ostream::indent(*a1, v10 + 6);
  v14 = v13[4];
  if (v13[3] - v14 > 0xFuLL)
  {
    *v14 = *"'type': 'file',\n";
    v13[4] += 16;
  }

  else
  {
    llvm::raw_ostream::write(v13, "'type': 'file',\n", 0x10uLL);
  }

  v15 = llvm::raw_ostream::indent(*a1, v10 + 6);
  v16 = v15[4];
  if ((v15[3] - v16) > 8)
  {
    *(v16 + 8) = 34;
    *v16 = *"'name': ";
    v17 = v15;
    v15[4] += 9;
  }

  else
  {
    v17 = llvm::raw_ostream::write(v15, "'name': ", 9uLL);
  }

  llvm::yaml::escape(a2, a3, 1, &__p);
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

  v20 = llvm::raw_ostream::write(v17, p_p, size);
  v21 = v20[4];
  if ((v20[3] - v21) > 2)
  {
    *(v21 + 2) = 10;
    *v21 = 11298;
    v20[4] += 3;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    llvm::raw_ostream::write(v20, ",\n", 3uLL);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_21:
  v22 = llvm::raw_ostream::indent(*a1, v10 + 6);
  v23 = v22[4];
  if (v22[3] - v23 > 0x15uLL)
  {
    qmemcpy(v23, "'external-contents': ", 22);
    v24 = v22;
    v22[4] += 22;
  }

  else
  {
    v24 = llvm::raw_ostream::write(v22, "'external-contents': ", 0x16uLL);
  }

  llvm::yaml::escape(a4, a5, 1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  v27 = llvm::raw_ostream::write(v24, v25, v26);
  v28 = v27[4];
  if (v27[3] - v28 > 1uLL)
  {
    *v28 = 2594;
    v27[4] += 2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    llvm::raw_ostream::write(v27, "\n", 2uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_36:
      operator delete(__p.__r_.__value_.__l.__data_);
      result = llvm::raw_ostream::indent(*a1, v10 + 4);
      v30 = *(result + 4);
      if (*(result + 3) == v30)
      {
        return llvm::raw_ostream::write(result, "}", 1uLL);
      }

LABEL_35:
      *v30 = 125;
      ++*(result + 4);
      return result;
    }
  }

  result = llvm::raw_ostream::indent(*a1, v10 + 4);
  v30 = *(result + 4);
  if (*(result + 3) != v30)
  {
    goto LABEL_35;
  }

  return llvm::raw_ostream::write(result, "}", 1uLL);
}

void std::__shared_ptr_emplace<anonymous namespace::CombiningDirIterImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A2770;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CombiningDirIterImpl::incrementImpl(_anonymous_namespace_::CombiningDirIterImpl *this, int a2)
{
  std::system_category();
  v4 = (this + 8);
  do
  {
    v16 = *(this + 23);
    if (a2)
    {
      v5 = 0;
      if (!v16)
      {
        goto LABEL_21;
      }

LABEL_12:
      v17 = *(this + 23);
      if (!v17)
      {
        goto LABEL_35;
      }

      goto LABEL_3;
    }

    v18 = (*(*v16 + 16))(v16);
    v19 = *(this + 23);
    v20 = *(v19 + 31);
    v21 = *(v19 + 16);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    if (!v21)
    {
      v29 = *(this + 24);
      *(this + 23) = 0;
      *(this + 24) = 0;
      if (v29)
      {
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v30 = v18;
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          v18 = v30;
        }
      }
    }

    v5 = HIDWORD(v18);
    v17 = v18;
    if (v18)
    {
LABEL_35:
      if (*(this + 31) < 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (*(this + 23))
    {
      goto LABEL_12;
    }

LABEL_21:
    while (1)
    {
      v22 = *(this + 12);
      if (!v22)
      {
        break;
      }

      v23 = *(this + 5) + 16 * v22;
      v25 = *(v23 - 16);
      v24 = *(v23 - 8);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = *(this + 24);
      *(this + 23) = v25;
      *(this + 24) = v24;
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      v27 = *(this + 12) - 1;
      *(this + 12) = v27;
      v28 = *(*(this + 5) + 16 * v27 + 8);
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      v17 = *(this + 23);
      if (v17)
      {
        v5 = 0;
        goto LABEL_3;
      }
    }

    if (a2)
    {
      v17 = 2;
      std::generic_category();
      v5 = 0;
      if (*(this + 31) < 0)
      {
LABEL_36:
        operator delete(*v4);
      }

LABEL_37:
      *v4 = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
      *(this + 8) = 9;
      return v17 | (v5 << 32);
    }

    v5 = 0;
    v17 = *(this + 23);
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_3:
    std::string::operator=((this + 8), (v17 + 8));
    *(this + 8) = *(v17 + 32);
    v6 = *(this + 31);
    if (v6 >= 0)
    {
      v7 = this + 8;
    }

    else
    {
      v7 = *(this + 1);
    }

    if (v6 >= 0)
    {
      v8 = *(this + 31);
    }

    else
    {
      v8 = *(this + 2);
    }

    v9 = llvm::sys::path::filename(v7, v8, 0);
    v11 = v10;
    v14 = llvm::StringMapImpl::hash(v9, v10, v12, v13);
    llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>((this + 200), v9, v11, v14);
  }

  while ((v15 & 1) == 0);
  v17 = 0;
  return v17 | (v5 << 32);
}

void anonymous namespace::CombiningDirIterImpl::~CombiningDirIterImpl(_anonymous_namespace_::CombiningDirIterImpl *this)
{
  *this = &unk_2868A27C0;
  if (*(this + 53))
  {
    v2 = *(this + 52);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 25) + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 9));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 25));
  v6 = *(this + 24);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 5);
  v8 = *(this + 12);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *(this + 5);
  }

  if (v7 != this + 56)
  {
    free(v7);
  }

  *this = &unk_2868A1EB8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addFile(llvm::Twine const&,long,std::unique_ptr<llvm::MemoryBuffer>,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>(void x0_0, uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  v6 = v4;
  v7 = v3;
  v8 = *(a1 + 64);
  if (v3)
  {
    llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v5, *(v3 + 16) - *(v3 + 8), __p);
    if (v10 == 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v5, 0, __p);
    if (v10 == 3)
    {
LABEL_3:
      operator new();
    }
  }

  std::make_unique[abi:nn200100]<llvm::vfs::detail::InMemoryFile,llvm::vfs::Status &,std::unique_ptr<llvm::MemoryBuffer>,0>();
}

void llvm::vfs::detail::InMemoryFile::~InMemoryFile(llvm::vfs::detail::InMemoryFile *this)
{
  *this = &unk_2868A2800;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 5));
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2868A2800;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(this + 2));
LABEL_5:

  JUMPOUT(0x259C63180);
}

__n128 llvm::vfs::detail::InMemoryFile::getStatus@<Q0>(__n128 *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v9 = this[4];
  v4 = this[5].n128_u64[0];
  v5 = this[6].n128_u64[0];
  v6 = this[6].n128_u64[1];
  v7 = this[5].n128_u64[1];
  llvm::Twine::str(a2, a3);
  result = v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v4;
  *(a3 + 48) = v7;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  *(a3 + 72) = 0;
  return result;
}

void llvm::vfs::detail::InMemoryFile::toString(llvm::vfs::detail::InMemoryFile *this@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  v5 = __len;
  if (__len >= 0x17)
  {
    operator new();
  }

  v11 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + v5) = 0;
  v8 = *(this + 5);
  v7 = this + 40;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v6 = v7;
  }

  if (v9 < 0)
  {
    v9 = *(v7 + 1);
  }

  v12[0] = &__b;
  v12[2] = v6;
  v12[3] = v9;
  v13 = 1284;
  v14[0] = v12;
  v14[2] = "\n";
  v15 = 770;
  llvm::Twine::str(v14, a3);
  if (v11 < 0)
  {
    operator delete(__b);
  }
}

uint64_t llvm::vfs::detail::InMemoryFile::getBuffer@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 120);
  *(a2 + 16) &= ~1u;
  *a2 = v2;
  return this;
}

void llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addLazyFile(llvm::Twine const&,long,std::function<llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer>> ()(llvm::StringRef)> &,unsigned long,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v3;
  v6[2] = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v7 = v4;
  v8 = v5;
  v9 = *(a2 + 64);
  llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v6, a1[1], __p);
  operator new();
}

uint64_t llvm::vfs::detail::LazyInMemoryFile::LazyInMemoryFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v17 = *(a2 + 56);
  v18 = *(a2 + 72);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v14;
  }

  else
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  *a1 = &unk_2868A25C8;
  *(a1 + 8) = 0;
  v8 = llvm::sys::path::filename(v6, size, 0);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v11 = (a1 + 16);
  *(a1 + 39) = v9;
  if (v9)
  {
    memmove(v11, v8, v9);
  }

  *(v11 + v10) = 0;
  *(a1 + 40) = v14;
  v12 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v12;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = 0;
  *(a1 + 128) = a3;
  *a1 = &unk_2868A2850;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = std::system_category();
  return a1;
}

void llvm::vfs::detail::LazyInMemoryFile::~LazyInMemoryFile(llvm::vfs::detail::LazyInMemoryFile *this)
{
  *this = &unk_2868A2800;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 5));
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2868A2800;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(this + 2));
LABEL_5:

  JUMPOUT(0x259C63180);
}

void *llvm::vfs::detail::LazyInMemoryFile::getBuffer@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v20 = *MEMORY[0x277D85DE8];
  if ((this[17] & 1) == 0)
  {
    v4 = this[5];
    v5 = this[16];
    v6 = *(this + 63);
    if (v6 >= 0)
    {
      v4 = this + 5;
    }

    v7 = this[6];
    if (v6 >= 0)
    {
      v7 = *(this + 63);
    }

    v16 = v4;
    v17 = v7;
    v8 = *(v5 + 24);
    if (!v8)
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addFileNoOwn(llvm::Twine const&,long,llvm::MemoryBufferRef const&,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>(v14, v15);
    }

    this = (*(*v8 + 48))(v18);
    *(v2 + 136) = 1;
    if (v19)
    {
      v9 = v18[1];
      v2[18] = v18[0];
      v2[19] = v9;
    }

    else
    {
      v10 = v18[0];
      v18[0] = 0;
      v11 = v2[15];
      v2[15] = v10;
      if (!v11 || (this = (*(*v11 + 8))(v11), (v19 & 1) == 0))
      {
        this = v18[0];
        v18[0] = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
        }
      }
    }
  }

  if (*(v2 + 36))
  {
    v12 = v2[18];
    v13 = v2[19];
    *(a2 + 16) |= 1u;
    *(a2 + 8) = v13;
  }

  else
  {
    v12 = v2[15];
    *(a2 + 16) &= ~1u;
  }

  *a2 = v12;
  return this;
}

void llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addFileNoOwn(llvm::Twine const&,long,llvm::MemoryBufferRef const&,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>(void x0_0, uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  v6 = v4;
  v7 = v3;
  v8 = *(a1 + 64);
  if (v3)
  {
    llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v5, *(v3 + 16) - *(v3 + 8), __p);
    if (v10 == 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v5, 0, __p);
    if (v10 == 3)
    {
LABEL_3:
      operator new();
    }
  }

  std::make_unique[abi:nn200100]<llvm::vfs::detail::InMemoryFile,llvm::vfs::Status &,std::unique_ptr<llvm::MemoryBuffer>,0>();
}

void llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addHardLink(llvm::Twine const&,llvm::Twine const&)::$_0>(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  a2[7] = 0;
  if (v4)
  {
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v6) = v3;
    if (v3)
    {
      memcpy(__dst, v4, v3);
    }

    *(__dst + v3) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v6 = 0;
  }

  operator new();
}

void llvm::vfs::detail::anonymous namespace::InMemoryHardLink::~InMemoryHardLink(void **this)
{
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x259C63180);
}

void llvm::vfs::detail::anonymous namespace::InMemoryHardLink::toString(llvm::vfs::detail::_anonymous_namespace_::InMemoryHardLink *this@<X0>, size_t __len@<X1>, std::string *a3@<X8>)
{
  v5 = __len;
  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  __b.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::append(&__b, "HardLink to -> ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(**(this + 5) + 24))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v14, v8, v9);
  *a3 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_18:
      operator delete(__b.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addSymbolicLink(llvm::Twine const&,llvm::Twine const&,long,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::perms>)::$_0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  v8 = v5;
  v9 = v4;
  v10 = *(a2 + 64);
  if (v4)
  {
    v6 = *(v4 + 16) - *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(v7, v6, &__p);
  operator new();
}

void llvm::vfs::detail::anonymous namespace::InMemorySymbolicLink::~InMemorySymbolicLink(void **this)
{
  *this = &unk_2868A28E8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      *this = &unk_2868A25C8;
      if ((*(this + 39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[2]);
      return;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[5]);
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2868A28E8;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      *this = &unk_2868A25C8;
      if ((*(this + 39) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(this[2]);
LABEL_4:

      JUMPOUT(0x259C63180);
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[5]);
  *this = &unk_2868A25C8;
  if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

__n128 llvm::vfs::detail::anonymous namespace::InMemorySymbolicLink::getStatus@<Q0>(llvm::vfs::detail::_anonymous_namespace_::InMemorySymbolicLink *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(this + 88);
  v4 = *(this + 13);
  v5 = *(this + 15);
  v6 = *(this + 16);
  v7 = *(this + 14);
  llvm::Twine::str(a2, a3);
  result = v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v4;
  *(a3 + 48) = v7;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  *(a3 + 72) = 0;
  return result;
}

void llvm::vfs::detail::anonymous namespace::InMemorySymbolicLink::toString(llvm::vfs::detail::_anonymous_namespace_::InMemorySymbolicLink *this@<X0>, size_t __len@<X1>, std::string *a3@<X8>)
{
  v5 = __len;
  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  __b.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::append(&__b, "SymbolicLink to -> ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v10 = *(this + 5);
  v9 = this + 40;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = std::string::append(&v16, v12, v13);
  *a3 = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__b.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }
}

void std::__shared_ptr_emplace<llvm::vfs::InMemoryFileSystem::DirIterator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A2930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void llvm::vfs::InMemoryFileSystem::DirIterator::~DirIterator(void **this)
{
  *this = &unk_2868A2980;
  if ((*(this + 87) & 0x80000000) == 0)
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[8]);
  *this = &unk_2868A1EB8;
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A2980;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[1]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

uint64_t llvm::vfs::InMemoryFileSystem::DirIterator::increment(llvm::vfs::InMemoryFileSystem::DirIterator *this)
{
  v1 = *(this + 6);
  v2 = v1[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    do
    {
      v3 = v1[2];
      v4 = *v3 == v1;
      v1 = v3;
    }

    while (!v4);
  }

  *(this + 6) = v3;
  llvm::vfs::InMemoryFileSystem::DirIterator::setCurrentEntry(this);
  std::system_category();
  return 0;
}

void llvm::vfs::InMemoryFileSystem::DirIterator::setCurrentEntry(llvm::vfs::InMemoryFileSystem::DirIterator *this)
{
  v38[32] = *MEMORY[0x277D85DE8];
  if (*(this + 6) != *(this + 7))
  {
    v2 = *(this + 87);
    if (v2 >= 0)
    {
      v3 = this + 64;
    }

    else
    {
      v3 = *(this + 8);
    }

    if (v2 >= 0)
    {
      v4 = *(this + 87);
    }

    else
    {
      v4 = *(this + 9);
    }

    __src = v38;
    __len = xmmword_25736B790;
    if (v4 >= 0x101)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v5 = 0;
    if (v4)
    {
      memcpy(__src, v3, v4);
      v5 = __len;
    }

    *&__len = v5 + v4;
    v6 = *(*(this + 6) + 56);
    v9 = *(v6 + 16);
    v7 = v6 + 16;
    v8 = v9;
    v10 = *(v7 + 23);
    if (v10 >= 0)
    {
      v8 = v7;
    }

    v11 = *(v7 + 8);
    if (v10 >= 0)
    {
      v11 = v10;
    }

    v33[4] = 261;
    *&v32 = v8;
    *(&v32 + 1) = v11;
    v26 = 257;
    v31 = 257;
    v29 = 257;
    llvm::sys::path::append(&__src, &v32, __p, v30, v28);
    v12 = *(*(*(this + 6) + 56) + 8);
    v13 = 9;
    if (v12 > 2)
    {
      if (v12 == 4)
      {
        v18 = *(this + 5);
        v26 = 261;
        __p[0] = __src;
        __p[1] = __len;
        llvm::vfs::InMemoryFileSystem::lookupNode(v18, __p, 1, 0, &v32);
        if ((v35 & 1) == 0)
        {
          v19 = *(&v32 + 1);
          *&__len = 0;
          if (*(&__len + 1) < *(&v32 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v20 = 0;
          if (*(&v32 + 1))
          {
            memcpy(__src, v32, *(&v32 + 1));
            v20 = __len;
          }

          *&__len = v20 + v19;
          v31 = 261;
          v30[0] = __src;
          v30[1] = (v20 + v19);
          (*(*v34 + 16))(__p);
          v13 = v27;
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          if ((v35 & 1) == 0 && v32 != v33)
          {
            free(v32);
          }
        }

        goto LABEL_26;
      }

      if (v12 != 3)
      {
LABEL_26:
        v14 = __len;
        if (__len >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        v23 = __len;
        if (__len)
        {
          memmove(&v21, __src, __len);
        }

        v22[v14 - 8] = 0;
        v15 = v21;
        *&v32 = *v22;
        *(&v32 + 7) = *&v22[7];
        v16 = v23;
        if (*(this + 31) < 0)
        {
          operator delete(*(this + 1));
        }

        v17 = v32;
        *(this + 1) = v15;
        *(this + 2) = v17;
        *(this + 23) = *(&v32 + 7);
        *(this + 31) = v16;
        *(this + 8) = v13;
        if (__src != v38)
        {
          free(__src);
        }

        return;
      }
    }

    else if (v12 >= 2)
    {
      if (v12 == 2)
      {
        v13 = 3;
      }

      goto LABEL_26;
    }

    v13 = 2;
    goto LABEL_26;
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 9;
}

void std::__shared_ptr_emplace<anonymous namespace::RedirectingFSDirRemapIterImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A29C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::RedirectingFSDirRemapIterImpl::setCurrentEntry(_anonymous_namespace_::RedirectingFSDirRemapIterImpl *this)
{
  v38[16] = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = *(v3 + 8);
  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  __src = v7;
  *&__len = v9;
  first_of = llvm::StringRef::find_first_of(&__src, "/\"", 2, 0);
  if (first_of == -1)
  {
    v11 = 0;
  }

  else if (*(__src + first_of) == 47)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  v12 = llvm::sys::path::filename(v7, v9, v11);
  v14 = v13;
  v15 = *(this + 63);
  if (v15 >= 0)
  {
    v16 = this + 40;
  }

  else
  {
    v16 = *(this + 5);
  }

  if (v15 >= 0)
  {
    v17 = *(this + 63);
  }

  else
  {
    v17 = *(this + 6);
  }

  __src = v38;
  __len = xmmword_257371870;
  if (v17 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v18 = 0;
  if (v17)
  {
    memcpy(__src, v16, v17);
    v18 = __len;
  }

  *&__len = v18 + v17;
  v19 = *(this + 16);
  v35 = 261;
  *&v34 = v12;
  *(&v34 + 1) = v14;
  v33 = 257;
  v31 = 257;
  v29 = 257;
  llvm::sys::path::append(&__src, v19, &v34, &v32, &v30, &v28);
  v20 = __len;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v27 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  v26[v20 - 8] = 0;
  v21 = *(*(this + 9) + 32);
  v22 = __dst;
  *&v34 = *v26;
  *(&v34 + 7) = *&v26[7];
  v23 = v27;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v24 = v34;
  *(this + 1) = v22;
  *(this + 2) = v24;
  *(this + 23) = *(&v34 + 7);
  *(this + 31) = v23;
  *(this + 8) = v21;
  if (__src != v38)
  {
    free(__src);
  }
}

void anonymous namespace::RedirectingFSDirRemapIterImpl::~RedirectingFSDirRemapIterImpl(_anonymous_namespace_::RedirectingFSDirRemapIterImpl *this)
{
  *this = &unk_2868A2A10;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_4:
      *this = &unk_2868A1EB8;
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_8:
      operator delete(*(this + 1));
      return;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(this + 5));
  *this = &unk_2868A1EB8;
  if (*(this + 31) < 0)
  {
    goto LABEL_8;
  }
}

{
  *this = &unk_2868A2A10;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_4:
      *this = &unk_2868A1EB8;
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      operator delete(*(this + 1));
LABEL_5:

      JUMPOUT(0x259C63180);
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(this + 5));
  *this = &unk_2868A1EB8;
  if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_10;
}

uint64_t anonymous namespace::RedirectingFSDirRemapIterImpl::increment(_anonymous_namespace_::RedirectingFSDirRemapIterImpl *this)
{
  result = (*(**(this + 9) + 16))(*(this + 9));
  v3 = *(this + 9);
  v4 = *(v3 + 31);
  v5 = *(v3 + 16);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  if (!v5)
  {
    v7 = *(this + 10);
    *(this + 9) = 0;
    *(this + 10) = 0;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = v8;
      }
    }
  }

  if (result || !*(this + 9))
  {
    if (*(this + 31) < 0)
    {
      v6 = result;
      operator delete(*(this + 1));
      result = v6;
    }

    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 8) = 9;
  }

  else
  {
    v9 = result;
    return v9;
  }

  return result;
}

void std::__shared_ptr_emplace<llvm::vfs::RedirectingFSDirIterImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A2A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::vfs::RedirectingFSDirIterImpl::incrementImpl(llvm::vfs::RedirectingFSDirIterImpl *this, char a2)
{
  v34[16] = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  if ((a2 & 1) == 0)
  {
    v3 += 8;
    *(this + 8) = v3;
  }

  if (v3 == *(this + 9))
  {
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 8) = 9;
  }

  else
  {
    v4 = *(this + 63);
    if (v4 >= 0)
    {
      v5 = this + 40;
    }

    else
    {
      v5 = *(this + 5);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 63);
    }

    else
    {
      v6 = *(this + 6);
    }

    __src = v34;
    __len = xmmword_257371870;
    if (v6 >= 0x81)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v7 = 0;
    if (v6)
    {
      memcpy(__src, v5, v6);
      v7 = __len;
    }

    *&__len = v7 + v6;
    v8 = **(this + 8);
    v11 = *(v8 + 16);
    v9 = v8 + 16;
    v10 = v11;
    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v10 = v9;
    }

    v13 = *(v9 + 8);
    if (v12 >= 0)
    {
      v13 = v12;
    }

    v31 = 261;
    *&v30 = v10;
    *(&v30 + 1) = v13;
    v29 = 257;
    v27 = 257;
    v25 = 257;
    llvm::sys::path::append(&__src, &v30, v28, v26, v24);
    v14 = *(**(this + 8) + 8);
    if (v14 > 2)
    {
      v15 = 9;
    }

    else
    {
      v15 = dword_2573A33D8[v14];
    }

    v16 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    v23 = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    v22[v16 - 8] = 0;
    v17 = __dst;
    *&v30 = *v22;
    *(&v30 + 7) = *&v22[7];
    v18 = v23;
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    v19 = v30;
    *(this + 1) = v17;
    *(this + 2) = v19;
    *(this + 23) = *(&v30 + 7);
    *(this + 31) = v18;
    *(this + 8) = v15;
    if (__src != v34)
    {
      free(__src);
    }
  }

  std::system_category();
  return 0;
}

void llvm::vfs::RedirectingFSDirIterImpl::~RedirectingFSDirIterImpl(void **this)
{
  *this = &unk_2868A2AA0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_2868A1EB8;
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A2AA0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[1]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

void anonymous namespace::FileWithFixedStatus::~FileWithFixedStatus(void **this)
{
  *this = &unk_2868A2AE0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2868A2AE0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

__n128 anonymous namespace::FileWithFixedStatus::status@<Q0>(_anonymous_namespace_::FileWithFixedStatus *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) &= ~1u;
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *a2 = *(this + 1);
    *(a2 + 16) = *(this + 4);
  }

  *(a2 + 24) = *(this + 40);
  *(a2 + 40) = *(this + 56);
  result = *(this + 72);
  *(a2 + 56) = result;
  *(a2 + 72) = *(this + 88);
  return result;
}

double anonymous namespace::FileWithFixedStatus::setPath(_anonymous_namespace_::FileWithFixedStatus *this, llvm::formatv_object_base **a2)
{
  v2 = this + 40;
  v10 = *(this + 40);
  v3 = this + 16;
  v4 = *(this + 7);
  v5 = *(this + 9);
  v6 = *(this + 10);
  v7 = *(this + 8);
  llvm::Twine::str(a2, &v11);
  v13 = v10;
  *&v14 = v4;
  *(&v14 + 1) = v7;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  v16 = 0;
  if (*(v2 - 1) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v11;
  *(v3 + 2) = v12;
  v8 = v14;
  *v2 = v13;
  *(v2 + 1) = v8;
  result = *&v15;
  *(v2 + 2) = v15;
  v2[48] = v16;
  return result;
}

char *std::vector<llvm::vfs::YAMLVFSEntry>::__emplace_back_slow_path<llvm::StringRef &,llvm::StringRef &,BOOL &>(char **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x492492492492492)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = (8 * ((a1[1] - *a1) >> 3));
  llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<llvm::StringRef &,llvm::StringRef &>(v8, a2, a3, *a4);
  v9 = (56 * v4 + 56);
  v10 = *a1;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      v15 = *v13;
      *(v14 + 2) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 5) = *(v13 + 5);
      *(v14 + 24) = v16;
      *(v13 + 4) = 0;
      *(v13 + 5) = 0;
      *(v13 + 3) = 0;
      v14[48] = *(v13 + 48);
      v13 = (v13 + 56);
      v14 += 56;
    }

    while (v13 != v11);
    while (1)
    {
      if (*(v10 + 47) < 0)
      {
        operator delete(*(v10 + 3));
        if (*(v10 + 23) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else if (*(v10 + 23) < 0)
      {
        goto LABEL_19;
      }

      v10 = (v10 + 56);
      if (v10 == v11)
      {
        v10 = *a1;
        break;
      }
    }
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void *llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<llvm::StringRef &,llvm::StringRef &>(void *__dst, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 8);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  v8 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v4;
  if (v4)
  {
    memmove(__dst, v8, v4);
  }

  *(__dst + v4) = 0;
  v10 = *(a3 + 8);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = *a3;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v12 = __dst + 3;
  *(__dst + 47) = v10;
  if (v10)
  {
    memmove(v12, v11, v10);
  }

  *(v12 + v10) = 0;
  *(__dst + 48) = a4;
  return __dst;
}

void std::__introsort<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,false>(uint64_t *a1, void **a2, uint64_t a3, int a4)
{
  v6 = a1;
  v330 = *MEMORY[0x277D85DE8];
  v321 = a2;
  v322 = a1;
  while (1)
  {
    v7 = a2 - v6;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v6) >> 3);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v321 = a2 - 7;
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(v6, (v6 + 7), (a2 - 7));
          return;
        case 4:
          v321 = a2 - 7;
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(v6, (v6 + 7), (v6 + 14), (a2 - 7));
          return;
        case 5:
          v321 = a2 - 7;
          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(v6, (v6 + 7), (v6 + 14), (v6 + 21), (a2 - 7));
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v321 = a2 - 7;
        v124 = *(v6 + 23);
        v125 = *(a2 - 33);
        if (v125 >= 0)
        {
          v126 = *(a2 - 33);
        }

        else
        {
          v126 = *(a2 - 6);
        }

        if (v125 >= 0)
        {
          v127 = a2 - 7;
        }

        else
        {
          v127 = *(a2 - 7);
        }

        if (v124 >= 0)
        {
          v128 = *(v6 + 23);
        }

        else
        {
          v128 = v6[1];
        }

        if (v124 >= 0)
        {
          v129 = v6;
        }

        else
        {
          v129 = *v6;
        }

        if (v128 >= v126)
        {
          v130 = v126;
        }

        else
        {
          v130 = v128;
        }

        v131 = memcmp(v127, v129, v130);
        v132 = v126 < v128;
        if (v131)
        {
          v132 = v131 < 0;
        }

        if (v132)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v322, &v321);
        }

        return;
      }
    }

    if (v7 <= 1343)
    {
      break;
    }

    if (!a3)
    {
      if (v6 == a2)
      {
        return;
      }

      v308 = a2 - v6;
      v310 = a2;
      v162 = (v8 - 2) >> 1;
      v163 = v162;
      v307 = v6;
      v319 = v162;
      while (2)
      {
        v165 = v163;
        if (v162 >= v163)
        {
          v316 = v163;
          v166 = (2 * v163) | 1;
          v167 = &v6[7 * v166];
          v168 = 2 * v163 + 2;
          if (v168 >= v8)
          {
            v178 = *v167;
          }

          else
          {
            v169 = *(v167 + 79);
            v170 = *(v167 + 23);
            v312 = v167[7];
            v314 = *v167;
            if (v170 >= 0)
            {
              v171 = *(v167 + 23);
            }

            else
            {
              v171 = v167[1];
            }

            if (v170 >= 0)
            {
              v172 = &v6[7 * v166];
            }

            else
            {
              v172 = *v167;
            }

            if (v169 >= 0)
            {
              v173 = *(v167 + 79);
            }

            else
            {
              v173 = v167[8];
            }

            if (v169 >= 0)
            {
              v174 = v167 + 7;
            }

            else
            {
              v174 = v167[7];
            }

            if (v173 >= v171)
            {
              v175 = v171;
            }

            else
            {
              v175 = v173;
            }

            v176 = memcmp(v172, v174, v175);
            v177 = v171 < v173;
            if (v176)
            {
              v177 = v176 < 0;
            }

            v204 = !v177;
            v178 = v314;
            if (!v204)
            {
              v178 = v312;
              v167 += 7;
              v166 = v168;
            }
          }

          v165 = v316;
          v179 = &v6[7 * v316];
          v180 = *(v179 + 23);
          v181 = *(v167 + 23);
          if (v181 >= 0)
          {
            v182 = *(v167 + 23);
          }

          else
          {
            v182 = v167[1];
          }

          if (v181 >= 0)
          {
            v183 = v167;
          }

          else
          {
            v183 = v178;
          }

          if (v180 >= 0)
          {
            v184 = *(v179 + 23);
          }

          else
          {
            v184 = v179[1];
          }

          if (v180 >= 0)
          {
            v185 = &v6[7 * v316];
          }

          else
          {
            v185 = *v179;
          }

          if (v184 >= v182)
          {
            v186 = v182;
          }

          else
          {
            v186 = v184;
          }

          v187 = memcmp(v183, v185, v186);
          v188 = v182 < v184;
          if (v187)
          {
            v188 = v187 < 0;
          }

          if (!v188)
          {
            v189 = *v179;
            v324 = v179[2];
            v323 = v189;
            v179[1] = 0;
            v179[2] = 0;
            *v179 = 0;
            v190 = *(v179 + 3);
            v326 = v179[5];
            v325 = v190;
            v179[4] = 0;
            v179[5] = 0;
            v179[3] = 0;
            v327 = *(v179 + 48);
            do
            {
              v214 = v167;
              if (*(v179 + 23) < 0)
              {
                operator delete(*v179);
              }

              v215 = *v167;
              v179[2] = v167[2];
              *v179 = v215;
              *(v167 + 23) = 0;
              *v167 = 0;
              if (*(v179 + 47) < 0)
              {
                operator delete(v179[3]);
              }

              v216 = *(v167 + 3);
              v179[5] = v167[5];
              *(v179 + 3) = v216;
              *(v167 + 47) = 0;
              *(v167 + 24) = 0;
              *(v179 + 48) = *(v167 + 48);
              if (v162 < v166)
              {
                break;
              }

              v217 = (2 * v166) | 1;
              v167 = &v6[7 * v217];
              v166 = 2 * v166 + 2;
              if (v166 < v8)
              {
                v191 = *(v167 + 79);
                v192 = v167[7];
                v193 = *(v167 + 23);
                v194 = *v167;
                v195 = v8;
                if (v193 >= 0)
                {
                  v196 = *(v167 + 23);
                }

                else
                {
                  v196 = v167[1];
                }

                if (v193 >= 0)
                {
                  v197 = v167;
                }

                else
                {
                  v197 = *v167;
                }

                if (v191 >= 0)
                {
                  v198 = *(v167 + 79);
                }

                else
                {
                  v198 = v167[8];
                }

                if (v191 >= 0)
                {
                  v199 = v167 + 7;
                }

                else
                {
                  v199 = v167[7];
                }

                if (v198 >= v196)
                {
                  v200 = v196;
                }

                else
                {
                  v200 = v198;
                }

                v201 = memcmp(v197, v199, v200);
                v202 = v196 >= v198;
                v8 = v195;
                v6 = v307;
                v203 = !v202;
                if (v201)
                {
                  v203 = v201 < 0;
                }

                v204 = !v203;
                v205 = (v203 ? v192 : v194);
                v162 = v319;
                if (v204)
                {
                  v166 = v217;
                }

                else
                {
                  v167 += 7;
                }
              }

              else
              {
                v205 = *v167;
                v166 = v217;
              }

              v206 = *(v167 + 23);
              if (v206 >= 0)
              {
                v207 = *(v167 + 23);
              }

              else
              {
                v207 = v167[1];
              }

              if (v206 >= 0)
              {
                v208 = v167;
              }

              else
              {
                v208 = v205;
              }

              if (v324 >= 0)
              {
                v209 = HIBYTE(v324);
              }

              else
              {
                v209 = *(&v323 + 1);
              }

              if (v324 >= 0)
              {
                v210 = &v323;
              }

              else
              {
                v210 = v323;
              }

              if (v209 >= v207)
              {
                v211 = v207;
              }

              else
              {
                v211 = v209;
              }

              v212 = memcmp(v208, v210, v211);
              v213 = v207 < v209;
              if (v212)
              {
                v213 = v212 < 0;
              }

              v179 = v214;
            }

            while (!v213);
            if (*(v214 + 23) < 0)
            {
              operator delete(*v214);
              v219 = v323;
              v214[2] = v324;
              *v214 = v219;
              if (*(v214 + 47) < 0)
              {
                goto LABEL_407;
              }
            }

            else
            {
              v218 = v323;
              v214[2] = v324;
              *v214 = v218;
              if (*(v214 + 47) < 0)
              {
LABEL_407:
                operator delete(v214[3]);
              }
            }

            v164 = v325;
            v214[5] = v326;
            *(v214 + 3) = v164;
            *(v214 + 48) = v327;
            v165 = v316;
          }
        }

        v163 = v165 - 1;
        if (v165)
        {
          continue;
        }

        break;
      }

      v220 = v310;
      v221 = 0x6DB6DB6DB6DB6DB7 * (v308 >> 3);
      while (2)
      {
        v224 = 0;
        v313 = v220;
        v309 = *v6;
        *v329 = v6[1];
        *&v329[7] = *(v6 + 15);
        v311 = *(v6 + 23);
        *v6 = 0;
        v6[1] = 0;
        *&v328[7] = *(v6 + 39);
        v317 = v6[3];
        *v328 = v6[4];
        v320 = *(v6 + 47);
        v6[4] = 0;
        v6[5] = 0;
        v6[2] = 0;
        v6[3] = 0;
        v225 = v6;
        v315 = *(v6 + 48);
LABEL_413:
        v227 = &v225[7 * v224];
        v228 = (v227 + 7);
        v229 = (2 * v224) | 1;
        v224 = 2 * v224 + 2;
        if (v224 >= v221)
        {
          v224 = v229;
          if (*(v225 + 23) < 0)
          {
            goto LABEL_437;
          }
        }

        else
        {
          v232 = v227[14];
          v231 = v227 + 14;
          v230 = v232;
          v233 = *(v231 + 23);
          v234 = *(v231 - 33);
          if (v234 >= 0)
          {
            v235 = *(v231 - 33);
          }

          else
          {
            v235 = *(v231 - 6);
          }

          if (v234 >= 0)
          {
            v236 = v228;
          }

          else
          {
            v236 = *(v231 - 7);
          }

          if (v233 >= 0)
          {
            v237 = *(v231 + 23);
          }

          else
          {
            v237 = v231[1];
          }

          if (v233 >= 0)
          {
            v238 = v231;
          }

          else
          {
            v238 = v230;
          }

          if (v237 >= v235)
          {
            v239 = v235;
          }

          else
          {
            v239 = v237;
          }

          v240 = memcmp(v236, v238, v239);
          v241 = v235 < v237;
          if (v240)
          {
            v241 = v240 < 0;
          }

          if (v241)
          {
            v228 = v231;
          }

          else
          {
            v224 = v229;
          }

          if (*(v225 + 23) < 0)
          {
LABEL_437:
            operator delete(*v225);
          }
        }

        v242 = *v228;
        v225[2] = v228[2];
        *v225 = v242;
        *(v228 + 23) = 0;
        *v228 = 0;
        if (*(v225 + 47) < 0)
        {
          operator delete(v225[3]);
        }

        v226 = *(v228 + 3);
        v225[5] = v228[5];
        *(v225 + 3) = v226;
        *(v228 + 47) = 0;
        *(v228 + 24) = 0;
        *(v225 + 48) = *(v228 + 48);
        v225 = v228;
        if (v224 > ((v221 - 2) >> 1))
        {
          v220 = v313 - 7;
          v243 = *(v228 + 23);
          if (v228 == v313 - 7)
          {
            if (v243 < 0)
            {
              operator delete(*v228);
            }

            *v228 = v309;
            v273 = *&v329[7];
            v228[1] = *v329;
            *(v228 + 15) = v273;
            *(v228 + 23) = v311;
            if (*(v228 + 47) < 0)
            {
              operator delete(v228[3]);
            }

            v222 = *v328;
            v228[3] = v317;
            v228[4] = v222;
            *(v228 + 39) = *&v328[7];
            *(v228 + 47) = v320;
            *(v228 + 48) = v315;
          }

          else
          {
            if (v243 < 0)
            {
              operator delete(*v228);
            }

            v244 = *v220;
            v228[2] = *(v313 - 5);
            *v228 = v244;
            *(v313 - 33) = 0;
            *(v313 - 56) = 0;
            if (*(v228 + 47) < 0)
            {
              operator delete(v228[3]);
            }

            v245 = *(v313 - 2);
            v228[5] = *(v313 - 2);
            *(v228 + 3) = v245;
            *(v313 - 9) = 0;
            *(v313 - 32) = 0;
            *(v228 + 48) = *(v313 - 8);
            if (*(v313 - 33) < 0)
            {
              operator delete(*v220);
            }

            *(v313 - 7) = v309;
            *(v313 - 6) = *v329;
            *(v313 - 41) = *&v329[7];
            *(v313 - 33) = v311;
            if (*(v313 - 9) < 0)
            {
              operator delete(*(v313 - 4));
            }

            *(v313 - 4) = v317;
            *(v313 - 3) = *v328;
            *(v313 - 17) = *&v328[7];
            *(v313 - 9) = v320;
            *(v313 - 8) = v315;
            v246 = (v228 + 7) - v6;
            if (v246 >= 57)
            {
              v247 = (0x6DB6DB6DB6DB6DB7 * (v246 >> 3) - 2) >> 1;
              v248 = &v6[7 * v247];
              v249 = *(v228 + 23);
              v250 = *(v248 + 23);
              if (v250 >= 0)
              {
                v251 = *(v248 + 23);
              }

              else
              {
                v251 = v248[1];
              }

              if (v250 >= 0)
              {
                v252 = &v6[7 * v247];
              }

              else
              {
                v252 = *v248;
              }

              if (v249 >= 0)
              {
                v253 = *(v228 + 23);
              }

              else
              {
                v253 = v228[1];
              }

              if (v249 >= 0)
              {
                v254 = v228;
              }

              else
              {
                v254 = *v228;
              }

              if (v253 >= v251)
              {
                v255 = v251;
              }

              else
              {
                v255 = v253;
              }

              v256 = memcmp(v252, v254, v255);
              v257 = v251 < v253;
              if (v256)
              {
                v257 = v256 < 0;
              }

              if (v257)
              {
                v258 = *v228;
                v324 = v228[2];
                v323 = v258;
                v228[1] = 0;
                v228[2] = 0;
                *v228 = 0;
                v259 = v228[5];
                v325 = *(v228 + 3);
                v326 = v259;
                v228[4] = 0;
                v228[5] = 0;
                v228[3] = 0;
                v327 = *(v228 + 48);
                if (v324 >= 0)
                {
                  v260 = HIBYTE(v324);
                }

                else
                {
                  v260 = *(&v323 + 1);
                }

                if (v324 >= 0)
                {
                  v261 = &v323;
                }

                else
                {
                  v261 = v323;
                }

                do
                {
                  v262 = v248;
                  if (*(v228 + 23) < 0)
                  {
                    operator delete(*v228);
                  }

                  v263 = *v248;
                  v228[2] = v248[2];
                  *v228 = v263;
                  *(v248 + 23) = 0;
                  *v248 = 0;
                  if (*(v228 + 47) < 0)
                  {
                    operator delete(v228[3]);
                  }

                  v264 = *(v248 + 3);
                  v228[5] = v248[5];
                  *(v228 + 3) = v264;
                  *(v248 + 47) = 0;
                  *(v248 + 24) = 0;
                  *(v228 + 48) = *(v248 + 48);
                  if (!v247)
                  {
                    break;
                  }

                  v247 = (v247 - 1) >> 1;
                  v248 = &v6[7 * v247];
                  v265 = *(v248 + 23);
                  if (v265 >= 0)
                  {
                    v266 = *(v248 + 23);
                  }

                  else
                  {
                    v266 = v248[1];
                  }

                  if (v265 >= 0)
                  {
                    v267 = &v6[7 * v247];
                  }

                  else
                  {
                    v267 = *v248;
                  }

                  if (v260 >= v266)
                  {
                    v268 = v266;
                  }

                  else
                  {
                    v268 = v260;
                  }

                  v269 = memcmp(v267, v261, v268);
                  v270 = v266 < v260;
                  if (v269)
                  {
                    v270 = v269 < 0;
                  }

                  v228 = v262;
                }

                while (v270);
                if (*(v262 + 23) < 0)
                {
                  operator delete(*v262);
                  v274 = v323;
                  v262[2] = v324;
                  *v262 = v274;
                  if (*(v262 + 47) < 0)
                  {
                    goto LABEL_499;
                  }
                }

                else
                {
                  v271 = v323;
                  v262[2] = v324;
                  *v262 = v271;
                  if ((*(v262 + 47) & 0x80000000) == 0)
                  {
                    goto LABEL_493;
                  }

LABEL_499:
                  operator delete(v262[3]);
                }

LABEL_493:
                v272 = v325;
                v262[5] = v326;
                *(v262 + 3) = v272;
                *(v262 + 48) = v327;
              }
            }
          }

          if (v221-- <= 2)
          {
            return;
          }

          continue;
        }

        goto LABEL_413;
      }
    }

    v9 = v8 >> 1;
    v10 = a2 - 7;
    if (v7 < 0x1C01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(&v6[7 * (v8 >> 1)], v6, v10);
      --a3;
      v12 = v322;
      if (a4)
      {
LABEL_35:
        v318 = a4;
        v22 = v321;
        goto LABEL_36;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(v6, &v6[7 * (v8 >> 1)], v10);
      v11 = 56 * v9 - 56;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>((v322 + 7), v322 + v11, (v321 - 14));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>((v322 + 14), &v322[7 * v9 + 7], (v321 - 21));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(v322 + v11, &v322[7 * v9], &v322[7 * v9 + 7]);
      *&v323 = &v322[7 * v9];
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v322, &v323);
      --a3;
      v12 = v322;
      if (a4)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v12 + 23);
    v14 = *(v12 - 33);
    if (v14 >= 0)
    {
      v15 = *(v12 - 33);
    }

    else
    {
      v15 = *(v12 - 6);
    }

    if (v14 >= 0)
    {
      v16 = v12 - 7;
    }

    else
    {
      v16 = *(v12 - 7);
    }

    if (v13 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = v12[1];
    }

    if (v13 >= 0)
    {
      v18 = v12;
    }

    else
    {
      v18 = *v12;
    }

    if (v17 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    v20 = memcmp(v16, v18, v19);
    v21 = v15 < v17;
    if (v20)
    {
      v21 = v20 < 0;
    }

    v22 = v321;
    if (!v21)
    {
      *v328 = v321;
      v324 = v12[2];
      v323 = *v12;
      *v12 = 0;
      v12[1] = 0;
      v72 = *(v12 + 3);
      v12[2] = 0;
      v12[3] = 0;
      v325 = v72;
      v326 = v12[5];
      v12[4] = 0;
      v12[5] = 0;
      v73 = *(v12 + 48);
      v327 = v73;
      v74 = *(v22 - 33);
      if (v324 >= 0)
      {
        v75 = HIBYTE(v324);
      }

      else
      {
        v75 = *(&v323 + 1);
      }

      if (v324 >= 0)
      {
        v76 = &v323;
      }

      else
      {
        v76 = v323;
      }

      if (v74 >= 0)
      {
        v77 = *(v22 - 33);
      }

      else
      {
        v77 = *(v22 - 6);
      }

      if (v74 >= 0)
      {
        v78 = v22 - 7;
      }

      else
      {
        v78 = *(v22 - 7);
      }

      if (v77 >= v75)
      {
        v79 = v75;
      }

      else
      {
        v79 = v77;
      }

      v80 = memcmp(v76, v78, v79);
      v81 = v75 < v77;
      if (v80)
      {
        v81 = v80 < 0;
      }

      if (v81)
      {
        v82 = (v12 + 7);
        do
        {
          *v329 = v82;
          v83 = *(v82 + 23);
          if (v83 >= 0)
          {
            v84 = *(v82 + 23);
          }

          else
          {
            v84 = v82[1];
          }

          if (v83 >= 0)
          {
            v85 = v82;
          }

          else
          {
            v85 = *v82;
          }

          if (v84 >= v75)
          {
            v86 = v75;
          }

          else
          {
            v86 = v84;
          }

          v87 = memcmp(v76, v85, v86);
          v88 = v75 < v84;
          if (v87)
          {
            v88 = v87 < 0;
          }

          v82 += 7;
        }

        while (!v88);
        v89 = (v82 - 7);
      }

      else
      {
        v90 = (v12 + 7);
        do
        {
          v89 = v90;
          *v329 = v90;
          if (v90 >= v22)
          {
            break;
          }

          v91 = *(v90 + 23);
          if (v91 >= 0)
          {
            v92 = *(v90 + 23);
          }

          else
          {
            v92 = v90[1];
          }

          if (v91 >= 0)
          {
            v93 = v90;
          }

          else
          {
            v93 = *v90;
          }

          if (v92 >= v75)
          {
            v94 = v75;
          }

          else
          {
            v94 = v92;
          }

          v95 = memcmp(v76, v93, v94);
          v96 = v95 < 0;
          if (!v95)
          {
            v96 = v75 < v92;
          }

          v90 = (v89 + 56);
        }

        while (!v96);
      }

      if (v89 < v22)
      {
        v97 = (v22 - 7);
        do
        {
          *v328 = v97;
          v98 = *(v97 + 23);
          if (v98 >= 0)
          {
            v99 = *(v97 + 23);
          }

          else
          {
            v99 = v97[1];
          }

          if (v98 >= 0)
          {
            v100 = v97;
          }

          else
          {
            v100 = *v97;
          }

          if (v99 >= v75)
          {
            v101 = v75;
          }

          else
          {
            v101 = v99;
          }

          v102 = memcmp(v76, v100, v101);
          v103 = v75 < v99;
          if (v102)
          {
            v103 = v102 < 0;
          }

          v97 -= 7;
        }

        while (v103);
        v22 = (v97 + 7);
      }

      if (v89 < v22)
      {
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(v329, v328);
          v104 = *v329 + 56;
          do
          {
            *v329 = v104;
            v105 = *(v104 + 23);
            if (v105 >= 0)
            {
              v106 = *(v104 + 23);
            }

            else
            {
              v106 = *(v104 + 8);
            }

            if (v105 >= 0)
            {
              v107 = v104;
            }

            else
            {
              v107 = *v104;
            }

            if (v106 >= v75)
            {
              v108 = v75;
            }

            else
            {
              v108 = v106;
            }

            v109 = memcmp(v76, v107, v108);
            v110 = v75 < v106;
            if (v109)
            {
              v110 = v109 < 0;
            }

            v104 += 56;
          }

          while (!v110);
          v89 = v104 - 56;
          v111 = *v328 - 56;
          do
          {
            *v328 = v111;
            v112 = *(v111 + 23);
            if (v112 >= 0)
            {
              v113 = *(v111 + 23);
            }

            else
            {
              v113 = *(v111 + 8);
            }

            if (v112 >= 0)
            {
              v114 = v111;
            }

            else
            {
              v114 = *v111;
            }

            if (v113 >= v75)
            {
              v115 = v75;
            }

            else
            {
              v115 = v113;
            }

            v116 = memcmp(v76, v114, v115);
            v117 = v75 < v113;
            if (v116)
            {
              v117 = v116 < 0;
            }

            v111 -= 56;
          }

          while (v117);
        }

        while (v89 < v111 + 56);
      }

      v118 = (v89 - 56);
      if ((v89 - 56) != v12)
      {
        if (*(v12 + 23) < 0)
        {
          operator delete(*v12);
        }

        v119 = *v118;
        v12[2] = *(v89 - 40);
        *v12 = v119;
        *(v89 - 33) = 0;
        *(v89 - 56) = 0;
        if (*(v12 + 47) < 0)
        {
          operator delete(v12[3]);
        }

        v120 = *(v89 - 32);
        v12[5] = *(v89 - 16);
        *(v12 + 3) = v120;
        *(v89 - 9) = 0;
        *(v89 - 32) = 0;
        *(v12 + 48) = *(v89 - 8);
      }

      if (*(v89 - 33) < 0)
      {
        operator delete(*v118);
      }

      v121 = v323;
      *(v89 - 40) = v324;
      *v118 = v121;
      HIBYTE(v324) = 0;
      LOBYTE(v323) = 0;
      v122 = (v89 - 32);
      if (*(v89 - 9) < 0)
      {
        operator delete(*v122);
      }

      a4 = 0;
      v123 = v325;
      *(v89 - 16) = v326;
      *v122 = v123;
      *(v89 - 8) = v73;
      v6 = *v329;
      goto LABEL_3;
    }

    v318 = a4;
LABEL_36:
    v23 = 0;
    *v328 = v22;
    v324 = v12[2];
    v323 = *v12;
    *v12 = 0;
    v12[1] = 0;
    v24 = *(v12 + 3);
    v12[2] = 0;
    v12[3] = 0;
    v325 = v24;
    v326 = v12[5];
    v12[4] = 0;
    v12[5] = 0;
    v25 = *(v12 + 48);
    v327 = v25;
    if (v324 >= 0)
    {
      v26 = HIBYTE(v324);
    }

    else
    {
      v26 = *(&v323 + 1);
    }

    if (v324 >= 0)
    {
      v27 = &v323;
    }

    else
    {
      v27 = v323;
    }

    do
    {
      *v329 = &v12[v23 + 7];
      v28 = SHIBYTE(v12[v23 + 9]);
      if (v28 >= 0)
      {
        v29 = HIBYTE(v12[v23 + 9]);
      }

      else
      {
        v29 = v12[v23 + 8];
      }

      if (v28 >= 0)
      {
        v30 = &v12[v23 + 7];
      }

      else
      {
        v30 = v12[v23 + 7];
      }

      if (v26 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v26;
      }

      v32 = memcmp(v30, v27, v31);
      v33 = v29 < v26;
      if (v32)
      {
        v33 = v32 < 0;
      }

      v23 += 7;
    }

    while (v33);
    v34 = &v12[v23];
    if (v23 == 7)
    {
      v35 = (v22 - 7);
      while (1)
      {
        v42 = (v35 + 7);
        if (v34 >= (v35 + 7))
        {
          break;
        }

        *v328 = v35;
        v43 = *(v35 + 23);
        if (v43 >= 0)
        {
          v44 = *(v35 + 23);
        }

        else
        {
          v44 = v35[1];
        }

        if (v43 >= 0)
        {
          v45 = v35;
        }

        else
        {
          v45 = *v35;
        }

        if (v26 >= v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = v26;
        }

        v47 = memcmp(v45, v27, v46);
        v48 = v44 < v26;
        if (v47)
        {
          v48 = v47 < 0;
        }

        v35 -= 7;
        if (v48)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v35 = (v22 - 7);
      do
      {
        *v328 = v35;
        v36 = *(v35 + 23);
        if (v36 >= 0)
        {
          v37 = *(v35 + 23);
        }

        else
        {
          v37 = v35[1];
        }

        if (v36 >= 0)
        {
          v38 = v35;
        }

        else
        {
          v38 = *v35;
        }

        if (v26 >= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v26;
        }

        v40 = memcmp(v38, v27, v39);
        v41 = v37 < v26;
        if (v40)
        {
          v41 = v40 < 0;
        }

        v35 -= 7;
      }

      while (!v41);
LABEL_83:
      v42 = (v35 + 7);
    }

    v6 = v34;
    if (v34 < v42)
    {
      v49 = a3;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(v329, v328);
        v50 = *v329 + 56;
        do
        {
          *v329 = v50;
          v51 = *(v50 + 23);
          if (v51 >= 0)
          {
            v52 = *(v50 + 23);
          }

          else
          {
            v52 = *(v50 + 8);
          }

          if (v51 >= 0)
          {
            v53 = v50;
          }

          else
          {
            v53 = *v50;
          }

          if (v26 >= v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v26;
          }

          v55 = memcmp(v53, v27, v54);
          v56 = v52 < v26;
          if (v55)
          {
            v56 = v55 < 0;
          }

          v50 += 56;
        }

        while (v56);
        v6 = (v50 - 56);
        v57 = *v328 - 56;
        do
        {
          *v328 = v57;
          v58 = *(v57 + 23);
          if (v58 >= 0)
          {
            v59 = *(v57 + 23);
          }

          else
          {
            v59 = *(v57 + 8);
          }

          if (v58 >= 0)
          {
            v60 = v57;
          }

          else
          {
            v60 = *v57;
          }

          if (v26 >= v59)
          {
            v61 = v59;
          }

          else
          {
            v61 = v26;
          }

          v62 = memcmp(v60, v27, v61);
          v63 = v59 < v26;
          if (v62)
          {
            v63 = v62 < 0;
          }

          v57 -= 56;
        }

        while (!v63);
      }

      while (v6 < v57 + 56);
      a3 = v49;
    }

    v64 = (v6 - 7);
    a4 = v318;
    if (v6 - 7 != v12)
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v65 = *v64;
      v12[2] = *(v6 - 5);
      *v12 = v65;
      *(v6 - 33) = 0;
      *(v6 - 56) = 0;
      if (*(v12 + 47) < 0)
      {
        operator delete(v12[3]);
      }

      v66 = *(v6 - 2);
      v12[5] = *(v6 - 2);
      *(v12 + 3) = v66;
      *(v6 - 9) = 0;
      *(v6 - 32) = 0;
      *(v12 + 48) = *(v6 - 8);
    }

    if (*(v6 - 33) < 0)
    {
      operator delete(*v64);
    }

    v67 = v323;
    *(v6 - 5) = v324;
    *v64 = v67;
    HIBYTE(v324) = 0;
    LOBYTE(v323) = 0;
    v68 = (v6 - 4);
    if (*(v6 - 9) < 0)
    {
      operator delete(*v68);
    }

    v69 = v325;
    *(v6 - 2) = v326;
    *v68 = v69;
    *(v6 - 8) = v25;
    v70 = v322;
    if (v34 < v42)
    {
      goto LABEL_2;
    }

    v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *>(v322, (v6 - 7));
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *>(v6, v321))
    {
      if (v71)
      {
        return;
      }

      v321 = (v6 - 7);
      v6 = v322;
      a2 = v64;
    }

    else
    {
      if (!v71)
      {
        v70 = v322;
LABEL_2:
        std::__introsort<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,false>(v70, v6 - 7, a3, v318 & 1);
        a4 = 0;
      }

LABEL_3:
      v322 = v6;
      a2 = v321;
    }
  }

  if (a4)
  {
    if (v6 != a2)
    {
      v133 = v6 + 7;
      if (v6 + 7 != a2)
      {
        v134 = 0;
        v135 = v6;
        do
        {
          v137 = a2;
          v138 = v133;
          v139 = *(v135 + 23);
          v140 = *(v135 + 79);
          if (v140 >= 0)
          {
            v141 = *(v135 + 79);
          }

          else
          {
            v141 = v135[8];
          }

          if (v140 >= 0)
          {
            v142 = v133;
          }

          else
          {
            v142 = v135[7];
          }

          if (v139 >= 0)
          {
            v143 = *(v135 + 23);
          }

          else
          {
            v143 = v135[1];
          }

          if (v139 >= 0)
          {
            v144 = v135;
          }

          else
          {
            v144 = *v135;
          }

          if (v143 >= v141)
          {
            v145 = v141;
          }

          else
          {
            v145 = v143;
          }

          v146 = memcmp(v142, v144, v145);
          v147 = v141 < v143;
          if (v146)
          {
            v147 = v146 < 0;
          }

          if (v147)
          {
            v148 = *v138;
            v324 = v138[2];
            v323 = v148;
            v138[1] = 0;
            v138[2] = 0;
            *v138 = 0;
            v325 = *(v135 + 5);
            v326 = v135[12];
            v135[11] = 0;
            v135[12] = 0;
            v135[10] = 0;
            v327 = *(v135 + 104);
            if (v324 >= 0)
            {
              v149 = HIBYTE(v324);
            }

            else
            {
              v149 = *(&v323 + 1);
            }

            if (v324 >= 0)
            {
              v150 = &v323;
            }

            else
            {
              v150 = v323;
            }

            v151 = v134;
            while (1)
            {
              v152 = (v6 + v151);
              if (*(v6 + v151 + 79) < 0)
              {
                operator delete(v152[7]);
              }

              *(v152 + 7) = *v152;
              v152[9] = v152[2];
              *(v152 + 23) = 0;
              *v152 = 0;
              if (*(v152 + 103) < 0)
              {
                operator delete(v152[10]);
              }

              v153 = v6 + v151;
              *(v152 + 5) = *(v6 + v151 + 24);
              v152[12] = *(v6 + v151 + 40);
              v153[47] = 0;
              v153[24] = 0;
              v153[104] = *(v6 + v151 + 48);
              if (!v151)
              {
                break;
              }

              v154 = *(v153 - 33);
              if (v154 >= 0)
              {
                v155 = *(v153 - 33);
              }

              else
              {
                v155 = *(v153 - 6);
              }

              if (v154 >= 0)
              {
                v156 = v153 - 56;
              }

              else
              {
                v156 = *(v153 - 7);
              }

              if (v155 >= v149)
              {
                v157 = v149;
              }

              else
              {
                v157 = v155;
              }

              v158 = memcmp(v150, v156, v157);
              v159 = v149 < v155;
              if (v158)
              {
                v159 = v158 < 0;
              }

              v151 -= 56;
              if (!v159)
              {
                v160 = v6 + v151 + 56;
                if ((*(v6 + v151 + 79) & 0x80000000) == 0)
                {
                  goto LABEL_304;
                }

                goto LABEL_303;
              }
            }

            v160 = v6;
            if ((*(v6 + 23) & 0x80000000) == 0)
            {
              goto LABEL_304;
            }

LABEL_303:
            operator delete(*v160);
LABEL_304:
            v161 = v323;
            *(v160 + 16) = v324;
            *v160 = v161;
            HIBYTE(v324) = 0;
            LOBYTE(v323) = 0;
            if (*(v160 + 47) < 0)
            {
              operator delete(*(v153 + 3));
            }

            v136 = v325;
            *(v153 + 5) = v326;
            *(v153 + 24) = v136;
            *(v160 + 48) = v327;
          }

          v133 = v138 + 7;
          v134 += 56;
          v135 = v138;
          a2 = v137;
        }

        while (v138 + 7 != v137);
      }
    }
  }

  else if (v6 != a2)
  {
    v275 = v6 + 7;
    if (v6 + 7 != a2)
    {
      v276 = v6 + 13;
      do
      {
        v278 = a2;
        v279 = v275;
        v280 = *(v6 + 23);
        v281 = *(v6 + 79);
        if (v281 >= 0)
        {
          v282 = *(v6 + 79);
        }

        else
        {
          v282 = v6[8];
        }

        if (v281 >= 0)
        {
          v283 = v275;
        }

        else
        {
          v283 = v6[7];
        }

        if (v280 >= 0)
        {
          v284 = *(v6 + 23);
        }

        else
        {
          v284 = v6[1];
        }

        if (v280 >= 0)
        {
          v285 = v6;
        }

        else
        {
          v285 = *v6;
        }

        if (v284 >= v282)
        {
          v286 = v282;
        }

        else
        {
          v286 = v284;
        }

        v287 = memcmp(v283, v285, v286);
        v288 = v282 < v284;
        if (v287)
        {
          v288 = v287 < 0;
        }

        if (v288)
        {
          v289 = *v279;
          v324 = v279[2];
          v323 = v289;
          v279[1] = 0;
          v279[2] = 0;
          *v279 = 0;
          v325 = *(v6 + 5);
          v326 = v6[12];
          v6[11] = 0;
          v6[12] = 0;
          v6[10] = 0;
          v327 = *(v6 + 104);
          if (v324 >= 0)
          {
            v290 = HIBYTE(v324);
          }

          else
          {
            v290 = *(&v323 + 1);
          }

          if (v324 >= 0)
          {
            v291 = &v323;
          }

          else
          {
            v291 = v323;
          }

          v292 = v276;
          do
          {
            v302 = (v292 - 6);
            if (*(v292 - 25) < 0)
            {
              operator delete(*v302);
            }

            *v302 = *(v292 - 13);
            *(v292 - 4) = *(v292 - 11);
            *(v292 - 81) = 0;
            *(v292 - 104) = 0;
            v303 = (v292 - 3);
            if (*(v292 - 1) < 0)
            {
              operator delete(*v303);
            }

            *v303 = *(v292 - 5);
            *(v292 - 1) = *(v292 - 8);
            *(v292 - 57) = 0;
            *(v292 - 80) = 0;
            v293 = v292 - 7;
            *v292 = *(v292 - 56);
            v294 = *(v292 - 137);
            v295 = v292 - 20;
            v296 = *(v292 - 20);
            if (v294 >= 0)
            {
              v297 = *(v292 - 137);
            }

            else
            {
              v297 = *(v292 - 19);
            }

            if (v294 >= 0)
            {
              v298 = v295;
            }

            else
            {
              v298 = v296;
            }

            if (v297 >= v290)
            {
              v299 = v290;
            }

            else
            {
              v299 = v297;
            }

            v300 = memcmp(v291, v298, v299);
            v301 = v290 < v297;
            if (v300)
            {
              v301 = v300 < 0;
            }

            v292 = v293;
          }

          while (v301);
          v304 = (v293 - 6);
          if (*(v293 - 25) < 0)
          {
            operator delete(*v304);
          }

          v305 = (v293 - 3);
          v306 = v323;
          *(v293 - 4) = v324;
          *v304 = v306;
          HIBYTE(v324) = 0;
          LOBYTE(v323) = 0;
          if (*(v293 - 1) < 0)
          {
            operator delete(*v305);
          }

          v277 = v325;
          *(v293 - 1) = v326;
          *v305 = v277;
          HIBYTE(v326) = 0;
          LOBYTE(v325) = 0;
          *v293 = v327;
        }

        v275 = v279 + 7;
        v276 += 7;
        v6 = v279;
        a2 = v278;
      }

      while (v279 + 7 != v278);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(uint64_t **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v13 = (*a1)[1];
  *&v13[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = (v2 + 3);
  v6 = v2[3];
  *v12 = v2[4];
  *&v12[7] = *(v2 + 39);
  v8 = *(v2 + 47);
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = 0;
  v9 = *(v2 + 48);
  v10 = *v3;
  v2[2] = *(v3 + 2);
  *v2 = v10;
  *(v3 + 23) = 0;
  *v3 = 0;
  if (*(v2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v11 = *(v3 + 24);
  v2[5] = *(v3 + 5);
  *v7 = v11;
  *(v3 + 47) = 0;
  *(v3 + 24) = 0;
  *(v2 + 48) = *(v3 + 48);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v4;
  *(v3 + 1) = *v13;
  *(v3 + 15) = *&v13[7];
  *(v3 + 23) = v5;
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 3));
  }

  *(v3 + 3) = v6;
  *(v3 + 4) = *v12;
  *(v3 + 39) = *&v12[7];
  *(v3 + 47) = v8;
  *(v3 + 48) = v9;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a1;
  v39 = a3;
  v4 = *(a1 + 23);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v4 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  if (v11)
  {
    v12 = v11 < 0;
  }

  else
  {
    v12 = v6 < v8;
  }

  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  if (v13 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v6 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6;
  }

  v17 = memcmp(v15, v7, v16);
  v18 = v14 < v6;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v12)
  {
    v19 = &v41;
    if (v18)
    {
LABEL_51:
      v29 = &v39;
LABEL_72:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(v19, v29);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v41, &v40);
    v20 = *(v40 + 23);
    v21 = *(v39 + 23);
    if (v21 >= 0)
    {
      v22 = *(v39 + 23);
    }

    else
    {
      v22 = *(v39 + 1);
    }

    if (v21 >= 0)
    {
      v23 = v39;
    }

    else
    {
      v23 = *v39;
    }

    if (v20 >= 0)
    {
      v24 = *(v40 + 23);
    }

    else
    {
      v24 = v40[1];
    }

    if (v20 >= 0)
    {
      v25 = v40;
    }

    else
    {
      v25 = *v40;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      v19 = &v40;
      goto LABEL_51;
    }
  }

  else if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v40, &v39);
    v30 = *(v41 + 23);
    v31 = *(v40 + 23);
    if (v31 >= 0)
    {
      v32 = *(v40 + 23);
    }

    else
    {
      v32 = v40[1];
    }

    if (v31 >= 0)
    {
      v33 = v40;
    }

    else
    {
      v33 = *v40;
    }

    if (v30 >= 0)
    {
      v34 = *(v41 + 23);
    }

    else
    {
      v34 = v41[1];
    }

    if (v30 >= 0)
    {
      v35 = v41;
    }

    else
    {
      v35 = *v41;
    }

    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    v37 = memcmp(v33, v35, v36);
    v38 = v32 < v34;
    if (v37)
    {
      v38 = v37 < 0;
    }

    if (v38)
    {
      v19 = &v41;
      v29 = &v40;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  v35 = a4;
  v36 = a3;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
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
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v36, &v35);
    v17 = *(a2 + 23);
    v18 = *(v36 + 23);
    if (v18 >= 0)
    {
      v19 = *(v36 + 23);
    }

    else
    {
      v19 = v36[1];
    }

    if (v18 >= 0)
    {
      v20 = v36;
    }

    else
    {
      v20 = *v36;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v37, &v36);
      v26 = *(a1 + 23);
      v27 = *(v37 + 23);
      if (v27 >= 0)
      {
        v28 = *(v37 + 23);
      }

      else
      {
        v28 = v37[1];
      }

      if (v27 >= 0)
      {
        v29 = v37;
      }

      else
      {
        v29 = *v37;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v38, &v37);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v50 = a1;
  v47 = a4;
  v48 = a3;
  v46 = a5;
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 8);
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v47, &v46);
    v19 = *(a3 + 23);
    v20 = *(v47 + 23);
    if (v20 >= 0)
    {
      v21 = *(v47 + 23);
    }

    else
    {
      v21 = v47[1];
    }

    if (v20 >= 0)
    {
      v22 = v47;
    }

    else
    {
      v22 = *v47;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v48, &v47);
      v28 = *(a2 + 23);
      v29 = *(v48 + 23);
      if (v29 >= 0)
      {
        v30 = *(v48 + 23);
      }

      else
      {
        v30 = v48[1];
      }

      if (v29 >= 0)
      {
        v31 = v48;
      }

      else
      {
        v31 = *v48;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 8);
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v49, &v48);
        v37 = *(a1 + 23);
        v38 = *(v49 + 23);
        if (v38 >= 0)
        {
          v39 = *(v49 + 23);
        }

        else
        {
          v39 = v49[1];
        }

        if (v38 >= 0)
        {
          v40 = v49;
        }

        else
        {
          v40 = *v49;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v50, &v49);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *>(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  v44 = a2;
  v45 = a1;
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = *(a2 - 7);
        v44 = (a2 - 56);
        v5 = *(a1 + 23);
        v6 = *(a2 - 33);
        if (v6 >= 0)
        {
          v7 = *(a2 - 33);
        }

        else
        {
          v7 = *(a2 - 6);
        }

        if (v6 >= 0)
        {
          v4 = a2 - 56;
        }

        if (v5 >= 0)
        {
          v8 = *(a1 + 23);
        }

        else
        {
          v8 = *(a1 + 8);
        }

        if (v5 >= 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = *a1;
        }

        if (v8 >= v7)
        {
          v10 = v7;
        }

        else
        {
          v10 = v8;
        }

        v11 = memcmp(v4, v9, v10);
        v12 = v7 < v8;
        if (v11)
        {
          v12 = v11 < 0;
        }

        if (v12)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::vfs::YAMLVFSEntry *&,llvm::vfs::YAMLVFSEntry *&>(&v45, &v44);
        }

        return 1;
      }

      goto LABEL_27;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a1 + 56, a2 - 56);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a1 + 56, a1 + 112, a2 - 56);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
      return 1;
  }

LABEL_27:
  v13 = (a1 + 112);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,0>(a1, a1 + 56, a1 + 112);
  v15 = a1 + 168;
  if (v15 == v2)
  {
    return 1;
  }

  v16 = 0;
  while (1)
  {
    v17 = *(v13 + 23);
    v18 = *(v15 + 23);
    if (v18 >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = *(v15 + 8);
    }

    if (v18 >= 0)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v15;
    }

    if (v17 >= 0)
    {
      v21 = *(v13 + 23);
    }

    else
    {
      v21 = v13[1];
    }

    if (v17 >= 0)
    {
      v22 = v13;
    }

    else
    {
      v22 = *v13;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (!v25)
    {
      goto LABEL_29;
    }

    v39 = *v15;
    v40 = *(v15 + 16);
    *v15 = 0;
    *(v15 + 8) = 0;
    v26 = *(v15 + 24);
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v41 = v26;
    v42 = *(v15 + 40);
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    v43 = *(v15 + 48);
    do
    {
      v27 = v13;
      if (*(v13 + 79) < 0)
      {
        operator delete(v13[7]);
      }

      *(v13 + 7) = *v13;
      v13[9] = v13[2];
      *(v13 + 23) = 0;
      *v13 = 0;
      if (*(v13 + 103) < 0)
      {
        operator delete(v13[10]);
      }

      *(v13 + 5) = *(v13 + 3);
      v13[12] = v13[5];
      *(v13 + 47) = 0;
      *(v13 + 24) = 0;
      *(v13 + 104) = *(v13 + 48);
      if (v13 == v45)
      {
        break;
      }

      v13 -= 7;
      v28 = *(v27 - 33);
      if (SHIBYTE(v40) >= 0)
      {
        v29 = HIBYTE(v40);
      }

      else
      {
        v29 = *(&v39 + 1);
      }

      if (SHIBYTE(v40) >= 0)
      {
        v30 = &v39;
      }

      else
      {
        v30 = v39;
      }

      if (v28 >= 0)
      {
        v31 = *(v27 - 33);
      }

      else
      {
        v31 = *(v27 - 6);
      }

      if (v28 >= 0)
      {
        v32 = v27 - 7;
      }

      else
      {
        v32 = *(v27 - 7);
      }

      if (v31 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v31;
      }

      v34 = memcmp(v30, v32, v33);
      v35 = v29 < v31;
      if (v34)
      {
        v35 = v34 < 0;
      }
    }

    while (v35);
    if (*(v27 + 23) < 0)
    {
      operator delete(*v27);
    }

    v36 = v39;
    v27[2] = v40;
    *v27 = v36;
    HIBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    if (*(v27 + 47) < 0)
    {
      operator delete(v27[3]);
    }

    v37 = v41;
    v27[5] = v42;
    *(v27 + 3) = v37;
    HIBYTE(v42) = 0;
    LOBYTE(v41) = 0;
    *(v27 + 48) = v43;
    if (++v16 == 8)
    {
      return v15 + 56 == v44;
    }

    v2 = v44;
LABEL_29:
    v13 = v15;
    v15 += 56;
    if (v15 == v2)
    {
      return 1;
    }
  }
}

void std::__shared_ptr_emplace<llvm::vfs::detail::RecDirIterState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A2B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<llvm::vfs::detail::RecDirIterState>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

_OWORD *std::vector<llvm::vfs::directory_iterator>::__emplace_back_slow_path<llvm::vfs::directory_iterator const&>(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v15 = 16 * v2;
  v16 = *a2;
  *(16 * v2) = *a2;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v15 + 16;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v15 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12++ = *v11;
      *v11 = 0;
      v11[1] = 0;
      v11 += 2;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 2;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void llvm::vfs::OutputBackend::createFile(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_257371870;
  llvm::Twine::toVector(a2, &v20);
  if ((a3 & 0x100) != 0 && (a3 & 2) != 0 && (a3 & 1) == 0)
  {
    operator new();
  }

  (*(*a1 + 16))(__p, a1, v20, v21, a3);
  v7 = __p[0];
  if ((__p[1] & 1) != 0 && __p[0])
  {
    *(a4 + 72) |= 1u;
    *a4 = v7;
    v8 = v20;
    if (v20 == v22)
    {
      return;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v12[0] = v20;
  v12[1] = v21;
  llvm::Twine::str(v12, __p);
  v18 = 0;
  v19 = 0;
  v16 = v7;
  *(a4 + 72) &= ~1u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  llvm::vfs::OutputFile::moveFrom(a4, __p);
  llvm::vfs::OutputFile::destroy(__p);
  v9 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v10 = v17;
      }

      else
      {
        v10 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v10);
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v20;
  if (v20 != v22)
  {
LABEL_19:
    free(v8);
  }
}

uint64_t llvm::vfs::OutputFile::moveFrom(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (a1 != a2)
  {
    v7 = (a1 + 32);
    v8 = *(a1 + 56);
    if (v8 >= 8)
    {
      if ((v8 & 4) != 0)
      {
        v9 = a1 + 32;
        if ((v8 & 2) == 0)
        {
          v9 = *v7;
        }

        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
      }

      if ((v8 & 2) == 0)
      {
        llvm::deallocate_buffer(*(a1 + 32), *(a1 + 40));
      }
    }

    *(a1 + 56) = 0;
    v10 = *(a2 + 7);
    *(a1 + 56) = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 32, a2 + 2);
        (*((*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) + 16))(a2 + 2);
      }

      else
      {
        v11 = a2[2];
        *(a1 + 48) = *(a2 + 6);
        *v7 = v11;
      }

      *(a2 + 7) = 0;
    }
  }

  *(a1 + 64) = *(a2 + 8);
  *(a2 + 8) = 0;
  return a1;
}

void llvm::vfs::OnDiskOutputBackend::makeAbsolute(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v7 = 261;
  v5 = v3;
  v6 = v4;
  if (llvm::sys::fs::make_absolute(a1))
  {
    operator new();
  }

  *a2 = 0;
}

void llvm::vfs::convertToOutputError(const llvm::Twine *a2@<X1>, std::error_code a3@<0:X2, 8:X3>, void *a4@<X8>)
{
  if (a2)
  {
    operator new();
  }

  *a4 = 0;
}

void llvm::vfs::OnDiskOutputBackend::createFileImpl(_BYTE *a1, _BYTE *a2, size_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_25736B790;
  if (a3 != 1 || *a2 != 45)
  {
    if (a3 >= 0x101)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v6 = 0;
    v7 = v10;
    if (a3)
    {
      memcpy(v10, a2, a3);
      v7 = v8;
      v6 = v9;
    }

    *&v9 = v6 + a3;
    v11 = 261;
    v10[32] = v7;
    v10[33] = v6 + a3;
    if (llvm::sys::fs::make_absolute(&v8))
    {
      operator new();
    }
  }

  operator new();
}

void llvm::vfs::ProxyOutputBackend::createFileImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v19 = 0;
  v20 = 0;
  v6 = *(a1 + 16);
  v13 = 261;
  v12[0] = a2;
  v12[1] = a3;
  llvm::vfs::OutputBackend::createFile(v6, v12, a4, v14);
  if (v15 & 1) != 0 || (llvm::vfs::OutputFile::destroy(&v16), llvm::vfs::OutputFile::moveFrom(&v16, v14), (v15))
  {
    v7 = *&v14[0];
    *&v14[0] = 0;
    llvm::Expected<llvm::vfs::OutputFile>::~Expected(v14);
    if (v7)
    {
      v8 = *(a5 + 8) | 1;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::Expected<llvm::vfs::OutputFile>::~Expected(v14);
  }

  v7 = *(&v17 + 1);
  *(&v17 + 1) = 0;
  v8 = *(a5 + 8) & 0xFE;
LABEL_7:
  *(a5 + 8) = v8;
  *a5 = v7;
  llvm::vfs::OutputFile::destroy(&v16);
  v9 = v19;
  if (v19 >= 8)
  {
    if ((v19 & 4) != 0)
    {
      if ((v19 & 2) != 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = v18[0];
      }

      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v10);
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(v18[0], v18[1]);
    }
  }

  v11 = *(&v17 + 1);
  *(&v17 + 1) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (SBYTE7(v17) < 0)
  {
    operator delete(v16);
  }
}

uint64_t std::optional<llvm::buffer_ostream>::emplace[abi:nn200100]<llvm::raw_fd_ostream &,void>(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 88);
  if (*(a1 + 88) == 1)
  {
    *a1 = &unk_2868A4020;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v6 + 32);
    if (v8 <= *(v6 + 24) - v9)
    {
      if (v8)
      {
        v10 = *(v5 + 8);
        memcpy(v9, v7, v8);
        *(v6 + 32) += v10;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(a1 + 56), v7, v8);
    }

    v11 = *(a1 + 64);
    if (v11 != v4)
    {
      free(v11);
    }

    llvm::raw_ostream::~raw_ostream(a1);
    *(a1 + 88) = 0;
  }

  *(a1 + 8) = 2;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2868A3F88;
  *(a1 + 48) = a1 + 64;
  llvm::raw_ostream::SetBufferAndMode(a1, 0, 0, 0);
  *a1 = &unk_2868A4020;
  *(a1 + 56) = a2;
  *(a1 + 64) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  return a1;
}

void *createDirectoriesOnDemand(void *a1, uint64_t a2, uint64_t a3, char a4, void *(*a5)(void **__return_ptr, uint64_t), uint64_t a6)
{
  v18[0] = a2;
  v18[1] = a3;
  v17 = a4;
  v16[0] = a5;
  v16[1] = a6;
  result = a5(&v15, a6);
  v14[0] = &v17;
  v14[1] = v18;
  v14[2] = v16;
  v8 = v15;
  if (!v15)
  {
    *a1 = 0;
    return result;
  }

  v15 = 0;
  if ((*(*v8 + 48))(v8, &llvm::ErrorList::ID))
  {
    *a1 = 0;
    v9 = v8[1];
    v10 = v8[2];
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        v22 = v11;
        v12 = *v9;
        *v9 = 0;
        v20 = v12;
        llvm::handleErrorImpl<createDirectoriesOnDemand(llvm::StringRef,llvm::vfs::OutputConfig,llvm::function_ref<llvm::Error ()(void)>)::$_0>(&v21, &v20, v14);
        llvm::ErrorList::join(&v22, &v21, &v23);
        v11 = v23;
        *a1 = v23;
        v23 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        v13 = v20;
        v20 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        ++v9;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v19 = v8;
    llvm::handleErrorImpl<createDirectoriesOnDemand(llvm::StringRef,llvm::vfs::OutputConfig,llvm::function_ref<llvm::Error ()(void)>)::$_0>(a1, &v19, v14);
    v8 = v19;
    if (!v19)
    {
      goto LABEL_16;
    }
  }

  (*(*v8 + 8))(v8);
LABEL_16:
  result = v15;
  if (v15)
  {
    return (*(*v15 + 8))(v15);
  }

  return result;
}

void llvm::function_ref<llvm::Error ()(void)>::callback_fn<anonymous namespace::OnDiskOutputFile::tryToCreateTemporary(std::optional<int> &)::$_0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v10 = 0;
  __src = v16;
  *__len = xmmword_257371870;
  v5 = *a1;
  v13 = 261;
  v7 = *v5;
  v6 = v5[1];
  *&__dst = v7;
  *(&__dst + 1) = v6;
  if (llvm::sys::fs::createUniqueFile(&__dst, &v10, &__src, 0, 438))
  {
    operator new();
  }

  if ((*(v4 + 8) & 8) != 0)
  {
    llvm::sys::RemoveFileOnSignal(__src, __len[0]);
  }

  if (__src)
  {
    v8 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len[0] >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = __len[0];
    if (__len[0])
    {
      memmove(&__dst, __src, __len[0]);
    }

    *(&__dst + v8) = 0;
    if (*(v4 + 64) == 1)
    {
      goto LABEL_16;
    }

LABEL_12:
    *(v4 + 40) = __dst;
    *(v4 + 56) = v12;
    *(v4 + 64) = 1;
    goto LABEL_19;
  }

  __dst = 0uLL;
  v12 = 0;
  if (*(v4 + 64) != 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (*(v4 + 63) < 0)
  {
    operator delete(*(v4 + 40));
  }

  *(v4 + 40) = __dst;
  *(v4 + 56) = v12;
LABEL_19:
  v9 = *(a1 + 16);
  *v9 = v10;
  *(v9 + 4) = 1;
  *a2 = 0;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t llvm::handleErrorImpl<createDirectoriesOnDemand(llvm::StringRef,llvm::vfs::OutputConfig,llvm::function_ref<llvm::Error ()(void)>)::$_0>(void *a1, void *a2, uint64_t a3)
{
  result = (*(**a2 + 48))(*a2, &llvm::ECError::ID);
  v7 = *a2;
  *a2 = 0;
  if (result && ((v8 = (*(*v7 + 32))(v7), v10 = v9, v15 = v8, v16 = v9, v13 = 2, v14 = std::generic_category(), result = (*(*v10 + 32))(v10, v8, &v13), (result & 1) != 0) || (result = (v14->equivalent_0)(v14, &v15, v13), result)) && (**a3 & 0x20) != 0)
  {
    v11 = llvm::sys::path::parent_path(**(a3 + 8), *(*(a3 + 8) + 8), 0);
    v17 = 261;
    v15 = v11;
    v16 = v12;
    if (llvm::sys::fs::create_directories(&v15, 1, 504))
    {
      operator new();
    }

    (**(a3 + 16))(*(*(a3 + 16) + 8));
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void llvm::function_ref<llvm::Error ()(void)>::callback_fn<anonymous namespace::OnDiskOutputFile::initializeFD(std::optional<int> &)::$_0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v13 = 0;
  v5 = *(v4 + 8);
  if ((v5 & 1 & ((v5 & 2) >> 1)) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5 & 1;
  }

  v12 = 260;
  v11 = (v4 + 16);
  if (llvm::sys::fs::openFile(&v11, &v13, 0, 2, v6 | v5 & 4u, 438))
  {
    v12 = 260;
    v11 = (v4 + 16);
    operator new();
  }

  v7 = a1[1];
  *v7 = v13;
  *(v7 + 4) = 1;
  if ((*(v4 + 8) & 8) != 0)
  {
    v8 = *(v4 + 39);
    if (v8 >= 0)
    {
      v9 = (v4 + 16);
    }

    else
    {
      v9 = *(v4 + 16);
    }

    if (v8 >= 0)
    {
      v10 = *(v4 + 39);
    }

    else
    {
      v10 = *(v4 + 24);
    }

    llvm::sys::RemoveFileOnSignal(v9, v10);
  }

  *a2 = 0;
}

llvm::vfs::OutputFile *llvm::Expected<llvm::vfs::OutputFile>::~Expected(llvm::vfs::OutputFile *this)
{
  if (*(this + 72))
  {
    v2 = *this;
    *this = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    return this;
  }

  llvm::vfs::OutputFile::destroy(this);
  v4 = *(this + 7);
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v5 = (this + 32);
      if ((v4 & 2) == 0)
      {
        v5 = *v5;
      }

      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))(v5);
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 4), *(this + 5));
    }
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if ((*(this + 23) & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(*this);
  return this;
}

uint64_t llvm::vfs::makeNullOutputBackend(void)::NullOutputBackend::cloneImpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  if (result)
  {
    ++*(result + 8);
  }

  return result;
}

void llvm::vfs::makeFilteringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,std::function<BOOL ()(llvm::StringRef,std::optional<llvm::vfs::OutputConfig>)>)::FilteringOutputBackend::cloneImpl(uint64_t a1)
{
  v2[5] = *MEMORY[0x277D85DE8];
  (*(**(a1 + 16) + 8))(v2);
  operator new();
}

void llvm::vfs::makeFilteringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,std::function<BOOL ()(llvm::StringRef,std::optional<llvm::vfs::OutputConfig>)>)::FilteringOutputBackend::createFileImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v12 = a4;
  v7 = *(a1 + 48);
  if (v7)
  {
    if (!(*(*v7 + 48))(v7, v13, &v12))
    {
      operator new();
    }

    llvm::vfs::ProxyOutputBackend::createFileImpl(a1, a2, a3, a4, a5);
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::vfs::makeFilteringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,std::function<BOOL ()(llvm::StringRef,std::optional<llvm::vfs::OutputConfig>)>)::FilteringOutputBackend::~FilteringOutputBackend(v11);
  }
}

void *llvm::vfs::makeFilteringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,std::function<BOOL ()(llvm::StringRef,std::optional<llvm::vfs::OutputConfig>)>)::FilteringOutputBackend::~FilteringOutputBackend(void *a1)
{
  *a1 = &unk_2868A2CF8;
  v2 = a1 + 3;
  v3 = a1[6];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_2868A2C08;
    v4 = a1[2];
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_2868A2C08;
    v4 = a1[2];
    if (!v4)
    {
      return a1;
    }
  }

  v6 = v4[2] - 1;
  v4[2] = v6;
  if (v6)
  {
    return a1;
  }

  (*(*v4 + 32))(v4);
  return a1;
}

void llvm::vfs::makeFilteringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,std::function<BOOL ()(llvm::StringRef,std::optional<llvm::vfs::OutputConfig>)>)::FilteringOutputBackend::~FilteringOutputBackend(void *a1)
{
  *a1 = &unk_2868A2CF8;
  v2 = a1 + 3;
  v3 = a1[6];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_2868A2C08;
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_2868A2C08;
    v4 = a1[2];
    if (!v4)
    {
LABEL_9:

      JUMPOUT(0x259C63180);
    }
  }

  v5 = v4[2] - 1;
  v4[2] = v5;
  if (!v5)
  {
    (*(*v4 + 32))(v4);
  }

  goto LABEL_9;
}

void llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::cloneImpl(uint64_t a1)
{
  (*(**(a1 + 16) + 8))(&v4);
  (*(**(a1 + 40) + 8))(&v3);
  operator new();
}

void llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::createFileImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  llvm::vfs::ProxyOutputBackend::createFileImpl(a1, a2, a3, a4, &v20);
  v10 = v20;
  if ((v21 & 1) != 0 && v20)
  {
    *(a5 + 8) |= 1u;
    *a5 = v10;
    return;
  }

  llvm::vfs::ProxyOutputBackend::createFileImpl(a1 + 24, a2, a3, a4, &v20);
  v11 = v20;
  if ((v21 & 1) != 0 && v20)
  {
    (*(*v10 + 48))(&v17, v10);
    v19 = v17;
    v20 = v11;
    v17 = 0;
    llvm::ErrorList::join(&v20, &v19, &v18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    *(a5 + 8) |= 1u;
    v12 = v17;
    *a5 = v18;
    v18 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

LABEL_18:
    (*(*v10 + 8))(v10);
    return;
  }

  if ((*(*v10 + 24))(v10, &llvm::vfs::NullOutputFileImpl::ID))
  {
    (*(*v10 + 48))(&v16, v10);
    v13 = v16;
    v16 = 0;
    v19 = v13;
    llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v19, &v20);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    *(a5 + 8) &= ~1u;
    *a5 = v11;
    goto LABEL_18;
  }

  if (!(*(*v11 + 24))(v11, &llvm::vfs::NullOutputFileImpl::ID))
  {
    operator new();
  }

  (*(*v11 + 48))(&v15, v11);
  v14 = v15;
  v15 = 0;
  v19 = v14;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v19, &v20);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *(a5 + 8) &= ~1u;
  *a5 = v10;
  (*(*v11 + 8))(v11);
}

void *llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::~MirroringOutputBackend(void *result)
{
  result[3] = &unk_2868A2C08;
  v1 = result[5];
  if (v1)
  {
    v2 = v1[2] - 1;
    v1[2] = v2;
    if (!v2)
    {
      v3 = result;
      (*(*v1 + 32))(v1);
      result = v3;
    }
  }

  *result = &unk_2868A2C08;
  v4 = result[2];
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      v6 = result;
      (*(*v4 + 32))(v4);
      return v6;
    }
  }

  return result;
}

void llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::~MirroringOutputBackend(void *a1)
{
  a1[3] = &unk_2868A2C08;
  v1 = a1[5];
  if (v1)
  {
    v2 = v1[2] - 1;
    v1[2] = v2;
    if (!v2)
    {
      v3 = a1;
      (*(*v1 + 32))(v1);
      a1 = v3;
    }
  }

  *a1 = &unk_2868A2C08;
  v4 = a1[2];
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      (*(*v4 + 32))(v4);
    }
  }

  JUMPOUT(0x259C63180);
}

void non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::cloneImpl(uint64_t a1) const
{
  (*(**(a1 - 8) + 8))(&v4);
  (*(**(a1 + 16) + 8))(&v3);
  operator new();
}

_DWORD *non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::~MirroringOutputBackend(void *a1)
{
  *a1 = &unk_2868A2C08;
  v1 = a1[2];
  if (v1 && (v2 = v1[2] - 1, (v1[2] = v2) == 0))
  {
    (*(*v1 + 32))(v1);
    *(a1 - 3) = &unk_2868A2C08;
    result = *(a1 - 1);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 - 3) = &unk_2868A2C08;
    result = *(a1 - 1);
    if (!result)
    {
      return result;
    }
  }

  v4 = result[2] - 1;
  result[2] = v4;
  if (!v4)
  {
    v6 = *(*result + 32);

    return v6();
  }

  return result;
}

void non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutputBackend::~MirroringOutputBackend(void *a1)
{
  *a1 = &unk_2868A2C08;
  v1 = a1[2];
  if (v1)
  {
    v2 = v1[2] - 1;
    v1[2] = v2;
    if (!v2)
    {
      v3 = a1;
      (*(*v1 + 32))(v1);
      a1 = v3;
    }
  }

  *(a1 - 3) = &unk_2868A2C08;
  v4 = *(a1 - 1);
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      (*(*v4 + 32))(v4);
    }
  }

  JUMPOUT(0x259C63180);
}

void *llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::~MirroringOutput(void *a1)
{
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::raw_ostream::~raw_ostream((a1 + 1));
  return a1;
}

void llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::~MirroringOutput(void *a1)
{
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::raw_ostream::~raw_ostream((a1 + 1));

  JUMPOUT(0x259C63180);
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::keep@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 40) != *(a1 + 24))
  {
    llvm::raw_ostream::flush_nonempty((a1 + 8));
  }

  (*(**(a1 + 64) + 40))(&v6);
  (*(**(a1 + 72) + 40))(&v5);
  v7 = v5;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  llvm::ErrorList::join(&v8, &v7, a2);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::discard@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 40) != *(a1 + 24))
  {
    llvm::raw_ostream::flush_nonempty((a1 + 8));
  }

  (*(**(a1 + 64) + 48))(&v6);
  (*(**(a1 + 72) + 48))(&v5);
  v7 = v5;
  v8 = v6;
  v5 = 0;
  v6 = 0;
  llvm::ErrorList::join(&v8, &v7, a2);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::write_impl(uint64_t a1, const char *a2, size_t a3)
{
  v6 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  llvm::raw_ostream::write(v6, a2, a3);
  v7 = (*(**(a1 + 72) + 56))(*(a1 + 72));

  return llvm::raw_ostream::write(v7, a2, a3);
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::pwrite_impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40) != *(a1 + 24))
  {
    llvm::raw_ostream::flush_nonempty((a1 + 8));
  }

  v8 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  (*(*v8 + 104))(v8, a2, a3, a4);
  v9 = *(*(*(**(a1 + 72) + 56))(*(a1 + 72)) + 104);

  return v9();
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::reserveExtraSpace(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  (*(*v4 + 16))(v4, a2);
  v5 = *(*(*(**(a1 + 72) + 56))(*(a1 + 72)) + 16);

  return v5();
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::is_displayed(uint64_t a1)
{
  v2 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  result = (*(*v2 + 48))(v2);
  if (result)
  {
    v4 = *(*(*(**(a1 + 72) + 56))(*(a1 + 72)) + 48);

    return v4();
  }

  return result;
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::has_colors(uint64_t a1)
{
  v2 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  result = (*(*v2 + 56))(v2);
  if (result)
  {
    v4 = *(*(*(**(a1 + 72) + 56))(*(a1 + 72)) + 56);

    return v4();
  }

  return result;
}

uint64_t llvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::enable_colors(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
  v4 = (*(**(a1 + 64) + 56))(*(a1 + 64));
  (*(*v4 + 64))(v4, a2);
  v5 = *(*(*(**(a1 + 72) + 56))(*(a1 + 72)) + 64);

  return v5();
}

void non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::~MirroringOutput(llvm::raw_ostream *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

uint64_t non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::reserveExtraSpace(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  (*(*v4 + 16))(v4, a2);
  v5 = *(*(*(**(a1 + 64) + 56))(*(a1 + 64)) + 16);

  return v5();
}

uint64_t non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::is_displayed(uint64_t a1) const
{
  v2 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  result = (*(*v2 + 48))(v2);
  if (result)
  {
    v4 = *(*(*(**(a1 + 64) + 56))(*(a1 + 64)) + 48);

    return v4();
  }

  return result;
}

uint64_t non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::has_colors(uint64_t a1) const
{
  v2 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  result = (*(*v2 + 56))(v2);
  if (result)
  {
    v4 = *(*(*(**(a1 + 64) + 56))(*(a1 + 64)) + 56);

    return v4();
  }

  return result;
}

uint64_t non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::enable_colors(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  v4 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  (*(*v4 + 64))(v4, a2);
  v5 = *(*(*(**(a1 + 64) + 56))(*(a1 + 64)) + 64);

  return v5();
}

void *non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::write_impl(uint64_t a1, const char *a2, size_t a3)
{
  v6 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  llvm::raw_ostream::write(v6, a2, a3);
  v7 = (*(**(a1 + 64) + 56))(*(a1 + 64));

  return llvm::raw_ostream::write(v7, a2, a3);
}

uint64_t non-virtual thunk tollvm::vfs::makeMirroringOutputBackend(llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>,llvm::IntrusiveRefCntPtr<llvm::vfs::OutputBackend>)::MirroringOutput::pwrite_impl(llvm::raw_ostream *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  v8 = (*(**(this + 7) + 56))(*(this + 7));
  (*(*v8 + 104))(v8, a2, a3, a4);
  v9 = *(*(*(**(this + 8) + 56))(*(this + 8)) + 104);

  return v9();
}

void anonymous namespace::OnDiskOutputFile::~OnDiskOutputFile(_anonymous_namespace_::OnDiskOutputFile *this)
{
  if (*(this + 264) != 1)
  {
    if (*(this + 168) != 1)
    {
      goto LABEL_3;
    }

LABEL_12:
    llvm::raw_fd_ostream::~raw_fd_ostream((this + 72));
    if (*(this + 64) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v2 = this + 264;
  *(this + 22) = &unk_2868A4020;
  v3 = *(this + 28);
  v4 = *(this + 29);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v4 + 32);
  if (v6 <= *(v4 + 24) - v7)
  {
    if (v6)
    {
      v8 = *(v3 + 8);
      memcpy(v7, v5, v6);
      *(v4 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(*(this + 29), v5, v6);
  }

  v9 = *(this + 30);
  if (v9 != v2)
  {
    free(v9);
  }

  llvm::raw_ostream::~raw_ostream((this + 176));
  if (*(this + 168) == 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (*(this + 64) != 1)
  {
LABEL_14:
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(*(this + 2));
    return;
  }

LABEL_13:
  if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(*(this + 5));
  if (*(this + 39) < 0)
  {
    goto LABEL_17;
  }
}

{

  JUMPOUT(0x259C63180);
}

void anonymous namespace::OnDiskOutputFile::keep(_anonymous_namespace_::OnDiskOutputFile *this@<X0>, _anonymous_namespace_::OnDiskOutputFile *a2@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    return;
  }

  if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_41;
  }

  if ((*(this + 8) & 4) == 0)
  {
    goto LABEL_4;
  }

  v10 = this + 16;
  v11 = *(this + 39);
  if ((v11 & 0x80000000) == 0)
  {
    if (v11 != 1 || *v10 != 45)
    {
      goto LABEL_17;
    }

LABEL_4:
    if ((*(this + 8) & 0x40) != 0)
    {
      v65 = 260;
      *&v64.__val_ = this + 40;
      v74 = 260;
      v72 = this + 16;
      LOBYTE(v75[0].st_dev) = 0;
      if (llvm::sys::fs::equivalent(&v64, &v72, v75, v5) || (v75[0].st_dev & 1) == 0)
      {
        v71 = -1;
        memset(v75, 0, 44);
        *(&v75[0].st_atimespec.tv_nsec + 4) = 0xFFFFLL;
        WORD2(v75[0].st_mtimespec.tv_sec) = 0;
        v75[0].st_mtimespec.tv_nsec = 0;
        if (llvm::sys::fs::openFileForRead(&v64, &v71, 0, 0) || llvm::sys::fs::status(v71, v75, v19))
        {
          operator new();
        }

        v70 = -1;
        memset(&v66, 0, 44);
        *(&v66.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
        WORD2(v66.st_mtimespec.tv_sec) = 0;
        v66.st_mtimespec.tv_nsec = 0;
        if (llvm::sys::fs::openFileForRead(&v72, &v70, 0, 0) || llvm::sys::fs::status(v70, &v66, v4) || (tv_sec = v75[0].st_atimespec.tv_sec, v75[0].st_atimespec.tv_sec != v66.st_atimespec.tv_sec))
        {
          v50 = 0;
          st_size = 2;
        }

        else if (v75[0].st_atimespec.tv_sec)
        {
          LODWORD(v68) = 0;
          v48 = std::system_category();
          v69 = v48;
          llvm::sys::fs::mapped_file_region::mapped_file_region(&v66.st_qspare[1], v71, 0, tv_sec, 0, &v68);
          v50 = v68 != 0;
          if (v68)
          {
            *&v49.__val_ = v69;
            llvm::vfs::convertToOutputError(v68, v49, &v66.st_size);
            st_size = v66.st_size;
          }

          else
          {
            v66.st_gen = 0;
            v66.st_qspare[0] = v48;
            llvm::sys::fs::mapped_file_region::mapped_file_region(&v66.st_size, v70, 0, tv_sec, 0, &v66.st_gen);
            if (v66.st_gen)
            {
              st_size = 2;
            }

            else
            {
              v62 = llvm::sys::fs::mapped_file_region::const_data(&v66.st_qspare[1]);
              v63 = llvm::sys::fs::mapped_file_region::const_data(&v66.st_size);
              if (!memcmp(v62, v63, tv_sec))
              {
                st_size = 1;
              }

              else
              {
                st_size = 2;
              }
            }

            llvm::sys::fs::mapped_file_region::unmapImpl(&v66.st_size);
          }

          llvm::sys::fs::mapped_file_region::unmapImpl(&v66.st_qspare[1]);
        }

        else
        {
          v50 = 0;
          st_size = 1;
        }

        if (v70 != -1)
        {
          llvm::sys::Process::SafelyCloseFileDescriptor(v70);
        }

        if (v71 != -1)
        {
          llvm::sys::Process::SafelyCloseFileDescriptor(v71);
        }

        if (v50)
        {
          goto LABEL_91;
        }
      }

      else
      {
        LOBYTE(st_size) = 0;
      }

      if (st_size == 1)
      {
        LOWORD(v75[0].st_atimespec.tv_sec) = 260;
        *&v75[0].st_dev = this + 40;
        llvm::sys::fs::remove(v75, 1);
        *a2 = 0;
        goto LABEL_114;
      }

      if (!st_size)
      {
LABEL_41:
        *a2 = 0;
        goto LABEL_114;
      }
    }

    LOWORD(v75[0].st_atimespec.tv_sec) = 260;
    *&v75[0].st_dev = this + 40;
    LOWORD(v66.st_atimespec.tv_sec) = 260;
    *&v66.st_dev = this + 16;
    v6 = llvm::sys::fs::rename(v75, &v66, v4);
    *&v64.__val_ = v6;
    v64.__cat_ = v7;
    if (!v6)
    {
LABEL_90:
      st_size = 0;
LABEL_91:
      *a2 = st_size;
      goto LABEL_114;
    }

    v8 = llvm::errs(v6);
    v9 = v8[4];
    if (v8[3] - v9 > 0xEuLL)
    {
      qmemcpy(v9, "Rename failed: ", 15);
      v8[4] += 15;
    }

    else
    {
      v8 = llvm::raw_ostream::write(v8, "Rename failed: ", 0xFuLL);
    }

    v20 = *(this + 63);
    if (v20 >= 0)
    {
      v21 = this + 40;
    }

    else
    {
      v21 = *(this + 5);
    }

    if (v20 >= 0)
    {
      v22 = *(this + 63);
    }

    else
    {
      v22 = *(this + 6);
    }

    llvm::raw_ostream::write(v8, v21, v22);
    LOWORD(v75[0].st_atimespec.tv_sec) = 260;
    *&v75[0].st_dev = this + 40;
    v23 = llvm::sys::fs::access(v75, 0);
    if (!v23)
    {
      v23 = llvm::errs(v23);
      v24 = *(v23 + 4);
      if ((*(v23 + 3) - v24) > 8)
      {
        *(v24 + 8) = 41;
        *v24 = *" (exists)";
        *(v23 + 4) += 9;
      }

      else
      {
        v23 = llvm::raw_ostream::write(v23, " (exists)", 9uLL);
      }
    }

    v28 = llvm::errs(v23);
    v29 = v28[4];
    if (v28[3] - v29 > 3uLL)
    {
      *v29 = 540945696;
      v28[4] += 4;
    }

    else
    {
      v28 = llvm::raw_ostream::write(v28, " -> ", 4uLL);
    }

    v30 = *(this + 39);
    if (v30 >= 0)
    {
      v31 = this + 16;
    }

    else
    {
      v31 = *(this + 2);
    }

    if (v30 >= 0)
    {
      v32 = *(this + 39);
    }

    else
    {
      v32 = *(this + 3);
    }

    llvm::raw_ostream::write(v28, v31, v32);
    LOWORD(v75[0].st_atimespec.tv_sec) = 260;
    *&v75[0].st_dev = this + 16;
    v33 = llvm::sys::fs::access(v75, 0);
    if (!v33)
    {
      v33 = llvm::errs(v33);
      v34 = *(v33 + 4);
      if ((*(v33 + 3) - v34) > 8)
      {
        *(v34 + 8) = 41;
        *v34 = *" (exists)";
        *(v33 + 4) += 9;
      }

      else
      {
        v33 = llvm::raw_ostream::write(v33, " (exists)", 9uLL);
      }
    }

    v35 = llvm::errs(v33);
    v36 = v35[4];
    if (v35[3] - v36 > 1uLL)
    {
      *v36 = 8250;
      v37 = v35;
      v35[4] += 2;
    }

    else
    {
      v37 = llvm::raw_ostream::write(v35, ": ", 2uLL);
    }

    std::error_code::message(v75, &v64);
    if ((v75[0].st_gid & 0x80000000) == 0)
    {
      v38 = v75;
    }

    else
    {
      v38 = *&v75[0].st_dev;
    }

    if ((v75[0].st_gid & 0x80000000) == 0)
    {
      st_gid_high = HIBYTE(v75[0].st_gid);
    }

    else
    {
      st_gid_high = v75[0].st_ino;
    }

    v40 = llvm::raw_ostream::write(v37, v38, st_gid_high);
    v42 = v40[4];
    if (v40[3] == v42)
    {
      llvm::raw_ostream::write(v40, "\n", 1uLL);
      if ((SHIBYTE(v75[0].st_gid) & 0x80000000) == 0)
      {
LABEL_88:
        LOWORD(v75[0].st_atimespec.tv_sec) = 260;
        *&v75[0].st_dev = this + 40;
        LOWORD(v66.st_atimespec.tv_sec) = 260;
        *&v66.st_dev = this + 16;
        *&v64.__val_ = llvm::sys::fs::copy_file(v75, &v66, v41);
        v64.__cat_ = v43;
        LOWORD(v75[0].st_atimespec.tv_sec) = 260;
        *&v75[0].st_dev = this + 40;
        llvm::sys::fs::remove(v75, 1);
        if (v64.__val_)
        {
          operator new();
        }

        goto LABEL_90;
      }
    }

    else
    {
      *v42 = 10;
      ++v40[4];
      if ((SHIBYTE(v75[0].st_gid) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }
    }

    operator delete(*&v75[0].st_dev);
    goto LABEL_88;
  }

  if (*(this + 3) == 1 && **v10 == 45)
  {
    goto LABEL_4;
  }

LABEL_17:
  LOWORD(v75[0].st_atimespec.tv_sec) = 260;
  *&v75[0].st_dev = this + 40;
  llvm::MemoryBuffer::getFile(v75, 0, 1, 0, 0, &v72);
  if (v73)
  {
    LOWORD(v75[0].st_atimespec.tv_sec) = 260;
    *&v75[0].st_dev = this + 40;
    LOWORD(v66.st_atimespec.tv_sec) = 260;
    *&v66.st_dev = this + 16;
    if (v72)
    {
      operator new();
    }

    *a2 = 0;
    goto LABEL_111;
  }

  while (1)
  {
    v13 = *(this + 39);
    v14 = v13 >= 0 ? (this + 16) : *(this + 2);
    v15 = v13 >= 0 ? *(this + 39) : *(this + 3);
    llvm::LockFileManager::LockFileManager(v75, v14, v15);
    State = llvm::LockFileManager::getState(v75);
    if (State != 1)
    {
      break;
    }

    if (llvm::LockFileManager::waitForUnlock(v75, 0x100u) == 2)
    {
      llvm::LockFileManager::unsafeRemoveLockFile(v75, v17, v18);
    }

LABEL_20:
    llvm::LockFileManager::~LockFileManager(v75, v17, v18);
  }

  if (State)
  {
    if (State == 2)
    {
      llvm::LockFileManager::unsafeRemoveLockFile(v75, v17, v18);
      LOWORD(v66.st_atimespec.tv_sec) = 260;
      *&v66.st_dev = this + 16;
      std::generic_category();
      operator new();
    }

    goto LABEL_20;
  }

  LODWORD(v66.st_qspare[1]) = 0;
  v67 = std::system_category();
  v25 = *(this + 39);
  if (v25 >= 0)
  {
    v26 = this + 16;
  }

  else
  {
    v26 = *(this + 2);
  }

  if (v25 >= 0)
  {
    v27 = *(this + 39);
  }

  else
  {
    v27 = *(this + 3);
  }

  llvm::raw_fd_ostream::raw_fd_ostream(&v66, v26, v27, &v66.st_qspare[1], 4);
  if (LODWORD(v66.st_qspare[1]))
  {
    v65 = 260;
    *&v64.__val_ = this + 16;
    goto LABEL_109;
  }

  v44 = *(v72 + 1);
  v45 = *(v72 + 2);
  v46 = v45 - v44;
  if ((v45 - v44) <= *&v66.st_rdev - v66.st_atimespec.tv_sec)
  {
    if (v45 != v44)
    {
      v51 = v45 - v44;
      memcpy(v66.st_atimespec.tv_sec, v44, v46);
      v66.st_atimespec.tv_sec += v51;
    }
  }

  else
  {
    llvm::raw_ostream::write(&v66, v44, v46);
  }

  llvm::raw_fd_ostream::close(&v66);
  llvm::LockFileManager::unsafeRemoveLockFile(v75, v52, v53);
  if (LODWORD(v66.st_ctimespec.tv_nsec))
  {
    v65 = 260;
    *&v64.__val_ = this + 16;
LABEL_109:
    operator new();
  }

  v65 = 260;
  *&v64.__val_ = this + 40;
  llvm::sys::fs::remove(&v64, 1);
  *a2 = 0;
  llvm::raw_fd_ostream::~raw_fd_ostream(&v66);
  llvm::LockFileManager::~LockFileManager(v75, v54, v55);
LABEL_111:
  if ((v73 & 1) == 0)
  {
    v56 = v72;
    v72 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }
  }

LABEL_114:
  if ((*(this + 8) & 8) != 0)
  {
    v57 = 16;
    if (*(this + 64))
    {
      v57 = 40;
    }

    v58 = (this + v57);
    v59 = *(v58 + 23);
    if (v59 >= 0)
    {
      v60 = v58;
    }

    else
    {
      v60 = *v58;
    }

    if (v59 >= 0)
    {
      v61 = *(v58 + 23);
    }

    else
    {
      v61 = v58[1];
    }

    llvm::sys::DontRemoveFileOnSignal(v60, v61);
  }
}

void anonymous namespace::OnDiskOutputFile::discard(_anonymous_namespace_::OnDiskOutputFile *this@<X0>, _anonymous_namespace_::OnDiskOutputFile *a2@<X8>)
{
  if (!*a2)
  {
    v4 = (this + 16);
    v5 = *(this + 39);
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (*(this + 3) == 1 && **v4 == 45)
      {
        goto LABEL_25;
      }
    }

    else if (v5 == 1 && *v4 == 45)
    {
LABEL_25:
      *a2 = 0;
      return;
    }

    if ((*(this + 64) & 1) == 0)
    {
      v17 = 260;
      v16 = this + 16;
      if ((v5 & 0x80000000) == 0)
      {
        v11 = this + 16;
      }

      else
      {
        v11 = *(this + 2);
      }

      if ((v5 & 0x80000000) == 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = *(this + 3);
      }

      v20 = 261;
      v18 = v11;
      v19 = v12;
      v13 = llvm::sys::fs::remove(&v18, 1);
      llvm::sys::DontRemoveFileOnSignal(v11, v12);
      if (v13)
      {
        operator new();
      }

      goto LABEL_25;
    }

    v17 = 260;
    v16 = this + 40;
    v15 = 260;
    v14 = this + 16;
    v6 = *(this + 63);
    v7 = *(this + 6);
    if (v6 >= 0)
    {
      v8 = this + 40;
    }

    else
    {
      v8 = *(this + 5);
    }

    if (v6 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    v20 = 261;
    v18 = v8;
    v19 = v9;
    v10 = llvm::sys::fs::remove(&v18, 1);
    llvm::sys::DontRemoveFileOnSignal(v8, v9);
    if (v10)
    {
      operator new();
    }

    *a2 = 0;
  }
}

uint64_t anonymous namespace::OnDiskOutputFile::getOS(_anonymous_namespace_::OnDiskOutputFile *this)
{
  v1 = 72;
  if (*(this + 264))
  {
    v1 = 176;
  }

  return this + v1;
}

void anonymous namespace::OnDiskOutputFile::reset(_anonymous_namespace_::OnDiskOutputFile *this, uint64_t a2)
{
  if (*(a2 + 264) == 1)
  {
    v4 = (a2 + 264);
    *(a2 + 176) = &unk_2868A4020;
    v5 = *(a2 + 224);
    v6 = *(a2 + 232);
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v6 + 32);
    if (v8 <= *(v6 + 24) - v9)
    {
      if (v8)
      {
        v10 = *(v5 + 8);
        memcpy(v9, v7, v8);
        *(v6 + 32) += v10;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(a2 + 232), v7, v8);
    }

    v11 = *(a2 + 240);
    if (v11 != v4)
    {
      free(v11);
    }

    llvm::raw_ostream::~raw_ostream((a2 + 176));
    *v4 = 0;
  }

  if (*(a2 + 168))
  {
    v12 = *(a2 + 144);
    v13 = *(a2 + 152);
    v14 = std::system_category();
    *(a2 + 144) = 0;
    *(a2 + 152) = v14;
    llvm::raw_fd_ostream::~raw_fd_ostream((a2 + 72));
    *(a2 + 168) = 0;
    *&v15.__val_ = v13;

    llvm::errorCodeToError(v12, v15, this);
  }

  else
  {
    *this = 0;
  }
}

char *llvm::vfs::OutputConfig::setOpenFlags(char *result, _BYTE *a2)
{
  v2 = *result;
  if (*a2)
  {
    v4 = v2 | 1;
    *result = v4;
    v5 = *a2 & 2 | v4 & 0xFD;
    *result = v5;
    v3 = v5 & 0xFB | *a2 & 4;
  }

  else
  {
    *result = v2 & 0xFC;
    v3 = *a2 & 4 | v2 & 0xF8;
  }

  *result = v3;
  return result;
}

char *llvm::vfs::OutputConfig::print(char *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if (*(a2 + 3) != v4)
  {
    *v4 = 123;
    v5 = (*(a2 + 4) + 1);
    *(a2 + 4) = v5;
    v6 = *this;
    if (*this)
    {
      goto LABEL_3;
    }

LABEL_8:
    if ((v6 & 2) == 0)
    {
      v7 = 1;
      if ((*v3 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  this = llvm::raw_ostream::write(a2, "{", 1uLL);
  v5 = *(a2 + 4);
  v6 = *v3;
  if ((*v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(a2 + 3) - v5 <= 3uLL)
  {
    this = llvm::raw_ostream::write(a2, "Text", 4uLL);
    v5 = *(a2 + 4);
    if ((*v3 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v7 = 0;
    if ((*v3 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  *v5 = 1954047316;
  v5 = (*(a2 + 4) + 4);
  *(a2 + 4) = v5;
  if ((*v3 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (*(a2 + 3) == v5)
  {
    this = llvm::raw_ostream::write(a2, ",", 1uLL);
    v5 = *(a2 + 4);
  }

  else
  {
    *v5 = 44;
    v5 = (*(a2 + 4) + 1);
    *(a2 + 4) = v5;
  }

LABEL_15:
  if (*(a2 + 3) - v5 > 3uLL)
  {
    v7 = 0;
    *v5 = 1179406915;
    v5 = (*(a2 + 4) + 4);
    *(a2 + 4) = v5;
    if ((*v3 & 4) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "CRLF", 4uLL);
    v7 = 0;
    v5 = *(a2 + 4);
    if ((*v3 & 4) == 0)
    {
LABEL_24:
      if ((*v3 & 8) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

LABEL_19:
  if ((v7 & 1) == 0)
  {
    if (*(a2 + 3) == v5)
    {
      this = llvm::raw_ostream::write(a2, ",", 1uLL);
      v5 = *(a2 + 4);
      if (*(a2 + 3) - v5 <= 5uLL)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

    *v5 = 44;
    v5 = (*(a2 + 4) + 1);
    *(a2 + 4) = v5;
  }

  if (*(a2 + 3) - v5 <= 5uLL)
  {
LABEL_23:
    this = llvm::raw_ostream::write(a2, "Append", 6uLL);
    v7 = 0;
    v5 = *(a2 + 4);
    goto LABEL_24;
  }

LABEL_31:
  v7 = 0;
  v5[2] = 25710;
  *v5 = 1701867585;
  v5 = (*(a2 + 4) + 6);
  *(a2 + 4) = v5;
  if ((*v3 & 8) != 0)
  {
LABEL_25:
    if ((*v3 & 0x10) != 0)
    {
      goto LABEL_26;
    }

LABEL_42:
    if ((v7 & 1) == 0)
    {
      if (*(a2 + 3) == v5)
      {
        this = llvm::raw_ostream::write(a2, ",", 1uLL);
        v5 = *(a2 + 4);
        if (*(a2 + 3) - v5 <= 1uLL)
        {
LABEL_46:
          this = llvm::raw_ostream::write(a2, "No", 2uLL);
          v10 = *(a2 + 4);
          if ((*(a2 + 3) - v10) > 0xA)
          {
            goto LABEL_47;
          }

          goto LABEL_51;
        }

LABEL_50:
        *v5 = 28494;
        v11 = *(a2 + 3);
        v10 = *(a2 + 4) + 2;
        *(a2 + 4) = v10;
        if ((v11 - v10) > 0xA)
        {
LABEL_47:
          v7 = 0;
          *(v10 + 7) = 1702127986;
          *v10 = *"AtomicWrite";
          v5 = (*(a2 + 4) + 11);
          *(a2 + 4) = v5;
          if ((*v3 & 0x20) == 0)
          {
            goto LABEL_52;
          }

LABEL_27:
          if ((*v3 & 0x40) == 0)
          {
            goto LABEL_28;
          }

LABEL_62:
          if ((v7 & 1) == 0)
          {
            if (*(a2 + 3) == v5)
            {
              this = llvm::raw_ostream::write(a2, ",", 1uLL);
              v5 = *(a2 + 4);
              if (*(a2 + 3) - v5 <= 0xEuLL)
              {
LABEL_66:
                this = llvm::raw_ostream::write(a2, "OnlyIfDifferent", 0xFuLL);
                v5 = *(a2 + 4);
                if (*(a2 + 3) != v5)
                {
                  goto LABEL_29;
                }

                goto LABEL_70;
              }

LABEL_69:
              qmemcpy(v5, "OnlyIfDifferent", 15);
              v14 = *(a2 + 3);
              v5 = (*(a2 + 4) + 15);
              *(a2 + 4) = v5;
              if (v14 != v5)
              {
                goto LABEL_29;
              }

              goto LABEL_70;
            }

            *v5 = 44;
            v5 = (*(a2 + 4) + 1);
            *(a2 + 4) = v5;
          }

          if (*(a2 + 3) - v5 <= 0xEuLL)
          {
            goto LABEL_66;
          }

          goto LABEL_69;
        }

LABEL_51:
        this = llvm::raw_ostream::write(a2, "AtomicWrite", 0xBuLL);
        v7 = 0;
        v5 = *(a2 + 4);
        if ((*v3 & 0x20) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_27;
      }

      *v5 = 44;
      v5 = (*(a2 + 4) + 1);
      *(a2 + 4) = v5;
    }

    if (*(a2 + 3) - v5 <= 1uLL)
    {
      goto LABEL_46;
    }

    goto LABEL_50;
  }

LABEL_32:
  if (v7)
  {
    goto LABEL_35;
  }

  if (*(a2 + 3) != v5)
  {
    *v5 = 44;
    v5 = (*(a2 + 4) + 1);
    *(a2 + 4) = v5;
LABEL_35:
    if (*(a2 + 3) - v5 <= 1uLL)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  this = llvm::raw_ostream::write(a2, ",", 1uLL);
  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 <= 1uLL)
  {
LABEL_36:
    this = llvm::raw_ostream::write(a2, "No", 2uLL);
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 0xEuLL)
    {
      goto LABEL_37;
    }

LABEL_41:
    this = llvm::raw_ostream::write(a2, "DiscardOnSignal", 0xFuLL);
    v7 = 0;
    v5 = *(a2 + 4);
    if ((*v3 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_26;
  }

LABEL_40:
  *v5 = 28494;
  v9 = *(a2 + 3);
  v8 = (*(a2 + 4) + 2);
  *(a2 + 4) = v8;
  if ((v9 - v8) <= 0xE)
  {
    goto LABEL_41;
  }

LABEL_37:
  v7 = 0;
  qmemcpy(v8, "DiscardOnSignal", 15);
  v5 = (*(a2 + 4) + 15);
  *(a2 + 4) = v5;
  if ((*v3 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_26:
  if ((*v3 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_52:
  if (v7)
  {
    goto LABEL_55;
  }

  if (*(a2 + 3) != v5)
  {
    *v5 = 44;
    v5 = (*(a2 + 4) + 1);
    *(a2 + 4) = v5;
LABEL_55:
    if (*(a2 + 3) - v5 <= 1uLL)
    {
      goto LABEL_56;
    }

    goto LABEL_60;
  }

  this = llvm::raw_ostream::write(a2, ",", 1uLL);
  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 <= 1uLL)
  {
LABEL_56:
    this = llvm::raw_ostream::write(a2, "No", 2uLL);
    v12 = *(a2 + 4);
    if (*(a2 + 3) - v12 > 0x15uLL)
    {
      goto LABEL_57;
    }

LABEL_61:
    this = llvm::raw_ostream::write(a2, "ImplyCreateDirectories", 0x16uLL);
    v7 = 0;
    v5 = *(a2 + 4);
    if ((*v3 & 0x40) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_28;
  }

LABEL_60:
  *v5 = 28494;
  v13 = *(a2 + 3);
  v12 = (*(a2 + 4) + 2);
  *(a2 + 4) = v12;
  if ((v13 - v12) <= 0x15)
  {
    goto LABEL_61;
  }

LABEL_57:
  v7 = 0;
  qmemcpy(v12, "ImplyCreateDirectories", 22);
  v5 = (*(a2 + 4) + 22);
  *(a2 + 4) = v5;
  if ((*v3 & 0x40) != 0)
  {
    goto LABEL_62;
  }

LABEL_28:
  if (*(a2 + 3) != v5)
  {
LABEL_29:
    *v5 = 125;
    ++*(a2 + 4);
    return this;
  }

LABEL_70:

  return llvm::raw_ostream::write(a2, "}", 1uLL);
}

char *llvm::vfs::OutputConfig::dump(llvm::vfs::OutputConfig *this)
{
  v2 = llvm::dbgs(this);

  return llvm::vfs::OutputConfig::print(this, v2);
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *a1, char a2)
{
  v4 = a2;
  llvm::vfs::OutputConfig::print(&v4, a1);
  return a1;
}

void (**llvm::vfs::output_category(llvm::vfs *this))(_anonymous_namespace_::OutputErrorCategory *__hidden this)
{
  {
    llvm::vfs::output_category();
  }

  return &llvm::vfs::output_category(void)::ErrorCategory;
}

void llvm::vfs::OutputError::~OutputError(void **this)
{
  *this = &unk_2868A3018;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2868A3018;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C63180);
}

void llvm::vfs::OutputError::log(llvm::vfs::OutputError *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 47);
  if (v4 >= 0)
  {
    v5 = this + 24;
  }

  else
  {
    v5 = *(this + 3);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 47);
  }

  else
  {
    v6 = *(this + 4);
  }

  v7 = *(a2 + 4);
  if (v6 <= *(a2 + 3) - v7)
  {
    if (v6)
    {
      v9 = v6;
      memcpy(v7, v5, v6);
      v7 = (*(a2 + 4) + v9);
      *(a2 + 4) = v7;
    }

    v8 = a2;
    if (*(a2 + 3) - v7 > 1uLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(a2, v5, v6);
    v7 = *(v8 + 4);
    if (*(v8 + 3) - v7 > 1uLL)
    {
LABEL_9:
      *v7 = 8250;
      *(v8 + 4) += 2;
      goto LABEL_14;
    }
  }

  llvm::raw_ostream::write(v8, ": ", 2uLL);
LABEL_14:
  std::error_code::message(&v12, (this + 8));
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v10, size);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void llvm::vfs::OutputConfigError::~OutputConfigError(void **this)
{
  *this = &unk_2868A3018;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2868A3018;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *llvm::vfs::OutputConfigError::log(llvm::vfs::OutputConfigError *this, llvm::raw_ostream *a2)
{
  llvm::vfs::OutputError::log(this, a2);
  v4 = a2;
  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 > 1uLL)
  {
    *v5 = 8250;
    *(a2 + 4) += 2;
    v6 = *(this + 48);
  }

  else
  {
    v4 = llvm::raw_ostream::write(a2, ": ", 2uLL);
    v6 = *(this + 48);
  }

  return llvm::operator<<(v4, v6);
}

void llvm::vfs::TempFileOutputError::~TempFileOutputError(void **this)
{
  *this = &unk_2868A3118;
  if ((*(this + 71) & 0x80000000) == 0)
  {
    *this = &unk_2868A3018;
    if ((*(this + 47) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[3]);
    return;
  }

  operator delete(this[6]);
  *this = &unk_2868A3018;
  if (*(this + 47) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A3118;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    *this = &unk_2868A3018;
    if ((*(this + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A3018;
    if ((*(this + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[3]);
LABEL_3:

  JUMPOUT(0x259C63180);
}

void llvm::vfs::TempFileOutputError::log(llvm::vfs::TempFileOutputError *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 71);
  if (v4 >= 0)
  {
    v5 = this + 48;
  }

  else
  {
    v5 = *(this + 6);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 71);
  }

  else
  {
    v6 = *(this + 7);
  }

  v7 = *(a2 + 4);
  if (v6 <= *(a2 + 3) - v7)
  {
    if (v6)
    {
      v9 = v6;
      memcpy(v7, v5, v6);
      v7 = (*(a2 + 4) + v9);
      *(a2 + 4) = v7;
    }

    v8 = a2;
    if (*(a2 + 3) - v7 > 3uLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = llvm::raw_ostream::write(a2, v5, v6);
    v7 = *(v8 + 4);
    if (*(v8 + 3) - v7 > 3uLL)
    {
LABEL_9:
      *v7 = 540949792;
      *(v8 + 4) += 4;
      goto LABEL_14;
    }
  }

  llvm::raw_ostream::write(v8, " => ", 4uLL);
LABEL_14:

  llvm::vfs::OutputError::log(this, a2);
}

void anonymous namespace::OutputErrorCategory::~OutputErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::OutputErrorCategory::message(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 2)
  {
    a2[23] = 21;
    if (a1 == 3)
    {
      strcpy(a2, "output already closed");
    }

    else
    {
      strcpy(a2, "output has open proxy");
    }
  }

  else if (a1 == 1)
  {
    a2[23] = 17;
    strcpy(a2, "output not closed");
  }

  else
  {
    a2[23] = 14;
    strcpy(a2, "invalid config");
  }
}

void llvm::vfs::OutputFile::createProxy(llvm::vfs::OutputFile *this)
{
  if (*(this + 8))
  {
    operator new();
  }

  (*(**(this + 3) + 56))(*(this + 3));
  operator new();
}

char *llvm::vfs::OutputFile::getPath(char *this)
{
  if (this[23] < 0)
  {
    return *this;
  }

  return this;
}

void *llvm::vfs::OutputFile::keep(llvm::vfs::OutputFile *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  if (!v2)
  {
    llvm::vfs::OutputFile::keep(&v11, this, &v9, v10);
  }

  if (*(this + 8))
  {
    *&v11 = llvm::vfs::OutputFile::getPath(this);
    *(&v11 + 1) = v8;
    v9 = 4;
    llvm::make_error<llvm::vfs::OutputError,llvm::StringRef,llvm::vfs::OutputErrorCode>();
  }

  (*(*v2 + 40))(v2);
  result = *(this + 3);
  *(this + 3) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v13 = 0;
  v4 = (this + 32);
  if ((this + 32) != &v11)
  {
    v5 = *(this + 7);
    if (v5 >= 8)
    {
      if ((v5 & 4) != 0)
      {
        v6 = this + 32;
        if ((v5 & 2) == 0)
        {
          v6 = *v4;
        }

        result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
      }

      if ((v5 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 4), *(this + 5));
      }
    }

    v7 = v13;
    *(this + 7) = v13;
    if (v7 >= 8)
    {
      if ((v7 & 2) != 0 && (v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 8))(this + 32, &v11);
        return (*((*(this + 7) & 0xFFFFFFFFFFFFFFF8) + 16))(&v11);
      }

      else
      {
        *v4 = v11;
        *(this + 6) = v12;
      }
    }
  }

  return result;
}

uint64_t llvm::joinErrors@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  *a1 = 0;
  v5 = *a2;
  v6 = v3;
  *a2 = 0;
  llvm::ErrorList::join(&v6, &v5, a3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t *llvm::vfs::OutputFile::discard(llvm::vfs::OutputFile *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  if (!v2)
  {
    llvm::vfs::OutputFile::keep(&v11, this, v9, v10);
  }

  v3 = *(this + 8);
  if (v3)
  {
    **(v3 + 64) = 0;
    if (*(v3 + 32) != *(v3 + 16))
    {
      llvm::raw_ostream::flush_nonempty(v3);
    }

    llvm::raw_ostream::SetBufferAndMode(v3, 0, 0, 0);
    *(v3 + 48) = 0;
    v2 = *(this + 3);
  }

  (*(*v2 + 48))(v2);
  result = *(this + 3);
  *(this + 3) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v13 = 0;
  v5 = (this + 32);
  if ((this + 32) != &v11)
  {
    v6 = *(this + 7);
    if (v6 >= 8)
    {
      if ((v6 & 4) != 0)
      {
        v7 = this + 32;
        if ((v6 & 2) == 0)
        {
          v7 = *v5;
        }

        result = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
      }

      if ((v6 & 2) == 0)
      {
        llvm::deallocate_buffer(*(this + 4), *(this + 5));
      }
    }

    v8 = v13;
    *(this + 7) = v13;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(this + 32, &v11);
        return (*((*(this + 7) & 0xFFFFFFFFFFFFFFF8) + 16))(&v11);
      }

      else
      {
        *v5 = v11;
        *(this + 6) = v12;
      }
    }
  }

  return result;
}

uint64_t *llvm::vfs::OutputFile::destroy(uint64_t *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (this[3])
  {
    v1 = this;
    v2 = this[7];
    v14 = v2;
    if (v2 >= 8)
    {
      if ((v2 & 2) != 0 && (v2 & 4) != 0)
      {
        (*((v2 & 0xFFFFFFFFFFFFFFF8) + 8))(&v12, this + 4);
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v1 + 4);
      }

      else
      {
        v12 = *(this + 2);
        v13 = this[6];
      }

      v1[7] = 0;
    }

    this = llvm::vfs::OutputFile::discard(v1);
    v3 = v14;
    if (v14 <= 7)
    {
      Path = llvm::vfs::OutputFile::getPath(v1);
      v10 = v6;
      v8 = 1;
      llvm::make_error<llvm::vfs::OutputError,llvm::StringRef,llvm::vfs::OutputErrorCode>();
    }

    if (!v11)
    {
      goto LABEL_18;
    }

    v7 = v11;
    v11 = 0;
    if ((v14 & 2) != 0)
    {
      v4 = &v12;
    }

    else
    {
      v4 = v12;
    }

    (*(v14 & 0xFFFFFFFFFFFFFFF8))(v4, &v7);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    this = v11;
    if (v11)
    {
      this = (*(*v11 + 8))(v11);
    }

    v3 = v14;
    if (v14 >= 8)
    {
LABEL_18:
      if ((v3 & 4) != 0)
      {
        if ((v3 & 2) != 0)
        {
          v5 = &v12;
        }

        else
        {
          v5 = v12;
        }

        this = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 16))(v5);
      }

      if ((v3 & 2) == 0)
      {
        llvm::deallocate_buffer(v12, *(&v12 + 1));
      }
    }
  }

  return this;
}

void llvm::vfs::NullOutputFileImpl::~NullOutputFileImpl(llvm::vfs::NullOutputFileImpl *this)
{
  llvm::raw_null_ostream::~raw_null_ostream((this + 8));
}

{
  llvm::raw_null_ostream::~raw_null_ostream((this + 8));

  JUMPOUT(0x259C63180);
}

void llvm::vfs::OutputFile::TrackedProxy::~TrackedProxy(llvm::vfs::OutputFile::TrackedProxy *this)
{
  llvm::vfs::OutputFile::TrackedProxy::~TrackedProxy(this);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_2868A32B0;
  **(this + 8) = 0;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;
  *this = &unk_2868A3390;
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  llvm::raw_ostream::SetBufferAndMode(this, 0, 0, 0);
  *(this + 6) = 0;

  llvm::raw_ostream::~raw_ostream(this);
}

uint64_t llvm::raw_pwrite_stream_proxy_adaptor<llvm::raw_pwrite_stream>::pwrite_impl(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  v2 = *(**(this + 6) + 104);

  return v2();
}

void OUTLINED_FUNCTION_0_32(char **a1, llvm::vfs::OutputFile *this, unsigned int *a3, llvm::vfs **a4)
{
  *a1 = llvm::vfs::OutputFile::getPath(this);
  a1[1] = v6;
  *a3 = 3;

  llvm::make_error<llvm::vfs::OutputError,llvm::StringRef,llvm::vfs::OutputErrorCode>();
}

uint64_t *llvm::getColorCategory(llvm *this)
{
  if ((atomic_load_explicit(_MergedGlobals_17, memory_order_acquire) & 1) == 0)
  {
    llvm::getColorCategory();
  }

  return &qword_27F875638;
}

void llvm::initWithColorOptions(llvm *this)
{
  if (!atomic_load_explicit(UseColor, memory_order_acquire))
  {
  }
}

uint64_t DefaultAutoDetectFunction(const llvm::raw_ostream *a1)
{
  if (atomic_load_explicit(UseColor, memory_order_acquire))
  {
    if (*(UseColor[0] + 128))
    {
LABEL_3:
      if (!atomic_load_explicit(UseColor, memory_order_acquire))
      {
      }

      return *(UseColor[0] + 128) == 1;
    }
  }

  else
  {
    v2 = a1;
    a1 = v2;
    if (*(UseColor[0] + 128))
    {
      goto LABEL_3;
    }
  }

  v3 = *(*a1 + 56);

  return v3();
}

uint64_t llvm::WithColor::WithColor(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  if (a4)
  {
    if (a4 != 1)
    {
      return a1;
    }
  }

  else
  {
    v6 = a2;
    v7 = a3;
    v8 = llvm::WithColor::AutoDetectFunction(a2);
    a3 = v7;
    a2 = v6;
    if (!v8)
    {
      return a1;
    }
  }

  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        (*(*a2 + 24))(a2, 1, 0, 0);
      }

      else
      {
        (*(*a2 + 24))(a2, 1, 1, 0);
      }
    }

    else
    {
      switch(a3)
      {
        case 7:
          (*(*a2 + 24))(a2, 5, 1, 0);
          break;
        case 8:
          (*(*a2 + 24))(a2, 0, 1, 0);
          break;
        case 9:
          (*(*a2 + 24))(a2, 4, 1, 0);
          break;
        default:
          return a1;
      }
    }
  }

  else if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return a1;
      }

      (*(*a2 + 24))(a2, 2, 0, 0);
    }

    else
    {
      (*(*a2 + 24))(a2, 3, a3, 0);
    }
  }

  else if (a3 == 2)
  {
    (*(*a2 + 24))(a2, 4, 0, 0);
  }

  else if (a3 == 3)
  {
    (*(*a2 + 24))(a2, 6, 0, 0);
  }

  else
  {
    (*(*a2 + 24))(a2, 5, 0, 0);
  }

  return a1;
}

uint64_t llvm::WithColor::colorsEnabled(llvm::WithColor *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return v1 == 1;
  }

  else
  {
    return llvm::WithColor::AutoDetectFunction(*this);
  }
}

llvm::raw_ostream *llvm::WithColor::error(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::error(v1, "", 0, 0);
}

llvm::raw_ostream *llvm::WithColor::error(llvm::raw_ostream *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 4);
  if (a3 <= *(a1 + 3) - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (*(a1 + 4) + a3);
    *(a1 + 4) = v8;
    v7 = a1;
    if (*(a1 + 3) - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      *(v7 + 4) += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1, a2))
  {
    (*(*a1 + 24))(a1, 1, 1, 0);
  }

LABEL_11:
  v11 = *(a1 + 4);
  if (*(a1 + 3) - v11 > 6uLL)
  {
    *(v11 + 3) = 540701295;
    *v11 = 1869771365;
    *(a1 + 4) += 7;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "error: ", 7uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9)[174](a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

llvm::raw_ostream *llvm::WithColor::warning(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::warning(v1, "", 0, 0);
}

llvm::raw_ostream *llvm::WithColor::warning(llvm::raw_ostream *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 4);
  if (a3 <= *(a1 + 3) - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (*(a1 + 4) + a3);
    *(a1 + 4) = v8;
    v7 = a1;
    if (*(a1 + 3) - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      *(v7 + 4) += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1, a2))
  {
    (*(*a1 + 24))(a1, 5, 1, 0);
  }

LABEL_11:
  v11 = *(a1 + 4);
  if ((*(a1 + 3) - v11) > 8)
  {
    *(v11 + 8) = 32;
    *v11 = *"warning: ";
    *(a1 + 4) += 9;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "warning: ", 9uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9)[174](a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}

llvm::raw_ostream *llvm::WithColor::note(llvm::WithColor *this)
{
  v1 = llvm::errs(this);

  return llvm::WithColor::note(v1, "", 0, 0);
}

llvm::raw_ostream *llvm::WithColor::note(llvm::raw_ostream *a1, const void *a2, size_t a3, char a4)
{
  if (!a3)
  {
LABEL_5:
    v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 4);
  if (a3 <= *(a1 + 3) - v6)
  {
    memcpy(v6, a2, a3);
    v8 = (*(a1 + 4) + a3);
    *(a1 + 4) = v8;
    v7 = a1;
    if (*(a1 + 3) - v8 > 1uLL)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(a1, a2, a3);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 1uLL)
    {
LABEL_4:
      *v8 = 8250;
      *(v7 + 4) += 2;
      goto LABEL_5;
    }
  }

  llvm::raw_ostream::write(v7, ": ", 2uLL);
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((v9[174])(a1, a2))
  {
    (*(*a1 + 24))(a1, 0, 1, 0);
  }

LABEL_11:
  v11 = *(a1 + 4);
  if ((*(a1 + 3) - v11) > 5)
  {
    *(v11 + 4) = 8250;
    *v11 = 1702129518;
    *(a1 + 4) += 6;
    v12 = a1;
    if (a4)
    {
      return v12;
    }
  }

  else
  {
    v12 = llvm::raw_ostream::write(a1, "note: ", 6uLL);
    if (a4)
    {
      return v12;
    }
  }

  if (!(v9)[174](a1))
  {
    return v12;
  }

  (*(*a1 + 32))(a1);
  return v12;
}