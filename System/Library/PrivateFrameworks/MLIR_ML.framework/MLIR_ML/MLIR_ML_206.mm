uint64_t llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::LockedSymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>(pthread_rwlock_t ***a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::LockedSymbolTableCollection::getSymbolTable(*a1, a2);
  v5 = *(SymbolTable + 24);
  if (v5)
  {
    v6 = *(SymbolTable + 8);
    v7 = v5 - 1;
    v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v9 = *(v6 + 16 * v8);
    if (v9 == a3)
    {
      return *(v6 + 16 * v8 + 8);
    }

    v11 = 1;
    while (v9 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v9 = *(v6 + 16 * v8);
      if (v9 == a3)
      {
        return *(v6 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<std::unique_ptr<mlir::SymbolTable>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = (v6 + 16 * (v18 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_5:
    v22 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        v13 = *a2;
        v14 = *a3;
        *a3 = 0;
        *v9 = v13;
        v9[1] = v14;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v9 = v22;
    ++*(v19 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::SymbolUserMap::SymbolUserMap(mlir::SymbolTableCollection &,mlir::Operation *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v5 = a1[2];
  v6 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  mlir::Region::OpIterator::OpIterator(&v82, v6, 0);
  mlir::Region::OpIterator::OpIterator(&v79, v6, 1);
  result = v83;
  v78 = v83;
  v77 = v82;
  v75 = v82;
  v76 = v83;
  v70 = v80;
  if (v83 != v80)
  {
    while (1)
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v82 = 0uLL;
      v83 = 0;
      v81 = &v82;
      v71 = walkSymbolUses(v8, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v81);
      if ((v71 & 0x100000000) != 0)
      {
        v3 = *(&v82 + 1);
        v9 = v82;
      }

      else
      {
        v9 = v2 & 0xFFFFFFFFFFFFFF00;
        if (v82)
        {
          *(&v82 + 1) = v82;
          operator delete(v82);
        }
      }

      v10 = v9;
      __p = v9;
      v74 = v3;
      if (v9 != v3)
      {
        break;
      }

LABEL_10:
      if ((v71 & 0x100000000) != 0)
      {
        v2 = __p;
        if (__p)
        {
          operator delete(__p);
          v3 = __p;
        }
      }

      else
      {
        v2 = __p;
      }

      mlir::Region::OpIterator::operator++(&v75);
      result = v76;
      if (v76 == v70)
      {
        return result;
      }
    }

    while (1)
    {
      v11 = *a1;
      *(v11 + 8) = 0;
      v12 = v10[1];
      *&v82 = a1[1];
      lookupSymbolInImpl(a2, v12, v11, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v82);
      v13 = *a1;
      v14 = *(*a1 + 8);
      if (v14)
      {
        break;
      }

LABEL_13:
      v10 += 2;
      v3 = v74;
      if (v10 == v74)
      {
        goto LABEL_10;
      }
    }

    v15 = *v13;
    v16 = &(*v13)[v14];
    while (1)
    {
      v20 = *v15;
      v21 = *(v5 + 8);
      v22 = *(v5 + 24);
      if (!v22)
      {
        break;
      }

      v23 = ((v20 >> 4) ^ (v20 >> 9)) & (v22 - 1);
      v24 = &v21[6 * v23];
      v25 = *v24;
      if (v20 == *v24)
      {
        goto LABEL_34;
      }

      v26 = 0;
      v27 = 1;
      while (v25 != -4096)
      {
        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25 == -8192;
        }

        if (v28)
        {
          v26 = v24;
        }

        v29 = v23 + v27++;
        v23 = v29 & (v22 - 1);
        v24 = &v21[6 * v23];
        v25 = *v24;
        if (v20 == *v24)
        {
          goto LABEL_34;
        }
      }

      if (v26)
      {
        v24 = v26;
      }

      v38 = *(v5 + 16);
      if (4 * v38 + 4 >= (3 * v22))
      {
        break;
      }

      if (v22 + ~v38 - *(v5 + 20) <= v22 >> 3)
      {
        v39 = *(v5 + 24);
LABEL_72:
        v51 = (v39 - 1) | ((v39 - 1) >> 1);
        v52 = v51 | (v51 >> 2) | ((v51 | (v51 >> 2)) >> 4);
        v53 = ((v52 | (v52 >> 8)) >> 16) | v52 | (v52 >> 8);
        if ((v53 + 1) > 0x40)
        {
          v54 = v53 + 1;
        }

        else
        {
          v54 = 64;
        }

        *(v5 + 24) = v54;
        buffer = llvm::allocate_buffer(48 * v54, 8uLL);
        *(v5 + 8) = buffer;
        if (v21)
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::moveFromOldBuckets(v5 + 8, v21, &v21[6 * v22], v56);
          llvm::deallocate_buffer(v21, (48 * v22));
        }

        *(v5 + 16) = 0;
        v57 = *(v5 + 24);
        if (v57)
        {
          v58 = 48 * v57 - 48;
          v59 = buffer;
          if (v58 < 0x30)
          {
            goto LABEL_107;
          }

          v60 = v58 / 0x30 + 1;
          v59 = &buffer[6 * (v60 & 0xFFFFFFFFFFFFFFELL)];
          v61 = buffer;
          v62 = v60 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *v61 = -4096;
            v61[6] = -4096;
            v61 += 12;
            v62 -= 2;
          }

          while (v62);
          if (v60 != (v60 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_107:
            do
            {
              *v59 = -4096;
              v59 += 6;
            }

            while (v59 != &buffer[6 * v57]);
          }

          v63 = v57 - 1;
          v64 = v63 & ((v20 >> 4) ^ (v20 >> 9));
          v24 = &buffer[6 * v64];
          v65 = *v24;
          if (v20 != *v24)
          {
            v66 = 0;
            v67 = 1;
            while (v65 != -4096)
            {
              if (v66)
              {
                v68 = 0;
              }

              else
              {
                v68 = v65 == -8192;
              }

              if (v68)
              {
                v66 = v24;
              }

              v69 = v64 + v67++;
              v64 = v69 & v63;
              v24 = &buffer[6 * v64];
              v65 = *v24;
              if (v20 == *v24)
              {
                goto LABEL_97;
              }
            }

            if (v66)
            {
              v24 = v66;
            }
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_97:
        ++*(v5 + 16);
        if (*v24 == -4096)
        {
          goto LABEL_33;
        }

LABEL_32:
        --*(v5 + 20);
        goto LABEL_33;
      }

      *(v5 + 16) = v38 + 1;
      if (*v24 != -4096)
      {
        goto LABEL_32;
      }

LABEL_33:
      *v24 = v20;
      v24[1] = 0;
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = (v24 + 6);
      v24[5] = 0;
LABEL_34:
      v30 = v24[1];
      v31 = *v10;
      v32 = *(v24 + 6);
      if (!v32)
      {
        goto LABEL_58;
      }

      v17 = ((v31 >> 4) ^ (v31 >> 9)) & (v32 - 1);
      v18 = (v30 + 8 * v17);
      v19 = *v18;
      if (v31 != *v18)
      {
        v34 = 0;
        v35 = 1;
        while (v19 != -4096)
        {
          if (v34)
          {
            v36 = 0;
          }

          else
          {
            v36 = v19 == -8192;
          }

          if (v36)
          {
            v34 = v18;
          }

          v37 = v17 + v35++;
          v17 = v37 & (v32 - 1);
          v18 = (v30 + 8 * v17);
          v19 = *v18;
          if (v31 == *v18)
          {
            goto LABEL_17;
          }
        }

        if (v34)
        {
          v40 = v34;
        }

        else
        {
          v40 = v18;
        }

        v41 = *(v24 + 4);
        if (4 * v41 + 4 < 3 * v32)
        {
          if (v32 + ~v41 - *(v24 + 5) <= v32 >> 3)
          {
            goto LABEL_59;
          }

          *(v24 + 4) = v41 + 1;
          if (*v40 == -4096)
          {
LABEL_39:
            *v40 = v31;
            v33 = *(v24 + 10);
            if (v33 >= *(v24 + 11))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v24[4] + 8 * v33) = v31;
            ++*(v24 + 10);
            goto LABEL_17;
          }
        }

        else
        {
LABEL_58:
          v32 *= 2;
LABEL_59:
          llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow((v24 + 1), v32);
          v42 = *(v24 + 6);
          if (v42)
          {
            v43 = v24[1];
            v44 = v42 - 1;
            v45 = (v42 - 1) & ((v31 >> 4) ^ (v31 >> 9));
            v40 = (v43 + 8 * v45);
            v46 = *v40;
            if (v31 != *v40)
            {
              v47 = 0;
              v48 = 1;
              while (v46 != -4096)
              {
                if (v47)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v46 == -8192;
                }

                if (v49)
                {
                  v47 = v40;
                }

                v50 = v45 + v48++;
                v45 = v50 & v44;
                v40 = (v43 + 8 * (v50 & v44));
                v46 = *v40;
                if (v31 == *v40)
                {
                  goto LABEL_78;
                }
              }

              if (v47)
              {
                v40 = v47;
              }
            }
          }

          else
          {
            v40 = 0;
          }

LABEL_78:
          ++*(v24 + 4);
          if (*v40 == -4096)
          {
            goto LABEL_39;
          }
        }

        --*(v24 + 5);
        goto LABEL_39;
      }

LABEL_17:
      if (++v15 == v16)
      {
        goto LABEL_13;
      }
    }

    v39 = 2 * v22;
    goto LABEL_72;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v11 = 6 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v11], v10);

    llvm::deallocate_buffer(v4, (v11 * 8));
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 48 * v12 - 48;
    if (v13 < 0x30)
    {
      v14 = result;
LABEL_14:
      v18 = &result[6 * v12];
      do
      {
        *v14 = -4096;
        v14 += 6;
      }

      while (v14 != v18);
      return result;
    }

    v15 = v13 / 0x30 + 1;
    v14 = &result[6 * (v15 & 0xFFFFFFFFFFFFFFELL)];
    v16 = result;
    v17 = v15 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v16 = -4096;
      v16[6] = -4096;
      v16 += 12;
      v17 -= 2;
    }

    while (v17);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *result;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *result;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(result + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = *result + 48 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v23 = 0;
          v24 = 1;
          while (v18 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v18 == -8192;
            }

            if (v25)
            {
              v23 = v17;
            }

            v26 = v16 + v24++;
            v16 = v26 & v15;
            v17 = *v5 + 48 * v16;
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_15;
            }
          }

          if (v23)
          {
            v17 = v23;
          }
        }

LABEL_15:
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = v14;
        *(v17 + 24) = 0;
        *(v17 + 8) = v4[1];
        v4[1] = 0;
        *(v17 + 16) = *(v4 + 4);
        *(v4 + 4) = 0;
        v19 = *(v17 + 20);
        *(v17 + 20) = *(v4 + 5);
        *(v4 + 5) = v19;
        v20 = *(v17 + 24);
        *(v17 + 24) = *(v4 + 6);
        *(v4 + 6) = v20;
        *(v17 + 32) = v17 + 48;
        *(v17 + 40) = 0;
        v21 = v17 + 32;
        if (*(v4 + 10))
        {
          llvm::SmallVectorImpl<long long>::operator=(v21, v4 + 4);
        }

        ++*(v5 + 8);
        v22 = v4[4];
        if (v22 != v4 + 6)
        {
          free(v22);
        }

        llvm::deallocate_buffer(v4[1], (8 * *(v4 + 6)));
      }

      v4 += 6;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::InsertIntoBucket<mlir::Operation * const&,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v13 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v9 = a3;
    v10 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = a3;
    v10 = a4;
  }

  v11 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>,mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v11, v9, &v13);
  a1 = v11;
  a3 = v9;
  v12 = *(v11 + 2);
  v4 = v13;
  a4 = v10;
  *(a1 + 2) = v12 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  v7 = *a3;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = v7;
  *(v4 + 8) = *a4;
  *a4 = 0;
  *(v4 + 16) = *(a4 + 8);
  *(a4 + 8) = 0;
  LODWORD(v7) = *(v4 + 20);
  *(v4 + 20) = *(a4 + 12);
  *(a4 + 12) = v7;
  LODWORD(v7) = *(v4 + 24);
  *(v4 + 24) = *(a4 + 16);
  *(a4 + 16) = v7;
  *(v4 + 32) = v4 + 48;
  *(v4 + 40) = 0;
  if (*(a4 + 32))
  {
    llvm::SmallVectorImpl<long long>::operator=(v4 + 32, (a4 + 24));
  }

  return v4;
}

BOOL mlir::Type::isInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getWidth(&v5) == a2;
}

BOOL mlir::Type::isSignlessInteger(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v4 = v1;
  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v4) == 0;
}

BOOL mlir::Type::isSignlessInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  if (mlir::IntegerType::getSignedness(&v6))
  {
    return 0;
  }

  return mlir::IntegerType::getWidth(&v6) == a2;
}

BOOL mlir::Type::isSignedInteger(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v4 = v1;
  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v4) == 1;
}

BOOL mlir::Type::isSignedInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v6) == 1 && mlir::IntegerType::getWidth(&v6) == a2;
}

BOOL mlir::Type::isUnsignedInteger(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v4 = v1;
  return v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v4) == 2;
}

BOOL mlir::Type::isUnsignedInteger(mlir::Type *this, int a2)
{
  v2 = *this;
  v3 = *(**this + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v6 = v2;
  return v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::IntegerType::getSignedness(&v6) == 2 && mlir::IntegerType::getWidth(&v6) == a2;
}

uint64_t mlir::Type::isSignlessIntOrIndex(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v5 = v1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  }

  if (mlir::IntegerType::getSignedness(&v5))
  {
    v2 = *(**this + 136);
    return v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  }

  return 1;
}

BOOL mlir::Type::isSignlessIntOrIndexOrFloat(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v12 = v1;
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!mlir::IntegerType::getSignedness(&v12))
    {
      return 1;
    }

    v2 = *(**this + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v2 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::Type::isSignlessIntOrFloat(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v1 = 0;
  }

  v11 = v1;
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!mlir::IntegerType::getSignedness(&v11))
    {
      return 1;
    }

    v2 = *(**this + 136);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
    {
      return 1;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v2 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::Type::isIntOrFloat(mlir::Type *this)
{
  v1 = *(**this + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::Type::isIntOrIndexOrFloat(mlir::Type *this)
{
  v1 = *(**this + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  }

  return result;
}

uint64_t mlir::Type::getIntOrFloatBitWidth(mlir::Type *this)
{
  v1 = *this;
  v2 = *(**this + 136);
  v3 = v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v3)
  {
    return mlir::IntegerType::getWidth(&v6);
  }

  v6 = v1;
  return mlir::FloatType::getWidth(&v6);
}

unint64_t *mlir::TypeRange::TypeRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result[1] = a3;
  return result;
}

{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) == 4 && v3)
    {
      v3 |= 6uLL;
    }

    else
    {
      if (v3)
      {
        v4 = (a2 & 6) == 2;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v3 |= 4uLL;
      }
    }

    *result = v3;
  }

  return result;
}

{
  *result = 0;
  result[1] = a3;
  if (a3)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) == 4 && v3)
    {
      v3 |= 6uLL;
    }

    else
    {
      if (v3)
      {
        v4 = (a2 & 6) == 2;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v3 |= 4uLL;
      }
    }

    *result = v3;
  }

  return result;
}

uint64_t *mlir::TypeRange::TypeRange(uint64_t *result, uint64_t a2, uint64_t a3)
{
  *result = a2 | 6;
  result[1] = a3;
  return result;
}

{
  *result = a2 | 6;
  result[1] = a3;
  return result;
}

unint64_t mlir::TypeRange::offset_base(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 & 6;
  if (!v4 && v3)
  {
    return v3 + 8 * a2;
  }

  if (v4 == 4 && v3)
  {
    return (v3 + 32 * a2) | 4;
  }

  if (v4 == 6 && v3)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) | 6;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 8 * a2) | 2;
}

unint64_t mlir::TypeRange::dereference_iterator(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 & 6;
  if (!v4 && v3)
  {
    return *(*(v3 + 8 * a2) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 4 && v3)
  {
    return *(*(v3 + 32 * a2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 6 && v3)
  {
    return *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return *(v6 + 8 * a2);
}

void *mlir::getElementTypeOrSelf(void *a1)
{
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return a1;
  }
}

{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  v6[0] = result;
  v6[1] = v2;
  if (result)
  {
    Type = mlir::TypedAttr::getType(v6);
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(Type);
    v4 = result;
    v7[0] = result;
    v7[1] = v5;
    if (result)
    {
      result = mlir::ShapedType::getElementType(v7);
    }

    if (!v4)
    {
      return Type;
    }
  }

  return result;
}

void *mlir::getElementTypeOrSelf(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return v1;
  }
}

uint64_t mlir::getFlattenedTypes@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  *a2 = a2 + 2;
  a2[1] = 0xA00000000;
  return mlir::TupleType::getFlattenedTypes(&v3, a2);
}

BOOL mlir::isOpaqueTypeWithName(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  if (!v5)
  {
    return 0;
  }

  DialectNamespace = mlir::OpaqueType::getDialectNamespace(&v15);
  Value = mlir::StringAttr::getValue(&DialectNamespace);
  if (v11 != a3 || v11 && memcmp(Value, a2, v11))
  {
    return 0;
  }

  TypeData = mlir::OpaqueType::getTypeData(&v15);
  if (v13 != a5)
  {
    return 0;
  }

  if (v13)
  {
    return memcmp(TypeData, a4, v13) == 0;
  }

  return 1;
}

uint64_t mlir::verifyCompatibleShape(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2)
  {
    for (i = 8 * a2 - 8; ; i -= 8)
    {
      v5 = i;
      if (*a1 != 0x8000000000000000 && *a3 != 0x8000000000000000 && *a1 != *a3)
      {
        break;
      }

      ++a1;
      ++a3;
      if (!v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL mlir::verifyCompatibleShape(void *a1, void *a2)
{
  v17[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  v17[1] = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
  v16[0] = v4;
  v16[1] = v5;
  if (v17[0])
  {
    if (v4)
    {
      if (!mlir::ShapedType::hasRank(v17) || !mlir::ShapedType::hasRank(v16))
      {
        return 1;
      }

      Shape = mlir::ShapedType::getShape(v17);
      v8 = v7;
      v9 = mlir::ShapedType::getShape(v16);
      if (v8 == v10)
      {
        if (v8)
        {
          for (i = 8 * v8 - 8; ; i -= 8)
          {
            v13 = i;
            if (*Shape != 0x8000000000000000 && *v9 != 0x8000000000000000 && *Shape != *v9)
            {
              break;
            }

            ++Shape;
            ++v9;
            v12 = 1;
            if (!v13)
            {
              return v12;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  return v4 == 0;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v7 = 0;
  while (1)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v7);
    v9 = mlir::TypeRange::dereference_iterator(a3, v7);
    if (!mlir::verifyCompatibleShape(v8, v9))
    {
      break;
    }

    if (a2 == ++v7)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::verifyCompatibleDims(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = 8 * a2;
  v4 = a1;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 != 0x8000000000000000)
    {
      v2 = v5;
    }

    v3 -= 8;
  }

  while (v3);
  v7 = 8 * a2 - 8;
  do
  {
    v9 = *a1++;
    v8 = v9;
    v11 = v9 == 0x8000000000000000 || v2 == v8;
    v12 = !v11 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return v11;
}

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
  v76[16] = *MEMORY[0x277D85DE8];
  v74 = v76;
  v75 = 0x800000000;
  if (a2 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a2)
  {
    LODWORD(v75) = 0;
LABEL_10:
    v13 = 1;
    goto LABEL_110;
  }

  v4 = 0;
  v5 = v76;
  do
  {
    v6 = mlir::TypeRange::dereference_iterator(a1, v4);
    *v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v6);
    v5[1] = v7;
    v5 += 2;
    ++v4;
  }

  while (a2 != v4);
  v8 = v74;
  v9 = (v75 + a2);
  LODWORD(v75) = v75 + a2;
  if (!v75)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 16 * v9;
  v12 = v74 + 16 * v9;
  while (!*(v74 + v10))
  {
    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  do
  {
    if (!*(v74 + v14))
    {
LABEL_26:
      v13 = 0;
      goto LABEL_110;
    }

    v14 += 16;
  }

  while (v11 != v14);
  if (!a2)
  {
    goto LABEL_29;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = mlir::TypeRange::dereference_iterator(a1, v17);
    if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v71 = v19;
    if (!v19 || (ScalableDims = mlir::VectorType::getScalableDims(&v71), v22 = v21, v23 = 1, (v24 = memchr(ScalableDims, 1, v21)) == 0) || v24 == &ScalableDims[v22])
    {
      v16 = 1;
      v23 = v15;
    }

    if (v23 & 1) != 0 && (v16)
    {
      goto LABEL_26;
    }

    ++v17;
    v15 = v23;
  }

  while (a2 != v17);
  v8 = v74;
  v12 = v74 + 16 * v75;
  if (v75)
  {
LABEL_29:
    while (1)
    {
      *v69 = *v8;
      if (mlir::ShapedType::hasRank(v69))
      {
        break;
      }

      if (++v8 == v12)
      {
        v8 = v12;
        break;
      }
    }

    v25 = v8;
    v8 = v74;
    v26 = v75;
  }

  else
  {
    v26 = 0;
    v25 = v74;
  }

  v27 = &v8[v26];
  v71 = v73;
  v72 = 0x800000000;
  if (v25 == v27)
  {
    v30 = 0;
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = 0;
    v29 = v25;
    do
    {
      do
      {
        if (++v29 == v12)
        {
          break;
        }

        *v69 = *v29;
      }

      while ((mlir::ShapedType::hasRank(v69) & 1) == 0);
      ++v28;
    }

    while (v29 != v27);
    v30 = v72;
    if (v28 + v72 > HIDWORD(v72))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v25 != v27)
  {
    v31 = (v71 + 16 * v30);
    do
    {
      *v31 = *v25;
      do
      {
        if (++v25 == v12)
        {
          break;
        }

        *v69 = *v25;
      }

      while ((mlir::ShapedType::hasRank(v69) & 1) == 0);
      ++v31;
    }

    while (v25 != v27);
    v30 = v72;
  }

  LODWORD(v72) = v30 + v28;
  if (!(v30 + v28))
  {
    goto LABEL_103;
  }

  mlir::ShapedType::getShape(v71);
  v33 = v32;
  if (!v72)
  {
LABEL_54:
    if (v33 >= 1)
    {
      v37 = 0;
      v38 = 0;
      while (1)
      {
        v39 = v71;
        v40 = (v71 + 16 * v72);
        if (!v72)
        {
          break;
        }

        v41 = 16 * v72;
        while (1)
        {
          v68 = *v39;
          mlir::ShapedType::getShape(&v68);
          if (v42 >= v37)
          {
            break;
          }

          v39 = (v39 + 16);
          v41 -= 16;
          if (!v41)
          {
            v39 = v40;
            break;
          }
        }

        v43 = v39;
        v39 = (v71 + 16 * v72);
        v69[0] = v70;
        v69[1] = 0x800000000;
        if (v43 == v39)
        {
          goto LABEL_100;
        }

        v44 = 0;
        v45 = v43;
        do
        {
          do
          {
            v45 = (v45 + 16);
            if (v45 == v40)
            {
              break;
            }

            v68 = *v45;
            mlir::ShapedType::getShape(&v68);
          }

          while (v46 < v37);
          ++v44;
        }

        while (v45 != v39);
        v47 = v69[1];
        if (v44 + LODWORD(v69[1]) > HIDWORD(v69[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_69:
        v48 = v69[0];
        if (v43 != v39)
        {
          v49 = v69[0] + 8 * v47;
          do
          {
            v50 = *v43;
            v43 = (v43 + 16);
            v68 = v50;
            for (*v49 = *(mlir::ShapedType::getShape(&v68) + 8 * v37); v43 != v40; v43 = (v43 + 16))
            {
              v68 = *v43;
              mlir::ShapedType::getShape(&v68);
              if (v51 >= v37)
              {
                break;
              }
            }

            ++v49;
          }

          while (v43 != v39);
          v47 = v69[1];
          v48 = v69[0];
        }

        v52 = v47 + v44;
        LODWORD(v69[1]) = v47 + v44;
        if (v47 + v44)
        {
          v53 = *v48;
          v54 = 8 * v52;
          v55 = v54;
          v56 = v48;
          do
          {
            v58 = *v56++;
            v57 = v58;
            if (v58 != 0x8000000000000000)
            {
              v53 = v57;
            }

            v55 -= 8;
          }

          while (v55);
          v59 = v54 - 8;
          v60 = v48;
          do
          {
            v62 = *v60++;
            v61 = v62;
            v64 = v62 == 0x8000000000000000 || v53 == v61;
            v65 = !v64 || v59 == 0;
            v59 -= 8;
          }

          while (!v65);
          v66 = !v64;
          if (v48 != v70)
          {
LABEL_95:
            free(v48);
          }
        }

        else
        {
          v66 = 0;
          if (v48 != v70)
          {
            goto LABEL_95;
          }
        }

        if (v66)
        {
          v13 = 0;
          goto LABEL_108;
        }

        v37 = ++v38;
        if (v33 <= v38)
        {
          v13 = 1;
          goto LABEL_108;
        }
      }

      v43 = v71;
      v69[0] = v70;
      v69[1] = 0x800000000;
LABEL_100:
      v47 = 0;
      LODWORD(v44) = 0;
      goto LABEL_69;
    }

LABEL_103:
    v13 = 1;
    goto LABEL_108;
  }

  v34 = v71;
  v35 = 16 * v72;
  while (1)
  {
    *v69 = *v34;
    mlir::ShapedType::getShape(v69);
    if (v36 != v33)
    {
      break;
    }

    v34 = (v34 + 16);
    v35 -= 16;
    if (!v35)
    {
      goto LABEL_54;
    }
  }

  v13 = 0;
LABEL_108:
  if (v71 != v73)
  {
    free(v71);
  }

LABEL_110:
  if (v74 != v76)
  {
    free(v74);
  }

  return v13;
}

uint64_t mlir::OperandElementTypeIterator::mapElement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v15 = v3;
    v16 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v2 = v16;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v15 + 8);
    v6 = *(v15 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = v2;
    v18 = 0;
    return mlir::ShapedType::getElementType(&v17);
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
  v17 = v2;
  v18 = v14;
  return mlir::ShapedType::getElementType(&v17);
}

uint64_t mlir::ResultElementTypeIterator::mapElement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v15 = v3;
    v16 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v2 = v16;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v15 + 8);
    v6 = *(v15 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = v2;
    v18 = 0;
    return mlir::ShapedType::getElementType(&v17);
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
  v17 = v2;
  v18 = v14;
  return mlir::ShapedType::getElementType(&v17);
}

unint64_t mlir::insertTypesInto(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = a6;
    v10 = 0;
    if (a6)
    {
      v12 = a3;
      v13 = 0;
      v14 = &a3[a4];
      v15 = 0;
      v29 = v14;
      do
      {
        v30 = mlir::TypeRange::dereference_iterator(a5, v13);
        v10 = *v12;
        v16 = v10 - v15;
        v17 = *(a7 + 8);
        if (v10 - v15 + v17 > *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v10 == v15)
        {
          v18 = v17 + v16;
          *(a7 + 8) = v18;
          if (v18 >= *(a7 + 12))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v20 = a5;
          v21 = v9;
          v22 = (*a7 + 8 * v17);
          do
          {
            *v22++ = mlir::TypeRange::dereference_iterator(a1, v15++);
          }

          while (v10 != v15);
          v23 = *(a7 + 12);
          v9 = v21;
          a5 = v20;
          v14 = v29;
          v18 = *(a7 + 8) + v16;
          *(a7 + 8) = v18;
          if (v18 >= v23)
          {
LABEL_14:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        *(*a7 + 8 * v18) = v30;
        v19 = *(a7 + 8) + 1;
        *(a7 + 8) = v19;
        if (++v12 == v14)
        {
          break;
        }

        ++v13;
        v15 = v10;
      }

      while (v13 != v9);
    }

    else
    {
      v19 = *(a7 + 8);
    }

    v24 = a2 - v10;
    if (a2 - v10 + v19 > *(a7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a2 != v10)
    {
      v25 = (*a7 + 8 * v19);
      do
      {
        *v25++ = mlir::TypeRange::dereference_iterator(a1, v10++);
      }

      while (a2 != v10);
      v19 = *(a7 + 8);
    }

    v26 = v19 + v24;
    *(a7 + 8) = v26;
    mlir::TypeRange::TypeRange(v31, *a7, v26);
    return v31[0];
  }

  return a1;
}

unint64_t mlir::filterTypesOut(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (v5)
  {
    v8 = *a3;
    v9 = 8 * v5;
    while (!*v8)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        return a1;
      }
    }

    v10 = a2;
    if (a2)
    {
      v11 = 0;
      do
      {
        if (((*(*a3 + 8 * (v11 >> 6)) >> v11) & 1) == 0)
        {
          v12 = mlir::TypeRange::dereference_iterator(a1, v11);
          v15 = v12;
          v13 = *(a4 + 8);
          if (v13 < *(a4 + 12))
          {
            *(*a4 + 8 * v13) = v12;
            *(a4 + 8) = v13 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a4, &v15);
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }

    mlir::TypeRange::TypeRange(v16, *a4, *(a4 + 8));
    return v16[0];
  }

  return a1;
}

void mlir::IRUnit::print(mlir::detail::AsmStateImpl *result, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = *result & 6;
  v4 = (*result & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v21 = (*result & 0xFFFFFFFFFFFFFFF8);

    mlir::Operation::print(v21, a2, a3);
  }

  if (v3 == 2 && v4 != 0)
  {

    printRegion(a2, v4, a3);
    return;
  }

  if (v3 != 4 || v4 == 0)
  {
    return;
  }

  Parent = mlir::Block::getParent((*result & 0xFFFFFFFFFFFFFFF8));
  v11 = *(Parent + 1);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v4)
  {
    v16 = 0;
    v15 = a2;
    v17 = *(a2 + 4);
    if (*(a2 + 3) - v17 <= 6uLL)
    {
      goto LABEL_22;
    }

LABEL_31:
    *(v17 + 3) = 589327203;
    *v17 = 1668246594;
    *(v15 + 4) += 7;
    v19 = llvm::raw_ostream::operator<<(v15, v16);
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 4)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v13 = 0;
  v14 = (v12 + 8);
  v15 = a2;
  do
  {
    v14 = v14[1];
    v13 += 0x100000000;
  }

  while (v14 != (v4 + 8));
  v16 = v13 >> 32;
  v17 = *(a2 + 4);
  if (*(a2 + 3) - v17 > 6uLL)
  {
    goto LABEL_31;
  }

LABEL_22:
  v18 = llvm::raw_ostream::write(v15, "Block #", 7uLL);
  v19 = llvm::raw_ostream::operator<<(v18, v16);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 4)
  {
LABEL_23:
    *(v20 + 4) = 32;
    *v20 = 1919903264;
    *(v19 + 4) += 5;
    goto LABEL_33;
  }

LABEL_32:
  llvm::raw_ostream::write(v19, " for ", 5uLL);
LABEL_33:
  v22 = a3;
  shouldSkipRegions = mlir::OpPrintingFlags::shouldSkipRegions(a3);
  v24 = mlir::OpPrintingFlags::skipRegions(v22, 1);
  printRegion(a2, Parent, v24);
  if ((shouldSkipRegions & 1) == 0)
  {

    mlir::Block::print(v4, a2);
  }
}

double printRegion(llvm::raw_ostream *this, mlir::Region *a2, mlir::OpPrintingFlags *a3)
{
  v3 = this;
  v4 = *(this + 4);
  v5 = *(this + 3) - v4;
  if (a2)
  {
    if (v5 > 7)
    {
      *v4 = 0x23206E6F69676552;
      *(this + 4) += 8;
      v8 = this;
    }

    else
    {
      v8 = llvm::raw_ostream::write(this, "Region #", 8uLL);
    }

    RegionNumber = mlir::Region::getRegionNumber(a2);
    v13 = llvm::raw_ostream::operator<<(v8, RegionNumber);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x20706F20726F6620;
      *(v13 + 4) += 8;
      v15 = *(a2 + 2);
      if (v15)
      {
LABEL_11:

        mlir::Operation::print(v15, v3, a3);
      }
    }

    else
    {
      llvm::raw_ostream::write(v13, " for op ", 8uLL);
      v15 = *(a2 + 2);
      if (v15)
      {
        goto LABEL_11;
      }
    }

    v16 = *(v3 + 4);
    if ((*(v3 + 3) - v16) <= 0x12)
    {
      v9 = "<Operation:nullptr>";
      this = v3;
      v10 = 19;

LABEL_7:
      llvm::raw_ostream::write(this, v9, v10);
      return result;
    }

    *(v16 + 15) = 1047688304;
    result = *"<Operation:nullptr>";
    *v16 = *"<Operation:nullptr>";
    *(v3 + 4) += 19;
  }

  else
  {
    if (v5 <= 0xF)
    {
      v9 = "<Region:nullptr>";
      v10 = 16;

      goto LABEL_7;
    }

    result = *"<Region:nullptr>";
    *v4 = *"<Region:nullptr>";
    *(this + 4) += 16;
  }

  return result;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, mlir::detail::AsmStateImpl *a2)
{
  mlir::OpPrintingFlags::OpPrintingFlags(v9);
  v4 = mlir::OpPrintingFlags::skipRegions(v9, 1);
  v5 = mlir::OpPrintingFlags::useLocalScope(v4);
  v7 = v5[1];
  v6 = v5[2];
  v10[0] = *v5;
  v10[1] = v7;
  v10[2] = v6;
  mlir::IRUnit::print(a2, a1, v10);
  return a1;
}

uint64_t mlir::Value::getDefiningOp(mlir::Value *this)
{
  v1 = *this;
  if ((~*(*this + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    return v1 + 24 * *(v1 + 16) + 120;
  }

  else
  {
    return v1 + 16 * v2 + 16;
  }
}

uint64_t mlir::Value::getLoc(mlir::Value *this)
{
  if ((~*(*this + 8) & 7) != 0)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return *(*this + 32);
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (v3)
    {
      return *(v3 + 24);
    }

    return *(*this + 32);
  }

  return *(v1 + 16 * v2 + 40);
}

uint64_t *mlir::Value::setLoc(uint64_t *result, uint64_t a2)
{
  if ((~*(*result + 8) & 7) != 0)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
LABEL_8:
    *(*result + 32) = a2;
    return result;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (v4)
    {
      *(v4 + 24) = a2;
      return result;
    }

    goto LABEL_8;
  }

  *(v2 + 16 * v3 + 40) = a2;
  return result;
}

mlir::Block *mlir::Value::getParentRegion(mlir::Value *this)
{
  if ((~*(*this + 8) & 7) != 0)
  {
    v1 = *this;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return mlir::Block::getParent(*(*this + 16));
  }

  v2 = *(v1 + 8) & 7;
  if (v2 != 6)
  {
    result = *(v1 + 16 * v2 + 32);
    if (!result)
    {
      return result;
    }

    return mlir::Block::getParent(result);
  }

  v3 = v1 + 24 * *(v1 + 16) + 120;
  if (!v3)
  {
    return mlir::Block::getParent(*(*this + 16));
  }

  result = *(v3 + 16);
  if (!result)
  {
    return result;
  }

  return mlir::Block::getParent(result);
}

uint64_t mlir::Value::getParentBlock(mlir::Value *this)
{
  v1 = *this;
  if ((~*(*this + 8) & 7) != 0)
  {
    v2 = *this;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return *(v1 + 16);
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (v4)
    {
      v1 = v4;
    }

    return *(v1 + 16);
  }

  return *(v2 + 16 * v3 + 32);
}

uint64_t ***mlir::Value::replaceAllUsesExcept(uint64_t ***result, uint64_t *a2, uint64_t ****this)
{
  v3 = **result;
  if (v3)
  {
    v6 = *this;
    v7 = this[1];
    if (v7 != *this)
    {
      while (1)
      {
        v8 = *v3;
        v9 = v3[2];
        if (v7 == v6)
        {
          break;
        }

        result = llvm::SmallPtrSetImplBase::doFind(this, v9);
        v6 = *this;
        v7 = this[1];
        if (!result)
        {
          if (v7 == v6)
          {
            v10 = 20;
          }

          else
          {
            v10 = 16;
          }

          v11 = *(this + v10);
LABEL_16:
          result = &v7[v11];
        }

LABEL_17:
        if (v7 == v6)
        {
          v13 = 20;
        }

        else
        {
          v13 = 16;
        }

        if (result == &v7[*(this + v13)])
        {
          v14 = v3[1];
          if (v14)
          {
            v15 = *v3;
            *v14 = *v3;
            if (v15)
            {
              v15[1] = v14;
            }
          }

          v3[3] = a2;
          v16 = *a2;
          *v3 = *a2;
          v3[1] = a2;
          if (v16)
          {
            *(v16 + 8) = v3;
          }

          *a2 = v3;
        }

        v3 = v8;
        if (!v8)
        {
          return result;
        }
      }

      v11 = *(this + 5);
      if (v11)
      {
        v12 = 8 * v11;
        result = v6;
        while (*result != v9)
        {
          ++result;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v17 = *(this + 5);
    if (v17)
    {
      v18 = 8 * v17;
      v19 = &v7[v17];
      do
      {
        v20 = v3;
        v3 = *v3;
        v21 = v18;
        v22 = v6;
        while (*v22 != v20[2])
        {
          ++v22;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_35;
          }
        }

        if (v22 != v19)
        {
          continue;
        }

LABEL_35:
        v23 = v20[1];
        if (v23)
        {
          *v23 = v3;
          if (v3)
          {
            v3[1] = v23;
          }
        }

        v20[3] = a2;
        v24 = *a2;
        *v20 = *a2;
        v20[1] = a2;
        if (v24)
        {
          *(v24 + 8) = v20;
        }

        *a2 = v20;
      }

      while (v3);
    }

    else
    {
      do
      {
        v25 = *v3;
        v26 = v3[1];
        if (v26)
        {
          *v26 = v25;
          if (v25)
          {
            v25[1] = v26;
          }
        }

        v3[3] = a2;
        v27 = *a2;
        *v3 = *a2;
        v3[1] = a2;
        if (v27)
        {
          *(v27 + 8) = v3;
        }

        *a2 = v3;
        v3 = v25;
      }

      while (v25);
    }
  }

  return result;
}

uint64_t ***mlir::Value::replaceAllUsesExcept(uint64_t ***result, uint64_t *a2, uint64_t a3)
{
  v3 = **result;
  if (v3)
  {
    do
    {
      v4 = *v3;
      if (v3[2] != a3)
      {
        v5 = v3[1];
        if (v5)
        {
          *v5 = v4;
          if (v4)
          {
            v4[1] = v5;
          }
        }

        v3[3] = a2;
        v6 = *a2;
        *v3 = *a2;
        v3[1] = a2;
        if (v6)
        {
          *(v6 + 8) = v3;
        }

        *a2 = v3;
      }

      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ***mlir::Value::replaceUsesWithIf(uint64_t ***result, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v4 = **result;
  if (v4)
  {
    do
    {
      v8 = *v4;
      result = a3(a4, v4);
      if (result)
      {
        v9 = v4[1];
        if (v9)
        {
          v10 = *v4;
          *v9 = *v4;
          if (v10)
          {
            *(v10 + 8) = v9;
          }
        }

        v4[3] = a2;
        v11 = *a2;
        *v4 = *a2;
        v4[1] = a2;
        if (v11)
        {
          *(v11 + 8) = v4;
        }

        *a2 = v4;
      }

      v4 = v8;
    }

    while (v8);
  }

  return result;
}

BOOL mlir::Value::isUsedOutsideOfBlock(mlir::Value *this, mlir::Block *a2)
{
  v2 = *this;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = *(v2[2] + 16);
    result = v3 != a2;
    if (v3 != a2)
    {
      return result;
    }
  }

  return 0;
}

void mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(void *a1, unsigned int *a2, unint64_t a3)
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = v13;
    *a1 = v13;
    *v6 = 0;
    v6[1] = a1;
    v7 = &v13;
    goto LABEL_10;
  }

  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(&v13, 8 * a3);
  v8 = a3;
  v9 = a1;
  do
  {
    v9 = *v9;
    v10 = *a2++;
    v14[v10 - 1] = v9;
    --v8;
  }

  while (v8);
  v6 = v13;
  *a1 = v13;
  *v6 = 0;
  v6[1] = a1;
  if (a3 != 1)
  {
    v7 = &v14[a3 - 1];
LABEL_10:
    v11 = v14;
    v12 = v6;
    do
    {
      v6 = *v11;
      *v12 = *v11;
      if (v6)
      {
        v6[1] = v12;
      }

      ++v11;
      v12 = v6;
    }

    while (v11 != v7);
  }

  *v6 = 0;
}

uint64_t mlir::detail::OpResultImpl::getOwner(mlir::detail::OpResultImpl *this)
{
  if (!this)
  {
    return this + 24 * *(this + 2) + 120;
  }

  v1 = *(this + 1) & 7;
  if (v1 == 6)
  {
    return this + 24 * *(this + 2) + 120;
  }

  else
  {
    return this + 16 * v1 + 16;
  }
}

uint64_t mlir::detail::OpResultImpl::getNextResultAtOffset(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    if (this)
    {
      v2 = *(this + 8) & 7;
      if (v2 != 6)
      {
        v3 = (5 - v2);
        if (a2 <= v3)
        {
          this -= 16 * a2;
          return this;
        }

        this -= 16 * v3;
        a2 -= v3;
      }
    }

    this -= 24 * a2;
  }

  return this;
}

uint64_t mlir::OpResult::getNumInline(uint64_t this)
{
  if (this >= 6)
  {
    return 6;
  }

  else
  {
    return this;
  }
}

uint64_t mlir::OpResult::getNumTrailing(mlir::OpResult *this)
{
  if (this >= 6)
  {
    return (this - 6);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::OperandRange::getTypes@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  return this;
}

uint64_t *mlir::OperandRange::getType@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getTypes@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getType@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  return this;
}

__n128 mlir::ValueRange::getTypes@<Q0>(__n128 *__return_ptr a1@<X8>, __n128 *this@<X0>)
{
  a1->n128_u64[1] = 0;
  result = *this;
  a1->n128_u64[0] = this->n128_u64[0];
  a1[1] = result;
  return result;
}

__n128 mlir::ValueRange::getType@<Q0>(__n128 *__return_ptr a1@<X8>, __n128 *this@<X0>)
{
  a1->n128_u64[1] = 0;
  result = *this;
  a1->n128_u64[0] = this->n128_u64[0];
  a1[1] = result;
  return result;
}

__n128 std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14TypeRangeRange10getRangeFnINS_17OperandRangeRangeEEENSt3__18functionIFNS_9TypeRangeEjEEERKT_EUljE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t anonymous namespace::OperationVerifier::verifyOpAndDominance(_anonymous_namespace_::OperationVerifier *this, mlir::Operation *a2)
{
  v198 = *MEMORY[0x277D85DE8];
  v180 = v182;
  v182[0] = a2;
  v2 = 1;
  v181 = 0x600000001;
  while (1)
  {
    while (1)
    {
      v3 = v180 + 8 * v2;
      v4 = *(v3 - 1);
      *(v3 - 1) = v4 | 2;
      v5 = v4 & 0xFFFFFFFFFFFFFFF8;
      if ((v4 & 2) == 0)
      {
        break;
      }

      if ((v4 & 4) == 0)
      {
        DiscardableAttrDictionary = &v185;
        v184 = 0x600000000;
        if (*this == 1)
        {
          v12 = *(v5 + 44);
          if ((v12 & 0x7FFFFF) != 0)
          {
            v13 = ((v5 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
            v14 = v13 + 24 * (v12 & 0x7FFFFF);
            do
            {
              for (i = *(v13 + 8); i != v13; i = *(i + 8))
              {
                v16 = i - 8;
                if (!i)
                {
                  v16 = 0;
                }

                v17 = v16 + 32;
                for (j = *(v16 + 40); j != v17; j = *(j + 8))
                {
                  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
                  if ((*(v19 + 44) & 0x7FFFFF) != 0)
                  {
                    v20 = v19;
                    {
                    }

                    if ((*(**(v20 + 48) + 32))(*(v20 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      if (v184 >= HIDWORD(v184))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      *(DiscardableAttrDictionary + v184) = v20;
                      LODWORD(v184) = v184 + 1;
                    }
                  }
                }
              }

              v13 += 24;
            }

            while (v13 != v14);
          }
        }

        Context = mlir::Attribute::getContext((v5 + 24));
        v49 = DiscardableAttrDictionary;
        v50 = v184;
        v173 = this;
        *&v174 = DiscardableAttrDictionary;
        v177 = v184;
        if (v184)
        {
          v51 = Context;
          if (mlir::MLIRContext::isMultithreadingEnabled(Context) && v177 > 1)
          {
            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(&v170, v51);
          }

          v81 = &v49[8 * v50];
          v82 = v174;
          if (v174 != v81)
          {
            {
              v82 = (v174 + 8);
              *&v174 = v82;
              if (v82 == v81)
              {
                goto LABEL_148;
              }
            }

            v41 = 0;
LABEL_150:
            v84 = DiscardableAttrDictionary;
            if (DiscardableAttrDictionary == &v185)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }
        }

LABEL_148:
        v83 = *(v5 + 48);
        if (*(v83 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v41 = (*(*v83 + 72))(v83, v5);
          goto LABEL_150;
        }

        *&v187 = *(v83 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v187);
        if (ReferencedDialect)
        {
          if ((*(ReferencedDialect + 40) & 1) == 0)
          {
            v86 = ReferencedDialect;
            *&v170 = "unregistered operation '";
            v172 = 259;
            mlir::Operation::emitError(&v187, v5, &v170);
            if (v187)
            {
              mlir::Diagnostic::operator<<(&v187 + 8, *(v5 + 48));
              if (v187)
              {
                LODWORD(v174) = 3;
                *(&v174 + 1) = "' found in dialect ('";
                v175 = 21;
                if (v189 >= v190)
                {
                  if (v188 > &v174 || v188 + 24 * v189 <= &v174)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v87 = v188 + 24 * v189;
                v88 = v174;
                *(v87 + 2) = v175;
                *v87 = v88;
                ++v189;
                if (v187)
                {
                  v89 = *(v86 + 8);
                  v90 = *(v86 + 16);
                  v176 = 261;
                  *&v174 = v89;
                  *(&v174 + 1) = v90;
                  mlir::Diagnostic::operator<<(&v187 + 8, &v174);
                  if (v187)
                  {
                    LODWORD(v174) = 3;
                    *(&v174 + 1) = "') that does not allow unknown operations";
                    v175 = 41;
                    if (v189 >= v190)
                    {
                      if (v188 > &v174 || v188 + 24 * v189 <= &v174)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v91 = v188 + 24 * v189;
                    v92 = v174;
                    *(v91 + 2) = v175;
                    *v91 = v92;
                    ++v189;
                  }
                }
              }
            }

            v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
            if (v187)
            {
              mlir::InFlightDiagnostic::report(&v187);
            }

            if (v197[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v197)
            {
              free(__dst);
            }

            v93 = __p;
            if (__p)
            {
              v94 = v195;
              v95 = __p;
              if (v195 != __p)
              {
                do
                {
                  v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
                }

                while (v94 != v93);
                v95 = __p;
              }

              v195 = v93;
              operator delete(v95);
            }

            v96 = v192;
            if (v192)
            {
              v97 = v193;
              v98 = v192;
              if (v193 == v192)
              {
                goto LABEL_295;
              }

              do
              {
                v100 = *--v97;
                v99 = v100;
                *v97 = 0;
                if (v100)
                {
                  MEMORY[0x259C63150](v99, 0x1000C8077774924);
                }
              }

              while (v97 != v96);
LABEL_294:
              v98 = v192;
              goto LABEL_295;
            }

            goto LABEL_296;
          }
        }

        else
        {
          v137 = mlir::Attribute::getContext((v5 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v137) & 1) == 0)
          {
            v176 = 257;
            mlir::Operation::emitOpError(&v187, v5, &v174);
            if (v187)
            {
              LODWORD(v170) = 3;
              *(&v170 + 1) = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v171 = 178;
              if (v189 >= v190)
              {
                if (v188 > &v170 || v188 + 24 * v189 <= &v170)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v138 = v188 + 24 * v189;
              v139 = v170;
              *(v138 + 2) = v171;
              *v138 = v139;
              ++v189;
            }

            v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
            if (v187)
            {
              mlir::InFlightDiagnostic::report(&v187);
            }

            if (v197[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v197)
            {
              free(__dst);
            }

            v140 = __p;
            if (__p)
            {
              v141 = v195;
              v142 = __p;
              if (v195 != __p)
              {
                do
                {
                  v141 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v141 - 1);
                }

                while (v141 != v140);
                v142 = __p;
              }

              v195 = v140;
              operator delete(v142);
            }

            v96 = v192;
            if (v192)
            {
              v143 = v193;
              v98 = v192;
              if (v193 != v192)
              {
                do
                {
                  v145 = *--v143;
                  v144 = v145;
                  *v143 = 0;
                  if (v145)
                  {
                    MEMORY[0x259C63150](v144, 0x1000C8077774924);
                  }
                }

                while (v143 != v96);
                goto LABEL_294;
              }

LABEL_295:
              v193 = v96;
              operator delete(v98);
            }

LABEL_296:
            if (v188 != v191)
            {
              free(v188);
            }

            goto LABEL_150;
          }
        }

        v41 = 1;
        goto LABEL_150;
      }

      mlir::SuccessorRange::SuccessorRange(&v187, (v4 & 0xFFFFFFFFFFFFFFF8));
      v34 = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        v35 = (v187 + 24);
        while (1)
        {
          Parent = mlir::Block::getParent(*v35);
          if (Parent != mlir::Block::getParent(v5))
          {
            break;
          }

          v35 += 4;
          if (!--v34)
          {
            goto LABEL_62;
          }
        }

        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        DiscardableAttrDictionary = "branching to block of a different region";
        LOWORD(v186) = 259;
        mlir::Operation::emitOpError(&v187, v68, &DiscardableAttrDictionary);
        v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
        if (v187)
        {
          mlir::InFlightDiagnostic::report(&v187);
        }

        if (v197[0])
        {
          if (__dst != v197)
          {
            free(__dst);
          }

          v69 = __p;
          if (__p)
          {
            v70 = v195;
            v71 = __p;
            if (v195 != __p)
            {
              do
              {
                v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
              }

              while (v70 != v69);
              v71 = __p;
            }

            v195 = v69;
            operator delete(v71);
          }

          v45 = v192;
          if (v192)
          {
            v72 = v193;
            v47 = v192;
            if (v193 != v192)
            {
              do
              {
                v74 = *--v72;
                v73 = v74;
                *v72 = 0;
                if (v74)
                {
                  MEMORY[0x259C63150](v73, 0x1000C8077774924);
                }
              }

              while (v72 != v45);
              goto LABEL_271;
            }

LABEL_272:
            v193 = v45;
            operator delete(v47);
          }

          goto LABEL_273;
        }

        goto LABEL_152;
      }

LABEL_62:
      if ((mayBeValidWithoutTerminator(v5) & 1) == 0)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v38 = v37;
        {
          v39 = v37[6];
          if (v39[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v39 = *(v38 + 6);
          if (v39[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        if (((*(*v39 + 4))(v39, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          DiscardableAttrDictionary = "block with no terminator, has ";
          LOWORD(v186) = 259;
          mlir::Operation::emitError(&v187, v40, &DiscardableAttrDictionary);
          if (v187)
          {
            mlir::Diagnostic::operator<<((&v187 + 8), v38);
          }

          v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
          if (v187)
          {
            mlir::InFlightDiagnostic::report(&v187);
          }

          if (v197[0] != 1)
          {
            goto LABEL_152;
          }

          if (__dst != v197)
          {
            free(__dst);
          }

          v42 = __p;
          if (__p)
          {
            v43 = v195;
            v44 = __p;
            if (v195 != __p)
            {
              do
              {
                v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
              }

              while (v43 != v42);
              v44 = __p;
            }

            v195 = v42;
            operator delete(v44);
          }

          v45 = v192;
          if (v192)
          {
            v46 = v193;
            v47 = v192;
            if (v193 == v192)
            {
              goto LABEL_272;
            }

            do
            {
              v53 = *--v46;
              v52 = v53;
              *v46 = 0;
              if (v53)
              {
                MEMORY[0x259C63150](v52, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
LABEL_271:
            v47 = v192;
            goto LABEL_272;
          }

LABEL_273:
          v84 = v188;
          if (v188 == v191)
          {
LABEL_152:
            if ((v41 & 1) == 0)
            {
              goto LABEL_345;
            }

            goto LABEL_153;
          }

LABEL_151:
          free(v84);
          goto LABEL_152;
        }
      }

LABEL_153:
      v2 = v181 - 1;
      LODWORD(v181) = v2;
      if (!v2)
      {
        goto LABEL_358;
      }
    }

    if ((v4 & 4) == 0)
    {
      break;
    }

    v21 = *(v5 + 48);
    v22 = *(v5 + 56);
    if (v21 != v22)
    {
      while (*(*v21 + 16) == v5)
      {
        v21 += 8;
        if (v21 == v22)
        {
          goto LABEL_39;
        }
      }

      v61 = *(*v21 + 32);
      DiscardableAttrDictionary = "block argument not owned by block";
      LOWORD(v186) = 259;
      mlir::emitError(v61, &DiscardableAttrDictionary, &v187);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v197[0])
      {
        if (__dst != v197)
        {
          free(__dst);
        }

        v62 = __p;
        if (__p)
        {
          v63 = v195;
          v64 = __p;
          if (v195 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v195 = v62;
          operator delete(v64);
        }

        v31 = v192;
        if (v192)
        {
          v65 = v193;
          v33 = v192;
          if (v193 == v192)
          {
            goto LABEL_198;
          }

          do
          {
            v67 = *--v65;
            v66 = v67;
            *v65 = 0;
            if (v67)
            {
              MEMORY[0x259C63150](v66, 0x1000C8077774924);
            }
          }

          while (v65 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }

LABEL_39:
    if (*(v5 + 32) != v5 + 32)
    {
      for (k = *(v5 + 40); ; k = *(k + 8))
      {
        if (k == v5 + 32)
        {
          goto LABEL_202;
        }

        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        if (*(v24 + 10))
        {
          v25 = v24;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          if (v25 != v26)
          {
            break;
          }
        }
      }

      DiscardableAttrDictionary = "operation with block successors must terminate its parent block";
      LOWORD(v186) = 259;
      mlir::Operation::emitError(&v187, v25, &DiscardableAttrDictionary);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v197[0] == 1)
      {
        if (__dst != v197)
        {
          free(__dst);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v195;
          v30 = __p;
          if (v195 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v195 = v28;
          operator delete(v30);
        }

        v31 = v192;
        if (v192)
        {
          v32 = v193;
          v33 = v192;
          if (v193 == v192)
          {
            goto LABEL_198;
          }

          do
          {
            v55 = *--v32;
            v54 = v55;
            *v32 = 0;
            if (v55)
            {
              MEMORY[0x259C63150](v54, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }

    if ((mayBeValidWithoutTerminator((v4 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
    {
      v101 = mlir::Block::getParent((v4 & 0xFFFFFFFFFFFFFFF8));
      Loc = mlir::Region::getLoc(v101);
      DiscardableAttrDictionary = "empty block: expect at least a terminator";
      LOWORD(v186) = 259;
      mlir::emitError(Loc, &DiscardableAttrDictionary, &v187);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v197[0] == 1)
      {
        if (__dst != v197)
        {
          free(__dst);
        }

        v103 = __p;
        if (__p)
        {
          v104 = v195;
          v105 = __p;
          if (v195 != __p)
          {
            do
            {
              v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
            }

            while (v104 != v103);
            v105 = __p;
          }

          v195 = v103;
          operator delete(v105);
        }

        v31 = v192;
        if (v192)
        {
          v106 = v193;
          v33 = v192;
          if (v193 == v192)
          {
LABEL_198:
            v193 = v31;
            operator delete(v33);
            goto LABEL_199;
          }

          do
          {
            v108 = *--v106;
            v107 = v108;
            *v106 = 0;
            if (v108)
            {
              MEMORY[0x259C63150](v107, 0x1000C8077774924);
            }
          }

          while (v106 != v31);
LABEL_197:
          v33 = v192;
          goto LABEL_198;
        }

LABEL_199:
        v109 = v188;
        if (v188 != v191)
        {
LABEL_200:
          free(v109);
        }
      }

LABEL_201:
      if (!v27)
      {
        goto LABEL_345;
      }
    }

LABEL_202:
    if ((v4 & 4) != 0)
    {
      v119 = *(v5 + 32);
      v117 = (v5 + 32);
      for (m = v119; m != v117; m = *m)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v121 = v120;
        if ((*(v120 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_217;
        }

        {
        }

        if (((*(**(v121 + 48) + 32))(*(v121 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_217:
          if (v181 >= HIDWORD(v181))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v180 + v181) = v121;
          LODWORD(v181) = v181 + 1;
        }
      }
    }

    else if (*this == 1)
    {
      v110 = *(v5 + 44);
      if ((v110 & 0x7FFFFF) != 0)
      {
        v111 = ((v5 + 16 * ((v110 >> 23) & 1) + ((v110 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
        v112 = (v111 + 24 * (v110 & 0x7FFFFF));
        do
        {
          v114 = *(v112 - 3);
          v112 -= 3;
          v113 = v114;
          if (v114 != v112)
          {
            v115 = v181;
            do
            {
              if (v113)
              {
                v116 = (v113 - 1);
              }

              else
              {
                v116 = 0;
              }

              if (v115 >= HIDWORD(v181))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v180 + v115) = v116 | 4;
              v115 = v181 + 1;
              LODWORD(v181) = v181 + 1;
              v113 = *v113;
            }

            while (v113 != v112);
          }
        }

        while (v112 != v111);
      }
    }

    v2 = v181;
    if (!v181)
    {
LABEL_358:
      v157 = 1;
      v158 = v180;
      if (v180 == v182)
      {
        goto LABEL_347;
      }

LABEL_346:
      free(v158);
      goto LABEL_347;
    }
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 68);
    if (v6)
    {
      v7 = (*(v5 + 72) + 24);
      while (*v7)
      {
        v7 += 4;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      DiscardableAttrDictionary = "null operand found";
      LOWORD(v186) = 259;
      mlir::Operation::emitError(&v187, (v4 & 0xFFFFFFFFFFFFFFF8), &DiscardableAttrDictionary);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v197[0])
      {
        if (__dst != v197)
        {
          free(__dst);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v195;
          v77 = __p;
          if (v195 != __p)
          {
            do
            {
              v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v195 = v75;
          operator delete(v77);
        }

        v31 = v192;
        if (v192)
        {
          v78 = v193;
          v33 = v192;
          if (v193 == v192)
          {
            goto LABEL_198;
          }

          do
          {
            v80 = *--v78;
            v79 = v80;
            *v78 = 0;
            if (v80)
            {
              MEMORY[0x259C63150](v79, 0x1000C8077774924);
            }
          }

          while (v78 != v31);
          goto LABEL_197;
        }

        goto LABEL_199;
      }

      goto LABEL_201;
    }
  }

LABEL_10:
  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary((v4 & 0xFFFFFFFFFFFFFFF8));
  v8 = mlir::DictionaryAttr::begin(&DiscardableAttrDictionary);
  v9 = mlir::DictionaryAttr::end(&DiscardableAttrDictionary);
  if (v8 == v9)
  {
LABEL_92:
    v56 = *(v5 + 48);
    if (v56[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v56 + 8))(v56, v4 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_345;
    }

    v57 = *(v5 + 44);
    v58 = *&v57 & 0x7FFFFFLL;
    if ((v57 & 0x7FFFFF) == 0)
    {
      goto LABEL_202;
    }

    InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
      v60 = (v4 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v60 = 0;
    }

    v167 = v60;
    v168 = InterfaceFor;
    DiscardableAttrDictionary = &v185;
    v184 = 0x600000000;
    v122 = *(v5 + 44);
    if ((v122 & 0x7FFFFF) != 0)
    {
      v123 = (v5 + 16 * ((v122 >> 23) & 1) + ((v122 >> 21) & 0x7F8) + 32 * *(v5 + 40) + 64);
      if (!v60)
      {
        goto LABEL_248;
      }

LABEL_232:
      v124 = 0;
      while (2)
      {
        if (v167)
        {
          RegionKind = mlir::RegionKindInterface::getRegionKind(&v167, v124);
          v126 = *v123;
          if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
          {
            goto LABEL_244;
          }

          if (v123 != v126)
          {
            if (v123 != *(v123[1] + 8))
            {
              *&v174 = "expects graph region #";
              v176 = 259;
              mlir::Operation::emitOpError(&v187, (v4 & 0xFFFFFFFFFFFFFFF8), &v174);
              if (v187)
              {
                LODWORD(v170) = 5;
                *(&v170 + 1) = v124;
                if (v189 >= v190)
                {
                  if (v188 > &v170 || v188 + 24 * v189 <= &v170)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v146 = v188 + 24 * v189;
                v147 = v170;
                *(v146 + 2) = v171;
                *v146 = v147;
                v148 = ++v189;
                if (v187)
                {
                  LODWORD(v170) = 3;
                  *(&v170 + 1) = " to have 0 or 1 blocks";
                  v171 = 22;
                  if (v148 >= v190)
                  {
                    if (v188 > &v170 || v188 + 24 * v148 <= &v170)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v149 = v188 + 24 * v189;
                  v150 = v170;
                  *(v149 + 2) = v171;
                  *v149 = v150;
                  ++v189;
                }
              }

              v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
              if (v187)
              {
                mlir::InFlightDiagnostic::report(&v187);
              }

              if (v197[0] == 1)
              {
                if (__dst != v197)
                {
                  free(__dst);
                }

                v151 = __p;
                if (__p)
                {
                  v152 = v195;
                  v153 = __p;
                  if (v195 != __p)
                  {
                    do
                    {
                      v152 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v152 - 1);
                    }

                    while (v152 != v151);
                    v153 = __p;
                  }

                  v195 = v151;
                  operator delete(v153);
                }

                v132 = v192;
                if (v192)
                {
                  v154 = v193;
                  v134 = v192;
                  if (v193 == v192)
                  {
LABEL_320:
                    v193 = v132;
                    operator delete(v134);
                    goto LABEL_321;
                  }

                  do
                  {
                    v156 = *--v154;
                    v155 = v156;
                    *v154 = 0;
                    if (v156)
                    {
                      MEMORY[0x259C63150](v155, 0x1000C8077774924);
                    }
                  }

                  while (v154 != v132);
LABEL_319:
                  v134 = v192;
                  goto LABEL_320;
                }

                goto LABEL_321;
              }

              goto LABEL_267;
            }

LABEL_244:
            if (v123 != v126 && *(v123[1] - 8))
            {
              goto LABEL_250;
            }
          }

          ++v124;
          v123 += 3;
          if (v58 == v124)
          {
            goto LABEL_266;
          }

          continue;
        }

        break;
      }

      v126 = *v123;
      goto LABEL_244;
    }

    v123 = 0;
    if (v60)
    {
      goto LABEL_232;
    }

LABEL_248:
    while (v123 == *v123 || !*(v123[1] - 8))
    {
      v123 += 3;
      if (!--v58)
      {
LABEL_266:
        v27 = 1;
        goto LABEL_267;
      }
    }

LABEL_250:
    v128 = *(v5 + 24);
    *&v174 = "entry block of region may not have predecessors";
    v176 = 259;
    mlir::emitError(v128, &v174, &v187);
    v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
    if (v187)
    {
      mlir::InFlightDiagnostic::report(&v187);
    }

    if (v197[0] == 1)
    {
      if (__dst != v197)
      {
        free(__dst);
      }

      v129 = __p;
      if (__p)
      {
        v130 = v195;
        v131 = __p;
        if (v195 != __p)
        {
          do
          {
            v130 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v130 - 1);
          }

          while (v130 != v129);
          v131 = __p;
        }

        v195 = v129;
        operator delete(v131);
      }

      v132 = v192;
      if (v192)
      {
        v133 = v193;
        v134 = v192;
        if (v193 == v192)
        {
          goto LABEL_320;
        }

        do
        {
          v136 = *--v133;
          v135 = v136;
          *v133 = 0;
          if (v136)
          {
            MEMORY[0x259C63150](v135, 0x1000C8077774924);
          }
        }

        while (v133 != v132);
        goto LABEL_319;
      }

LABEL_321:
      if (v188 != v191)
      {
        free(v188);
      }
    }

LABEL_267:
    v109 = DiscardableAttrDictionary;
    if (DiscardableAttrDictionary != &v185)
    {
      goto LABEL_200;
    }

    goto LABEL_201;
  }

  v10 = v9;
  while (1)
  {
    v187 = *v8;
    NameDialect = mlir::NamedAttribute::getNameDialect(&v187);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v4 & 0xFFFFFFFFFFFFFFF8, v187, *(&v187 + 1)) & 1) == 0)
      {
        break;
      }
    }

    if (++v8 == v10)
    {
      goto LABEL_92;
    }
  }

LABEL_345:
  v157 = 0;
  v158 = v180;
  if (v180 != v182)
  {
    goto LABEL_346;
  }

LABEL_347:
  if (!v157)
  {
    return 0;
  }

  if ((*(a2 + 11) & 0x7FFFFF) != 0)
  {
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v180 = v182;
    HIDWORD(v181) = 8;
    v182[0] = a2;
    v159 = 1;
    while (1)
    {
      v160 = *(v180 + --v159);
      LODWORD(v181) = v159;
      v161 = *(v160 + 44);
      if ((v161 & 0x7FFFFF) != 0)
      {
        v162 = ((v160 + 16 * ((v161 >> 23) & 1) + ((v161 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v160 + 40);
        v164 = v162 + 24 * (v161 & 0x7FFFFF);
        do
        {
          if (*(v162 + 8) != v162)
          {
            mlir::detail::DominanceInfoBase<false>::isReachableFromEntry();
          }

          v162 += 24;
        }

        while (v162 != v164);
        v159 = v181;
      }

      if (!v159)
      {
        if (v180 != v182)
        {
          free(v180);
        }

        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase();
      }
    }
  }

  return 1;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachIPPNS_9OperationEZN12_GLOBAL__N_117OperationVerifier12verifyOnExitERS1_E3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SC_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mayBeValidWithoutTerminator(mlir::Block *a1)
{
  if (!mlir::Block::getParent(a1))
  {
    return 1;
  }

  Parent = mlir::Block::getParent(a1);
  v3 = *(Parent + 8);
  if (v3 == Parent || *(v3 + 8) != Parent)
  {
    return 0;
  }

  ParentOp = mlir::Block::getParentOp(a1);
  if (!ParentOp)
  {
    return 1;
  }

  {
    v8 = ParentOp;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>();
    v6 = *(v8 + 48);
    if (v6[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_8;
    }

    return 1;
  }

  v6 = *(ParentOp + 48);
  if (v6[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_8:
  v7 = *(*v6 + 4);

  return v7();
}

void *mlir::WalkStage::WalkStage(void *this, mlir::Operation *a2)
{
  *this = *(a2 + 11) & 0x7FFFFF;
  return this;
}

{
  *this = *(a2 + 11) & 0x7FFFFF;
  return this;
}

uint64_t mlir::ForwardIterator::makeIterable(mlir::ForwardIterator *this, mlir::Operation *a2)
{
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return this + 32 * *(this + 10) + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 64;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::walk(uint64_t a1, void (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v6 = *(a1 + 44);
  v15 = v6 & 0x7FFFFF;
  v16 = 0;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      a2(a3, a1, &v15);
      ++v16;
      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
        v10 = i - 8;
        if (!i)
        {
          v10 = 0;
        }

        v11 = v10 + 32;
        v12 = *(v10 + 40);
        if (v12 != v10 + 32)
        {
          do
          {
            llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
            mlir::detail::walk(v13, a2, a3);
            v12 = *(v12 + 8);
          }

          while (v12 != v11);
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return (a2)(a3, a1, &v15);
}

uint64_t mlir::detail::walk(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, int *), uint64_t a3)
{
  v6 = *(a1 + 44);
  v17 = v6 & 0x7FFFFF;
  v18 = 0;
  if ((v6 & 0x7FFFFF) == 0)
  {
    return a2(a3, a1, &v17);
  }

  v7 = ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  v8 = v7 + 24 * (v6 & 0x7FFFFF);
  while (1)
  {
    result = a2(a3, a1, &v17);
    if (!result)
    {
      break;
    }

    if (result == 2)
    {
      return 1;
    }

    ++v18;
    for (i = *(v7 + 8); i != v7; i = *(i + 8))
    {
      v11 = i - 8;
      if (!i)
      {
        v11 = 0;
      }

      v12 = *(v11 + 40);
      v13 = v11 + 32;
      while (v12 != v13)
      {
        v14 = *(v12 + 8);
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v16 = mlir::detail::walk(v15, a2, a3);
        v12 = v14;
        if (!v16)
        {
          return 0;
        }
      }
    }

    v7 += 24;
    if (v7 == v8)
    {
      return a2(a3, a1, &v17);
    }
  }

  return result;
}

void mlir::PDLValue::print(mlir::Attribute *this, llvm::raw_ostream *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this)
  {
    v4 = *(this + 2);
    if (v4 > 2)
    {
      switch(v4)
      {
        case 3:
          v8 = *(v3 + 8);
          if (v8)
          {
            v9 = *v3;
            v14 = mlir::TypeRange::dereference_iterator(v9, 0);
            mlir::Type::print(&v14, a2);
            if (v8 != 1)
            {
              for (i = 1; i != v8; ++i)
              {
                v11 = *(a2 + 4);
                if (*(a2 + 3) - v11 > 1uLL)
                {
                  *v11 = 8236;
                  *(a2 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(a2, ", ", 2uLL);
                }

                v14 = mlir::TypeRange::dereference_iterator(v9, i);
                mlir::Type::print(&v14, a2);
              }
            }
          }

          break;
        case 4:
          v14 = *this;
          mlir::Value::print(&v14, a2);
          break;
        case 5:
          v6 = *(v3 + 8);
          v14 = *v3;
          v15 = 0;
          if (v6)
          {
            v13 = mlir::ValueRange::dereference_iterator(&v14, 0);
            mlir::Value::print(&v13, a2);
            if (++v15 != v6)
            {
              do
              {
                v7 = *(a2 + 4);
                if (*(a2 + 3) - v7 > 1uLL)
                {
                  *v7 = 8236;
                  *(a2 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(a2, ", ", 2uLL);
                }

                v13 = mlir::ValueRange::dereference_iterator(&v14, v15);
                mlir::Value::print(&v13, a2);
                ++v15;
              }

              while (v15 != v6);
            }
          }

          break;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v14);
        v12 = mlir::OpPrintingFlags::useLocalScope(&v14);
        mlir::Operation::print(v3, a2, v12);
      }

      if (v4 == 2)
      {
        v14 = *this;
        mlir::Type::print(&v14, a2);
      }
    }

    else
    {
      v14 = *this;
      mlir::Attribute::print(&v14, a2, 0);
    }
  }

  else
  {
    v5 = *(a2 + 4);
    if (*(a2 + 3) - v5 > 0xEuLL)
    {
      qmemcpy(v5, "<NULL-PDLValue>", 15);
      *(a2 + 4) += 15;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<NULL-PDLValue>", 0xFuLL);
    }
  }
}

llvm::raw_ostream *mlir::PDLValue::print(llvm::raw_ostream *result, int a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return result;
        }

        v2 = *(result + 4);
        if (*(result + 3) - v2 <= 3uLL)
        {
          v3 = "Type";
          v4 = 4;
          return llvm::raw_ostream::write(result, v3, v4);
        }

        *v2 = 1701869908;
        v10 = *(result + 4) + 4;
        goto LABEL_28;
      }

      v6 = *(result + 4);
      if ((*(result + 3) - v6) <= 8)
      {
        v3 = "Operation";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 110;
      v9 = "Operation";
    }

    else
    {
      v6 = *(result + 4);
      if ((*(result + 3) - v6) <= 8)
      {
        v3 = "Attribute";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 101;
      v9 = "Attribute";
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
      v6 = *(result + 4);
      if ((*(result + 3) - v6) <= 8)
      {
        v3 = "TypeRange";
        v4 = 9;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      v8 = 101;
      v9 = "TypeRange";
LABEL_26:
      *(v6 + 8) = v8;
      *v6 = *v9;
      v10 = *(result + 4) + 9;
      break;
    case 4:
      v7 = *(result + 4);
      if ((*(result + 3) - v7) <= 4)
      {
        v3 = "Value";
        v4 = 5;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      *(v7 + 4) = 101;
      *v7 = 1970037078;
      v10 = *(result + 4) + 5;
      break;
    case 5:
      v5 = *(result + 4);
      if ((*(result + 3) - v5) <= 9)
      {
        v3 = "ValueRange";
        v4 = 10;
        return llvm::raw_ostream::write(result, v3, v4);
      }

      *(v5 + 8) = 25959;
      *v5 = *"ValueRange";
      v10 = *(result + 4) + 10;
      break;
    default:
      return result;
  }

LABEL_28:
  *(result + 4) = v10;
  return result;
}

_BYTE *mlir::PDLPatternModule::mergeIn(_BYTE *result, uint64_t *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    return result;
  }

  v5 = result;
  v6 = a2[12];
  v7 = *(a2 + 26);
  if (!v7)
  {
    v8 = a2[12];
    v13 = &v6[v7];
    if (v6 == v13)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v8 = a2[12];
  if (*v6)
  {
    v9 = *v6 == -8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    do
    {
      v11 = v8[1];
      ++v8;
      v10 = v11;
      if (v11)
      {
        v12 = v10 == -8;
      }

      else
      {
        v12 = 1;
      }
    }

    while (v12);
  }

  v13 = &v6[v7];
  if (v8 != v13)
  {
LABEL_15:
    v14 = *v8;
    do
    {
      v15 = *v14;
      v16 = *(v14 + 32);
      if (v16)
      {
        if (v16 == v14 + 8)
        {
          v57 = v56;
          (*(*v16 + 24))(v16, v56);
        }

        else
        {
          v57 = *(v14 + 32);
          *(v14 + 32) = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v17 = llvm::StringMapImpl::hash((v14 + 40), v15, a3, a4);
      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((v5 + 96), (v14 + 40), v15, v17, v56);
      result = v57;
      if (v57 == v56)
      {
        result = (*(*v57 + 32))(v57);
      }

      else if (v57)
      {
        result = (*(*v57 + 40))();
      }

      do
      {
        v18 = v8[1];
        ++v8;
        v14 = v18;
        if (v18)
        {
          v19 = v14 == -8;
        }

        else
        {
          v19 = 1;
        }
      }

      while (v19);
    }

    while (v8 != v13);
  }

LABEL_30:
  v20 = a2[15];
  v21 = *(a2 + 32);
  if (v21)
  {
    v22 = a2[15];
    if (*v20)
    {
      v23 = *v20 == -8;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      do
      {
        v25 = v22[1];
        ++v22;
        v24 = v25;
        if (v25)
        {
          v26 = v24 == -8;
        }

        else
        {
          v26 = 1;
        }
      }

      while (v26);
    }

    v27 = &v20[v21];
    if (v22 == v27)
    {
      goto LABEL_58;
    }

    goto LABEL_43;
  }

  v22 = a2[15];
  v27 = &v20[v21];
  if (v20 != v27)
  {
LABEL_43:
    v28 = *v22;
    do
    {
      v29 = *v28;
      v30 = *(v28 + 32);
      if (v30)
      {
        if (v30 == v28 + 8)
        {
          v55 = v54;
          (*(*v30 + 24))(v30, v54);
        }

        else
        {
          v55 = *(v28 + 32);
          *(v28 + 32) = 0;
        }
      }

      else
      {
        v55 = 0;
      }

      v31 = llvm::StringMapImpl::hash((v28 + 40), v29, a3, a4);
      llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((v5 + 120), (v28 + 40), v29, v31, v54);
      result = v55;
      if (v55 == v54)
      {
        result = (*(*v55 + 32))(v55);
      }

      else if (v55)
      {
        result = (*(*v55 + 40))();
      }

      do
      {
        v32 = v22[1];
        ++v22;
        v28 = v32;
        if (v32)
        {
          v33 = v28 == -8;
        }

        else
        {
          v33 = 1;
        }
      }

      while (v33);
    }

    while (v22 != v27);
  }

LABEL_58:
  v34 = *(a2 + 4);
  if (v34)
  {
    v35 = a2[1];
    v36 = 8 * v34;
    do
    {
      v37 = *(v5 + 16);
      if (v37 >= *(v5 + 20))
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::growAndEmplaceBack<std::unique_ptr<mlir::PDLPatternConfigSet>>(v5 + 8, v35);
      }

      v38 = *(v5 + 8);
      v39 = *v35;
      *v35++ = 0;
      *(v38 + 8 * v37) = v39;
      *(v5 + 16) = v37 + 1;
      v36 -= 8;
    }

    while (v36);
  }

  if (*(a2 + 20))
  {
    v40 = *(a2 + 22);
    if (v40)
    {
      v41 = 16 * v40;
      v42 = a2[9];
      while ((*v42 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v42 += 2;
        v41 -= 16;
        if (!v41)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v42 = a2[9];
    }

    v52 = a2[9] + 16 * v40;
    while (v42 != v52)
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>((v5 + 72), v42, v42 + 1, &v53);
      do
      {
        v42 += 2;
      }

      while (v42 != v52 && (*v42 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_69:
  if (!*v5)
  {
    v49 = *a2;
    *a2 = 0;
    goto LABEL_80;
  }

  v43 = *(((*v5 + 16 * ((*(*v5 + 44) >> 23) & 1) + ((*(*v5 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v5 + 40) + 8);
  v9 = v43 == 0;
  v44 = v43 - 8;
  if (v9)
  {
    v44 = 0;
  }

  v45 = *(((*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + ((*(*a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a2 + 40) + 8);
  if (v45)
  {
    v46 = v45 - 8;
  }

  else
  {
    v46 = 0;
  }

  v47 = (v46 + 32);
  if (*(v46 + 32) != v46 + 32 && v46 != v44)
  {
    v5 = v44 + 32;
    v48 = *(v46 + 40);
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v44 + 32, v46 + 32, v48, v46 + 32);
    if (v48 != v47)
    {
      v49 = *v47;
      v50 = *v48;
      *(v50 + 8) = v47;
      *v47 = v50;
      v51 = *v5;
      *(v49 + 8) = v5;
      *v48 = v51;
      *(v51 + 8) = v48;
LABEL_80:
      *v5 = v49;
    }
  }

  return result;
}

uint64_t *mlir::PDLPatternModule::registerConstraintFunction(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);

  return llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((a1 + 96), a2, a3, v8, a4);
}

uint64_t *mlir::PDLPatternModule::registerRewriteFunction(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);

  return llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>((a1 + 120), a2, a3, v8, a4);
}

uint64_t mlir::PDLPatternModule::attachConfigToPatterns(uint64_t a1, mlir::ForwardIterator *a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a3;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::PDLPatternModule::attachConfigToPatterns(mlir::ModuleOp,mlir::PDLPatternConfigSet &)::$_0>, v4, 1);
}

void *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::PDLPatternModule::attachConfigToPatterns(mlir::ModuleOp,mlir::PDLPatternConfigSet &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v7 = a2;
  v3 = *a1;
  {
    v6 = a2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a2 = v6;
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v5 = a1[1];
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v3 + 72, &v7);
    *result = v5;
  }

  return result;
}

uint64_t *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::try_emplace_with_hash<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v13 = buffer + 5;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v15 = v10[1];
        ++v10;
        v11 = v15;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v13 = buffer + 5;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 == a5)
    {
      buffer[4] = buffer + 1;
      (*(*v14 + 24))(v14);
    }

    else
    {
      buffer[4] = v14;
      *(a5 + 24) = 0;
    }
  }

  else
  {
    buffer[4] = 0;
  }

  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

void openInputFileImpl(void *a1, const void *a2, std::string::size_type a3, uint64_t a4, unsigned __int16 a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 261;
  v26.__r_.__value_.__r.__words[0] = a2;
  v26.__r_.__value_.__l.__size_ = a3;
  llvm::MemoryBuffer::getFileOrSTDIN(&v26, 0, 1, a5, &v29);
  if ((v30 & 1) == 0 || (v25 = v29, !v29.__val_))
  {
    *a1 = *&v29.__val_;
    return;
  }

  if (!a4)
  {
    *a1 = 0;
    return;
  }

  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
    }

    __dst.__r_.__value_.__s.__data_[a3] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v9 = std::string::insert(&__dst, 0, "cannot open input file '");
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v24, "': ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::error_code::message(&__p, &v25);
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

  v15 = std::string::append(&v26, p_p, size);
  v16 = v15->__r_.__value_.__r.__words[0];
  v28[0] = v15->__r_.__value_.__l.__size_;
  *(v28 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v18 = v28[0];
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 15) = *(v28 + 7);
  *(a4 + 23) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v20 = v30;
    *a1 = 0;
    if (v20)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_32:
  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v19 = v30;
  *a1 = 0;
  if (v19)
  {
    return;
  }

LABEL_34:
  v21 = *&v29.__val_;
  *&v29.__val_ = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }
}

void mlir::openOutputFile()
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__val_ = 0;
  v4.__cat_ = std::system_category();
  operator new();
}

void mlir::detail::InterfaceMap::insert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = *(a1 + 8);
    if (v5 != &v3[16 * v4])
    {
      if (*v5 == a2)
      {

        free(a3);
      }

      else
      {
        v12 = (v5 - v3);
        if (v4 >= *(a1 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = *a1;
        v14 = &v12[*a1];
        *&v13[16 * v11] = *&v13[16 * v11 - 16];
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = *a1 + 16 * v16;
        v18 = (v17 - 16);
        if ((v17 - 16) != &v12[v13])
        {
          v19 = &v3[16 * v16 + v15] - &v5[v13] - 32;
          if (v19 < 0x30)
          {
            goto LABEL_15;
          }

          v20 = (v19 >> 4) + 1;
          v21 = 16 * (v20 & 0x1FFFFFFFFFFFFFFCLL);
          v17 -= v21;
          v18 -= v21;
          v22 = &v15[16 * v16 - 32];
          v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            i64 = v22[-1].i64;
            v30 = vld2q_f64(i64);
            v25 = v22[-3].i64;
            v31 = vld2q_f64(v25);
            *v22 = vzip1q_s64(v30.val[0], v30.val[1]);
            v22[1] = vzip2q_s64(v30.val[0], v30.val[1]);
            v22[-2] = vzip1q_s64(v31.val[0], v31.val[1]);
            v22[-1] = vzip2q_s64(v31.val[0], v31.val[1]);
            v22 -= 4;
            v23 -= 4;
          }

          while (v23);
          if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v26 = (v17 - 8);
            do
            {
              v27 = *(v18 - 2);
              v18 -= 16;
              *(v26 - 1) = v27;
              *v26 = *(v18 + 1);
              v26 -= 2;
            }

            while (v18 != v14);
          }
        }

        *(a1 + 8) = v16 + 1;
        *v14 = a2;
        *(v14 + 1) = a3;
      }

      return;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v28 = &v3[16 * v11];
  *v28 = a2;
  *(v28 + 1) = a3;
  ++*(a1 + 8);
}

uint64_t mlir::thread_safe_nulls(mlir *this)
{
  {
    mlir::thread_safe_nulls();
  }

  return mlir::thread_safe_nulls(void)::stream();
}

void mlir::StorageUniquer::StorageUniquer(mlir::StorageUniquer *this)
{
  operator new();
}

{
  operator new();
}

void mlir::StorageUniquer::~StorageUniquer(llvm ***this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v5, a2, a3, a4);
  }
}

{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v5, a2, a3, a4);
  }
}

uint64_t mlir::detail::StorageUniquerImpl::getOrCreate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v55 = a2;
  v13 = *v12;
  v53 = a1;
  v14 = *(a1 + 256);
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * ((*(*v12 + 24) - 1) & a3)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  v57 = a3;
  v58 = a4;
  v59 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v56) = a3;
    *(&v56 + 1) = 0;
    v23 = v61;
    if ((v62 & 1) == 0)
    {
      return *(v61 + 8);
    }

    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
    result = a6(a7, ThreadSafeAllocator);
    *(v23 + 8) = result;
    return result;
  }

  {
    mlir::detail::StorageUniquerImpl::getOrCreate();
  }

  v17 = v16;
  v18 = *v13;
  v19 = *v16;
  v20 = *v16 & 1;
  if (v20)
  {
    v21 = 4;
    v22 = v16 + 8;
  }

  else
  {
    v21 = *(v16 + 16);
    if (!v21)
    {
      v28 = 0;
      v31 = 0;
      *&v61 = 0;
      goto LABEL_18;
    }

    v22 = *(v16 + 8);
  }

  v26 = v21 - 1;
  v27 = v26 & ((v18 >> 4) ^ (v18 >> 9));
  v28 = v22 + 40 * v27;
  v29 = *v28;
  if (*v28 != v18)
  {
    v49 = 0;
    v50 = 1;
    while (v29 != -4096)
    {
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v29 == -8192;
      }

      if (v51)
      {
        v49 = v28;
      }

      v52 = v27 + v50++;
      v27 = v52 & v26;
      v28 = v22 + 40 * v27;
      v29 = *v28;
      if (*v28 == v18)
      {
        goto LABEL_13;
      }
    }

    if (v49)
    {
      v28 = v49;
    }

    *&v61 = v28;
    if (v20)
    {
      v31 = 4;
    }

    else
    {
      v31 = *(v16 + 16);
    }

LABEL_18:
    if (4 * (v19 >> 1) + 4 >= 3 * v31)
    {
      v31 *= 2;
    }

    else if (v31 + ~(v19 >> 1) - *(v16 + 4) > v31 >> 3)
    {
      goto LABEL_20;
    }

    v19 = *v17;
    v28 = v61;
    v20 = *v17 & 1;
LABEL_20:
    *v17 = (v19 & 0xFFFFFFFE | v20) + 2;
    if (*v28 != -4096)
    {
      --v17[1];
    }

    *v28 = v18;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    operator new();
  }

LABEL_13:
  v30 = **(v28 + 8);
  if (!v30)
  {
    std::recursive_mutex::lock((*v13 + 40));
    if (*(*v13 + 8) < *(*v13 + 12))
    {
      operator new();
    }
  }

  LODWORD(v61) = a3;
  *(&v61 + 1) = 0;
  v32 = v56;
  result = *(v56 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared((explicit + 24));
    v33 = *explicit;
    v34 = *(explicit + 16);
    if (!v34)
    {
      goto LABEL_35;
    }

    v35 = v34 - 1;
    v36 = 1;
    v37 = v58;
    v38 = v59;
    v39 = v57 & (v34 - 1);
    v40 = v33 + 16 * v39;
    v41 = *(v40 + 8);
    if ((v41 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_28;
    }

    while (v41 != -4096)
    {
      while (1)
      {
        v42 = v39 + v36++;
        v39 = v42 & v35;
        v40 = v33 + 16 * (v42 & v35);
        v41 = *(v40 + 8);
        if ((v41 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_28:
        if (v37(v38))
        {
          if (v40 != *explicit + 16 * *(explicit + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        if (*(v40 + 8) == -4096)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_30:
    v43 = *(explicit + 16);
    v40 = *explicit + 16 * v43;
    if (v40 != *explicit + 16 * v43)
    {
LABEL_33:
      v44 = *(v40 + 8);
      *(v32 + 8) = v44;
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      return v44;
    }

    else
    {
LABEL_35:
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      llvm::sys::RWMutexImpl::lock((explicit + 24));
      LODWORD(v60) = v57;
      *(&v60 + 1) = 0;
      v45 = v61;
      if (v62)
      {
        v46 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
        v47 = a6(a7, v46);
        *(v45 + 8) = v47;
      }

      else
      {
        v47 = *(v61 + 8);
      }

      *(v32 + 8) = v47;
      v48 = v47;
      llvm::sys::RWMutexImpl::unlock((explicit + 24));
      return v48;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::ParametricStorageUniquer>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24))
    {
      v3 = 0;
      do
      {
        v4 = atomic_load((*(v2 + 16) + 8 * v3));
        if (v4)
        {
          if (*(v2 + 32) && *(v4 + 8))
          {
            v5 = *(v4 + 16);
            if (v5)
            {
              v6 = 16 * v5;
              v7 = *v4;
              while ((*(v7 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v7 = (v7 + 16);
                v6 -= 16;
                if (!v6)
                {
                  goto LABEL_4;
                }
              }
            }

            else
            {
              v7 = *v4;
            }

            v8 = *v4 + 16 * v5;
            if (v7 != v8)
            {
              v9 = *(v7 + 1);
              do
              {
                (*(v2 + 32))(*(v2 + 40), v9);
                do
                {
                  v7 = (v7 + 16);
                  if (v7 == v8)
                  {
                    goto LABEL_4;
                  }

                  v9 = *(v7 + 1);
                }

                while ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v7 != v8);
            }
          }

LABEL_4:
          llvm::sys::RWMutexImpl::~RWMutexImpl((v4 + 24));
          llvm::deallocate_buffer(*v4, (16 * *(v4 + 16)));
        }

        ++v3;
      }

      while (v3 != *(v2 + 24));
    }

    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x20C8093837F09);
    }

    v11 = *(v2 + 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    MEMORY[0x259C63180](v2, 0x10A0C40E20AF11ELL);
  }

  return a1;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2 + 232, &v4);
}

BOOL mlir::StorageUniquer::isSingletonStorageInitialized(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 248);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 232);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

BOOL mlir::StorageUniquer::isParametricStorageInitialized(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 224);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 208);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 16 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

uint64_t *mlir::StorageUniquer::registerSingletonImpl(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = a2;
  v4 = *a1;
  v7 = a3(a4, *a1 + 112);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>((v4 + 232), &v8, &v7, v6);
}

uint64_t mlir::detail::StorageUniquerImpl::mutate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v17 = a2;
  if (*(a1 + 256))
  {
    v9 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v9 >> 47) ^ v9);
    explicit = atomic_load_explicit((*(*v8 + 16) + 8 * ((-348639895 * ((v10 >> 47) ^ v10)) & (*(*v8 + 24) - 1))), memory_order_acquire);
    if (!explicit)
    {
      operator new();
    }

    llvm::sys::RWMutexImpl::lock((explicit + 24));
    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);
    v13 = a4(a5, ThreadSafeAllocator);
    llvm::sys::RWMutexImpl::unlock((explicit + 24));
    return v13;
  }

  else
  {
    v15 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(a1);

    return a4(a5, v15);
  }
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(*(a1 + 24), (*(a1 + 24) + 24 * *(a1 + 32)));
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = *(v2 - 2);
          if (v6)
          {
            *v6 = 0;
            atomic_store(0, (v6 + 8));
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v5;
            (v5->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v9);
            v7 = *(v2 - 1);
            if (!v7)
            {
              goto LABEL_11;
            }

LABEL_10:
            std::__shared_weak_count::__release_weak(v7);
            goto LABEL_11;
          }
        }

        v7 = *(v2 - 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v8 = *(v2 - 3);
      v2 -= 3;
      result = v8;
      *v2 = 0;
      if (v8)
      {
        result = MEMORY[0x259C63180](result, 0x20C4093837F09);
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*v5 == *a2)
    {
      return v5 + 1;
    }

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
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*v5 == *a2)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::LookupBucketFor<mlir::TypeID>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 16 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (*v22 != v24)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (*v22 == v24)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t llvm::detail::DenseSetImpl<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>::insert_as<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = *a3;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = v4 - 1;
    v8 = 1;
    v9 = *a4 & (v4 - 1);
    v10 = *a2 + 16 * v9;
    v11 = *(v10 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v11 != -4096)
    {
      while (1)
      {
        if (v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11 == -8192;
        }

        if (v12)
        {
          v5 = v10;
        }

        v13 = v9 + v8++;
        v9 = v13 & v7;
        v10 = v6 + 16 * (v13 & v7);
        v11 = *(v10 + 8);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v14 = a2;
        v15 = result;
        v16 = a4;
        if ((*(a4 + 8))(*(a4 + 16), v11))
        {
          v19 = 0;
          result = v15;
          a2 = v14;
          goto LABEL_22;
        }

        v11 = *(v10 + 8);
        result = v15;
        a2 = v14;
        a4 = v16;
        if (v11 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v5)
    {
      v10 = v5;
    }

    v17 = *(a2 + 4);
  }

  else
  {
    v17 = 0;
    v10 = 0;
  }

  v24 = v10;
  v18 = *(a2 + 2);
  if (4 * v18 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_24:
    v21 = result;
    v22 = a2;
    v23 = a4;
    a2 = v22;
    result = v21;
    v10 = v24;
    ++*(v22 + 2);
    if (*(v10 + 8) == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17 + ~v18 - *(a2 + 3) <= v17 >> 3)
  {
    goto LABEL_24;
  }

  *(a2 + 2) = v18 + 1;
  if (*(v10 + 8) != -4096)
  {
LABEL_19:
    --*(a2 + 3);
  }

LABEL_20:
  *v10 = v25;
  v19 = 1;
LABEL_22:
  v20 = *a2 + 16 * *(a2 + 4);
  *result = v10;
  *(result + 8) = v20;
  *(result + 16) = v19;
  return result;
}

llvm **mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::CacheType::~CacheType(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = *a1;
  if (*a1 <= 1)
  {
    if (v5)
    {
      v6 = a1 + 2;
      v7 = a1 + 42;
      v8 = 4;
    }

    else
    {
      v6 = *(a1 + 1);
      v8 = a1[4];
      v7 = &v6[10 * v8];
    }

    v11 = &v6[10 * v8];
    v9 = a1 + 2;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v9 = a1 + 2;
  if (v5)
  {
    v11 = a1 + 42;
    goto LABEL_8;
  }

  v10 = a1[4];
  v11 = (*(a1 + 1) + 40 * v10);
  if (v10)
  {
    v9 = *(a1 + 1);
LABEL_8:
    v7 = v9;
    while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v7 += 10;
      if (v7 == v11)
      {
        v7 = v11;
        break;
      }
    }

    v9 = a1 + 2;
    if ((v5 & 1) == 0)
    {
LABEL_19:
      v12 = (*(a1 + 1) + 40 * a1[4]);
      if (v7 == v12)
      {
        goto LABEL_14;
      }

LABEL_22:
      v39 = v9;
      do
      {
        v14 = *(v7 + 4);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = v15;
            v17 = *(v7 + 3);
            if (v17)
            {
              v18 = **(v7 + 1);
              std::recursive_mutex::lock((v17 + 40));
              v22 = *v17;
              v23 = *(v17 + 8);
              v24 = *v17 + 24 * v23;
              v25 = *v17;
              if (v23)
              {
                v26 = 24 * v23;
                v25 = *v17;
                while (*v25 != v18)
                {
                  v25 += 3;
                  v26 -= 24;
                  if (!v26)
                  {
                    v25 = (*v17 + 24 * v23);
                    break;
                  }
                }
              }

              if (v25 + 3 != v24)
              {
                v27 = v25 + 4;
                do
                {
                  v29 = *(v27 - 1);
                  *(v27 - 1) = 0;
                  v30 = *(v27 - 4);
                  *(v27 - 4) = v29;
                  if (v30)
                  {
                    llvm::deallocate_buffer(*v30, (16 * *(v30 + 16)));
                  }

                  v31 = *v27;
                  *v27 = 0;
                  v27[1] = 0;
                  v32 = *(v27 - 2);
                  *(v27 - 3) = v31;
                  if (v32)
                  {
                    std::__shared_weak_count::__release_weak(v32);
                  }

                  v28 = v27 + 2;
                  v27 += 3;
                }

                while (v28 != v24);
                LODWORD(v23) = *(v17 + 8);
                v22 = *v17;
              }

              v33 = v23 - 1;
              *(v17 + 8) = v33;
              std::recursive_mutex::unlock((v17 + 40));
            }

            if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v16->__on_zero_shared)(v16);
              std::__shared_weak_count::__release_weak(v16);
            }
          }
        }

        do
        {
          v7 += 10;
        }

        while (v7 != v11 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v7 != v12);
      v9 = v39;
      v4 = a1;
      v5 = *a1;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_47:
      v13 = 4;
      goto LABEL_48;
    }

LABEL_13:
    v12 = a1 + 42;
    if (v7 == a1 + 42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_14:
  if (v5)
  {
    goto LABEL_47;
  }

LABEL_15:
  v13 = v4[4];
  if (!v13)
  {
    goto LABEL_57;
  }

  v9 = *v9;
LABEL_48:
  v34 = (v9 + 4);
  v35 = 40 * v13;
  do
  {
    if ((*(v34 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v36 = v34[2];
      if (v36)
      {
        std::__shared_weak_count::__release_weak(v36);
      }

      v37 = *v34;
      if (*v34 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37, a2, a3, a4);
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    v34 += 5;
    v35 -= 40;
  }

  while (v35);
  v5 = *v4;
LABEL_57:
  if ((v5 & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 1), (40 * v4[4]));
  }

  return v4;
}

uint64_t *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner::~Owner(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1[2];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = a1[1];
      if (v7)
      {
        *v7 = 0;
        atomic_store(0, (v7 + 8));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    llvm::deallocate_buffer(*v10, (16 * *(v10 + 16)));
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *>(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (v3 + 40 * (v12 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v21[15] = *MEMORY[0x277D85DE8];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::deallocate_buffer(v7, (40 * v8));
  }

  v9 = &v18;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 32);
    v19 = *(a1 + 16);
    v20 = v17;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = v21;
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_12:
      v11 = *(a1 + 88);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  *v9 = v10;
  *(v9 + 1) = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(v9 + 3) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 += 5;
  v11 = *(a1 + 88);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *v9 = v11;
  *(v9 + 1) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(v9 + 3) = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 += 5;
  v12 = *(a1 + 128);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6 >= 5)
  {
LABEL_15:
    *a1 &= ~1u;
    v13 = a1;
    v14 = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
    a1 = v13;
    *(v13 + 8) = v14;
    *(v13 + 16) = v6;
  }

LABEL_16:
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = a1 + 42;
    v9 = a1 + 2;
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[10 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 10;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[10 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 20;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (*v19 != v15)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (*v19 == v15)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 2) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 6) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::LookupBucketFor<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2 - 1;
    v6 = 1;
    v7 = *a3 & (a2 - 1);
    v8 = result + 16 * v7;
    v9 = *(v8 + 8);
    if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v9 != -4096)
    {
      while (1)
      {
        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 == -8192;
        }

        if (v10)
        {
          v4 = v8;
        }

        v11 = v7 + v6++;
        v7 = v11 & v5;
        v8 = result + 16 * (v11 & v5);
        v9 = *(v8 + 8);
        if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v12 = result;
        v13 = a4;
        v14 = a3;
        result = (*(a3 + 8))(*(a3 + 16));
        if (result)
        {
          a4 = v13;
          goto LABEL_17;
        }

        v9 = *(v8 + 8);
        a4 = v13;
        a3 = v14;
        result = v12;
        if (v9 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  *a4 = v8;
  return result;
}

_OWORD *llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_25736EEE0;
        *(v14 - 1) = xmmword_25736EEE0;
        *v14 = xmmword_25736EEE0;
        v14[1] = xmmword_25736EEE0;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_25736EEE0;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = v4;
      do
      {
        v25 = *(v17 + 1);
        if ((v25 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = *(a1 + 16) - 1;
          v27 = v26 & *v17;
          v24 = *a1 + 16 * v27;
          v28 = *(v24 + 8);
          if (v28 != v25)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v24;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v24 = *a1 + 16 * (v32 & v26);
              v28 = *(v24 + 8);
              if (v28 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v24 = v29;
            }
          }

LABEL_24:
          *v24 = *v17;
          ++*(a1 + 8);
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (v18 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v19 < 3)
    {
      goto LABEL_19;
    }

    v20 = v19 + 1;
    v10 = &result[v20 & 0x1FFFFFFFFFFFFFFCLL];
    v21 = result + 2;
    v22 = v20 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v21 - 2) = xmmword_25736EEE0;
      *(v21 - 1) = xmmword_25736EEE0;
      *v21 = xmmword_25736EEE0;
      v21[1] = xmmword_25736EEE0;
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v23 = &result[v18];
      do
      {
        *v10++ = xmmword_25736EEE0;
      }

      while (v10 != v23);
    }
  }

  return result;
}

uint64_t mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(mlir::detail::StorageUniquerImpl *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    return this + 112;
  }

  result = *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(this);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get();
  }

  v2 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache();
  v3 = *a1;
  v16 = *a1;
  v4 = v2 + 8;
  if (*v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v4 = *(v2 + 8);
  }

  v6 = v5 - 1;
  v7 = v6 & ((v3 >> 4) ^ (v3 >> 9));
  v8 = v4 + 40 * v7;
  v9 = *v8;
  if (v3 != *v8)
  {
    v12 = 0;
    v13 = 1;
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
      v8 = v4 + 40 * v7;
      v9 = *v8;
      if (v3 == *v8)
      {
        goto LABEL_8;
      }
    }

    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v8;
    }

LABEL_13:
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(v2, v11, &v16);
  }

LABEL_8:
  result = **(v8 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>(*a1, (v8 + 8));
  }

  return result;
}

int *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::CacheType::~CacheType(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  if (*a1 <= 1u)
  {
    if (v5)
    {
      v6 = a1 + 8;
      v7 = a1 + 168;
      v8 = 4;
    }

    else
    {
      v6 = *(a1 + 8);
      v8 = *(a1 + 16);
      v7 = v6 + 40 * v8;
    }

    v10 = v6 + 40 * v8;
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_12:
    v11 = a1 + 168;
    if (v7 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v7 = a1 + 8;
    v10 = a1 + 168;
LABEL_8:
    while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v7 += 40;
      if (v7 == v10)
      {
        v7 = v10;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = v7 + 40 * v9;
    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v11 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v7 == v11)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v12 = *(v7 + 32);
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        v15 = *(v7 + 24);
        if (v15)
        {
          mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(v15, **(v7 + 8));
        }

        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }

    do
    {
      v7 += 40;
    }

    while (v7 != v10 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v7 != v11);
LABEL_28:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1, a2, a3, a4);
}

void mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  if (v5)
  {
    v7 = 24 * v5;
    while (*v4 != a2)
    {
      v4 += 3;
      v7 -= 24;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v4 + 3 != v6)
  {
    v8 = v4 + 4;
    do
    {
      v10 = *(v8 - 1);
      *(v8 - 1) = 0;
      v11 = *(v8 - 4);
      *(v8 - 4) = v10;
      if (v11)
      {
        MEMORY[0x259C63180](v11, 0x20C4093837F09);
      }

      v12 = *v8;
      *v8 = 0;
      v8[1] = 0;
      v13 = *(v8 - 2);
      *(v8 - 3) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v9 = v8 + 2;
      v8 += 3;
    }

    while (v9 != v6);
  }

  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(a1);

  std::recursive_mutex::unlock((a1 + 40));
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 24 * v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[1];
      if (v5)
      {
        *v5 = 0;
        atomic_store(0, (v5 + 8));
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  result = *v2;
  *v2 = 0;
  if (result)
  {

    JUMPOUT(0x259C63180);
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
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

  v7 = a1;
  v8 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::pair<mlir::StorageUniquer::StorageAllocator **,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D7B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689D808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = -24 * v6;
    v8 = &v5[24 * v6 - 24];
    do
    {
      v7 += 24;
    }

    while (v7);
    v5 = *(a1 + 24);
  }

  if (v5 != (a1 + 40))
  {

    free(v5);
  }
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t result, double a2)
{
  *result = a2;
  *(result + 8) = -4096;
  *(result + 48) = -4096;
  *(result + 88) = -4096;
  *(result + 128) = -4096;
  return result;
}

void mlir::TimingManager::~TimingManager(mlir::TimingManager *this)
{
  v1 = *(this + 1);
  *this = &unk_28689D858;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    llvm::sys::RWMutexImpl::~RWMutexImpl((v1 + 128));
    free(*(v1 + 96));
    v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v1, v3, v4, v5);
    MEMORY[0x259C63180](v6, 0x10B0C40B1EEE74BLL);
  }
}

mlir::TimingManager *mlir::TimingManager::getRootTimer(mlir::TimingManager *this)
{
  (*(*this + 16))(this);
  if (v2)
  {
    return this;
  }

  else
  {
    return 0;
  }
}

mlir::TimingManager *mlir::TimingManager::getRootScope@<X0>(mlir::TimingManager *this@<X0>, mlir::TimingManager **a2@<X8>)
{
  v5 = (*(*this + 16))(this);
  if (v4)
  {
    result = this;
  }

  else
  {
    result = 0;
  }

  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t mlir::TimingIdentifier::get(unsigned int *a1, size_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = mlir::ThreadLocalCache<llvm::StringMap<llvm::StringMapEntry<std::nullopt_t> *,llvm::MallocAllocator>>::get((v5 + 144));
  v9 = llvm::StringMapImpl::hash(a1, a2, v7, v8);
  v10 = llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(v6, a1, a2, v9);
  v11 = *v10;
  if (*(*v10 + 8))
  {
    return *(*v10 + 8);
  }

  llvm::sys::RWMutexImpl::lock_shared((v5 + 128));
  v15 = llvm::StringMapImpl::hash(a1, a2, v13, v14);
  Key = llvm::StringMapImpl::FindKey((v5 + 96), a1, a2, v15);
  if (Key == -1 || Key == *(v5 + 104))
  {
    llvm::sys::RWMutexImpl::unlock_shared((v5 + 128));
    llvm::sys::RWMutexImpl::lock((v5 + 128));
    v19 = llvm::StringMapImpl::hash(a1, a2, v17, v18);
    v20 = llvm::StringMap<std::nullopt_t,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> &>::try_emplace_with_hash<>(v5 + 96, a1, a2, v19);
    v21 = *v20;
    *(v11 + 8) = *v20;
    llvm::sys::RWMutexImpl::unlock((v5 + 128));
    return v21;
  }

  else
  {
    v22 = *(*(v5 + 96) + 8 * Key);
    *(v11 + 8) = v22;
    llvm::sys::RWMutexImpl::unlock_shared((v5 + 128));
    return v22;
  }
}

void mlir::DefaultTimingManager::~DefaultTimingManager(mlir::DefaultTimingManager *this)
{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

{
  *this = &unk_28689D8A0;
  mlir::DefaultTimingManager::print(this);
}

void mlir::DefaultTimingManager::print(mlir::DefaultTimingManager *this)
{
  v2 = *(this + 2);
  if (*v2 == 1)
  {
    v3 = *(v2 + 8);
  }

  operator new();
}

uint64_t mlir::DefaultTimingManager::setOutput(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 24);
  *(a1 + 24) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t anonymous namespace::TimerImpl::print(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = vdivq_f64(vcvtq_f64_s64(*(a1 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
  (*(***(a1 + 192) + 16))(**(a1 + 192), &v22);
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    v26 = v22;
    v23 = 0;
    v24 = 0;
    v25 = 0x1800000000;
    *&v28.f64[0] = &unk_28689D910;
    *&v28.f64[1] = &v23;
    v29 = &v28;
    v30 = &v28;
    v27 = a1;
    v6 = v23;
    if (v24)
    {
      if (!*v23 || *v23 == -8)
      {
        do
        {
          v9 = *(v6 + 1);
          v6 += 8;
          v8 = v9;
          if (v9)
          {
            v10 = v8 == -8;
          }

          else
          {
            v10 = 1;
          }
        }

        while (v10);
      }
    }

    v11 = v23 + 8 * v24;
    if (v6 != v11)
    {
      operator new();
    }

    if (v30 == &v28)
    {
      (*(*&v30->f64[0] + 32))(v30);
      if (!HIDWORD(v24))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v30)
      {
        (*(*&v30->f64[0] + 40))();
      }

      if (!HIDWORD(v24))
      {
LABEL_33:
        free(v23);
        v28 = v22;
        v12 = *(a1 + 96);
        v13.f64[0] = v22.f64[0];
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    if (v24)
    {
      v14 = 0;
      do
      {
        v15 = *(v23 + v14);
        if (v15 != -8 && v15 != 0)
        {
          llvm::deallocate_buffer(v15, (*v15 + 25));
        }

        v14 += 8;
      }

      while (8 * v24 != v14);
    }

    goto LABEL_33;
  }

  v28 = v22;
  v12 = *(a1 + 96);
  v13.f64[0] = v22.f64[0];
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_34:
  v13.f64[1] = v28.f64[1];
  v17 = (*(a1 + 88) + 8);
  v18 = 16 * v12;
  v19 = vdupq_n_s64(0xC1CDCD6500000000);
  do
  {
    v20 = *v17;
    v17 += 2;
    v13 = vaddq_f64(v13, vdivq_f64(vcvtq_f64_s64(*(v20 + 8)), v19));
    v18 -= 16;
  }

  while (v18);
  v28.f64[1] = v13.f64[1];
LABEL_37:
  v28.f64[0] = v13.f64[0];
  (*(***(a1 + 192) + 40))(**(a1 + 192), "Rest", 4, &v28, &v22, 0);
  (*(***(a1 + 192) + 40))(**(a1 + 192), "Total", 5, &v22, &v22, 1);
  return (*(***(a1 + 192) + 24))(**(a1 + 192));
}

uint64_t *std::unique_ptr<anonymous namespace::TimerImpl>::operator=[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    std::mutex::~mutex((v3 + 128));
    v4 = *(v3 + 120);
    v5 = *(v3 + 104);
    if (v4)
    {
      v6 = v5 + 32;
      v7 = 48 * v4;
      do
      {
        if (*(v6 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          llvm::deallocate_buffer(*(v6 - 24), (16 * *(v6 - 8)));
        }

        v6 += 48;
        v7 -= 48;
      }

      while (v7);
      v5 = *(v3 + 104);
      v8 = 48 * *(v3 + 120);
    }

    else
    {
      v8 = 0;
    }

    llvm::deallocate_buffer(v5, v8);
  }

  return result;
}

std::mutex **std::unique_ptr<anonymous namespace::TimerImpl>::~unique_ptr[abi:nn200100](std::mutex **a1)
{
  return a1;
}

{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
  }

  return a1;
}

void anonymous namespace::TimerImpl::dump(_anonymous_namespace_::TimerImpl *this, llvm::raw_ostream *a2, int a3, int a4)
{
  v34 = *(this + 8);
  v8 = (2 * a3);
  if (v8 >= 0x17)
  {
    operator new();
  }

  v40 = 2 * a3;
  if (v8)
  {
    memset(__b, 32, v8);
  }

  v33 = vdupq_n_s64(0x41CDCD6500000000uLL);
  v35 = vcvtq_f64_s64(v34);
  *(__b + v8) = 0;
  if ((v40 & 0x80u) == 0)
  {
    v9 = __b;
  }

  else
  {
    v9 = __b[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = __b[1];
  }

  v11 = llvm::raw_ostream::write(a2, v9, v10);
  v12 = *(this + 55);
  if (v12 >= 0)
  {
    v13 = this + 32;
  }

  else
  {
    v13 = *(this + 4);
  }

  if (v12 >= 0)
  {
    v14 = *(this + 55);
  }

  else
  {
    v14 = *(this + 5);
  }

  v15 = llvm::raw_ostream::write(v11, v13, v14);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 23328;
    *(v15 + 4) += 2;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " [", 2uLL);
  }

  v36 = vdivq_f64(v35, v33);
  v17 = llvm::raw_ostream::operator<<(v15, *(this + 3));
  v18 = *(v17 + 4);
  if (*(v17 + 3) == v18)
  {
    v17 = llvm::raw_ostream::write(v17, "]", 1uLL);
  }

  else
  {
    *v18 = 93;
    ++*(v17 + 4);
  }

  v37[0] = &unk_28689D9A0;
  v37[1] = "  %7.4f / %7.4f";
  v38 = vextq_s8(v36, v36, 8uLL);
  llvm::raw_ostream::operator<<(v17, v37);
  if (v40 < 0)
  {
    operator delete(__b[0]);
  }

  if (!a4 || *(this + 3) == a4)
  {
LABEL_30:
    v20 = *(a2 + 4);
    if (*(a2 + 3) != v20)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v19 = *(a2 + 4);
  if (*(a2 + 3) - v19 <= 3uLL)
  {
    llvm::raw_ostream::write(a2, " (*)", 4uLL);
    goto LABEL_30;
  }

  *v19 = 690628640;
  *(a2 + 4) += 4;
  v20 = *(a2 + 4);
  if (*(a2 + 3) != v20)
  {
LABEL_31:
    *v20 = 10;
    ++*(a2 + 4);
    v21 = *(this + 24);
    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_34:
  llvm::raw_ostream::write(a2, "\n", 1uLL);
  v21 = *(this + 24);
  if (!v21)
  {
    goto LABEL_37;
  }

LABEL_35:
  v22 = (*(this + 11) + 8);
  v23 = 16 * v21;
  do
  {
    v24 = *v22;
    v22 += 2;
    v23 -= 16;
  }

  while (v23);
LABEL_37:
  if (*(this + 28))
  {
    v25 = *(this + 30);
    if (v25)
    {
      v26 = 48 * v25;
      for (i = *(this + 13); *i >= 0xFFFFFFFFFFFFFFFELL; i += 48)
      {
        v26 -= 48;
        if (!v26)
        {
          return;
        }
      }
    }

    else
    {
      i = *(this + 13);
    }

    v28 = *(this + 13) + 48 * v25;
    while (i != v28)
    {
      v29 = *(i + 40);
      if (v29)
      {
        v30 = (*(i + 32) + 8);
        v31 = 16 * v29;
        do
        {
          v32 = *v30;
          v30 += 2;
          v31 -= 16;
        }

        while (v31);
      }

      do
      {
        i += 48;
      }

      while (i != v28 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }
}

uint64_t mlir::DefaultTimingManager::dumpAsList(mlir::DefaultTimingManager *this, llvm::raw_ostream *a2)
{
  v3 = *(*(this + 2) + 8);
  v7 = *(*(this + 2) + 8);
}

uint64_t mlir::DefaultTimingManager::dumpAsTree(mlir::DefaultTimingManager *this, llvm::raw_ostream *a2)
{
  v3 = *(*(this + 2) + 8);
  v7 = *(*(this + 2) + 8);
}

uint64_t mlir::DefaultTimingManager::rootTimer(mlir::DefaultTimingManager *this)
{
  v1 = *(this + 2);
  if (*v1 == 1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep mlir::DefaultTimingManager::startTimer(mlir::DefaultTimingManager *this, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *a2 = result;
  return result;
}

int64x2_t mlir::DefaultTimingManager::stopTimer(mlir::DefaultTimingManager *this, char *a2)
{
  result = vaddq_s64(*(a2 + 8), vdupq_n_s64(std::chrono::steady_clock::now().__d_.__rep_ - *a2));
  *(a2 + 8) = result;
  return result;
}

uint64_t mlir::DefaultTimingManager::nestTimer(llvm *a1, uint64_t a2, unint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v25 = a3;
  threadid = llvm::get_threadid(a1);
  if (threadid != *(a2 + 24))
  {
    v11 = threadid;
    std::mutex::lock((a2 + 128));
    v12 = *(a2 + 104);
    v13 = *(a2 + 120);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = (v13 - 1) & (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11));
      v16 = (v12 + 48 * v15);
      v17 = *v16;
      if (*v16 == v11)
      {
LABEL_22:
        std::mutex::unlock((a2 + 128));
        return v24;
      }

      v18 = 0;
      v19 = 1;
      while (v17 != -1)
      {
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v17 == -2;
        }

        if (v20)
        {
          v18 = v16;
        }

        v21 = v15 + v19++;
        v15 = v21 & v14;
        v16 = (v12 + 48 * (v21 & v14));
        v17 = *v16;
        if (*v16 == v11)
        {
          goto LABEL_22;
        }
      }

      if (v18)
      {
        v16 = v18;
      }
    }

    else
    {
      v16 = 0;
    }

    v26 = v16;
    v22 = *(a2 + 112);
    if (4 * v22 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v22 - *(a2 + 116) > v13 >> 3)
    {
      *(a2 + 112) = v22 + 1;
      if (*v16 == -1)
      {
LABEL_21:
        *v16 = v11;
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = (v16 + 6);
        v16[5] = 0;
        goto LABEL_22;
      }

LABEL_20:
      --*(a2 + 116);
      goto LABEL_21;
    }

    v16 = v26;
    ++*(a2 + 112);
    if (*v16 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void mlir::registerDefaultTimingManagerCLOptions(mlir *this)
{
  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }
}

_BYTE **mlir::applyDefaultTimingManagerCLOptions(_BYTE **this, mlir::DefaultTimingManager *a2)
{
  if (!atomic_load(options))
  {
    return this;
  }

  v3 = this;
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    *this[2] = *(options[0] + 128);
    if (atomic_load_explicit(options, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    *v3[2] = *(options[0] + 128);
    if (atomic_load_explicit(options, memory_order_acquire))
    {
LABEL_4:
      *(v3[2] + 1) = *(options[0] + 320);
      if (atomic_load_explicit(options, memory_order_acquire))
      {
        goto LABEL_5;
      }

LABEL_11:
      if (*(options[0] + 920))
      {
        goto LABEL_6;
      }

LABEL_12:
      llvm::errs(this);
      operator new();
    }
  }

  *(v3[2] + 1) = *(options[0] + 320);
  if (!atomic_load_explicit(options, memory_order_acquire))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!*(options[0] + 920))
  {
    goto LABEL_12;
  }

LABEL_6:
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    if (*(options[0] + 920) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(options[0] + 920) == 1)
    {
LABEL_8:
      llvm::errs(this);
      operator new();
    }
  }

  this = 0;
  v5 = v3[3];
  v3[3] = 0;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4(v5);
  }

  return this;
}

uint64_t anonymous namespace::TimerImpl::addAsyncUserTime(_anonymous_namespace_::TimerImpl *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 11) + 8);
    v5 = 16 * v2;
    do
    {
      v6 = *v4;
      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    if (!*(this + 28))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if (!*(this + 28))
    {
      goto LABEL_11;
    }
  }

  v7 = *(this + 30);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = *(this + 13);
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v9 += 48;
      v8 -= 48;
      if (!v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = *(this + 13);
  }

  v11 = *(this + 13) + 48 * v7;
  while (v9 != v11)
  {
    v12 = *(v9 + 40);
    if (v12)
    {
      v13 = (*(v9 + 32) + 8);
      v14 = 16 * v12;
      do
      {
        v15 = *v13;
        v13 += 2;
        v3 += *(v15 + 2);
        v14 -= 16;
      }

      while (v14);
    }

    do
    {
      v9 += 48;
    }

    while (v9 != v11 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_11:
  *(this + 2) += v3;
  return v3;
}

uint64_t anonymous namespace::TimerImpl::mergeAsyncChildren(_anonymous_namespace_::TimerImpl *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 24);
  if (v5)
  {
    v6 = (*(this + 11) + 8);
    v7 = 16 * v5;
    do
    {
      v8 = *v6;
      v6 += 2;
      v7 -= 16;
    }

    while (v7);
  }
}

uint64_t anonymous namespace::TimerImpl::mergeChildren(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = result;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 48 * v7;
    v9 = *a2;
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v9 = (v9 + 48);
      v8 -= 48;
      if (!v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = *a2;
  }

  v10 = *a2 + 48 * v7;
  if (v9 != v10)
  {
    do
    {
      do
      {
        v9 = (v9 + 48);
      }

      while (v9 != v10 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
    }

    while (v9 != v10);
    v5 = *(a2 + 8);
    if (!*(a2 + 8))
    {
      return result;
    }
  }

  else
  {
LABEL_9:
    if (!*(a2 + 8))
    {
      return result;
    }
  }

  v11 = *(a2 + 16);
  v12 = *a2;
  if (v11 <= 4 * v5 || v11 < 0x41)
  {
    if (v11)
    {
      v16 = (v12 + 48 * v11);
      do
      {
        if (*v12 == -2)
        {
          *v12 = -1;
        }

        else if (*v12 != -1)
        {
          v17 = *(v12 + 4);
          v18 = *(v12 + 10);
          if (v18)
          {
            v19 = 16 * v18;
            v20 = &v17[v19 - 8];
            v21 = -v19;
            do
            {
              v21 += 16;
            }

            while (v21);
            v17 = *(v12 + 4);
          }

          if (v17 != v12 + 48)
          {
            free(v17);
          }

          llvm::deallocate_buffer(*(v12 + 1), (16 * *(v12 + 6)));
        }

        v12 = (v12 + 48);
      }

      while (v12 != v16);
    }

    *(a2 + 8) = 0;
  }

  else
  {
    v13 = 48 * v11;
    v14 = v12 + 32;
    v15 = 48 * v11;
    do
    {
      if (*(v14 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        llvm::deallocate_buffer(*(v14 - 24), (16 * *(v14 - 8)));
      }

      v14 += 48;
      v15 -= 48;
    }

    while (v15);
    v22 = 1 << (33 - __clz(v5 - 1));
    if (v22 <= 64)
    {
      v22 = 64;
    }

    if (v5)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 != *(a2 + 16))
    {
      llvm::deallocate_buffer(*a2, v13);
    }

    *(a2 + 8) = 0;
    if (v23)
    {
      v24 = *a2;
      v25 = 48 * v23 - 48;
      if (v25 < 0x30)
      {
        v26 = *a2;
LABEL_50:
        v30 = (v24 + 48 * v23);
        do
        {
          *v26 = -1;
          v26 = (v26 + 48);
        }

        while (v26 != v30);
        return result;
      }

      v27 = v25 / 0x30 + 1;
      v26 = (v24 + 48 * (v27 & 0xFFFFFFFFFFFFFFELL));
      v28 = *a2;
      v29 = v27 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v28 = -1;
        *(v28 + 6) = -1;
        v28 = (v28 + 96);
        v29 -= 2;
      }

      while (v29);
      if (v27 != (v27 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_50;
      }
    }
  }

  return result;
}

{
  v5 = result + 64;
  if (!*(result + 96))
  {
    llvm::deallocate_buffer(*(result + 64), (16 * *(result + 80)));
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 24);
    v8 = v7 + 16 * v6;
    do
    {
      v9 = (v7 + 8);
      v37 = *v7;
      v13 = *v12;
      if (*v12)
      {
        v14 = *v9;
        v15 = *(*v9 + 8);
        v16 = *(v13 + 16);
        if (*(v13 + 8) > v15)
        {
          v15 = *(v13 + 8);
        }

        *(v13 + 8) = v15;
        *(v13 + 16) = v16 + *(v14 + 16);
        v19 = *v9;
        *v9 = 0;
        if (v19)
        {
          std::mutex::~mutex((v19 + 128));
          v20 = *(v19 + 120);
          v21 = *(v19 + 104);
          if (v20)
          {
            v22 = v21 + 32;
            v23 = 48 * v20;
            do
            {
              if (*(v22 - 32) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                llvm::deallocate_buffer(*(v22 - 24), (16 * *(v22 - 8)));
              }

              v22 += 48;
              v23 -= 48;
            }

            while (v23);
            v21 = *(v19 + 104);
            v24 = 48 * *(v19 + 120);
          }

          else
          {
            v24 = 0;
          }

          llvm::deallocate_buffer(v21, v24);
        }
      }

      else
      {
      }

      v7 += 16;
    }

    while (v7 != v8);
  }

  if (!*(a2 + 8))
  {
LABEL_22:
    v26 = *(a2 + 32);
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

  v25 = *(a2 + 16);
  if (v25 > 4 * *(a2 + 8) && v25 >= 0x41)
  {
    result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(a2, a2, a3, a4);
    goto LABEL_22;
  }

  if (v25)
  {
    v29 = *a2;
    v30 = (v25 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = v30 + 1;
      v32 = (v30 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v33 = &v29[2 * v32];
      v34 = v29 + 2;
      v35 = v32;
      do
      {
        *(v34 - 2) = -4096;
        *v34 = -4096;
        v34 += 4;
        v35 -= 2;
      }

      while (v35);
      if (v31 == v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v33 = *a2;
    }

    v36 = &v29[2 * v25];
    do
    {
      *v33 = -4096;
      v33 += 2;
    }

    while (v33 != v36);
  }

LABEL_37:
  *(a2 + 8) = 0;
  v26 = *(a2 + 32);
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_23:
  v27 = *(a2 + 24) - 8;
  v28 = 16 * v26;
  do
  {
    result = *(v27 + v28);
    *(v27 + v28) = 0;
    if (result)
    {
    }

    v28 -= 16;
  }

  while (v28);
LABEL_38:
  *(a2 + 32) = 0;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 16;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>::~pair(uint64_t a1)
{
  return a1;
}

{
  return a1;
}

uint64_t llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>::operator[](uint64_t a1, unint64_t *a2)
{
  v16 = *a2;
  v17 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(a1, &v16, &v17, &v14);
  v4 = v14;
  if (v15)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v12 = 0;
    v13 = v6;
    v7 = *(a1 + 32);
    if (v7 >= *(a1 + 36))
    {
      if (v5 > &v13 || v5 + 16 * v7 <= &v13)
      {
      }
    }

    v8 = *(a1 + 32);
    v9 = v13;
    *(&v13 + 1) = 0;
    *(v5 + 16 * v8) = v9;
    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 32) - 1;
    *(v4 + 8) = v10;
  }

  else
  {
    v10 = *(v14 + 8);
  }

  return *(a1 + 24) + 16 * v10 + 8;
}

std::mutex **std::unique_ptr<anonymous namespace::TimerImpl>::reset[abi:nn200100](std::mutex **result, std::mutex *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex(v2 + 2);
  }

  return result;
}

void anonymous namespace::TimerImpl::~TimerImpl(std::mutex *this)
{
  std::mutex::~mutex(this + 2);
  llvm::deallocate_buffer(*&this[1].__m_.__opaque[32], (48 * *&this[1].__m_.__opaque[48]));
}

uint64_t sub_2571431E4()
{
  if (*(v0 + 55) < 0)
  {
    operator delete(*(v0 + 32));
  }

  return v0;
}

void llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::~DenseMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *a1;
  if (v5)
  {
    v7 = v6 + 8;
    v8 = 48 * v5;
    while (*(v7 - 8) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 += 48;
      v8 -= 48;
      if (!v8)
      {
        llvm::deallocate_buffer(*a1, (48 * *(a1 + 16)));
      }
    }
  }

  llvm::deallocate_buffer(v6, 0);
}

void llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>::~MapVector(uint64_t a1)
{
  llvm::deallocate_buffer(*a1, (16 * *(a1 + 16)));
}

{
  llvm::deallocate_buffer(*a1, (16 * *(a1 + 16)));
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>,unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::MapVector<void const*,std::unique_ptr<anonymous namespace::TimerImpl>,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 48 * v1;
    result = *result + 8;
    do
    {
      if (*(result - 8) <= 0xFFFFFFFFFFFFFFFDLL)
      {
      }

      result += 48;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::SmallVector<std::pair<void const*,std::unique_ptr<anonymous namespace::TimerImpl>>,0u>::~SmallVector(uint64_t a1)
{
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = -v4;
    v6 = v2 + v4 - 16;
    do
    {
      v5 += 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t anonymous namespace::TimerImpl::printAsTree(uint64_t this, TimeRecord *a2, unsigned int a3, double a4, double a5)
{
  v6 = this;
  v17 = a4;
  v18 = a5;
  v7 = a2;
  if ((*(this + 56) & 1) == 0)
  {
    v8 = **(this + 192);
    v9 = *(v6 + 55);
    if (v9 >= 0)
    {
      v10 = v6 + 32;
    }

    else
    {
      v10 = *(v6 + 32);
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 55);
    }

    else
    {
      v11 = *(v6 + 40);
    }

    v16 = vdivq_f64(vcvtq_f64_s64(*(v6 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
    this = (*(*v8 + 48))(v8, a2, v10, v11, &v16, &v17);
    v7 = (a2 + 2);
  }

  v12 = *(v6 + 96);
  if (v12)
  {
    v13 = (*(v6 + 88) + 8);
    v14 = 16 * v12;
    do
    {
      v15 = *v13;
      v13 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  if ((*(v6 + 56) & 1) == 0)
  {
    return (*(***(v6 + 192) + 56))(**(v6 + 192), a2, 0);
  }

  return this;
}

__n128 std::__function::__func<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1},std::allocator<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1}>,void ()(anonymous namespace::TimerImpl*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689D910;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__function::__func<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1},std::allocator<anonymous namespace::TimerImpl::printAsList(mlir::TimeRecord)::{lambda(anonymous namespace::TimerImpl*)#1}>,void ()(anonymous namespace::TimerImpl*)>::operator()(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = *a2 + 32;
  v7 = *(*a2 + 55);
  if (v7 >= 0)
  {
    v8 = (*a2 + 32);
  }

  else
  {
    v8 = *(*a2 + 32);
  }

  if (v7 >= 0)
  {
    v9 = *(*a2 + 55);
  }

  else
  {
    v9 = *(*a2 + 40);
  }

  v18 = vdivq_f64(vcvtq_f64_s64(*(*a2 + 8)), vdupq_n_s64(0x41CDCD6500000000uLL));
  v10 = llvm::StringMapImpl::hash(v8, v9, a3, a4);
  result = llvm::StringMap<mlir::TimeRecord,llvm::MallocAllocator>::try_emplace_with_hash<>(v5, v8, v9, v10);
  *(*result + 8) = vaddq_f64(v18, *(*result + 8));
  v12 = *(v6 + 64);
  if (v12)
  {
    v13 = 16 * v12;
    for (i = (*(v6 + 56) + 8); ; i += 2)
    {
      v15 = *(*(a1 + 16) + 24);
      v19 = *i;
      if (!v15)
      {
        break;
      }

      result = (*(*v15 + 48))(v15, &v19);
      v13 -= 16;
      if (!v13)
      {
        return result;
      }
    }

    v16 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}