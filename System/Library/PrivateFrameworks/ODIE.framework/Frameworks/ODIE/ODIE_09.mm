uint64_t *std::unique_ptr<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,std::__destruct_n &>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 56);
      do
      {
        v7 = *(v6 - 2);
        if (v6 != v7)
        {
          free(v7);
          v4 = *v3;
        }

        ++v5;
        v6 += 13;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v8 = a5;
  while (a4 > a7 && v8 > a7)
  {
    if (!a4)
    {
      return;
    }

    v13 = 0;
    v14 = -a4;
    while (1)
    {
      v15 = *(a2 + 8);
      v16 = a1[v13 + 4];
      if ((v15 & 0x3FFFFFFF) != (v16 & 0x3FFFFFFF))
      {
        if ((v15 & 0x3FFFFFFFu) < (v16 & 0x3FFFFFFF))
        {
          break;
        }

        goto LABEL_14;
      }

      v17 = v15 & 0x40000000;
      if (((v16 >> 30) & 1) == v17 >> 30)
      {
        if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((a2 + 1), &a1[v13 + 1]))
        {
          break;
        }

        goto LABEL_14;
      }

      if (v17)
      {
        break;
      }

LABEL_14:
      v13 += 13;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v19 = -v14;
    v20 = &a1[v13];
    v89 = &a1[v13];
    if (-v14 >= v8)
    {
      if (v14 == -1)
      {

        return;
      }

      v90 = v19 / 2;
      if (a3 == a2)
      {
        v21 = 0;
        v39 = a2;
LABEL_46:
        v25 = &a1[13 * v90 + v13];
        v40 = 0x4EC4EC4EC4EC4EC5 * (v39 - a2);
        goto LABEL_47;
      }

      v85 = a3;
      v87 = a7;
      v21 = 0;
      v31 = 0x4EC4EC4EC4EC4EC5 * (a3 - a2);
      v32 = &a1[13 * (v19 / 2) + v13];
      while (2)
      {
        v33 = v31 >> 1;
        v34 = v21 + 104 * (v31 >> 1);
        v35 = *(a2 + v34 + 32);
        v36 = *(v32 + 8);
        if ((v35 & 0x3FFFFFFF) == (v36 & 0x3FFFFFFF))
        {
          v37 = v35 & 0x40000000;
          if (((v36 >> 30) & 1) == v37 >> 30)
          {
            if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((a2 + v34 + 8), v32 + 1))
            {
              goto LABEL_39;
            }
          }

          else if (!v37)
          {
LABEL_39:
            v31 = v33;
            if (!v33)
            {
              v39 = (a2 + v21);
              a3 = v85;
              a7 = v87;
              goto LABEL_46;
            }

            continue;
          }
        }

        else if ((v35 & 0x3FFFFFFFu) >= (v36 & 0x3FFFFFFF))
        {
          goto LABEL_39;
        }

        break;
      }

      v21 = v34 + 104;
      v33 = v31 + ~v33;
      goto LABEL_39;
    }

    v86 = a7;
    v21 = 104 * (v8 / 2);
    if (v20 != a2)
    {
      v84 = a3;
      v22 = a2 + v21;
      v23 = &a1[v13];
      v24 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1 - v13 * 8) >> 3);
      v25 = v20;
      while (1)
      {
        v26 = v24 >> 1;
        v27 = &v25[13 * (v24 >> 1)];
        v28 = *(v22 + 8);
        v29 = *(v27 + 8);
        if ((v28 & 0x3FFFFFFF) == (v29 & 0x3FFFFFFF))
        {
          break;
        }

        if ((v28 & 0x3FFFFFFFu) >= (v29 & 0x3FFFFFFF))
        {
          goto LABEL_25;
        }

LABEL_26:
        v24 = v26;
        if (!v26)
        {
          v38 = v25;
          a3 = v84;
          goto LABEL_44;
        }
      }

      v30 = v28 & 0x40000000;
      if (((v29 >> 30) & 1) == v30 >> 30)
      {
        if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((v22 + 8), v27 + 1))
        {
          goto LABEL_26;
        }
      }

      else if (v30)
      {
        goto LABEL_26;
      }

LABEL_25:
      v25 = v27 + 13;
      v26 = v24 + ~v26;
      goto LABEL_26;
    }

    v38 = a2;
    v23 = a2;
    v25 = &a1[v13];
LABEL_44:
    v90 = 0x4EC4EC4EC4EC4EC5 * (v38 - v23);
    a7 = v86;
    v40 = v8 / 2;
LABEL_47:
    v41 = (a2 + v21);
    v42 = (a2 + v21);
    if (v25 != a2)
    {
      v42 = v25;
      if (v21)
      {
        v88 = v40;
        v43 = a7;
        v42 = v25 + 13;
        v44 = v21 - 104;
        if (v21 != 104)
        {
          v45 = a2 + 13;
          do
          {
            if (v42 == a2)
            {
              a2 = v45;
            }

            v42 += 13;
            v45 += 13;
            v44 -= 104;
          }

          while (v44);
        }

        if (v42 != a2)
        {
          v46 = v42;
          v47 = a2;
          do
          {
            while (1)
            {
              v46 += 13;
              a2 += 13;
              if (a2 == v41)
              {
                break;
              }

              if (v46 == v47)
              {
                v47 = a2;
              }
            }

            a2 = v47;
          }

          while (v46 != v47);
        }

        a7 = v43;
        v40 = v88;
      }
    }

    a4 = -v14 - v90;
    v48 = v8 - v40;
    if (v90 + v40 >= v8 - (v90 + v40) - v14)
    {
      v48 = v40;
      v41 = v25;
      a4 = v90;
      a3 = v42;
      a1 = v89;
    }

    else
    {
      a1 = v42;
    }

    a2 = v41;
    v8 = v48;
    if (!v48)
    {
      return;
    }
  }

  v49 = a6;
  v92[0] = a6;
  v92[1] = &v93;
  v93 = 0;
  if (a4 > v8)
  {
    if (a2 == a3)
    {
      goto LABEL_111;
    }

    v50 = 0;
    v51 = 0;
    do
    {
      v52 = &a2[v50];
      *(a6 + v50 * 8) = a2[v50];
      v53 = *&a2[v50 + 1];
      v54 = *(&a2[v50 + 2] + 4);
      *(a6 + v50 * 8 + 40) = a6 + v50 * 8 + 56;
      v55 = a6 + v50 * 8 + 40;
      *(v55 - 20) = v54;
      *(v55 - 32) = v53;
      *(v55 + 8) = 0x600000000;
      if (LODWORD(a2[v50 + 6]))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v55, (v52 + 5));
        v51 = v93;
      }

      v93 = ++v51;
      v50 += 13;
    }

    while (v52 + 13 != a3);
    v56 = a3 - 13;
    v57 = a6 + v50 * 8;
    while (1)
    {
      if (a2 == a1)
      {
        while (v57 != a6)
        {
          v64 = *(v57 - 104);
          v57 -= 104;
          *v56 = v64;
          v65 = *(v57 + 8);
          *(v56 + 20) = *(v57 + 20);
          *(v56 + 1) = v65;
          llvm::SmallVectorImpl<unsigned long>::operator=((v56 + 5), v57 + 40);
          v56 -= 13;
        }

        goto LABEL_111;
      }

      v58 = (v57 - 96);
      v59 = *(v57 - 72);
      v60 = *(a2 - 18);
      if ((v59 & 0x3FFFFFFF) == (v60 & 0x3FFFFFFF))
      {
        v61 = v59 & 0x40000000;
        if (((v60 >> 30) & 1) == v61 >> 30)
        {
          if ((std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((v57 - 96), a2 - 12) & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        else if (!v61)
        {
LABEL_83:
          v62 = v57;
          v57 -= 104;
          goto LABEL_84;
        }
      }

      else if ((v59 & 0x3FFFFFFFu) >= (v60 & 0x3FFFFFFF))
      {
        goto LABEL_83;
      }

      v58 = a2 - 12;
      v62 = a2;
      a2 -= 13;
LABEL_84:
      *v56 = *(v62 - 13);
      v63 = *v58;
      *(v56 + 20) = *(v58 + 12);
      *(v56 + 1) = v63;
      llvm::SmallVectorImpl<unsigned long>::operator=((v56 + 5), (v62 - 8));
      v56 -= 13;
      if (v57 == a6)
      {
        goto LABEL_111;
      }
    }
  }

  if (a1 == a2)
  {
    goto LABEL_111;
  }

  v66 = 0;
  v67 = 0;
  do
  {
    v68 = &a1[v66];
    *(a6 + v66 * 8) = a1[v66];
    v69 = *&a1[v66 + 1];
    v70 = *(&a1[v66 + 2] + 4);
    *(a6 + v66 * 8 + 40) = a6 + v66 * 8 + 56;
    v71 = a6 + v66 * 8 + 40;
    *(v71 - 20) = v70;
    *(v71 - 32) = v69;
    *(v71 + 8) = 0x600000000;
    if (LODWORD(a1[v66 + 6]))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v71, (v68 + 5));
      v67 = v93;
    }

    v93 = ++v67;
    v66 += 13;
  }

  while (v68 + 13 != a2);
  v72 = a6 + v66 * 8;
  v73 = a6 + v66 * 8 - 104;
  while (a2 != a3)
  {
    v74 = *(a2 + 8);
    v75 = *(v49 + 32);
    if ((v74 & 0x3FFFFFFF) == (v75 & 0x3FFFFFFF))
    {
      v76 = v74 & 0x40000000;
      v77 = a3;
      if (((v75 >> 30) & 1) == v76 >> 30)
      {
        if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((a2 + 1), (v49 + 8)))
        {
          goto LABEL_103;
        }
      }

      else if (!v76)
      {
LABEL_103:
        *a1 = *v49;
        v79 = *(v49 + 8);
        *(a1 + 20) = *(v49 + 20);
        *(a1 + 1) = v79;
        llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), v49 + 40);
        v49 += 104;
        goto LABEL_104;
      }
    }

    else
    {
      v77 = a3;
      if ((v74 & 0x3FFFFFFFu) >= (v75 & 0x3FFFFFFF))
      {
        goto LABEL_103;
      }
    }

    *a1 = *a2;
    v78 = *(a2 + 1);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 1) = v78;
    llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), (a2 + 5));
    a2 += 13;
LABEL_104:
    a1 += 13;
    a3 = v77;
    if (v72 == v49)
    {
      goto LABEL_111;
    }
  }

  v80 = 0;
  do
  {
    v81 = &a1[v80 / 8];
    v82 = v49 + v80;
    *v81 = *(v49 + v80);
    v83 = *(v49 + v80 + 8);
    *(v81 + 20) = *(v49 + v80 + 20);
    *(v81 + 1) = v83;
    llvm::SmallVectorImpl<unsigned long>::operator=(&a1[v80 / 8 + 5], v49 + v80 + 40);
    v80 += 104;
  }

  while (v73 != v82);
LABEL_111:
}

uint64_t std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(__int128 *a1, uint64_t *a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v5 = *a2;
  v4 = a2[1];
  v7 = *a1;
  return llvm::StringRef::compare(&v7, v5, v4) >> 31;
}

uint64_t llvm::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    v5 = memcmp(*a1, a2, a3);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v4 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t **llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v13 = buffer;
  v14 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v14 + a3) = 0;
  *v13 = a3;
  *(v13 + 2) = 0;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

__n128 llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::SymbolAlias>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::SymbolAlias&&>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = a2;
  v12 = *a3;
  v13 = *(a3 + 2);
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v11;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v11 && v5 + 32 * v4 > &v11)
    {
      v10 = &v11 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      v5 = *a1;
      v6 = &v10[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      v5 = *a1;
      v6 = &v11;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  result = *v6;
  v9 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v9;
  ++*(a1 + 8);
  return result;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

llvm::raw_ostream *anonymous namespace::AliasState::printAliases(llvm::raw_ostream *result, unsigned int a2, llvm::raw_ostream **a3, _DWORD *a4, int a5)
{
  i = result;
  if (a2)
  {
    v9 = 32 * a2;
    for (i = result; a5 != *(i + 6) >> 31; i = (i + 32))
    {
      v9 -= 32;
      if (!v9)
      {
        return result;
      }
    }
  }

  v10 = (result + 32 * a2);
  if (i != v10)
  {
LABEL_7:
    v11 = *a3;
    v12 = *(*a3 + 4);
    if ((*(*a3 + 3) - v12) > 2)
    {
      *(v12 + 2) = 32;
      *v12 = 15648;
      *(v11 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v11, " = ", 3uLL);
    }

    if ((*(i + 27) & 0x40) != 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(a3, *i);
      *(i + 28) = 1;
    }

    else
    {
      v15 = *i;
      if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsMutable>(&v15))
      {
        v13 = *a3;
        v16 = v15;
        mlir::Attribute::print(&v16, v13, 0);
      }

      else
      {
        mlir::AsmPrinter::Impl::printAttributeImpl(a3, v15, 0);
      }
    }

    result = *a3;
    ++*a4;
    v14 = *(result + 4);
    if (v14 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v14 + 1;
      *v14 = 10;
    }

    while (1)
    {
      i = (i + 32);
      if (i == v10)
      {
        break;
      }

      if (a5 == *(i + 6) >> 31)
      {
        if (i != v10)
        {
          goto LABEL_7;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t mlir::Attribute::hasTrait<mlir::AttributeTrait::IsMutable>(uint64_t **a1)
{
  v1 = **a1;
  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID();
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1392);
}

uint64_t llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>();
    *algn_27FC17588 = v1;
  }

  return llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJRNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, llvm::raw_ostream *a2, size_t a3, llvm::raw_ostream *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v50 = 0;
  v51 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v41 = 0;
    v45 = 0;
    v46 = 1;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v40 = &unk_286E79D28;
    v47 = &__p;
    llvm::raw_ostream::SetUnbuffered(&v40);
    a4(p_p_p, &v40);
    v12 = HIBYTE(v51);
    if (v51 < 0)
    {
      v12 = v50;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v40);
      goto LABEL_53;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v40);
    a4 = _ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_21OpAsmDialectInterfaceEJRNS_9SetVectorINSA_24AsmDialectResourceHandleENS_11SmallVectorISI_Lj0EEENS_8DenseSetISI_NS_12DenseMapInfoISI_vEEEELj0EEEEEEDaNS_9StringRefESS_RT_DpOT0_ENKUlSS_S4_E_clESS_S4_EUlS2_E_EEvlS2_;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) == 1)
    {
      v15 = *(v10 + 16);
      v16 = *(v15 + 4);
      if (*(v15 + 3) == v16)
      {
        v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
        v17 = *(v15 + 4);
      }

      else
      {
        *v16 = 44;
        v17 = (*(v15 + 4) + 1);
        *(v15 + 4) = v17;
      }

      ++*(v10 + 80);
      if (v17 >= *(v15 + 3))
      {
        llvm::raw_ostream::write(v15, 10);
      }

      else
      {
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
      }
    }

    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8224;
      *(v18 + 4) += 2;
    }

    else
    {
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
    }

    v20 = llvm::raw_ostream::operator<<(v18, **(a1 + 32), *(*(a1 + 32) + 8));
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "_resources: {", 13);
      v22 = (*(v20 + 4) + 13);
      *(v20 + 4) = v22;
    }

    else
    {
      v20 = llvm::raw_ostream::write(v20, "_resources: {", 0xDuLL);
      v22 = *(v20 + 4);
    }

    ++*(v10 + 80);
    if (v22 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 10);
    }

    else
    {
      *(v20 + 4) = v22 + 1;
      *v22 = 10;
    }
  }

  v23 = *(a1 + 40);
  v24 = *v23;
  *v23 = 1;
  if (v24)
  {
    v25 = *(v10 + 16);
    v26 = *(v25 + 4);
    if (*(v25 + 3) != v26)
    {
      *v26 = 44;
      v27 = (*(v25 + 4) + 1);
LABEL_42:
      *(v25 + 4) = v27;
      goto LABEL_43;
    }

    v31 = ",";
    v32 = 1;
  }

  else
  {
    if (**(a1 + 48) == 1)
    {
      v28 = *(v10 + 16);
      v29 = *(v28 + 4);
      if (*(v28 + 3) == v29)
      {
        v28 = llvm::raw_ostream::write(v28, ",", 1uLL);
        v30 = *(v28 + 4);
      }

      else
      {
        *v29 = 44;
        v30 = (*(v28 + 4) + 1);
        *(v28 + 4) = v30;
      }

      ++*(v10 + 80);
      if (v30 >= *(v28 + 3))
      {
        llvm::raw_ostream::write(v28, 10);
      }

      else
      {
        *(v28 + 4) = v30 + 1;
        *v30 = 10;
      }
    }

    v33 = *(v10 + 16);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 3uLL)
    {
      *v34 = 538976288;
      *(v33 + 4) += 4;
    }

    else
    {
      v33 = llvm::raw_ostream::write(v33, "    ", 4uLL);
    }

    v25 = llvm::raw_ostream::operator<<(v33, **(a1 + 56), *(*(a1 + 56) + 8));
    v35 = *(v25 + 4);
    if ((*(v25 + 3) - v35) > 2)
    {
      *(v35 + 2) = 123;
      *v35 = 8250;
      v27 = (*(v25 + 4) + 3);
      goto LABEL_42;
    }

    v31 = ": {";
    v32 = 3;
  }

  v25 = llvm::raw_ostream::write(v25, v31, v32);
  v27 = *(v25 + 4);
LABEL_43:
  ++*(v10 + 80);
  if (v27 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 10);
  }

  else
  {
    *(v25 + 4) = v27 + 1;
    *v27 = 10;
  }

  v36 = *(v10 + 16);
  v37 = *(v36 + 4);
  if ((*(v36 + 3) - v37) > 5)
  {
    *(v37 + 4) = 8224;
    *v37 = 538976288;
    *(v36 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v36, "      ", 6uLL);
  }

  printKeywordOrString(a2, a3, *(v10 + 16));
  v38 = *(v10 + 16);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 1uLL)
  {
    *v39 = 8250;
    *(v38 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, ": ", 2uLL);
  }

  a4(p_p_p, *(v10 + 16));
LABEL_53:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }
}

llvm::raw_ostream *_ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_21OpAsmDialectInterfaceEJRNS_9SetVectorINSA_24AsmDialectResourceHandleENS_11SmallVectorISI_Lj0EEENS_8DenseSetISI_NS_12DenseMapInfoISI_vEEEELj0EEEEEEDaNS_9StringRefESS_RT_DpOT0_ENKUlSS_S4_E_clESS_S4_EUlS2_E_EEvlS2_(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v5 = &v6;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a4;
  v7[1] = a5;
  v6 = v7;
}

uint64_t anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v8 = a6;
  v7[0] = &v8;
  v7[1] = v9;
}

llvm::raw_ostream *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBool(llvm::StringRef,BOOL)::{lambda(llvm::raw_ostream &)#1}>(_BYTE **a1, llvm::raw_ostream *this)
{
  if (**a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (**a1)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  return llvm::raw_ostream::operator<<(this, v4, v3);
}

llvm::raw_ostream *llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildString(llvm::StringRef,llvm::StringRef)::{lambda(llvm::raw_ostream &)#1}>(llvm::raw_ostream ***a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v4 = 34;
    ++*(this + 4);
  }

  result = llvm::printEscapedString(**a1, (*a1)[1], this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "", 1uLL);
  }

  else
  {
    *v6 = 34;
    ++*(this + 4);
  }

  return result;
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::OperationPrinter::ResourceBuilder::buildBlob(llvm::StringRef,llvm::ArrayRef<char>,unsigned int)::{lambda(llvm::raw_ostream &)#1}>(int **a1, llvm::raw_ostream *this)
{
  v2 = this;
  v27[2] = *MEMORY[0x277D85DE8];
  v24 = **a1;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 2)
  {
    *(v4 + 2) = 120;
    *v4 = 12322;
    *(this + 4) += 3;
  }

  else
  {
    v2 = llvm::raw_ostream::write(this, "0x", 3uLL);
  }

  v25 = v27;
  v26 = xmmword_25D0A05B0;
  llvm::SmallVectorImpl<char>::resizeImpl<true>(&v25, 8uLL);
  v5 = 0;
  for (i = 0; i != 4; ++i)
  {
    v7 = *(&v24 + i);
    *(v25 + v5) = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
    *(v25 + v5 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF];
    v5 += 2;
  }

  std::string::basic_string[abi:nn200100](__dst, v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  if ((v23 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = __dst[1];
  }

  v10 = llvm::raw_ostream::write(v2, v8, v9);
  v11 = a1[1];
  v12 = *v11;
  v13 = *(v11 + 1);
  v25 = v27;
  v26 = xmmword_25D0A05B0;
  llvm::SmallVectorImpl<char>::resizeImpl<true>(&v25, 2 * v13);
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      *(v25 + v14) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 >> 4];
      *(v25 + v14 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 & 0xF];
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  std::string::basic_string[abi:nn200100](__p, v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  if ((v21 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = llvm::raw_ostream::write(v10, v16, v17);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "", 1uLL);
  }

  else
  {
    *v19 = 34;
    ++*(v18 + 4);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(__dst[0]);
  }
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, llvm::raw_ostream *a2, size_t a3, llvm::raw_ostream *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v50 = 0;
  v51 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v41 = 0;
    v45 = 0;
    v46 = 1;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v40 = &unk_286E79D28;
    v47 = &__p;
    llvm::raw_ostream::SetUnbuffered(&v40);
    a4(p_p_p, &v40);
    v12 = HIBYTE(v51);
    if (v51 < 0)
    {
      v12 = v50;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v40);
      goto LABEL_53;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v40);
    a4 = _ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_21OpAsmDialectInterfaceEJNS_9SetVectorINSA_24AsmDialectResourceHandleENS_11SmallVectorISI_Lj0EEENS_8DenseSetISI_NS_12DenseMapInfoISI_vEEEELj0EEEEEEDaNS_9StringRefESR_RT_DpOT0_ENKUlSR_S4_E_clESR_S4_EUlS2_E_EEvlS2_;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) == 1)
    {
      v15 = *(v10 + 16);
      v16 = *(v15 + 4);
      if (*(v15 + 3) == v16)
      {
        v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
        v17 = *(v15 + 4);
      }

      else
      {
        *v16 = 44;
        v17 = (*(v15 + 4) + 1);
        *(v15 + 4) = v17;
      }

      ++*(v10 + 80);
      if (v17 >= *(v15 + 3))
      {
        llvm::raw_ostream::write(v15, 10);
      }

      else
      {
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
      }
    }

    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8224;
      *(v18 + 4) += 2;
    }

    else
    {
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
    }

    v20 = llvm::raw_ostream::operator<<(v18, **(a1 + 32), *(*(a1 + 32) + 8));
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "_resources: {", 13);
      v22 = (*(v20 + 4) + 13);
      *(v20 + 4) = v22;
    }

    else
    {
      v20 = llvm::raw_ostream::write(v20, "_resources: {", 0xDuLL);
      v22 = *(v20 + 4);
    }

    ++*(v10 + 80);
    if (v22 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 10);
    }

    else
    {
      *(v20 + 4) = v22 + 1;
      *v22 = 10;
    }
  }

  v23 = *(a1 + 40);
  v24 = *v23;
  *v23 = 1;
  if (v24)
  {
    v25 = *(v10 + 16);
    v26 = *(v25 + 4);
    if (*(v25 + 3) != v26)
    {
      *v26 = 44;
      v27 = (*(v25 + 4) + 1);
LABEL_42:
      *(v25 + 4) = v27;
      goto LABEL_43;
    }

    v31 = ",";
    v32 = 1;
  }

  else
  {
    if (**(a1 + 48) == 1)
    {
      v28 = *(v10 + 16);
      v29 = *(v28 + 4);
      if (*(v28 + 3) == v29)
      {
        v28 = llvm::raw_ostream::write(v28, ",", 1uLL);
        v30 = *(v28 + 4);
      }

      else
      {
        *v29 = 44;
        v30 = (*(v28 + 4) + 1);
        *(v28 + 4) = v30;
      }

      ++*(v10 + 80);
      if (v30 >= *(v28 + 3))
      {
        llvm::raw_ostream::write(v28, 10);
      }

      else
      {
        *(v28 + 4) = v30 + 1;
        *v30 = 10;
      }
    }

    v33 = *(v10 + 16);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 3uLL)
    {
      *v34 = 538976288;
      *(v33 + 4) += 4;
    }

    else
    {
      v33 = llvm::raw_ostream::write(v33, "    ", 4uLL);
    }

    v25 = llvm::raw_ostream::operator<<(v33, **(a1 + 56), *(*(a1 + 56) + 8));
    v35 = *(v25 + 4);
    if ((*(v25 + 3) - v35) > 2)
    {
      *(v35 + 2) = 123;
      *v35 = 8250;
      v27 = (*(v25 + 4) + 3);
      goto LABEL_42;
    }

    v31 = ": {";
    v32 = 3;
  }

  v25 = llvm::raw_ostream::write(v25, v31, v32);
  v27 = *(v25 + 4);
LABEL_43:
  ++*(v10 + 80);
  if (v27 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 10);
  }

  else
  {
    *(v25 + 4) = v27 + 1;
    *v27 = 10;
  }

  v36 = *(v10 + 16);
  v37 = *(v36 + 4);
  if ((*(v36 + 3) - v37) > 5)
  {
    *(v37 + 4) = 8224;
    *v37 = 538976288;
    *(v36 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v36, "      ", 6uLL);
  }

  printKeywordOrString(a2, a3, *(v10 + 16));
  v38 = *(v10 + 16);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 1uLL)
  {
    *v39 = 8250;
    *(v38 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, ": ", 2uLL);
  }

  a4(p_p_p, *(v10 + 16));
LABEL_53:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }
}

llvm::raw_ostream *_ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_21OpAsmDialectInterfaceEJNS_9SetVectorINSA_24AsmDialectResourceHandleENS_11SmallVectorISI_Lj0EEENS_8DenseSetISI_NS_12DenseMapInfoISI_vEEEELj0EEEEEEDaNS_9StringRefESR_RT_DpOT0_ENKUlSR_S4_E_clESR_S4_EUlS2_E_EEvlS2_(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

void _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_18AsmResourcePrinterEJEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_(uint64_t a1, llvm::raw_ostream *a2, size_t a3, llvm::raw_ostream *(*a4)(const char ***a1, llvm::raw_ostream *this), void ***p_p_p)
{
  v10 = *(a1 + 8);
  (**a1)(*(*a1 + 8));
  __p = 0;
  v50 = 0;
  v51 = 0;
  p_p = &__p;
  if (*(v10 + 56))
  {
    v11 = *(v10 + 48);
    v41 = 0;
    v45 = 0;
    v46 = 1;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v40 = &unk_286E79D28;
    v47 = &__p;
    llvm::raw_ostream::SetUnbuffered(&v40);
    a4(p_p_p, &v40);
    v12 = HIBYTE(v51);
    if (v51 < 0)
    {
      v12 = v50;
    }

    if (v12 > v11)
    {
      llvm::raw_ostream::~raw_ostream(&v40);
      goto LABEL_53;
    }

    p_p_p = &p_p;
    llvm::raw_ostream::~raw_ostream(&v40);
    a4 = _ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_18AsmResourcePrinterEJEEEDaNS_9StringRefESI_RT_DpOT0_ENKUlSI_S4_E_clESI_S4_EUlS2_E_EEvlS2_;
  }

  v13 = *(a1 + 16);
  v14 = *v13;
  *v13 = 1;
  if ((v14 & 1) == 0)
  {
    if (**(a1 + 24) == 1)
    {
      v15 = *(v10 + 16);
      v16 = *(v15 + 4);
      if (*(v15 + 3) == v16)
      {
        v15 = llvm::raw_ostream::write(v15, ",", 1uLL);
        v17 = *(v15 + 4);
      }

      else
      {
        *v16 = 44;
        v17 = (*(v15 + 4) + 1);
        *(v15 + 4) = v17;
      }

      ++*(v10 + 80);
      if (v17 >= *(v15 + 3))
      {
        llvm::raw_ostream::write(v15, 10);
      }

      else
      {
        *(v15 + 4) = v17 + 1;
        *v17 = 10;
      }
    }

    v18 = *(v10 + 16);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8224;
      *(v18 + 4) += 2;
    }

    else
    {
      v18 = llvm::raw_ostream::write(v18, "  ", 2uLL);
    }

    v20 = llvm::raw_ostream::operator<<(v18, **(a1 + 32), *(*(a1 + 32) + 8));
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "_resources: {", 13);
      v22 = (*(v20 + 4) + 13);
      *(v20 + 4) = v22;
    }

    else
    {
      v20 = llvm::raw_ostream::write(v20, "_resources: {", 0xDuLL);
      v22 = *(v20 + 4);
    }

    ++*(v10 + 80);
    if (v22 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 10);
    }

    else
    {
      *(v20 + 4) = v22 + 1;
      *v22 = 10;
    }
  }

  v23 = *(a1 + 40);
  v24 = *v23;
  *v23 = 1;
  if (v24)
  {
    v25 = *(v10 + 16);
    v26 = *(v25 + 4);
    if (*(v25 + 3) != v26)
    {
      *v26 = 44;
      v27 = (*(v25 + 4) + 1);
LABEL_42:
      *(v25 + 4) = v27;
      goto LABEL_43;
    }

    v31 = ",";
    v32 = 1;
  }

  else
  {
    if (**(a1 + 48) == 1)
    {
      v28 = *(v10 + 16);
      v29 = *(v28 + 4);
      if (*(v28 + 3) == v29)
      {
        v28 = llvm::raw_ostream::write(v28, ",", 1uLL);
        v30 = *(v28 + 4);
      }

      else
      {
        *v29 = 44;
        v30 = (*(v28 + 4) + 1);
        *(v28 + 4) = v30;
      }

      ++*(v10 + 80);
      if (v30 >= *(v28 + 3))
      {
        llvm::raw_ostream::write(v28, 10);
      }

      else
      {
        *(v28 + 4) = v30 + 1;
        *v30 = 10;
      }
    }

    v33 = *(v10 + 16);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 3uLL)
    {
      *v34 = 538976288;
      *(v33 + 4) += 4;
    }

    else
    {
      v33 = llvm::raw_ostream::write(v33, "    ", 4uLL);
    }

    v25 = llvm::raw_ostream::operator<<(v33, **(a1 + 56), *(*(a1 + 56) + 8));
    v35 = *(v25 + 4);
    if ((*(v25 + 3) - v35) > 2)
    {
      *(v35 + 2) = 123;
      *v35 = 8250;
      v27 = (*(v25 + 4) + 3);
      goto LABEL_42;
    }

    v31 = ": {";
    v32 = 3;
  }

  v25 = llvm::raw_ostream::write(v25, v31, v32);
  v27 = *(v25 + 4);
LABEL_43:
  ++*(v10 + 80);
  if (v27 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 10);
  }

  else
  {
    *(v25 + 4) = v27 + 1;
    *v27 = 10;
  }

  v36 = *(v10 + 16);
  v37 = *(v36 + 4);
  if ((*(v36 + 3) - v37) > 5)
  {
    *(v37 + 4) = 8224;
    *v37 = 538976288;
    *(v36 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v36, "      ", 6uLL);
  }

  printKeywordOrString(a2, a3, *(v10 + 16));
  v38 = *(v10 + 16);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 1uLL)
  {
    *v39 = 8250;
    *(v38 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, ": ", 2uLL);
  }

  a4(p_p_p, *(v10 + 16));
LABEL_53:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }
}

llvm::raw_ostream *_ZN4llvm12function_refIFvRNS_11raw_ostreamEEE11callback_fnIZZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSA_18AsmResourcePrinterEJEEEDaNS_9StringRefESI_RT_DpOT0_ENKUlSI_S4_E_clESI_S4_EUlS2_E_EEvlS2_(const char ***a1, llvm::raw_ostream *this)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return llvm::raw_ostream::write(this, v4, v5);
}

llvm::raw_ostream *llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::OperationPrinter::printFileMetadataDictionary(mlir::Operation *)::$_0>(llvm::raw_ostream *result)
{
  v1 = *(result + 1);
  v2 = **result;
  **result = 1;
  if ((v2 & 1) == 0)
  {
    result = *(v1 + 16);
    ++*(v1 + 80);
    v3 = *(result + 4);
    if (v3 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v3 + 1;
      *v3 = 10;
    }

    v4 = *(result + 4);
    if ((*(result + 3) - v4) > 2)
    {
      *(v4 + 2) = 35;
      *v4 = 11643;
      v5 = (*(result + 4) + 3);
      *(result + 4) = v5;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "{-#", 3uLL);
      v5 = *(result + 4);
    }

    ++*(v1 + 80);
    if (v5 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v5 + 1;
      *v5 = 10;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>,mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>,mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          v22[1] = v20[1];
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOperationID(_anonymous_namespace_::OperationPrinter *this, mlir::Operation *a2, llvm::raw_ostream *a3)
{
  v9 = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>(a2 + 41, &v9);
  if (!result || (v6 = result, result == (*(a2 + 41) + 16 * *(a2 + 86))))
  {
    v8 = *(this + 4);
    if (*(this + 3) - v8 > 0x14uLL)
    {
      qmemcpy(v8, "<<UNKNOWN OPERATION>>", 21);
      *(this + 4) += 21;
    }

    else
    {
      return llvm::raw_ostream::write(this, "<<UNKNOWN OPERATION>>", 0x15uLL);
    }
  }

  else
  {
    v7 = *(this + 4);
    if (v7 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 37);
    }

    else
    {
      *(this + 4) = v7 + 1;
      *v7 = 37;
    }

    return write_unsigned<unsigned long long>(this, *(v6 + 8), 0, 0, 0);
  }

  return result;
}

uint64_t mlir::Operation::use_empty(mlir::Operation *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    v2 = this - 16;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0;
    v4 = v1 - 1;
    for (i = this - 16; ; i -= 16)
    {
      v6 = v2;
      if (v3)
      {
        v7 = *(this - 1) & 7;
        v8 = this - 16;
        v9 = v3;
        if (v7 == 6)
        {
          goto LABEL_10;
        }

        v10 = (5 - v7);
        v6 = i;
        v9 = v3 - v10;
        if (v3 > v10)
        {
          break;
        }
      }

LABEL_11:
      v11 = *v6;
      v12 = v11 == 0;
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4 == v3;
      }

      ++v3;
      if (v13)
      {
        return v12;
      }
    }

    v8 = this - 16 * v10 - 16;
LABEL_10:
    v6 = &v8[-24 * v9];
    goto LABEL_11;
  }

  return 1;
}

const void **llvm::SmallPtrSetImpl<mlir::Operation *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = (*a1 + 8 * *(a1 + v7));
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

void anonymous namespace::OperationPrinter::printValueUsers(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v22 = &v26;
    v23 = 1;
    v24 = 0;
    v25 = 1;
LABEL_7:
    for (i = 0; ; ++i)
    {
      v8 = v3[2];
      llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v22, v8, v21);
      if (v21[16] == 1)
      {
        if (i)
        {
          v9 = *(a1 + 16);
          v10 = *(v9 + 4);
          if (*(v9 + 3) - v10 > 1uLL)
          {
            *v10 = 8236;
            *(v9 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v9, ", ", 2uLL);
          }
        }

        v11 = *(v8 + 36);
        if (v11)
        {
          v12 = *(a1 + 16);
          if (v11 != 1)
          {
            v13 = v8 - 32;
            v14 = 1;
            while (1)
            {
              v15 = *(v12 + 4);
              if (*(v12 + 3) - v15 > 1uLL)
              {
                *v15 = 8236;
                *(v12 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v12, ", ", 2uLL);
              }

              v16 = *(v8 - 8) & 7;
              v17 = v8 - 16;
              v18 = v14;
              if (v16 == 6)
              {
                goto LABEL_22;
              }

              v19 = (5 - v16);
              v20 = v13;
              v18 = v14 - v19;
              if (v14 > v19)
              {
                break;
              }

LABEL_23:
              ++v14;
              v13 -= 16;
              if (v11 == v14)
              {
                goto LABEL_26;
              }
            }

            v17 = v8 - 16 - 16 * v19;
LABEL_22:
            v20 = v17 - 24 * v18;
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

LABEL_26:
      v3 = *v3;
      if (!v3)
      {
        if ((v25 & 1) == 0)
        {
          free(v22);
        }

        return;
      }
    }
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 4);
  if ((*(v5 + 3) - v6) > 5)
  {
    *(v6 + 4) = 25701;
    *v6 = 1937075829;
    *(v5 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v5, "unused", 6uLL);
  }

  v3 = *a2;
  v22 = &v26;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  if (v3)
  {
    goto LABEL_7;
  }
}

__n128 anonymous namespace::SSANameState::getBlockInfo(__n128 *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = ((a4 >> 4) ^ (a4 >> 9)) & (a3 - 1);
    v5 = *(a2 + 32 * v4);
    if (v5 == a4)
    {
      goto LABEL_8;
    }

    v6 = 1;
    while (v5 != -4096)
    {
      v7 = v4 + v6++;
      v4 = v7 & (a3 - 1);
      v5 = *(a2 + 32 * v4);
      if (v5 == a4)
      {
        goto LABEL_8;
      }
    }
  }

  v4 = a3;
LABEL_8:
  v12 = -1;
  v13 = "INVALIDBLOCK";
  v14 = 12;
  v8 = a2 + 32 * v4 + 8;
  v9 = v4 == a3;
  v10 = &v12;
  if (!v9)
  {
    v10 = v8;
  }

  result = *v10;
  *a1 = *v10;
  a1[1].n128_u64[0] = v10[1].n128_u64[0];
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_u32[2];
  v10 = a2 - 3;
  v11 = &a2[-5].n128_u32[2];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = a2[-2].n128_i32[2];
        v89 = &a2[-2].n128_i8[8];
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v207 = *(v12 + 16);
        v178 = *v12;
        v95 = *v89;
        *(v12 + 16) = *(v89 + 2);
        *v12 = v95;
        result = v178;
        *(v89 + 2) = v207;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v96 = *(v12 + 24);
      v97 = (v12 + 48);
      v98 = *(v12 + 48);
      if (v96 >= *v12)
      {
        if (v98 < v96)
        {
          v144 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
          *(v12 + 64) = v144;
          if (*(v12 + 24) < *v12)
          {
            v212 = *(v12 + 16);
            v183 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v183;
            *v91 = v183;
            *(v12 + 40) = v212;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v208 = *(v12 + 16);
          v179 = *v12;
          *v12 = *v97;
          *(v12 + 16) = *(v12 + 64);
          result = v179;
          *v97 = v179;
          v99 = v208;
          goto LABEL_185;
        }

        v215 = *(v12 + 16);
        v186 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v186;
        *v91 = v186;
        *(v12 + 40) = v215;
        if (v98 < *(v12 + 24))
        {
          v99 = *(v12 + 40);
          result = *v91;
          *v91 = *v97;
          *(v12 + 40) = *(v12 + 64);
          *v97 = result;
LABEL_185:
          *(v12 + 64) = v99;
        }
      }

      if (*v9 >= v97->n128_u32[0])
      {
        return result;
      }

      result = *v97;
      v150 = *(v12 + 64);
      v151 = a2[-1].n128_u64[1];
      *v97 = *v9;
      *(v12 + 64) = v151;
      a2[-1].n128_u64[1] = v150;
      *v9 = result;
      if (v97->n128_u32[0] >= v91->n128_u32[0])
      {
        return result;
      }

      v152 = *(v12 + 40);
      result = *v91;
      *v91 = *v97;
      *(v12 + 40) = *(v12 + 64);
      *v97 = result;
      *(v12 + 64) = v152;
LABEL_189:
      if (*(v12 + 24) < *v12)
      {
        v216 = *(v12 + 16);
        v187 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v187;
        *v91 = v187;
        v91[1].n128_u64[0] = v216;
      }

      return result;
    }

    if (v14 == 5)
    {

      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v100 = (v12 + 24);
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v105 = v100;
            v106 = *(v104 + 24);
            if (v106 < *v104)
            {
              v180 = *(v104 + 28);
              v209 = *(v104 + 44);
              v107 = v103;
              while (1)
              {
                v108 = v12 + v107;
                *(v108 + 24) = *(v12 + v107);
                *(v108 + 40) = *(v12 + v107 + 16);
                if (!v107)
                {
                  break;
                }

                v107 -= 24;
                if (v106 >= *(v108 - 24))
                {
                  v109 = v12 + v107 + 24;
                  goto LABEL_126;
                }
              }

              v109 = v12;
LABEL_126:
              *v109 = v106;
              result = v180;
              *(v109 + 20) = v209;
              *(v109 + 4) = v180;
            }

            v100 = (v105 + 24);
            v103 += 24;
            v104 = v105;
          }

          while (&v105[1].n128_i8[8] != a2);
        }
      }

      else if (!v102)
      {
        do
        {
          v145 = v100;
          v146 = *(a1 + 24);
          if (v146 < *a1)
          {
            v184 = *(a1 + 28);
            v213 = *(a1 + 44);
            do
            {
              *v100 = *(v100 - 24);
              v100[1].n128_u64[0] = v100[-1].n128_u64[1];
              v147 = v100[-3].n128_i32[0];
              v100 = (v100 - 24);
            }

            while (v146 < v147);
            v100->n128_u32[0] = v146;
            result = v184;
            v100[1].n128_u32[1] = v213;
            *(v100 + 4) = v184;
          }

          v100 = (v145 + 24);
          a1 = v145;
        }

        while ((v145 + 24) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = v12 + 24 * v113;
            v115 = *v114;
            if (2 * v112 + 2 < v14)
            {
              v116 = *(v114 + 24);
              v117 = v115 < v116;
              if (v115 <= v116)
              {
                v115 = *(v114 + 24);
              }

              if (v117)
              {
                v114 += 24;
                v113 = 2 * v112 + 2;
              }
            }

            v118 = v12 + 24 * v112;
            v119 = *v118;
            if (v115 >= *v118)
            {
              v210 = *(v118 + 20);
              v181 = *(v118 + 4);
              do
              {
                v120 = v118;
                v118 = v114;
                v121 = *v114;
                *(v120 + 16) = *(v114 + 16);
                *v120 = v121;
                if (v110 < v113)
                {
                  break;
                }

                v122 = (2 * v113) | 1;
                v114 = v12 + 24 * v122;
                v113 = 2 * v113 + 2;
                v123 = *v114;
                if (v113 >= v14)
                {
                  v113 = v122;
                }

                else
                {
                  v124 = *(v114 + 24);
                  v125 = v123 < v124;
                  if (v123 <= v124)
                  {
                    v123 = *(v114 + 24);
                  }

                  if (v125)
                  {
                    v114 += 24;
                  }

                  else
                  {
                    v113 = v122;
                  }
                }
              }

              while (v123 >= v119);
              *v118 = v119;
              *(v118 + 20) = v210;
              *(v118 + 4) = v181;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        v126 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v127 = 0;
          v211 = *(v12 + 16);
          v182 = *v12;
          v128 = v12;
          do
          {
            v129 = v128 + 24 * v127;
            v130 = v129 + 24;
            v131 = (2 * v127) | 1;
            v127 = 2 * v127 + 2;
            if (v127 >= v126)
            {
              v127 = v131;
            }

            else
            {
              v133 = *(v129 + 12);
              v132 = v129 + 48;
              if (*(v132 - 6) >= v133)
              {
                v127 = v131;
              }

              else
              {
                v130 = v132;
              }
            }

            v134 = *v130;
            v128[1].n128_u64[0] = *(v130 + 2);
            *v128 = v134;
            v128 = v130;
          }

          while (v127 <= ((v126 - 2) >> 1));
          a2 = (a2 - 24);
          if (v130 == a2)
          {
            result = v182;
            *(v130 + 2) = v211;
            *v130 = v182;
          }

          else
          {
            v135 = *a2;
            *(v130 + 2) = a2[1].n128_u64[0];
            *v130 = v135;
            result = v182;
            a2[1].n128_u64[0] = v211;
            *a2 = v182;
            v136 = &v130[-v12 + 24];
            if (v136 >= 25)
            {
              v137 = (-2 - 0x5555555555555555 * (v136 >> 3)) >> 1;
              v138 = v12 + 24 * v137;
              v139 = *v130;
              if (*v138 < *v130)
              {
                v158 = *(v130 + 5);
                v155 = *(v130 + 4);
                do
                {
                  v140 = v130;
                  v130 = v138;
                  v141 = *v138;
                  *(v140 + 2) = *(v138 + 16);
                  *v140 = v141;
                  if (!v137)
                  {
                    break;
                  }

                  v137 = (v137 - 1) >> 1;
                  v138 = v12 + 24 * v137;
                }

                while (*v138 < v139);
                *v130 = v139;
                result = v155;
                *(v130 + 5) = v158;
                *(v130 + 4) = v155;
              }
            }
          }

          v117 = v126-- <= 2;
        }

        while (!v117);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_u32[0];
      if (v16->n128_u32[0] >= *v12)
      {
        if (v17 < v18)
        {
          v190 = v16[1].n128_u64[0];
          v161 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v190;
          *v9 = v161;
          if (v16->n128_u32[0] < *v12)
          {
            v191 = *(v12 + 16);
            v162 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v191;
            *v16 = v162;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v188 = *(v12 + 16);
          v159 = *v12;
          v19 = *v9;
          *(v12 + 16) = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v194 = *(v12 + 16);
        v165 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (*v9 < v16->n128_u32[0])
        {
          v188 = v16[1].n128_u64[0];
          v159 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v188;
          *v9 = v159;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v32 = *(v29 - 24);
      v30 = (v29 - 24);
      v31 = v32;
      v33 = v10->n128_u32[0];
      if (v32 >= *(v12 + 24))
      {
        if (v33 < v31)
        {
          v195 = v30[1].n128_u64[0];
          v166 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v37;
          a2[-2].n128_u64[0] = v195;
          *v10 = v166;
          if (v30->n128_u32[0] < v28->n128_u32[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = a2[-2].n128_u64[0];
          *v28 = *v10;
          *(v12 + 40) = v36;
          a2[-2].n128_u64[0] = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (v10->n128_u32[0] < v30->n128_u32[0])
        {
          v197 = v30[1].n128_u64[0];
          v168 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v30 = v46;
          v34 = v168;
          a2[-2].n128_u64[0] = v197;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v51 = *(v48 + 24);
      v49 = (v48 + 24);
      v50 = v51;
      v52 = *v11;
      if (v51 >= *(v12 + 48))
      {
        if (v52 < v50)
        {
          v198 = v49[1].n128_u64[0];
          v169 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v56;
          a2[-4].n128_u64[1] = v198;
          *v11 = v169;
          if (v49->n128_u32[0] < v47->n128_u32[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v50)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = a2[-4].n128_u64[1];
          *v47 = *v11;
          *(v12 + 64) = v55;
          a2[-4].n128_u64[1] = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_u32[0])
        {
          v199 = v49[1].n128_u64[0];
          v170 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = a2[-4].n128_u64[1];
          *v49 = v63;
          v53 = v170;
          a2[-4].n128_u64[1] = v199;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_u32[0];
      v65 = v49->n128_u32[0];
      if (v16->n128_u32[0] >= v30->n128_u32[0])
      {
        if (v65 < v64)
        {
          v201 = v16[1].n128_u64[0];
          v172 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v201;
          *v49 = v172;
          if (v16->n128_u32[0] < v30->n128_u32[0])
          {
            v202 = v30[1].n128_u64[0];
            v173 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v202;
            *v16 = v173;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v200 = v30[1].n128_u64[0];
          v171 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v203 = v30[1].n128_u64[0];
        v174 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v203;
        *v16 = v174;
        if (v49->n128_u32[0] < v16->n128_u32[0])
        {
          v200 = v16[1].n128_u64[0];
          v171 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v200;
          *v49 = v171;
        }
      }

      v204 = *(v12 + 16);
      v175 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v204;
      *v16 = v175;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_u32[0])
    {
      if (v17 < v20)
      {
        v192 = *(v12 + 16);
        v163 = *v12;
        v24 = *v9;
        *(v12 + 16) = a2[-1].n128_u64[1];
        *v12 = v24;
        a2[-1].n128_u64[1] = v192;
        *v9 = v163;
        if (*v12 < v16->n128_u32[0])
        {
          v193 = v16[1].n128_u64[0];
          v164 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v193;
          *v12 = v164;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v196 = v16[1].n128_u64[0];
      v167 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v196;
      *v12 = v167;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v189 = *(v12 + 16);
      v160 = *v12;
      v42 = *v9;
      *(v12 + 16) = a2[-1].n128_u64[1];
      *v12 = v42;
    }

    else
    {
      v189 = v16[1].n128_u64[0];
      v160 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
    }

    a2[-1].n128_u64[1] = v189;
    *v9 = v160;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v156 = *(v12 + 20);
      v153 = *(v12 + 4);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = v71[-2].n128_i32[2];
          v71 = (v71 - 24);
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = v71[-2].n128_i32[2];
          v71 = (v71 - 24);
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v205 = *(v12 + 16);
          v176 = *v12;
          v75 = *v74;
          *(v12 + 16) = v74[1].n128_u64[0];
          *v12 = v75;
          v74[1].n128_u64[0] = v205;
          *v74 = v176;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = v74[-2].n128_i32[2];
            v74 = (v74 - 24);
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      result = v153;
      *(v12 - 4) = v156;
      *(v12 - 20) = v153;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      {
        a2 = (v12 - 24);
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        a4 = 0;
      }
    }

    else
    {
      v157 = *(v12 + 20);
      v154 = *(v12 + 4);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = v83[-2].n128_i32[2];
          v83 = (v83 - 24);
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v206 = *(v12 + 16);
        v177 = *v12;
        v85 = *v83;
        *(v12 + 16) = v83[1].n128_u64[0];
        *v12 = v85;
        v83[1].n128_u64[0] = v206;
        *v83 = v177;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = v83[-2].n128_i32[2];
          v83 = (v83 - 24);
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v154;
      *(v12 - 4) = v157;
      *(v12 - 20) = v154;
    }
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v94 = a2[-2].n128_u32[2];
  v89 = &a2[-2].n128_i8[8];
  v93 = v94;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v142 = *(v12 + 40);
    v143 = *(v89 + 2);
    *v91 = *v89;
    *(v12 + 40) = v143;
    *(v89 + 2) = v142;
    *v89 = result;
    goto LABEL_189;
  }

  if (v93 < v92)
  {
    goto LABEL_106;
  }

  v214 = *(v12 + 16);
  v185 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v185;
  *v91 = v185;
  *(v12 + 40) = v214;
  if (*v89 < *(v12 + 24))
  {
    result = *v91;
    v148 = *(v12 + 40);
    v149 = *(v89 + 2);
    *v91 = *v89;
    *(v12 + 40) = v149;
    *(v89 + 2) = v148;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::OperationPrinter::print(mlir::Block *,BOOL,BOOL)::$_1 &,anonymous namespace::BlockInfo *>(uint64_t a1, int *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 6);
      v4 = (a2 - 6);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u32[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 6);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u32[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v23->n128_u32[0] >= v21->n128_u32[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 6);
    v4 = (a2 - 6);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u32[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_u32[0])
    {
      v64 = *(v47 + 1);
      v65 = v47[5];
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 4) = v64;
      *(v53 + 20) = v65;
      if (++v49 == 8)
      {
        return v47 + 6 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 6;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void **llvm::SmallVector<mlir::FallbackAsmResourceMap::OpaqueAsmResource,1u>::~SmallVector(void **a1)
{
  llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::destroy_range(*a1, *a1 + 12 * *(a1 + 2));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::destroy_range(void **a1, void **a2)
{
  if (a2 != a1)
  {
    v9 = v2;
    v10 = v3;
    v4 = a2;
    do
    {
      v6 = *(v4 - 2);
      if (v6 != -1)
      {
        (*(&off_286E775A8 + v6))(&v8, (v4 - 9));
      }

      v7 = v4 - 12;
      *(v4 - 2) = -1;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v7);
      }

      v4 -= 12;
    }

    while (v7 != a1);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4mlir15AsmResourceBlobEbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJS9_bSF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void std::vector<std::unique_ptr<mlir::AsmResourcePrinter>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::AsmResourcePrinter>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<mlir::AsmResourcePrinter>>::clear[abi:nn200100](void *result)
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

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(a1[1]);
  v3 = *(*v1 + 536);

  return v3(v1, v2);
}

uint64_t llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(uint64_t *a1)
{
  v2 = *(a1 + 2);
  if (v2 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a1, 0);
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  else
  {
    v3 = *a1;
    *(*a1 + 8 * v2) = 0;
    v4 = v2 + 1;
    *(a1 + 2) = v4;
  }

  return v3 + 8 * v4 - 8;
}

uint64_t mlir::Diagnostic::operator<<<25ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<16ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<2ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void **llvm::object_deleter<anonymous namespace::AsmPrinterOptions>::call(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 254;
    result[254] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((result + 273));
    llvm::cl::Option::~Option(v2);
    v1[231] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 250));
    llvm::cl::Option::~Option(v1 + 231);
    v1[208] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 227));
    llvm::cl::Option::~Option(v1 + 208);
    v1[185] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 204));
    llvm::cl::Option::~Option(v1 + 185);
    v1[162] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 181));
    llvm::cl::Option::~Option(v1 + 162);
    v1[139] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 158));
    llvm::cl::Option::~Option(v1 + 139);
    v1[116] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 135));
    llvm::cl::Option::~Option(v1 + 116);
    v1[93] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 112));
    llvm::cl::Option::~Option(v1 + 93);
    v1[70] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 89));
    llvm::cl::Option::~Option(v1 + 70);
    v1[47] = &unk_286E79210;
    std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((v1 + 66));
    llvm::cl::Option::~Option(v1 + 47);
    v1[24] = &unk_286E79210;
    std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100]((v1 + 43));
    llvm::cl::Option::~Option(v1 + 24);
    *v1 = &unk_286E775D0;
    std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((v1 + 20));
    llvm::cl::Option::~Option(v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<long long>::parse(a1 + 152, a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::~opt(void **a1)
{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E775D0;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100]((a1 + 20));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::printOptionValue(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 144) != 1 || *(result + 136) != *(result + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 120);
    v6 = *(result + 136);
    v8 = *(result + 144);
    v7[0] = &unk_286E77638;
    v7[1] = v6;
    llvm::cl::parser<long long>::printOptionDiff((result + 152), result, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::setDefault(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [23],llvm::cl::initializer<BOOL>,llvm::cl::desc>(uint64_t a1, const char *a2, _BYTE **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E76000;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79348;
  *(v8 + 144) = &unk_286E79090;
  *(v8 + 152) = &unk_286E76020;
  *(v8 + 176) = v8 + 152;
  v9 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v9, v10, v11, v12);
  v13 = *a3;
  *(a1 + 120) = **a3;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v13;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t **llvm::StringMap<unsigned int,llvm::MallocAllocator>::insert(llvm::StringMapImpl *a1, unsigned __int8 **a2, const unsigned __int8 *a3, unint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = llvm::xxh3_64bits(*a2, v7, a3, a4);
  return llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(a1, v6, v7, v8, a2 + 4);
}

uint64_t **llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v15 = buffer;
  v16 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v16 + a3) = 0;
  *v15 = a3;
  *(v15 + 2) = *a5;
  *i = v15;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v16);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[32 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = *(v5 + 2);
      *v8 = v9;
      *v5 = 0;
      *(v5 + 1) = 0;
      v10 = *(v5 + 3);
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v8[3] = v10;
      v8 += 4;
      v5 += 32;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[32 * v11 - 9];
      v13 = -32 * v11;
      do
      {
        v14 = *(v12 + 1);
        *(v12 + 1) = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        if (*v12 < 0)
        {
          operator delete(*(v12 - 23));
        }

        v12 -= 32;
        v13 += 32;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v15 = v16;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v15;
}

void *mlir::FallbackAsmResourceMap::ResourceCollection::ResourceCollection(void *a1, void *a2, size_t a3)
{
  *a1 = &unk_286E771D8;
  v4 = a1 + 1;
  if (a2)
  {
    std::string::basic_string[abi:nn200100](v4, a2, a3);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *a1 = &unk_286E77228;
  a1[4] = a1 + 6;
  a1[5] = 0x100000000;
  return a1;
}

uint64_t mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::AsmResourcePrinter::fromCallable<mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &>(llvm::StringRef,mlir::FallbackAsmResourceMap::getPrinters(void)::$_0 &)::Printer::buildResources(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    v6 = 0;
    v7 = *(v3 + 32);
    v8 = 96 * v4;
    do
    {
      v9 = (v7 + v6);
      v10 = *(v7 + v6 + 88);
      if (v10 == 1)
      {
        v14 = *(v9 + 23);
        if (v14 >= 0)
        {
          v15 = v7 + v6;
        }

        else
        {
          v15 = *v9;
        }

        if (v14 >= 0)
        {
          v16 = *(v9 + 23);
        }

        else
        {
          v16 = v9[1];
        }

        result = (*(*a3 + 16))(a3, v15, v16, *(v9 + 24));
      }

      else if (v10)
      {
        v17 = v9 + 3;
        v18 = v7 + v6;
        v19 = *(v7 + v6 + 23);
        if (v19 >= 0)
        {
          v20 = v7 + v6;
        }

        else
        {
          v20 = *(v7 + v6);
        }

        if (v19 >= 0)
        {
          v21 = *(v7 + v6 + 23);
        }

        else
        {
          v21 = *(v7 + v6 + 8);
        }

        v22 = *(v18 + 47);
        v23 = v9[3];
        if (v22 >= 0)
        {
          v24 = v17;
        }

        else
        {
          v24 = v23;
        }

        if (v22 >= 0)
        {
          v25 = *(v18 + 47);
        }

        else
        {
          v25 = *(v18 + 32);
        }

        result = (*(*a3 + 24))(a3, v20, v21, v24, v25);
      }

      else
      {
        v11 = *(v7 + v6 + 23);
        if (v11 >= 0)
        {
          v12 = v7 + v6;
        }

        else
        {
          v12 = *(v7 + v6);
        }

        if (v11 >= 0)
        {
          v13 = *(v7 + v6 + 23);
        }

        else
        {
          v13 = *(v7 + v6 + 8);
        }

        result = (*(*a3 + 32))(a3, v12, v13, v9[3], *(v7 + v6 + 32), *(v7 + v6 + 40));
      }

      v6 += 96;
    }

    while (v8 != v6);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v12);
  v8 = &v7[24 * *(a1 + 8)];
  v10 = *a2;
  v9 = *(a2 + 8);
  v14 = *a3;
  v15 = *(a3 + 2);
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v16, (a3 + 24));
  v16[32] = *(a3 + 56);
  v17 = 0;
  mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v8, v10, v9, &v14);
  if (v17 != -1)
  {
    (*(&off_286E775A8 + v17))(&v13, &v14);
  }

  v17 = -1;
  llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

void llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::moveElementsForGrow(__int128 **a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v6 = &v2[6 * v3];
    do
    {
      v7 = *v2;
      *(a2 + 2) = *(v2 + 2);
      *a2 = v7;
      *(v2 + 1) = 0;
      *(v2 + 2) = 0;
      *v2 = 0;
      *(a2 + 24) = 0;
      v8 = (a2 + 6);
      *(v8 + 16) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(v8, v2 + 24);
      v2 += 6;
      a2 = (v8 + 72);
    }

    while (v2 != v6);
    v2 = *a1;
    v9 = *(a1 + 2);
  }

  else
  {
    v9 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::destroy_range(v2, &v2[6 * v9]);
}

mlir::AsmResourceBlob *std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(mlir::AsmResourceBlob *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4 != -1)
  {
    result = (*(&off_286E775A8 + v4))(&v7, result);
  }

  v3[16] = -1;
  v5 = *(a2 + 64);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_286E77700[v5])(&v6, a2);
    v3[16] = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  result = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v3 + 24, (a2 + 24));
  *(v3 + 56) = *(a2 + 56);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::AsmResourceBlob,BOOL,std::string> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

void *mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(void *__dst, void *a2, size_t a3, uint64_t a4)
{
  if (a2)
  {
    std::string::basic_string[abi:nn200100](__dst, a2, a3);
  }

  else
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  *(__dst + 24) = 0;
  *(__dst + 22) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<mlir::AsmResourceBlob,BOOL,std::string>,(std::__variant_detail::_Trait)1>>((__dst + 3), a4);
  return __dst;
}

void llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v12);
  v8 = &v7[24 * *(a1 + 8)];
  v9 = *a2;
  v10 = *(a2 + 8);
  v14[0] = *a3;
  v15 = 1;
  mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v8, v9, v10, v14);
  if (v15 != -1)
  {
    (*(&off_286E775A8 + v15))(&v13, v14);
  }

  v15 = -1;
  llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

void llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 96, &v12);
  v8 = &v7[24 * *(a1 + 8)];
  v9 = *a2;
  v10 = *(a2 + 8);
  v14 = *a3;
  v15 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v16 = 2;
  mlir::FallbackAsmResourceMap::OpaqueAsmResource::OpaqueAsmResource(v8, v9, v10, &v14);
  if (v16 != -1)
  {
    (*(&off_286E775A8 + v16))(&v13, &v14);
  }

  v16 = -1;
  llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

uint64_t mlir::detail::AsmStateImpl::AsmStateImpl(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(a1, *(***(a2 + 24) + 32));
  *(v7 + 184) = 0u;
  v8 = v7 + 184;
  *(v7 + 56) = v7 + 72;
  *(v7 + 64) = 0x600000000;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = v7 + 184;
  *(v7 + 176) = 0;
  *(v7 + 200) = v7 + 216;
  *(v7 + 208) = 0x400000000;
  *(v7 + 248) = v7 + 264;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 1;
  *(v7 + 280) = 0;
  v9 = (v7 + 280);
  *(v7 + 296) = 0;
  *(v7 + 288) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 336) = 0;
  *(v7 + 344) = 0;
  *(v7 + 352) = 0;
  *(v7 + 360) = 0;
  *(v7 + 368) = 0;
  *(v7 + 376) = 0;
  *(v7 + 384) = 0;
  *(v7 + 392) = 0;
  v10 = v7 + 400;
  *(v7 + 400) = 0;
  *(v7 + 408) = 0;
  *(v7 + 416) = 0;
  *(v7 + 424) = 0;
  *(v7 + 432) = 0;
  *(v7 + 440) = 0;
  *(v7 + 448) = v7 + 464;
  *(v7 + 456) = 0x400000000;
  *(v7 + 496) = v7 + 512;
  *(v7 + 504) = 0;
  *(v7 + 512) = 0;
  *(v7 + 520) = 1;
  *(v7 + 528) = 0;
  *(v7 + 536) = 0;
  v11 = *a3;
  v12 = a3[1];
  v69 = a3;
  *(v7 + 576) = a3[2];
  *(v7 + 560) = v12;
  *(v7 + 544) = v11;
  v85[0] = 0;
  v85[1] = 0;
  v85[2] = v86;
  v85[3] = 0x400000000;
  v86[4] = v87;
  v86[5] = 0;
  v87[0] = 0;
  v87[1] = 1;
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v85, 0x18uLL, 3);
  v68 = v10;
  *v13 = v10;
  v13[1] = *(v8 + 240);
  v70 = v8;
  *(v8 + 240) = v13;
  v13[2] = 0;
  v82 = v84;
  v83 = 0x800000000;
  v14 = *(a2 + 44);
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = v13;
    v16 = (((a2 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    v17 = 24 * (v14 & 0x7FFFFF);
    do
    {
      v88 = v16;
      *&v89 = *(a1 + 528);
      DWORD2(v89) = *(a1 + 536);
      v90 = v15;
      v18 = llvm::SmallVectorTemplateCommon<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,true>>(&v82, &v88);
      v19 = v82 + 32 * v83;
      v20 = v18[1];
      *v19 = *v18;
      v19[1] = v20;
      LODWORD(v83) = v83 + 1;
      v16 += 3;
      v17 -= 24;
    }

    while (v17);
  }

  v24 = v83;
  for (i = v70; v83; v24 = v83)
  {
    v26 = v82 + 32 * v24;
    v27 = *(v26 - 4);
    if ((*(v69 + 20) & 0x84) != 0)
    {
      v28 = *(v26 - 1);
    }

    else
    {
      v29 = *(v26 - 4);
      v28 = *(v26 - 1);
      *(a1 + 528) = *(v26 - 3);
      *(a1 + 536) = v29;
    }

    LODWORD(v83) = v24 - 1;
    while (1)
    {
      v30 = *(i + 240);
      if (v30 == v28)
      {
        break;
      }

      llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v30, v21, v22, v23);
    }

    v31 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v85, 0x18uLL, 3);
    *v31 = v68;
    v31[1] = *(a1 + 424);
    *(a1 + 424) = v31;
    v31[2] = 0;
    v72 = v9;
    if ((*(a1 + 584) & 4) == 0)
    {
      v32 = v27[2];
      if (v32)
      {
        v33 = llvm::DefaultDoCastIfPossible<mlir::OpAsmOpInterface,mlir::Operation *,llvm::CastInfo<mlir::OpAsmOpInterface,mlir::Operation *,void>>::doCastIfPossible(v32);
        if (v33)
        {
        }
      }
    }

    v34 = v27[1];
    if (v34 != v27)
    {
      v35 = 0;
      v71 = v27;
      do
      {
        if (v34)
        {
          v36 = v34 - 1;
        }

        else
        {
          v36 = 0;
        }

        v88 = v36;
        LODWORD(v89) = -1;
        *(&v89 + 1) = &byte_25D0A27DF;
        v90 = 0;
        __p = 0;
        v38 = __p;
        if (!v37)
        {
          *v38 = v36;
          *(v38 + 8) = v89;
          *(v38 + 3) = v90;
          __p = 0;
          v75 = 0;
          k = 0;
          LODWORD(v89) = 0;
          v92 = 0;
          v93 = 1;
          v90 = 0;
          v91 = 0;
          *(&v89 + 1) = 0;
          v88 = &unk_286E79D28;
          p_p = &__p;
          llvm::raw_ostream::SetUnbuffered(&v88);
          v39 = v91;
          if (v90 - v91 > 2)
          {
            *(v91 + 2) = 98;
            *v39 = 25182;
            v91 += 3;
          }

          else
          {
            llvm::raw_ostream::write(&v88, "^bb", 3uLL);
          }

          write_unsigned<unsigned long long>(&v88, v35, 0, 0, 0);
          llvm::raw_ostream::~raw_ostream(&v88);
          v40 = k >= 0 ? HIBYTE(k) : v75;
          if (v40)
          {
            v41 = k >= 0 ? &__p : __p;
            v42 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v70 + 248), v40, 0);
            memmove(v42, v41, v40);
          }

          else
          {
            v42 = 0;
          }

          *(v38 + 2) = v42;
          *(v38 + 3) = v40;
          if (SHIBYTE(k) < 0)
          {
            operator delete(__p);
          }
        }

        *(v38 + 2) = v35;
        v43 = *((v36[3] & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v43)
        {
          v44 = v43 - 8 == v36;
        }

        else
        {
          v44 = v34 == 0;
        }

        if (v44)
        {
          v45 = "arg";
        }

        else
        {
          v45 = &byte_25D0A27DF;
        }

        v46 = 3;
        if (!v44)
        {
          v46 = 0;
        }

        v88 = &v90;
        v89 = xmmword_25D0A05C0;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v88, v45, &v45[v46]);
        LODWORD(v75) = 2;
        v79 = 0;
        v80 = 1;
        v77 = 0;
        v78 = 0;
        k = 0;
        __p = &unk_286E79DA0;
        v81 = &v88;
        llvm::raw_ostream::SetUnbuffered(&__p);
        v47 = v36[6];
        v48 = v36[7];
        while (v47 != v48)
        {
          v73 = *v47;
          if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(v9, &v73))
          {
            if (v44)
            {
              llvm::SmallVectorImpl<char>::resizeImpl<false>(&v88, 3uLL);
              v49 = *(a1 + 532);
              *(a1 + 532) = v49 + 1;
              write_unsigned<unsigned long long>(&__p, v49, 0, 0, 0);
            }

            ValueNameFromLoc = *v81;
            v51 = v81[1];
            if ((*(a1 + 584) & 0x100) != 0)
            {
              v51 = v52;
            }
          }

          ++v47;
        }

        for (j = v36[5]; j != (v36 + 4); j = *(j + 1))
        {
        }

        llvm::raw_ostream::~raw_ostream(&__p);
        if (v88 != &v90)
        {
          free(v88);
        }

        ++v35;
        v34 = v34[1];
        v27 = v71;
      }

      while (v34 != v71);
      v34 = v71[1];
      i = v70;
    }

    if (*v27 != v27)
    {
      while (v34 != v27)
      {
        v54 = v34 - 1;
        if (!v34)
        {
          v54 = 0;
        }

        if (v54[4] != v54 + 4)
        {
          break;
        }

        v34 = v34[1];
      }

      if (v34 != v27)
      {
        v55 = v34 - 1;
        if (!v34)
        {
          v55 = 0;
        }

        v56 = v55[5];
        __p = v27;
        v75 = v34;
        for (k = v56; k; v56 = k)
        {
          v57 = *(v56 + 44);
          if ((v57 & 0x7FFFFF) != 0)
          {
            v58 = (v56 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 32 * *(v56 + 40) + 64);
            v59 = 24 * (v57 & 0x7FFFFF);
            do
            {
              v88 = v58;
              *&v89 = *(a1 + 528);
              DWORD2(v89) = *(a1 + 536);
              v90 = v31;
              v60 = llvm::SmallVectorTemplateCommon<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,true>>(&v82, &v88);
              v61 = v82 + 32 * v83;
              v62 = v60[1];
              *v61 = *v60;
              v61[1] = v62;
              LODWORD(v83) = v83 + 1;
              v58 += 3;
              v59 -= 24;
            }

            while (v59);
          }

          mlir::Region::OpIterator::operator++(&__p);
        }
      }
    }
  }

  while (1)
  {
    v63 = *(i + 240);
    if (!v63)
    {
      break;
    }

    llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v63, v21, v22, v23);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v85);
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  v64 = *v69;
  v65 = v69[2];
  *(a1 + 640) = v69[1];
  *(a1 + 656) = v65;
  *(a1 + 624) = v64;
  *(a1 + 672) = a4;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 704) = a1 + 720;
  *(a1 + 712) = 0;
  return a1;
}

uint64_t mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID();
  {
    v8 = v4;
    v4 = v8;
    if (v6)
    {
      llvm::getTypeName<mlir::OpAsmDialectInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpAsmDialectInterface>();
      *algn_27FC175D8 = v7;
      v4 = v8;
    }
  }

  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_286E77728;
  return result;
}

void mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::~DialectInterfaceCollection(mlir::detail::DialectInterfaceCollectionBase *a1)
{
  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(a1);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::SSANameState::numberValuesInOp(_anonymous_namespace_::SSANameState *this, mlir::Operation *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  __base = v26;
  __nel = 0x200000000;
  llvm::SmallVectorImpl<int>::assign(&__base, 1uLL, 0);
  v22[0] = this;
  v22[1] = &__base;
  v21 = this;
  if ((*(this + 152) & 4) == 0)
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::OpAsmOpInterface,mlir::Operation *,llvm::CastInfo<mlir::OpAsmOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
    if (v4)
    {
      v6 = v4;
      v7 = v5;
    }
  }

  if (!*(a2 + 9))
  {
    if ((*(this + 152) & 0x40) != 0)
    {
      v23 = a2;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int &>(this + 48, &v23, this + 62, v19);
      if (v20 == 1)
      {
        ++*(this + 62);
      }
    }

    goto LABEL_33;
  }

  v18 = a2 - 16;
  if ((*(this + 152) & 0x100) != 0 && !llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(this, &v18))
  {
    if ((~*(v18 + 8) & 7) != 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
      if (!v10)
      {
LABEL_13:
        v11 = (v18 + 32);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }

    v11 = (v10 + 24);
LABEL_19:
    v17 = *v11;
    v19[0] = 0;
    v23 = v19;
    mlir::LocationAttr::walk(&v17, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::NameLoc mlir::LocationAttr::findInstanceOf<mlir::NameLoc>(void)::{lambda(mlir::NameLoc)#1}>, &v23);
    if (v19[0])
    {
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>(this, &v18, this + 62, v19);
  if (v20 == 1)
  {
    ++*(this + 62);
  }

  if (__nel)
  {
    if (__nel == 1)
    {
      goto LABEL_33;
    }

    qsort(__base, __nel, 4uLL, llvm::array_pod_sort_comparator<int>);
  }

  v12 = *(this + 9);
  v23 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::LookupBucketFor<mlir::Operation *>(v12, *(this + 22), a2, &v23) & 1) == 0)
  {
    v14 = v23;
    v19[0] = v23;
    v15 = *(this + 20);
    v16 = *(this + 22);
    if (4 * v15 + 4 >= 3 * v16)
    {
      v16 *= 2;
    }

    else if (v16 + ~v15 - *(this + 21) > v16 >> 3)
    {
LABEL_29:
      *(this + 20) = v15 + 1;
      if (*v14 != -4096)
      {
        --*(this + 21);
      }

      *v14 = a2;
      *(v14 + 1) = v14 + 24;
      *(v14 + 2) = 0x100000000;
      if (__nel)
      {
        llvm::SmallVectorImpl<int>::operator=(v14 + 8, &__base);
      }

      goto LABEL_33;
    }

    llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(this + 72, v16, v13);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::LookupBucketFor<mlir::Operation *>(*(this + 9), *(this + 22), a2, v19);
    v15 = *(this + 20);
    v14 = v19[0];
    goto LABEL_29;
  }

LABEL_33:
  if (__base != v26)
  {
    free(__base);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::tuple<mlir::Region *,unsigned int,unsigned int,unsigned int,llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator> *>,true>>(uint64_t a1, unint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int &>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

unint64_t *anonymous namespace::SSANameState::setValueName(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v38[0] = *MEMORY[0x277D85DE8];
  v26 = a2;
  if (a4)
  {
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v26) = -1;
    v34 = v36;
    v35 = xmmword_25D0A05B0;
    v7 = sanitizeIdentifier(a3, a4, &v34, "$._-", 4uLL, 1);
    v9 = v8;
    *&v30 = v7;
    *(&v30 + 1) = v8;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::doFind<llvm::StringRef>(*(a1 + 120), *(a1 + 136), &v30, v10))
    {
      v31 = v33;
      v32 = xmmword_25D0A05D0;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v31, v7, &v7[v9]);
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v31, 95);
      while (1)
      {
        v11 = *(a1 + 256);
        *(a1 + 256) = v11 + 1;
        v12 = v38;
        if (v11)
        {
          do
          {
            *--v12 = (v11 % 0xA) | 0x30;
            v13 = v11 > 9;
            v11 /= 0xAuLL;
          }

          while (v13);
        }

        else
        {
          v37 = 48;
          v12 = &v37;
        }

        std::string::__init_with_size[abi:nn200100]<char *,char *>(&__p, v12, v38, v38 - v12);
        v14 = v29;
        if (v29 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v29 < 0)
        {
          v14 = v28;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(&v31, p_p, &p_p[v14]);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        __p = v31;
        v28 = v32;
        if (!llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::doFind<llvm::StringRef>(*(a1 + 120), *(a1 + 136), &__p, v16))
        {
          break;
        }

        llvm::SmallVectorImpl<char>::resizeImpl<false>(&v31, *(&v30 + 1) + 1);
      }

      v9 = v32;
      if (v32)
      {
        v17 = v31;
        v18 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((a1 + 152), v32, 0);
        memmove(v18, v17, v9);
      }

      else
      {
        v18 = 0;
      }

      *&v30 = v18;
      *(&v30 + 1) = v9;
      if (v31 != v33)
      {
        free(v31);
      }
    }

    else
    {
      if (v9)
      {
        v18 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((a1 + 152), v9, 0);
        memmove(v18, v7, v9);
      }

      else
      {
        v18 = 0;
      }

      *&v30 = v18;
      *(&v30 + 1) = v9;
    }

    v21 = *(a1 + 144);
    v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[]((a1 + 120), &v30);
    v23 = *(v21 + 16);
    v24 = *v22;
    buffer = llvm::allocate_buffer(0x28, 8uLL);
    *(buffer + 1) = v30;
    *(buffer + 32) = 0;
    *buffer = v23;
    buffer[1] = v24;
    *v22 = buffer;
    *(v21 + 16) = buffer;
    if (v34 != v36)
    {
      free(v34);
    }

    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[]((a1 + 24), &v26);
    *result = v18;
    result[1] = v9;
  }

  else
  {
    v19 = *(a1 + 248);
    *(a1 + 248) = v19 + 1;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1, &v26);
    *result = v19;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int &>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void llvm::SmallVectorImpl<int>::assign(_DWORD *result, unint64_t a2, int a3)
{
  if (result[3] >= a2)
  {
    v3 = *result;
    v4 = result[2];
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = result[2];
    }

    if (v5)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (v3 + 8);
      do
      {
        v9 = vdupq_n_s64(v6);
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A0500)));
        if (vuzp1_s16(v10, *v7.i8).u8[0])
        {
          *(v8 - 2) = a3;
        }

        if (vuzp1_s16(v10, *&v7).i8[2])
        {
          *(v8 - 1) = a3;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A04F0)))).i32[1])
        {
          *v8 = a3;
          v8[1] = a3;
        }

        v6 += 4;
        v8 += 4;
      }

      while (((v5 + 3) & 0x1FFFFFFFCLL) != v6);
      v4 = result[2];
    }

    v11 = a2 - v4;
    if (a2 > v4)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v3 + 4 * v4 + 8);
      do
      {
        v15 = vdupq_n_s64(v12);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 2) = a3;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 1) = a3;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = a3;
          v14[1] = a3;
        }

        v12 += 4;
        v14 += 4;
      }

      while (((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
    }

    result[2] = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<int,true>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<int,true>::growAndAssign(_DWORD *a1, unint64_t a2, int a3)
{
  a1[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 4);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vdupq_n_s64(v6);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A0500)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = a3;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = a3;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A04F0)))).i32[1])
      {
        *v8 = a3;
        v8[1] = a3;
      }

      v6 += 4;
      v8 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v6);
  }

  a1[2] = a2;
}

void llvm::function_ref<void ()(mlir::Block *,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_0>(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v16 = a2;
  v7 = *a1;
  v18 = v20;
  v19 = xmmword_25D0A05B0;
  llvm::SmallVectorImpl<char>::resizeImpl<true>(&v18, 1uLL);
  *v18 = 94;
  v9 = sanitizeIdentifier(a3, a4, &v18, "$._-", 4uLL, 1);
  v10 = v8;
  if (v18 != v9)
  {
    llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, v9, &v9[v8]);
    v9 = v18;
    v10 = v19;
  }

  if (v10)
  {
    v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v7 + 152), v10, 0);
    memmove(v11, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v7 + 96);
  v12 = v7 + 96;
  v17 = 0;
  v15 = v17;
  if ((v14 & 1) == 0)
  {
    *v15 = a2;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0;
  }

  *(v15 + 2) = -1;
  v15[2] = v11;
  v15[3] = v10;
  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
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
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
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

  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>,mlir::Block *,anonymous namespace::BlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfo>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((32 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0x7FFFFFFFFFFFFFFLL;
      v14 = v13 & 0x7FFFFFFFFFFFFFFLL;
      v15 = (v13 & 0x7FFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 4;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 4) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 8;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 32 * v4;
      v20 = v5 + 8;
      do
      {
        v21 = *(v20 - 8);
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v32 = 0;
          v22 = v32;
          *v32 = v21;
          v23 = *v20;
          v22[3] = *(v20 + 16);
          *(v22 + 1) = v23;
          ++*(a1 + 8);
        }

        v20 += 32;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v24 + 0x7FFFFFFFFFFFFFFLL;
    v27 = v26 & 0x7FFFFFFFFFFFFFFLL;
    v28 = (v26 & 0x7FFFFFFFFFFFFFFLL) - (v26 & 1) + 2;
    v29 = vdupq_n_s64(v27);
    v30 = result + 4;
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v31.i8[0])
      {
        *(v30 - 4) = -4096;
      }

      if (v31.i8[4])
      {
        *v30 = -4096;
      }

      v25 += 2;
      v30 += 8;
    }

    while (v28 != v25);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Value,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInOp(mlir::Operation &)::$_1>(uint64_t *a1, unint64_t a2, char *ValueNameFromLoc, uint64_t a4)
{
  v6 = *a1;
  if ((*(*a1 + 304) & 0x100) != 0)
  {
    a4 = v11;
  }

  v7 = *(a2 + 8);
  if (a2 && (*(a2 + 8) & 7) == 6)
  {
    v8 = *(a2 + 16);
    v9 = v8 + 6;
    if (v8 == -6)
    {
      return;
    }
  }

  else
  {
    v9 = v7 & 7;
    if ((v7 & 7) == 0)
    {
      return;
    }
  }

  v10 = a1[1];

  llvm::SmallVectorTemplateBase<int,true>::push_back(v10, v9);
}

uint64_t anonymous namespace::maybeGetValueNameFromLoc(uint64_t a1, uint64_t a2)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16) + 120;
    if (!v5)
    {
LABEL_7:
      v6 = (a1 + 32);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = v3 + 16 * v4 + 16;
  }

  v6 = (v5 + 24);
LABEL_10:
  v7 = *v6;
  v11 = 0;
  v9 = v7;
  v10 = &v11;
  mlir::LocationAttr::walk(&v9, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::NameLoc mlir::LocationAttr::findInstanceOf<mlir::NameLoc>(void)::{lambda(mlir::NameLoc)#1}>, &v10);
  if (v11)
  {
    return *(*(v11 + 8) + 16);
  }

  else
  {
    return a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::moveFromOldBuckets(a1, v5, v5 + 16 * v4);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
    v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 2;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 2) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 4;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
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
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::NameLoc mlir::LocationAttr::findInstanceOf<mlir::NameLoc>(void)::{lambda(mlir::NameLoc)#1}>(void **a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
    {
      result = 0;
      **a1 = a2;
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v5, v5 + 16 * v4);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
    v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 2;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 2) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 4;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
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
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::doFind<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2 - 1;
  v7 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
  v8 = a1 + 24 * v7;
  if ((llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8)) & 1) == 0)
  {
    v9 = 1;
    while (*v8 != -1)
    {
      v10 = v9 + 1;
      v7 = (v7 + v9) & v6;
      v8 = a1 + 24 * v7;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v8, *(v8 + 8));
      v9 = v10;
      if (isEqual)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

void llvm::SmallVectorImpl<char>::resizeImpl<false>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (a1[2] < a2)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, a2, 1);
        v2 = a1[1];
      }

      if (a2 != v2)
      {
        bzero((*a1 + v2), a2 - v2);
      }
    }

    a1[1] = a2;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](void *a1, _OWORD *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 4), a2, &v10);
  v6 = v10;
  if (v4)
  {
    return v6 + 2;
  }

  v11 = v10;
  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(a1, v8, v5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 4), a2, &v11);
    v7 = *(a1 + 2);
    v6 = v11;
  }

  *(a1 + 2) = v7 + 1;
  if (*v6 != -1)
  {
    --*(a1 + 3);
  }

  *v6 = *a2;
  v6[2] = 0;
  return v6 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
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
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
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
  *a4 = v9;
  return result;
}

uint64_t *llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((24 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 24 * v11;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 3;
        v12 -= 24;
      }

      while (v12);
    }

    if (v4)
    {
      v13 = 24 * v4;
      v14 = v5;
      do
      {
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v14, &v18);
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

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 24 * v16;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 3;
      v17 -= 24;
    }

    while (v17);
  }

  return result;
}

uint64_t llvm::array_pod_sort_comparator<int>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
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
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
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

uint64_t *llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((32 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0x7FFFFFFFFFFFFFFLL;
      v14 = v13 & 0x7FFFFFFFFFFFFFFLL;
      v15 = (v13 & 0x7FFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 4;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 4) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 8;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = (v5 + 24);
      v20 = 32 * v4;
      do
      {
        v21 = *(v19 - 3);
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v21, &v33);
          v22 = v33;
          *v33 = *(v19 - 3);
          v22[2] = 0x100000000;
          v22[1] = v22 + 3;
          v23 = (v22 + 1);
          if (*(v19 - 2))
          {
            llvm::SmallVectorImpl<int>::operator=(v23, (v19 - 2));
          }

          ++*(a1 + 8);
          v24 = *(v19 - 2);
          if (v19 != v24)
          {
            free(v24);
          }
        }

        v19 += 4;
        v20 -= 32;
      }

      while (v20);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0x7FFFFFFFFFFFFFFLL;
    v28 = v27 & 0x7FFFFFFFFFFFFFFLL;
    v29 = (v27 & 0x7FFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = result + 4;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_25D0A0500)));
      if (v32.i8[0])
      {
        *(v31 - 4) = -4096;
      }

      if (v32.i8[4])
      {
        *v31 = -4096;
      }

      v26 += 2;
      v31 += 8;
    }

    while (v29 != v26);
  }

  return result;
}

void **llvm::ScopedHashTableScope<llvm::StringRef,char,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::MallocAllocator>::~ScopedHashTableScope(void **a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  (*a1)[3] = a1[1];
  for (i = a1[2]; i; i = a1[2])
  {
    v6 = *a1;
    if (i[1])
    {
      *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::operator[](*a1, i + 1) = i[1];
    }

    else
    {
      v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>,llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::ScopedHashTableVal<llvm::StringRef,char> *>>::doFind<llvm::StringRef>(*v6, *(v6 + 16), (i + 2), a4);
      if (v7)
      {
        *v7 = xmmword_25D0A05F0;
        *(v6 + 8) = vadd_s32(*(v6 + 8), 0x1FFFFFFFFLL);
      }
    }

    a1[2] = *i;
    MEMORY[0x25F891030](i, 8);
  }

  return a1;
}

unint64_t *llvm::function_ref<void ()(mlir::Value,llvm::StringRef)>::callback_fn<anonymous namespace::SSANameState::numberValuesInRegion(mlir::Region &)::$_0>(uint64_t *a1, unint64_t a2, char *ValueNameFromLoc, uint64_t a4)
{
  v5 = *a1;
  if ((*(*a1 + 304) & 0x100) != 0)
  {
    a4 = v7;
  }
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      MEMORY[0x25F891030](v5, 8);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = 16 * v7;
    do
    {
      v9 = *v6;
      v6 += 2;
      MEMORY[0x25F891030](v9, 8);
      v8 -= 16;
    }

    while (v8);
    v6 = *(a1 + 64);
  }

  if (v6 != (a1 + 80))
  {
    free(v6);
  }

  v10 = *(a1 + 16);
  if (v10 != (a1 + 32))
  {
    free(v10);
  }

  return a1;
}

void mlir::detail::AsmStateImpl::~AsmStateImpl(mlir::detail::AsmStateImpl *this)
{
  v2 = *(this + 88);
  if (v2 != this + 720)
  {
    free(v2);
  }

  MEMORY[0x25F891030](*(this + 85), 8);
  MEMORY[0x25F891030](*(this + 75), 8);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 432);
  MEMORY[0x25F891030](*(this + 50), 8);
  MEMORY[0x25F891030](*(this + 47), 8);
  v3 = *(this + 92);
  v4 = *(this + 44);
  if (v3)
  {
    v5 = (v4 + 24);
    v6 = 32 * v3;
    do
    {
      if ((*(v5 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 2);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 4;
      v6 -= 32;
    }

    while (v6);
    v4 = *(this + 44);
  }

  MEMORY[0x25F891030](v4, 8);
  MEMORY[0x25F891030](*(this + 41), 8);
  MEMORY[0x25F891030](*(this + 38), 8);
  MEMORY[0x25F891030](*(this + 35), 8);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 184);
  v8 = *(this + 21);
  if (v8 != this + 184)
  {
    free(v8);
  }

  MEMORY[0x25F891030](*(this + 18), 8);
  v9 = *(this + 34);
  v10 = *(this + 15);
  if (v9)
  {
    v11 = (v10 + 48);
    v12 = 48 * v9;
    do
    {
      if ((*(v11 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v13 = *(v11 - 2);
        if (v11 != v13)
        {
          free(v13);
        }

        MEMORY[0x25F891030](*(v11 - 5), 8);
      }

      v11 += 6;
      v12 -= 48;
    }

    while (v12);
    v10 = *(this + 15);
  }

  MEMORY[0x25F891030](v10, 8);
  llvm::SmallVector<std::unique_ptr<mlir::AsmResourcePrinter>,6u>::~SmallVector(this + 7);

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);
}

char ***llvm::SmallVector<std::unique_ptr<mlir::AsmResourcePrinter>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::detail::AsmStateImpl::AsmStateImpl(uint64_t a1, mlir::MLIRContext *a2, __int128 *a3, uint64_t a4)
{
  v7 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(a1, a2);
  *(v7 + 56) = v7 + 72;
  *(v7 + 64) = 0x600000000;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 160) = 0;
  *(v7 + 168) = v7 + 184;
  *(v7 + 176) = 0;
  *(v7 + 200) = v7 + 216;
  *(v7 + 208) = 0x400000000;
  *(v7 + 248) = v7 + 264;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 1;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0;
  *(v7 + 320) = 0;
  *(v7 + 304) = 0u;
  *(v7 + 344) = 0;
  *(v7 + 328) = 0u;
  *(v7 + 368) = 0;
  *(v7 + 352) = 0u;
  *(v7 + 392) = 0;
  *(v7 + 376) = 0u;
  *(v7 + 416) = 0;
  *(v7 + 400) = 0u;
  *(v7 + 424) = 0u;
  *(v7 + 440) = 0;
  *(v7 + 448) = v7 + 464;
  *(v7 + 456) = 0x400000000;
  *(v7 + 496) = v7 + 512;
  *(v7 + 504) = 0u;
  *(v7 + 520) = 1;
  *(v7 + 528) = 0;
  *(v7 + 536) = 0;
  mlir::OpPrintingFlags::OpPrintingFlags((v7 + 544));
  *(a1 + 616) = 0;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  v8 = *a3;
  v9 = a3[2];
  *(a1 + 640) = a3[1];
  *(a1 + 656) = v9;
  *(a1 + 624) = v8;
  *(a1 + 672) = a4;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 704) = a1 + 720;
  *(a1 + 712) = 0;
  return a1;
}

void *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(unsigned int *a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 4;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 8, &v11);
  v6 = a1[2];
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = a1[2] + 1;
  a1[2] = v9;
  a1[3] = v8;
  return &v5[v9 - 1];
}

unsigned int *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = 8 * v2;
    v6 = *result;
    do
    {
      v7 = *v6;
      *v6++ = 0;
      *a2++ = v7;
      v5 -= 8;
    }

    while (v5);
    v8 = v3 - 8;
    do
    {
      result = *(v8 + v4);
      *(v8 + v4) = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::LookupBucketFor<mlir::Dialect *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 48 * v5);
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
        v6 = (a1 + 48 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((48 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = 48 * v11 - 48;
      v14 = vdupq_n_s64(v13 / 0x30);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *result = -4096;
        }

        if (v15.i8[4])
        {
          result[6] = -4096;
        }

        v12 += 2;
        result += 12;
      }

      while (((v13 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v12);
    }

    if (v4)
    {
      v16 = (v5 + 48);
      v17 = 48 * v4;
      do
      {
        v18 = *(v16 - 6);
        if ((v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::LookupBucketFor<mlir::Dialect *>(*a1, *(a1 + 16), v18, &v31);
          v19 = *(v16 - 6);
          v20 = v31;
          *(v31 + 24) = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = v19;
          *(v20 + 8) = *(v16 - 5);
          *(v16 - 5) = 0;
          *(v20 + 16) = *(v16 - 8);
          *(v16 - 8) = 0;
          LODWORD(v19) = *(v20 + 20);
          *(v20 + 20) = *(v16 - 7);
          *(v16 - 7) = v19;
          LODWORD(v19) = *(v20 + 24);
          *(v20 + 24) = *(v16 - 6);
          *(v16 - 6) = v19;
          *(v20 + 32) = v20 + 48;
          *(v20 + 40) = 0;
          v21 = *(v16 - 2);
          if (v21 && v16 - 6 != v20)
          {
            v22 = *(v16 - 2);
            if (v16 == v22)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 32, (v20 + 48), *(v16 - 2), 24);
              v24 = *(v16 - 2);
              if (v24)
              {
                memcpy(*(v20 + 32), *(v16 - 2), 24 * v24);
              }

              *(v20 + 40) = v21;
            }

            else
            {
              *(v20 + 32) = v22;
              v23 = *(v16 - 1);
              *(v20 + 40) = v21;
              *(v20 + 44) = v23;
              *(v16 - 2) = v16;
              *(v16 - 1) = 0;
            }

            *(v16 - 2) = 0;
          }

          ++*(a1 + 8);
          v25 = *(v16 - 2);
          if (v16 != v25)
          {
            free(v25);
          }

          MEMORY[0x25F891030](*(v16 - 5), 8);
        }

        v16 += 6;
        v17 -= 48;
      }

      while (v17);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = 48 * v26 - 48;
    v29 = vdupq_n_s64(v28 / 0x30);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *result = -4096;
      }

      if (v30.i8[4])
      {
        result[6] = -4096;
      }

      v27 += 2;
      result += 12;
    }

    while (((v28 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v27);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(a1, a2, &v11);
  v7 = v11;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::InsertIntoBucketImpl<mlir::AsmDialectResourceHandle>(a1, a2, v11);
    v7 = result;
    v9 = a2[2];
    *result = *a2;
    *(result + 16) = v9;
    v8 = 1;
  }

  v10 = *a1 + 24 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
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
        v7 = (v4 + 24 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::InsertIntoBucketImpl<mlir::AsmDialectResourceHandle>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((24 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::moveFromOldBuckets(a1, v5, &v5[3 * v4]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = &result[3 * v11];
    do
    {
      *result = -4096;
      result[1] = -4096;
      result[2] = 0;
      result += 3;
    }

    while (result != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = *result + 24 * v6;
    do
    {
      *v7 = -4096;
      v7[1] = -4096;
      v7[2] = 0;
      v7 += 3;
    }

    while (v7 != v8);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v11 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v5, a2, &v11);
      v9 = v11;
      v10 = a2[2];
      *v11 = *a2;
      *(v9 + 2) = v10;
      ++*(v5 + 8);
    }

    a2 += 3;
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::AsmDialectResourceHandle,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::AsmDialectResourceHandle,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }
  }

  return v3;
}

void llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = *a1;
    mlir::AsmPrinter::Impl::printAttribute(a3, **a1, 1);
    if (v3 != 1)
    {
      v7 = v6 + 1;
      v8 = 8 * v3 - 8;
      do
      {
        v9 = *(a2 + 4);
        if (*(a2 + 3) - v9 > 1uLL)
        {
          *v9 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v10 = *v7++;
        mlir::AsmPrinter::Impl::printAttribute(a3, v10, 1);
        v8 -= 8;
      }

      while (v8);
    }
  }
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>(uint64_t a1, unsigned int a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v12 = *(*a1 + 16);
  v11 = *v3;
  *&v12 = v12 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v11, &__src);
  v5 = *v4;
  v6 = *(*v4 + 4);
  if (*(*v4 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
  }

  DWORD2(v11) = v14;
  if (v14 > 0x40)
  {
    operator new[]();
  }

  *&v11 = __src;
  printDenseIntElement(&v11, *v4, **(a1 + 16));
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  v7 = *v4;
  v8 = *(*v4 + 4);
  if (*(*v4 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++*(v7 + 4);
  }

  DWORD2(v11) = v16;
  if (v16 > 0x40)
  {
    operator new[]();
  }

  *&v11 = v15;
  printDenseIntElement(&v11, *v4, **(a1 + 16));
  if (DWORD2(v11) >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  result = *v4;
  v10 = *(*v4 + 4);
  if (*(*v4 + 3) == v10)
  {
    result = llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++*(result + 4);
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

void printDenseIntElement(llvm::APInt *a1, llvm::raw_ostream *a2, _DWORD *a3)
{
  if (*(*a3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v4 = 1;
LABEL_7:

    llvm::APInt::print(a1, a2, v4);
    return;
  }

  v5 = a3[2];
  if ((v5 & 0x3FFFFFFF) != 1)
  {
    v4 = v5 >> 30 != 2;
    goto LABEL_7;
  }

  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    v7 = llvm::APInt::countLeadingZerosSlowCase(a1) == v6;
  }

  else
  {
    v7 = *a1 == 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  if (v8)
  {
    v10 = "false";
  }

  else
  {
    v10 = "true";
  }

  llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>(__int128 **a1, unsigned int a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v11 = **a1;
  v13 = *(&v4 + 1);
  v14 = v3;
  v12 = v4 + a2;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(&v11, v15);
  v5 = *v2;
  v6 = *(*v2 + 4);
  if (*(*v2 + 3) == v6)
  {
    llvm::raw_ostream::write(v5, "(", 1uLL);
  }

  else
  {
    *v6 = 40;
    ++*(v5 + 4);
  }

  llvm::APFloat::Storage::Storage(&v11, v15);
  printFloatValue(&v11, *v2, 0);
  llvm::APFloat::Storage::~Storage(&v11);
  v7 = *v2;
  v8 = *(*v2 + 4);
  if (*(*v2 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++*(v7 + 4);
  }

  llvm::APFloat::Storage::Storage(&v11, v16);
  printFloatValue(&v11, *v2, 0);
  llvm::APFloat::Storage::~Storage(&v11);
  v9 = *v2;
  v10 = *(*v2 + 4);
  if (*(*v2 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++*(v9 + 4);
  }

  llvm::APFloat::Storage::~Storage(v16);
  llvm::APFloat::Storage::~Storage(v15);
}

void llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(a1, &v4);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v4, a2, a1);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  if (v5 >= 0x41)
  {
    if (v4)
    {
      MEMORY[0x25F891010](v4, 0x1000C8000313F17);
    }
  }
}

void mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v11 = *(a1 + 8);
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v10 = *a1;
  llvm::APFloat::Storage::Storage<llvm::APInt const&>(v13, v6, &v10);
  v7 = *(a3 + 32);
  v9 = *(a1 + 24);
  if (v9 > 0x40)
  {
    operator new[]();
  }

  v8 = *(a1 + 16);
  llvm::APFloat::Storage::Storage<llvm::APInt const&>(v12, v7, &v8);
  llvm::APFloat::Storage::Storage(a2, v13);
  llvm::APFloat::Storage::Storage((a2 + 24), v12);
  llvm::APFloat::Storage::~Storage(v12);
  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  llvm::APFloat::Storage::~Storage(v13);
  if (v11 >= 0x41)
  {
    if (v10)
    {
      MEMORY[0x25F891010](v10, 0x1000C8000313F17);
    }
  }
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<llvm::APInt const&>(llvm::detail::IEEEFloat *this, void *a2, const llvm::APInt ***a3)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(this, &llvm::semPPCDoubleDouble, a3);
  }

  llvm::detail::IEEEFloat::initFromAPInt(this, a2, a3);
  return this;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage(llvm::APFloat::Storage *this, const llvm::APFloat::Storage *a2)
{
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::DoubleAPFloat(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::IEEEFloat(this, a2);
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>(__int128 **a1, unsigned int a2)
{
  v3 = a1[1];
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v5, &v8);
  printDenseIntElement(&v8, *v3, *a1[2]);
  if (v9 >= 0x41)
  {
    if (v8)
    {
      MEMORY[0x25F891010](v8, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<void ()(unsigned int)>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>(__int128 **a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 4);
  v4 = (*a1)[1];
  v5 = **a1;
  v7 = *(&v4 + 1);
  v8 = v3;
  v6 = v4 + a2;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v5, v9);
  printFloatValue(v9, *v2, 0);
  llvm::APFloat::Storage::~Storage(v9);
}

llvm::detail::IEEEFloat *llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*@<X0>(uint64_t a1@<X0>, llvm::detail::IEEEFloat *a2@<X8>)
{
  mlir::DenseElementsAttr::IntElementIterator::operator*(a1, &v5);
  result = llvm::APFloat::Storage::Storage<llvm::APInt const&>(a2, *(a1 + 32), &v5);
  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      return MEMORY[0x25F891010](v5, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(unsigned int **a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = **a1;
  v13 = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v12 = 0;
  if (v4)
  {
    memcpy(&v12, (*a1[1] + *a1[2] * a2), *a1[2]);
  }

  v5 = *a1[3];
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    printDenseIntElement(&v12, *v3, v5);
  }

  else
  {
    v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    v11 = (*v10)(v10, v5);
    llvm::APFloat::Storage::Storage<llvm::APInt const&>(v14, v11, &v12);
    printFloatValue(v14, *v3, 0);
    llvm::APFloat::Storage::~Storage(v14);
  }

  if (v13 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }
}

uint64_t mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::FloatType>();
      mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1552);
}

uint64_t llvm::getTypeName<mlir::FloatType>()
{
  {
    llvm::getTypeName<mlir::FloatType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::FloatType>();
    *algn_27FC17628 = v1;
  }

  return llvm::getTypeName<mlir::FloatType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::FloatType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FloatType]";
  v6 = 77;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Diagnostic::operator<<<31ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<87ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::StringAttr::compare(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  v6 = *(v4 + 16);
  return llvm::StringRef::compare(&v6, *(a2 + 16), *(a2 + 24));
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v16 = a2;
  v17 = a4;
  LODWORD(v18) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v16, &v18, &v14);
  if ((v15 & 1) == 0)
  {
    return *(v14 + 16);
  }

  if (a4 == 1 && (v21 = 1, v22 = 1, v18 = &v21, v19 = a1, v20 = &v22, (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>, &v18, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>, &v18), !v21))
  {
LABEL_8:
    v12 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[]((a1 + 48), &v16);
    result = 0;
    *v12 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v9 -= 32;
      v11 = std::function<mlir::WalkResult ()(mlir::Attribute)>::operator()(v9, a2);
      if (v11 == 2)
      {
        return 1;
      }

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    if (a4)
    {
      return 1;
    }

    v21 = 1;
    v22 = 0;
    v18 = &v21;
    v19 = a1;
    v20 = &v22;
    (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>, &v18, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>, &v18);
    return v21 != 0;
  }

  return result;
}

uint64_t mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v16 = a2;
  v17 = a4;
  LODWORD(v18) = 1;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>(a1 + 48, &v16, &v18, &v14);
  if ((v15 & 1) == 0)
  {
    return *(v14 + 16);
  }

  if (a4 == 1 && (v21 = 1, v22 = 1, v18 = &v21, v19 = a1, v20 = &v22, (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>, &v18, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>, &v18), !v21))
  {
LABEL_8:
    v12 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[]((a1 + 48), &v16);
    result = 0;
    *v12 = 0;
  }

  else
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    while (v9 != v8)
    {
      v9 -= 32;
      v11 = std::function<mlir::WalkResult ()(mlir::Type)>::operator()(v9, a2);
      if (v11 == 2)
      {
        return 1;
      }

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    if (a4)
    {
      return 1;
    }

    v21 = 1;
    v22 = 0;
    v18 = &v21;
    v19 = a1;
    v20 = &v22;
    (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>, &v18, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>, &v18);
    return v21 != 0;
  }

  return result;
}

void mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(uint64_t *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a3)
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v9 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(result, AttrDictionary);
    if (v9)
    {
      if (v9 != AttrDictionary)
      {
        mlir::Operation::setAttrs(a2, v9);
      }
    }
  }

  if ((a4 & 1) != 0 || a5)
  {
    if (a4)
    {
      v10 = *(a2 + 24);
      v11 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(result, v10);
      if (v11)
      {
        if (v11 != v10)
        {
          *(a2 + 24) = v11;
        }
      }
    }

    if (a5)
    {
      v12 = *(a2 + 36);
      v13 = v12 ? a2 - 16 : 0;
      if (v12)
      {
        v14 = 0;
        v15 = a2 - 16;
        while (1)
        {
          v16 = v13;
          if (v14)
          {
            v17 = *(a2 - 8) & 7;
            v18 = a2 - 16;
            v19 = v14;
            if (v17 == 6)
            {
              goto LABEL_21;
            }

            v20 = (5 - v17);
            v16 = v15;
            v19 = v14 - v20;
            if (v14 > v20)
            {
              break;
            }
          }

LABEL_22:
          v21 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
          v22 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(result, v21);
          if (v22)
          {
            v23 = v22 == v21;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            *(v16 + 8) = *(v16 + 8) & 7 | v22;
          }

          ++v14;
          v15 -= 16;
          if (v12 == v14)
          {
            goto LABEL_28;
          }
        }

        v18 = a2 - 16 - 16 * v20;
LABEL_21:
        v16 = v18 - 24 * v19;
        goto LABEL_22;
      }
    }

LABEL_28:
    v24 = *(a2 + 44);
    if ((v24 & 0x7FFFFF) != 0)
    {
      v25 = ((a2 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v26 = v25 + 24 * (v24 & 0x7FFFFF);
      do
      {
        for (i = *(v25 + 8); i != v25; i = *(i + 8))
        {
          v28 = i - 8;
          if (!i)
          {
            v28 = 0;
          }

          v29 = *(v28 + 48);
          v30 = *(v28 + 56);
          while (v29 != v30)
          {
            if (a4)
            {
              v31 = *(*v29 + 32);
              v32 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(result, v31);
              if (v32 && v32 != v31)
              {
                *(*v29 + 32) = v32;
              }
            }

            if (a5)
            {
              v34 = (*(*v29 + 8) & 0xFFFFFFFFFFFFFFF8);
              v35 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(result, v34);
              if (v35)
              {
                v36 = v35 == v34;
              }

              else
              {
                v36 = 1;
              }

              if (!v36)
              {
                *(*v29 + 8) = *(*v29 + 8) & 7 | v35;
              }
            }

            v29 += 8;
          }
        }

        v25 += 24;
      }

      while (v25 != v26);
    }
  }
}

uint64_t mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6[0] = a1;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(mlir::Operation *,BOOL,BOOL,BOOL)::{lambda(mlir::Operation *)#1}>, v6, 1);
}

uint64_t std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v17[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>>(a1, v10);
    }

    v11 = 32 * v7;
    std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](v11, a2);
    v6 = v11 + 32;
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>,std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11 + 32;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    std::__split_buffer<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::~__split_buffer(v17);
  }

  else
  {
    v6 = std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](v4, a2) + 32;
  }

  a1[1] = v6;
  return v6 - 32;
}

uint64_t std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>>(a1, v11);
    }

    v12 = 32 * v8;
    std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](v12, a2);
    v7 = v12 + 32;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>,std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v12 + 32;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::~__split_buffer(v17);
  }

  else
  {
    result = std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](v4, a2);
    v7 = result + 32;
  }

  a1[1] = v7;
  return result;
}

void *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  for (i = a1[1]; ; i -= 32)
  {
    if (i == v5)
    {
      if (!a2)
      {
        return a2;
      }

LABEL_6:
      v14 = v16;
      v15 = 0x1000000000;
      v11 = v13;
      v12 = 0x1000000000;
      v10 = 256;
      v9[0] = a1;
      v9[1] = &v14;
      v9[2] = &v10;
      v8[0] = a1;
      v8[1] = &v11;
      v8[2] = &v10;
      (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Attribute replaceSubElements<mlir::Attribute,mlir::AttrTypeReplacer>(mlir::Attribute,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>, v9, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::Attribute replaceSubElements<mlir::Attribute,mlir::AttrTypeReplacer>(mlir::Attribute,mlir::AttrTypeReplacer &)::{lambda(mlir::Type)#1}>, v8);
      if (HIBYTE(v10) == 1)
      {
        if (v10 == 1)
        {
          a2 = (*(*a2 + 120))(*(*a2 + 128), a2, v14, v15, v11, v12);
        }
      }

      else
      {
        a2 = 0;
      }

      if (v11 != v13)
      {
        free(v11);
      }

      if (v14 != v16)
      {
        free(v14);
      }

      return a2;
    }

    std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::operator()(&v14, *(i - 8), a2);
    if (v16[0])
    {
      break;
    }
  }

  a2 = v14;
  if (v15)
  {
    v6 = v14 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  if (v15 != 2)
  {
    goto LABEL_6;
  }

  return a2;
}

void *mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  for (i = *(a1 + 32); ; i -= 32)
  {
    if (i == v5)
    {
      if (!a2)
      {
        return a2;
      }

LABEL_6:
      v14 = v16;
      v15 = 0x1000000000;
      v11 = v13;
      v12 = 0x1000000000;
      v10 = 256;
      v9[0] = a1;
      v9[1] = &v14;
      v9[2] = &v10;
      v8[0] = a1;
      v8[1] = &v11;
      v8[2] = &v10;
      (*(*a2 + 104))(*(*a2 + 112), a2, llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Type replaceSubElements<mlir::Type,mlir::AttrTypeReplacer>(mlir::Type,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>, v9, llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::Type replaceSubElements<mlir::Type,mlir::AttrTypeReplacer>(mlir::Type,mlir::AttrTypeReplacer &)::{lambda(mlir::Type)#1}>, v8);
      if (HIBYTE(v10) == 1)
      {
        if (v10 == 1)
        {
          a2 = (*(*a2 + 120))(*(*a2 + 128), a2, v14, v15, v11, v12);
        }
      }

      else
      {
        a2 = 0;
      }

      if (v11 != v13)
      {
        free(v11);
      }

      if (v14 != v16)
      {
        free(v14);
      }

      return a2;
    }

    std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::operator()(&v14, *(i - 8), a2);
    if (v16[0])
    {
      break;
    }
  }

  a2 = v14;
  if (v15)
  {
    v6 = v14 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  if (v15 != 2)
  {
    goto LABEL_6;
  }

  return a2;
}

void *mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(uint64_t *a1, void *a2)
{
  v8 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>((a1 + 6), &v8, &v8, &v6);
  if ((v7 & 1) == 0)
  {
    return *(v6 + 8);
  }

  v4 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, a2);
  *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](a1 + 6, &v8) = v4;
  return v4;
}

void *mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(uint64_t a1, void *a2)
{
  v8 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>(a1 + 48, &v8, &v8, &v6);
  if ((v7 & 1) == 0)
  {
    return *(v6 + 8);
  }

  v4 = mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceBase(a1, a2);
  *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[]((a1 + 48), &v8) = v4;
  return v4;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::try_emplace<mlir::WalkResult>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::InsertIntoBucketImpl<std::pair<void const*,int>>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

unint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::operator[](uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::InsertIntoBucketImpl<std::pair<void const*,int>>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 16) = 1;
  }

  return v5 + 16;
}

uint64_t std::function<mlir::WalkResult ()(mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(v4, v5, v6);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a2 + 8);
    v6 = 0xBF58476D1CE4E5B9 * ((37 * v5) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = (v6 >> 31) ^ v6;
    v8 = v3 - 1;
    v9 = (v3 - 1) & v7;
    v10 = *a1 + 24 * v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*a2 == *v10 && v5 == v12)
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      result = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFF)
      {
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12 == 0x80000000;
        }

        if (v17 && v11 == -8192)
        {
          v14 = v10;
        }

        v19 = v9 + v15++;
        v9 = v19 & v8;
        v10 = v4 + 24 * (v19 & v8);
        v11 = *v10;
        v12 = *(v10 + 8);
        if (*a2 == *v10 && v5 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v14)
      {
        v10 = v14;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v10;
  return result;
}

unint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::InsertIntoBucketImpl<std::pair<void const*,int>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_8;
  }

  if (v6 + ~v5 - *(a1 + 12) <= v6 >> 3)
  {
LABEL_8:
    llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(a1, v6, a3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(a1, a2, &v8);
    v5 = *(a1 + 8);
    a3 = v8;
  }

  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096 || *(a3 + 8) != 0x7FFFFFFF)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((24 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = &result[3 * v11];
      do
      {
        *result = -4096;
        *(result + 2) = 0x7FFFFFFF;
        result += 3;
      }

      while (result != v12);
    }

    if (v4)
    {
      v13 = 24 * v4;
      v14 = v5;
      do
      {
        v15 = *(v14 + 8);
        if ((*v14 != -4096 || v15 != 0x7FFFFFFF) && (*v14 != -8192 || v15 != 0x80000000))
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>,std::pair<void const*,int>,mlir::WalkResult,llvm::DenseMapInfo<std::pair<void const*,int>,void>,llvm::detail::DenseMapPair<std::pair<void const*,int>,mlir::WalkResult>>::LookupBucketFor<std::pair<void const*,int>>(a1, v14, &v21);
          v18 = v21;
          *v21 = *v14;
          *(v18 + 8) = *(v14 + 8);
          *(v21 + 16) = *(v14 + 16);
          ++*(a1 + 8);
        }

        v14 += 24;
        v13 -= 24;
      }

      while (v13);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = &result[3 * v19];
    do
    {
      *result = -4096;
      *(result + 2) = 0x7FFFFFFF;
      result += 3;
    }

    while (result != v20);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (**result)
    {
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8), a2, *(result + 8), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Attribute>(mlir::Attribute,mlir::WalkOrder)::{lambda(mlir::Attribute)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (**result)
    {
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t std::function<mlir::WalkResult ()(mlir::Type)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(v4, v5);
}

uint64_t llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (**result)
    {
      result = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(*(result + 8), a2, *(result + 8), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Type)>::callback_fn<mlir::WalkResult mlir::AttrTypeWalker::walkSubElements<mlir::Type>(mlir::Type,mlir::WalkOrder)::{lambda(mlir::Type)#1}>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (**result)
    {
      result = mlir::AttrTypeWalker::walkImpl<mlir::Type,std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>>(*(result + 8), a2, (*(result + 8) + 24), **(result + 16));
      **v2 = result;
    }
  }

  return result;
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!a4)
  {
    result = a2(a3, result);
    v6 = a2;
  }

  v8 = *(v7 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64;
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    do
    {
      for (i = *(v9 + 8); i != v9; i = *(i + 8))
      {
        v12 = i - 8;
        if (!i)
        {
          v12 = 0;
        }

        result = *(v12 + 40);
        v13 = v12 + 32;
        if (result != v12 + 32)
        {
          do
          {
            v14 = *(result + 8);
            mlir::detail::walk<mlir::ForwardIterator>(result, v6, a3, a4);
            v6 = a2;
            result = v14;
          }

          while (v14 != v13);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  if (a4 == 1)
  {

    return v6(a3, v7);
  }

  return result;
}

{
  v4 = *(result + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v8 = result + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 32 * *(result + 40) + 64;
    v9 = v8 + 24 * (v4 & 0x7FFFFF);
    do
    {
      v10 = *(v8 + 8);
      if (v10 != v8)
      {
        do
        {
          v11 = *(v10 + 8);
          v12 = v10 - 8;
          if (!a4)
          {
            result = a2(a3, v10 - 8);
          }

          v13 = v10 + 24;
          for (i = *(v10 + 32); i != v13; i = *(i + 8))
          {
            result = mlir::detail::walk<mlir::ForwardIterator>(i, a2, a3, a4);
          }

          if (a4 == 1)
          {
            result = a2(a3, v12);
          }

          v10 = v11;
        }

        while (v11 != v8);
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>,std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>,std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Attribute replaceSubElements<mlir::Attribute,mlir::AttrTypeReplacer>(mlir::Attribute,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>(v4, v5);
}

void updateSubElementImpl<mlir::Attribute,mlir::AttrTypeReplacer>(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    if (result)
    {
      v7 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(a2, result);
      if (v7)
      {
        v8 = v7;
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(a3, v7);
        if (v8 != result)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {

      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(a3, 0);
    }
  }
}

void llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

void updateSubElementImpl<mlir::Type,mlir::AttrTypeReplacer>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    if (result)
    {
      v7 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(a2, result);
      if (v7)
      {
        v8 = v7;
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v7);
        if (v8 != result)
        {
          *a4 = 257;
        }
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, 0);
    }
  }
}

void *std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<void ()(mlir::Attribute)>::callback_fn<mlir::Type replaceSubElements<mlir::Type,mlir::AttrTypeReplacer>(mlir::Type,mlir::AttrTypeReplacer &)::{lambda(mlir::Attribute)#1}>(v4, v5);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::try_emplace<void const*&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = 0;
  }

  return inserted + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::InsertIntoBucketImpl<void const*>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
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

  llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>,void const*,void const*,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,void const*>>::LookupBucketFor<void const*>(a1, v20, &v29);
          *v29 = *v20;
          v29[1] = v20[1];
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0xFFFFFFFFFFFFFFFLL;
    v24 = v23 & 0xFFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0xFFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 2;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 2) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 4;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}