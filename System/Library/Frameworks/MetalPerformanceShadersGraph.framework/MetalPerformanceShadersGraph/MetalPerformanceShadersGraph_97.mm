uint64_t mlir::OperationFolder::processFoldResults(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 1;
  }

  v73[1] = v8;
  v73[2] = v7;
  v73[13] = v5;
  v73[14] = v6;
  InsertionRegion = getInsertionRegion(&a1[7], *(a2 + 16));
  v14 = *(InsertionRegion + 8);
  if (v14)
  {
    v15 = (v14 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*&v15 + 40);
  a1[17] = v15;
  a1[18] = v16;
  v69 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  v17 = *(a2 + 48);
  if (*(v17 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v73[0] = *(v17 + 8);
    Values = mlir::SparseElementsAttr::getValues(v73);
    v18 = *(a2 + 36);
    if (!v18)
    {
      return 1;
    }
  }

  else
  {
    Values = *(v17 + 24);
    v18 = *(a2 + 36);
    if (!v18)
    {
      return 1;
    }
  }

  v67 = v15;
  v19 = 0;
  v20 = a2 - 16;
  v21 = a2 + 24;
  while (1)
  {
    v22 = *(a4 + 8 * v19);
    v23 = v22 & 0xFFFFFFFFFFFFFFF8;
    v24 = v22 & 0xFFFFFFFFFFFFFFF8 & (v22 << 61 >> 63);
    v73[0] = v24;
    if (!v24)
    {
      break;
    }

    v25 = *(a3 + 8);
    if (v25 >= *(a3 + 12))
    {
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a3, v73);
      ++v19;
      v20 -= 16;
      v21 -= 24;
      if (v18 == v19)
      {
        return 1;
      }
    }

    else
    {
      *(*a3 + 8 * v25) = v24;
      v26 = v25 + 1;
LABEL_24:
      *(a3 + 8) = v26;
      ++v19;
      v20 -= 16;
      v21 -= 24;
      if (v18 == v19)
      {
        return 1;
      }
    }
  }

  if (v19 >= 6)
  {
    v27 = v21;
  }

  else
  {
    v27 = v20;
  }

  Constant = mlir::OperationFolder::tryGetOrCreateConstant(a1, v69, Values, v23, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8, *a1);
  if (Constant)
  {
    v29 = Constant;
    if (*(a2 + 16) == *&Constant[2])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      if (v30 != v29)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        mlir::Operation::moveBefore(v29, v31);
      }
    }

    v32 = *(a3 + 8);
    if (v32 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v32 + 1, 8);
      v32 = *(a3 + 8);
    }

    *(*a3 + 8 * v32) = v29 - 16;
    v26 = *(a3 + 8) + 1;
    goto LABEL_24;
  }

  v33 = *(*&v67 + 40);
  v34 = a1[18];
  if (v33 != *&v34)
  {
    v70 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
    while (1)
    {
      v36 = *(v33 + 8);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v38 = a1[4];
      v39 = a1[6].u32[0];
      if (v39)
      {
        v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v39 - 1);
        v35 = *&v38 + 40 * v40;
        v41 = *v35;
        if (*v35 == v37)
        {
          goto LABEL_31;
        }

        v42 = 1;
        while (v41 != -4096)
        {
          v43 = v40 + v42++;
          v40 = v43 & (v39 - 1);
          v35 = *&v38 + 40 * v40;
          v41 = *v35;
          if (*v35 == v37)
          {
            goto LABEL_31;
          }
        }
      }

      v35 = *&v38 + 40 * v39;
LABEL_31:
      if (v35 == *&v38 + 40 * v39)
      {
        mlir::RewriterBase::eraseOp(&a1[14], v37);
        v33 = v36;
        if (v36 == *&v34)
        {
          break;
        }
      }

      else
      {
        v72 = v73;
        v73[0] = 0;
        v44 = v37;
        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v72, v37);
        v72 = getInsertionRegion(&a1[7], v44[2]);
        v45 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &v72);
        v46 = v44;
        v47 = v45;
        v48 = *(v35 + 8);
        v49 = *(v35 + 16);
        if (v49)
        {
          v50 = v47[2].i32[0];
          if (v50)
          {
            v51 = &v48[8 * v49];
            v52 = *(v44 - 1) & 0xFFFFFFFFFFFFFFF8;
            v53 = *v47;
            v54 = v50 - 1;
            v55 = v47[1];
            v56 = v73[0];
            v57 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v52 >> 4) ^ (v52 >> 9))) | (((LODWORD(v73[0]) >> 4) ^ (LODWORD(v73[0]) >> 9)) << 32));
            v58 = (v57 >> 31) ^ v57;
            v59 = *(v35 + 8);
            do
            {
              v60 = 0xBF58476D1CE4E5B9 * (v58 | (((*v59 >> 4) ^ (*v59 >> 9)) << 32));
              v61 = v54 & ((v60 >> 31) ^ v60);
              v62 = 1;
              v63 = (*&v53 + 32 * v61);
              v64 = *v63;
              if (*v59 != *v63)
              {
                goto LABEL_47;
              }

LABEL_43:
              if (v63[1] == v56 && v63[2] == v52)
              {
                *v63 = -8192;
                *(v63 + 1) = v70;
                v55 = vadd_s32(v55, 0x1FFFFFFFFLL);
                v47[1] = v55;
              }

              else
              {
LABEL_47:
                while (v64 != -4096 || v63[1] != -4096 || v63[2] != -4096)
                {
                  v66 = v61 + v62++;
                  v61 = v66 & v54;
                  v63 = (*&v53 + 32 * v61);
                  v64 = *v63;
                  if (*v59 == *v63)
                  {
                    goto LABEL_43;
                  }
                }
              }

              v59 += 8;
            }

            while (v59 != v51);
          }
        }

        if (v48 != (v35 + 24))
        {
          free(v48);
          v46 = v44;
        }

        *v35 = -8192;
        a1[5] = vadd_s32(a1[5], 0x1FFFFFFFFLL);
        mlir::RewriterBase::eraseOp(&a1[14], v46);
        v33 = v36;
        if (v36 == *&v34)
        {
          break;
        }
      }
    }
  }

  result = 0;
  *(a3 + 8) = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v11 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(a1, v4, &v11[v4], v10);

    llvm::deallocate_buffer(v4, v11);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v12 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) & 0xFFFFFFFFFFFFFFELL;
      v16 = &result[4 * v15];
      v17 = result + 4;
      v18 = v15;
      do
      {
        *(v17 - 4) = -4096;
        *v17 = -4096;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      if (v14 == v15)
      {
        return result;
      }
    }

    else
    {
      v16 = result;
    }

    v19 = &result[4 * v12];
    do
    {
      *v16 = -4096;
      v16 += 4;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0xFFFFFFFFFFFFFFELL;
      v10 = &v6[4 * v9];
      v11 = v6 + 4;
      v12 = v9;
      do
      {
        *(v11 - 4) = -4096;
        *v11 = -4096;
        v11 += 8;
        v12 -= 2;
      }

      while (v12);
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *result;
    }

    v13 = &v6[4 * v5];
    do
    {
      *v10 = -4096;
      v10 += 4;
    }

    while (v10 != v13);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v17 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v18 = *(result + 16) - 1;
        v19 = v18 & ((v17 >> 4) ^ (v17 >> 9));
        v14 = *result + 32 * v19;
        v20 = *v14;
        if (v17 != *v14)
        {
          v21 = 0;
          v22 = 1;
          while (v20 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v20 == -8192;
            }

            if (v23)
            {
              v21 = v14;
            }

            v24 = v19 + v22++;
            v19 = v24 & v18;
            v14 = *result + 32 * v19;
            v20 = *v14;
            if (v17 == *v14)
            {
              goto LABEL_14;
            }
          }

          if (v21)
          {
            v14 = v21;
          }
        }

LABEL_14:
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = v17;
        *(v14 + 24) = 0;
        *(v14 + 8) = v4[1];
        v4[1] = 0;
        *(v14 + 16) = *(v4 + 4);
        *(v4 + 4) = 0;
        v15 = *(v14 + 20);
        *(v14 + 20) = *(v4 + 5);
        *(v4 + 5) = v15;
        v16 = *(v14 + 24);
        *(v14 + 24) = *(v4 + 6);
        *(v4 + 6) = v16;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (32 * v16));
      }

      v4 += 4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v4 = 0;
  v5 = *a1;
  v6 = a2[1];
  v7 = a2[2];
  v8 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v7 >> 4) ^ (v7 >> 9))) | (((v6 >> 4) ^ (v6 >> 9)) << 32));
  v9 = 0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ v8 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v10 = v3 - 1;
  v11 = v10 & ((v9 >> 31) ^ v9);
  v12 = 1;
  v13 = (*a1 + 32 * v11);
  v14 = *v13;
  if (*a2 != *v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v6 == v13[1] && v7 == v13[2])
  {
    result = 1;
    *a3 = v13;
    return result;
  }

  while (1)
  {
LABEL_7:
    if (v14 != -4096)
    {
      v16 = v14 == -8192 && v13[1] == -8192 && v13[2] == -8192;
      goto LABEL_19;
    }

    v16 = 0;
    if (v13[1] == -4096 && v13[2] == -4096)
    {
      break;
    }

LABEL_19:
    if (v16 && v4 == 0)
    {
      v4 = v13;
    }

    v18 = v11 + v12++;
    v11 = v18 & v10;
    v13 = (v5 + 32 * v11);
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_3;
    }
  }

  result = 0;
  if (v4)
  {
    v13 = v4;
  }

  *a3 = v13;
  return result;
}

char *llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[32 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 40;
      v14 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v15 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 5) = -4096;
        *(v13 - 1) = -4096;
        *(v13 - 2) = v14;
        *v13 = v14;
        v13 += 64;
        v15 -= 2;
      }

      while (v15);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v16 = &result[32 * v11];
        v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        do
        {
          *v10 = -4096;
          *(v10 + 8) = v17;
          v10 += 32;
        }

        while (v10 != v16);
      }
    }

    v18 = (32 * v3);
    if (!v3)
    {
LABEL_24:
      llvm::deallocate_buffer(v4, v18);
    }

    v19 = 32 * v3;
    v20 = v4;
    while (1)
    {
      if (*v20 == -8192)
      {
        if (*(v20 + 1) == -8192 && *(v20 + 2) == -8192)
        {
          goto LABEL_15;
        }
      }

      else if (*v20 == -4096 && *(v20 + 1) == -4096 && *(v20 + 2) == -4096)
      {
        goto LABEL_15;
      }

      v29 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, v20, &v29);
      v21 = v29;
      *v29 = *v20;
      *(v21 + 1) = *(v20 + 8);
      v21[3] = *(v20 + 3);
      ++*(a1 + 8);
LABEL_15:
      v20 = (v20 + 32);
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    if (((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_30;
    }

    v23 = ((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[32 * (v23 & 0xFFFFFFFFFFFFFFELL)];
    v24 = result + 40;
    v25 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v26 = v23 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v24 - 5) = -4096;
      *(v24 - 1) = -4096;
      *(v24 - 2) = v25;
      *v24 = v25;
      v24 += 64;
      v26 -= 2;
    }

    while (v26);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_30:
      v27 = &result[32 * v22];
      v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v10 = -4096;
        *(v10 + 8) = v28;
        v10 += 32;
      }

      while (v10 != v27);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::try_emplace<mlir::Operation *>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v14);
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
      if (*v9 != -4096)
      {
LABEL_6:
        --*(a1 + 12);
LABEL_7:
        *v9 = *a2;
        *(v9 + 8) = *(a2 + 8);
        *(v9 + 24) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_11:
      if (*(v9 + 8) == -4096 && *(v9 + 16) == -4096)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 != -4096)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 32 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

void mlir::applyPatternsAndFoldGreedily(mlir::Region **this, const mlir::FrozenRewritePatternSet *a2, __int128 *a3, _BYTE *a4)
{
  v138[1] = *MEMORY[0x1E69E9840];
  if (!*(a3 + 3))
  {
    *(a3 + 3) = this;
  }

  v116 = 1;
  v115 = &unk_1F5B0C218;
  Context = mlir::Region::getContext(this);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v117 = &unk_1F5B0C288;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v8 = operator new(0x200uLL);
  v9 = a3[1];
  v128 = *a3;
  v122 = v8;
  v123 = v8;
  v124 = v8 + 32;
  v129 = v9;
  v130 = a3[2];
  v131 = 1;
  v132 = -4096;
  v133 = -4096;
  v134 = -4096;
  v135 = -4096;
  mlir::PatternApplicator::PatternApplicator(v136, a2);
  mlir::PatternApplicator::applyCostModel(v136, llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>::callback_fn<mlir::PatternApplicator::applyDefaultCostModel(void)::{lambda(mlir::Pattern const&)#1}>, v108, v10);
  v119 = &v115;
  v115 = &unk_1F5B0C178;
  v137 = this;
  if (*(a3 + 8))
  {
    v108[0] = &v115;
    for (i = this[1]; i != this; i = *(i + 1))
    {
      v15 = i - 8;
      if (!i)
      {
        v15 = 0;
      }

      v16 = *(v15 + 5);
      v17 = v15 + 32;
      if (v16 != v15 + 32)
      {
        do
        {
          v18 = *(v16 + 1);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v16 = v18;
        }

        while (v18 != v17);
      }
    }
  }

  v114 = 0;
  v20 = Context;
  if (*(&v128 + 1) <= 0 && *(&v128 + 1) != -1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v115 = &unk_1F5B0C218;
    mlir::PatternApplicator::~PatternApplicator(v136, v11, v12, v13);
  }

  v123 = v122;
  if (!v126)
  {
LABEL_44:
    v108[0] = mlir::UnknownLoc::get(v20, v11);
    v108[1] = 0;
    v108[2] = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection(v113, v20);
    v113[8] = v20;
    v113[9] = &v115;
    v113[10] = 0;
    v113[11] = 0;
    v113[7] = &unk_1F5AFAFF0;
    v107 = v108;
    v40 = v137;
    if ((v128 & 1) == 0)
    {
      v105 = &v107;
      v106 = &v115;
      for (j = *(v137 + 8); j != v40; j = *(j + 1))
      {
        v60 = j - 8;
        if (!j)
        {
          v60 = 0;
        }

        v61 = *(v60 + 5);
        v62 = v60 + 32;
        if (v61 != v60 + 32)
        {
          do
          {
            v63 = *(v61 + 1);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            v61 = v63;
          }

          while (v63 != v62);
        }
      }

      goto LABEL_125;
    }

    v105 = &v107;
    v106 = &v115;
    v41 = *(v137 + 8);
    if (v41 != v137)
    {
      do
      {
        v42 = v41 - 8;
        if (!v41)
        {
          v42 = 0;
        }

        v43 = *(v42 + 5);
        v44 = v42 + 32;
        while (v43 != v44)
        {
          v45 = *(v43 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v43 = v45;
          if (!v47)
          {
            goto LABEL_53;
          }
        }

        v41 = *(v41 + 1);
      }

      while (v41 != v40);
    }

LABEL_53:
    v48 = v122;
    v49 = v123;
    v50 = &v123[-1].i8[8];
    if (v122 == v123 || v50 <= v122)
    {
LABEL_85:
      v79 = v49 - v48;
      if (v79)
      {
        v80 = 0;
        v81 = v79 >> 3;
        v82 = v125;
        while (1)
        {
          v88 = v122;
          v89 = v127;
          if (!v127)
          {
            goto LABEL_107;
          }

          v83 = v122->i64[v80];
          v84 = v127 - 1;
          v85 = ((v83 >> 4) ^ (v83 >> 9)) & (v127 - 1);
          v86 = v82 + 16 * v85;
          v87 = *v86;
          if (v83 != *v86)
          {
            break;
          }

LABEL_88:
          *(v86 + 2) = v80++;
          if (v80 == v81)
          {
            goto LABEL_125;
          }
        }

        v90 = 0;
        v91 = 1;
        while (v87 != -4096)
        {
          if (v90)
          {
            v92 = 0;
          }

          else
          {
            v92 = v87 == -8192;
          }

          if (v92)
          {
            v90 = v86;
          }

          v93 = v85 + v91++;
          v85 = v93 & v84;
          v86 = v82 + 16 * (v93 & v84);
          v87 = *v86;
          if (v83 == *v86)
          {
            goto LABEL_88;
          }
        }

        if (v90)
        {
          v86 = v90;
        }

        if (4 * v126 + 4 < 3 * v127)
        {
          if (v127 + ~v126 - HIDWORD(v126) > v127 >> 3)
          {
            LODWORD(v126) = v126 + 1;
            if (*v86 == -4096)
            {
LABEL_94:
              *v86 = v88->i64[v80];
              *(v86 + 2) = 0;
              goto LABEL_88;
            }

LABEL_93:
            --HIDWORD(v126);
            goto LABEL_94;
          }
        }

        else
        {
LABEL_107:
          v89 = 2 * v127;
        }

        llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(&v125, v89);
        v82 = v125;
        if (v127)
        {
          v94 = v88->i64[v80];
          v95 = v127 - 1;
          v96 = ((v94 >> 4) ^ (v94 >> 9)) & (v127 - 1);
          v86 = v125 + 16 * v96;
          v97 = *v86;
          if (v94 != *v86)
          {
            v98 = 0;
            v99 = 1;
            while (v97 != -4096)
            {
              if (v98)
              {
                v100 = 0;
              }

              else
              {
                v100 = v97 == -8192;
              }

              if (v100)
              {
                v98 = v86;
              }

              v101 = v96 + v99++;
              v96 = v101 & v95;
              v86 = v125 + 16 * (v101 & v95);
              v97 = *v86;
              if (v94 == *v86)
              {
                goto LABEL_120;
              }
            }

            if (v98)
            {
              v86 = v98;
            }
          }
        }

        else
        {
          v86 = 0;
        }

LABEL_120:
        LODWORD(v126) = v126 + 1;
        if (*v86 == -4096)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

LABEL_125:
      v105 = &v114;
      v106 = &v115;
      v138[0] = v137 & 0xFFFFFFFFFFFFFFF9 | 2;
      if (!mlir::MLIRContext::hasActionHandler(v20))
      {
        v103 = v106;
        *v105 = v104;
        if (*(v103 + 27))
        {
          mlir::simplifyRegions(v103 + 16, *(v103 + 32), 1uLL);
        }

        mlir::OperationFolder::~OperationFolder(v108);
      }

      mlir::OperationFolder::~OperationFolder(v108);
    }

    v52 = v123 - 1;
    i8 = &v122->i8[8];
    if (&v123[-1] > &v122->u64[1])
    {
      i8 = v123[-1].i8;
    }

    v54 = i8 - 8;
    v55 = i8 - 8 - v122;
    v56 = 1;
    if (v55)
    {
      v56 = 2;
    }

    v57 = v56 + ((v55 - (v55 != 0)) >> 4);
    if (v57 >= 0xA)
    {
      if (v54 == v122)
      {
        v65 = v122;
      }

      else
      {
        v65 = &v122->i8[1];
      }

      v92 = v54 == v122;
      v66 = (v54 - v65) >> 4;
      if (!v92)
      {
        ++v66;
      }

      if (v122 >= v123 || (v67 = v66, v68 = &v122->u64[v67 + 1], v69 = &v50[-(v67 * 8)], v58 = v122, v69 >= v68))
      {
        v70 = 8 * (v57 & 0x1FFFFFFFFFFFFFFCLL);
        v50 -= v70;
        v58 = &v122->i8[v70];
        v71 = v122 + 1;
        v72 = v57 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v73 = v71[-1];
          v74 = *v71;
          v75 = vextq_s8(v52[-1], v52[-1], 8uLL);
          v71[-1] = vextq_s8(*v52, *v52, 8uLL);
          *v71 = v75;
          v52[-1] = vextq_s8(v74, v74, 8uLL);
          *v52 = vextq_s8(v73, v73, 8uLL);
          v71 += 2;
          v52 -= 2;
          v72 -= 4;
        }

        while (v72);
        if (v57 == (v57 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v58 = v122;
    }

    v76 = (v58 + 8);
    do
    {
      v77 = *(v76 - 8);
      *(v76 - 8) = *v50;
      *v50 = v77;
      v50 -= 8;
      v78 = v76 >= v50;
      v76 += 8;
    }

    while (!v78);
    goto LABEL_85;
  }

  v21 = v127;
  if (v127 > 4 * v126 && v127 >= 0x41)
  {
    v22 = 1 << (33 - __clz(v126 - 1));
    if (v22 <= 64)
    {
      v22 = 64;
    }

    if (v126)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 != v127)
    {
      llvm::deallocate_buffer(v125, (16 * v127));
    }

    v126 = 0;
    v24 = v125;
    v25 = (v127 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = v25 + 1;
      v27 = (v25 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v28 = (v125 + 16 * v27);
      v29 = (v125 + 16);
      v30 = v27;
      do
      {
        *(v29 - 2) = -4096;
        *v29 = -4096;
        v29 += 4;
        v30 -= 2;
      }

      while (v30);
      if (v26 == v27)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v28 = v125;
    }

    v39 = (v24 + 16 * v21);
    do
    {
      *v28 = -4096;
      v28 = (v28 + 16);
    }

    while (v28 != v39);
    goto LABEL_44;
  }

  if (v127)
  {
    v31 = v125;
    v32 = (v127 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v32)
    {
      v33 = v32 + 1;
      v34 = (v32 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v35 = (v125 + 16 * v34);
      v36 = (v125 + 16);
      v37 = v34;
      do
      {
        *(v36 - 2) = -4096;
        *v36 = -4096;
        v36 += 4;
        v37 -= 2;
      }

      while (v37);
      if (v33 == v34)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v35 = v125;
    }

    v38 = (v31 + 16 * v21);
    do
    {
      *v35 = -4096;
      v35 = (v35 + 16);
    }

    while (v35 != v38);
  }

LABEL_40:
  v126 = 0;
  goto LABEL_44;
}

void sub_1DFED1828(int a1, int a2, int a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, llvm *a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, llvm *a59, int a60)
{
  if ((a58 & 1) == 0)
  {
    llvm::deallocate_buffer(a59, (8 * a60));
  }

  llvm::deallocate_buffer(a49, (16 * a51));
}

uint64_t sub_1DFED1858()
{
  if (v2)
  {
    operator delete(v2);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v1;
}

void anonymous namespace::RegionPatternRewriteDriver::~RegionPatternRewriteDriver(_anonymous_namespace_::RegionPatternRewriteDriver *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_1DFED18E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

uint64_t sub_1DFED1914()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    *(v0 + 64) = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v0;
}

uint64_t mlir::applyOpPatternsAndFold(mlir::Operation **a1, uint64_t a2, const mlir::FrozenRewritePatternSet *a3, __int128 *a4, _BYTE *a5, BOOL *a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = a1;
    v10 = *a1;
    if (*(a4 + 3))
    {
      goto LABEL_68;
    }

    v11 = *(v10 + 2);
    if (a2 == 1)
    {
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
      }

      else
      {
        Parent = 0;
      }

      goto LABEL_67;
    }

    if (v11)
    {
      ParentRegion = mlir::Block::getParent(v11);
    }

    else
    {
      ParentRegion = 0;
    }

    v14 = a2 - 1;
    v15 = a2 + 62;
    v16 = (a2 + 62) >> 6;
    __b = v77;
    v76 = 6;
    if ((a2 + 62) < 0x1C0)
    {
      if (v15 >= 0x40)
      {
        memset(v77, 255, 8 * v16);
      }

      v17 = v77;
      v75 = (a2 + 62) >> 6;
      LODWORD(v82) = a2 - 1;
      v18 = v14 & 0x3F;
      if (((a2 - 1) & 0x3F) == 0)
      {
LABEL_21:
        if (ParentRegion)
        {
          if (a2 == 1)
          {
            while (v75)
            {
              v36 = __b;
              v37 = 8 * v75;
              while (!*v36)
              {
                ++v36;
                v37 -= 8;
                if (!v37)
                {
                  goto LABEL_64;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_65;
              }
            }

LABEL_64:
            Parent = ParentRegion;
LABEL_65:
            v35 = __b;
            if (__b == v77)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v19 = (a2 - 2) >> 6;
            while (1)
            {
              v20 = 0;
              do
              {
                v21 = v20 >> 6;
                v22 = __b;
                if (v21 > v19)
                {
                  goto LABEL_50;
                }

                v23 = v20 & 0x3F;
                v49 = v23 == 0;
                v24 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
                if (v49)
                {
                  v25 = -1;
                }

                else
                {
                  v25 = ~v24;
                }

                if (v21 == v19)
                {
                  v26 = 0xFFFFFFFFFFFFFFFFLL >> ~(a2 - 2);
                }

                else
                {
                  v26 = -1;
                }

                v27 = v26 & v25 & *(__b + v21);
                if (v27)
                {
                  v28 = __clz(__rbit64(v27));
                  v29 = v28 | (v21 << 6);
                  if (v29 == -1)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v21 + 1 == v19 + 1)
                  {
                    goto LABEL_50;
                  }

                  v30 = 0;
                  while (1)
                  {
                    v31 = v30 == -1 ? v25 : -1;
                    v32 = v19 - v21 - 1 == v30 ? 0xFFFFFFFFFFFFFFFFLL >> ~(a2 - 2) : -1;
                    v33 = v31 & v32 & *(__b + v21 + v30 + 1);
                    if (v33)
                    {
                      break;
                    }

                    if (v19 - v21 == ++v30)
                    {
                      goto LABEL_50;
                    }
                  }

                  LODWORD(v21) = v21 + v30 + 1;
                  v28 = __clz(__rbit64(v33));
                  v29 = v28 | (v21 << 6);
                  if (v29 == -1)
                  {
                    goto LABEL_50;
                  }
                }

                if (mlir::Region::findAncestorOpInRegion(ParentRegion, v9[v29 + 1]))
                {
                  *(__b + v21) &= ~(1 << v28);
                }

                v20 = v29 + 1;
              }

              while (v29 + 1 != a2 - 1);
              v22 = __b;
LABEL_50:
              if (!v75)
              {
                break;
              }

              v34 = 8 * v75;
              while (!*v22)
              {
                ++v22;
                v34 -= 8;
                if (!v34)
                {
                  goto LABEL_64;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_65;
              }
            }

            Parent = ParentRegion;
            v35 = __b;
            if (__b == v77)
            {
              goto LABEL_67;
            }
          }
        }

        else
        {
          Parent = 0;
          v35 = __b;
          if (__b == v77)
          {
            goto LABEL_67;
          }
        }

        free(v35);
LABEL_67:
        *(a4 + 3) = Parent;
        v10 = *v9;
LABEL_68:
        v92 = 1;
        v93 = -4096;
        v94 = -4096;
        v95 = -4096;
        v96 = -4096;
        Context = mlir::Attribute::getContext((v10 + 24));
        if (a6)
        {
          v39 = &v92;
        }

        else
        {
          v39 = 0;
        }

        v75 = 1;
        __b = &unk_1F5B0C218;
        v77[1] = Context;
        p_b = 0;
        v79 = 0;
        v80 = 0;
        v77[0] = &unk_1F5B0C288;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v40 = operator new(0x200uLL);
        v41 = a4[1];
        v87 = *a4;
        __p = v40;
        v82 = v40;
        v83 = v40 + 512;
        v88 = v41;
        v89 = a4[2];
        v90[0] = 1;
        v90[1] = -4096;
        v90[2] = -4096;
        v90[3] = -4096;
        v90[4] = -4096;
        mlir::PatternApplicator::PatternApplicator(v91, a3);
        mlir::PatternApplicator::applyCostModel(v91, llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>::callback_fn<mlir::PatternApplicator::applyDefaultCostModel(void)::{lambda(mlir::Pattern const&)#1}>, v72, v42);
        p_b = &__b;
        __b = &unk_1F5B0C358;
        v91[8] = v39;
        v46 = 8 * a2;
        if (*(a4 + 8))
        {
          v47 = v46;
          v48 = v9;
          do
          {
            llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v90, v48++, v72, &v73, v45);
            v47 -= 8;
          }

          while (v47);
        }

        if (!a6)
        {
          do
          {
LABEL_95:
            v61 = *v9++;
            v46 -= 8;
          }

          while (v46);
          if (a5)
          {
            *a5 = v63;
          }

          if (__p == v82)
          {
            if (a6)
            {
LABEL_106:
              *a6 = v92 < 2;
            }
          }

          else
          {
            v67 = __p + 8;
            do
            {
              if (*(v67 - 1))
              {
                v68 = 1;
              }

              else
              {
                v68 = v67 == v82;
              }

              v67 += 8;
            }

            while (!v68);
            if (a6)
            {
              goto LABEL_106;
            }
          }

          __b = &unk_1F5B0C218;
          mlir::PatternApplicator::~PatternApplicator(v91, v64, v65, v66);
        }

        v49 = v92 <= 1 && HIDWORD(v92) == 0;
        if (v49)
        {
LABEL_93:
          v59 = v46;
          v60 = v9;
          do
          {
            llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39, v60++, v72, &v73, v45);
            v59 -= 8;
          }

          while (v59);
          goto LABEL_95;
        }

        if (v92)
        {
          v51 = &v93;
          v52 = &v97;
          v53 = 24;
        }

        else
        {
          v50 = v94;
          if (v94 > 2 * v92 && v94 >= 0x41)
          {
            llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(&v92, v43, v44, v45);
            goto LABEL_93;
          }

          if (!v94)
          {
            goto LABEL_92;
          }

          v51 = v93;
          v52 = (v93 + 8 * v94);
          v53 = 8 * v94 - 8;
          if (v53 <= 0x17)
          {
            v54 = v93;
            do
            {
LABEL_90:
              *v54++ = -4096;
            }

            while (v54 != v52);
LABEL_91:
            v50 = *v39 & 1;
LABEL_92:
            *v39 = v50;
            HIDWORD(v92) = 0;
            goto LABEL_93;
          }
        }

        v55 = (v53 >> 3) + 1;
        v54 = &v51[v55 & 0x3FFFFFFFFFFFFFFCLL];
        v56 = (v51 + 2);
        v57 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v58 = v55 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v56[-1] = v57;
          *v56 = v57;
          v56 += 2;
          v58 -= 4;
        }

        while (v58);
        if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }
    }

    else
    {
      v75 = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v77, v15 >> 6, 8);
      v17 = __b;
      memset(__b, 255, 8 * v16);
      v75 = (a2 + 62) >> 6;
      LODWORD(v82) = a2 - 1;
      v18 = v14 & 0x3F;
      if (((a2 - 1) & 0x3F) == 0)
      {
        goto LABEL_21;
      }
    }

    v17[v16 - 1] &= ~(-1 << v18);
    goto LABEL_21;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 1;
  }

  return 1;
}

void anonymous namespace::MultiOpPatternRewriteDriver::~MultiOpPatternRewriteDriver(_anonymous_namespace_::MultiOpPatternRewriteDriver *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_1DFED2020(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

uint64_t sub_1DFED2050()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    *(v0 + 64) = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v0;
}

void sub_1DFED20AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_1DFED20DC()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v0);
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationInserted(uint64_t a1, mlir::Operation *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v5 = *(a1 + 144);
  if (v5)
  {
    v6 = a2;
    (*(*v5 + 16))(v5);
    a2 = v6;
  }

  if (*(a1 + 136) == 1)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 152), &v7, v8, &v9, a4);
    a2 = v7;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockInserted(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockErased(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block *a2)
{
  result = *(this + 18);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationModified(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block **a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = this;
    v5 = a2;
    (*(*v3 + 40))(*(this + 18));
    this = v4;
    a2 = v5;
    v2 = vars8;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyOperationReplaced(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyMatchFailure(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::~GreedyPatternRewriteDriver(_anonymous_namespace_::GreedyPatternRewriteDriver *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_1F5B0C218;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_1DFED2300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

uint64_t sub_1DFED2330()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    *(v0 + 64) = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v0;
}

void sub_1DFED238C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_1DFED23BC()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v0);
}

void mlir::PatternRewriter::~PatternRewriter(mlir::PatternRewriter *this)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

unsigned int *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::RegionPatternRewriteDriver(mlir::MLIRContext *,mlir::FrozenRewritePatternSet const&,mlir::GreedyRewriteConfig const&,mlir::Region &)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a1;
  v6 = a2;
  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v4 + 152), &v6, v7, &v8, a4);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v6 = result + 2;
  v5 = *result;
  v7 = *result & 1;
  if (v7)
  {
    v8 = 4;
    v9 = result + 2;
  }

  else
  {
    v8 = result[4];
    if (!v8)
    {
      v12 = 0;
      v14 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v9 = *(result + 1);
  }

  v10 = v8 - 1;
  v11 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v8 - 1);
  v12 = &v9[2 * v11];
  a4 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v7)
    {
      v13 = 4;
    }

    else
    {
      v6 = *(result + 1);
      v13 = result[4];
    }

    *a3 = v12;
    *(a3 + 8) = &v6[2 * v13];
    *(a3 + 16) = 0;
    return result;
  }

  v16 = 0;
  a5 = 1;
  while (a4 != -4096)
  {
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a4 == -8192;
    }

    if (v17)
    {
      v16 = v12;
    }

    v18 = v11 + a5;
    a5 = (a5 + 1);
    v11 = v18 & v10;
    v12 = &v9[2 * (v18 & v10)];
    a4 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v12 = v16;
  }

  v22 = v12;
  if (v7)
  {
    v14 = 4;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v5 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v5 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(result, v14, a4, a5);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v5 = *v21;
    v12 = v22;
    v7 = *v21 & 1;
  }

  *result = (v5 & 0xFFFFFFFE | v7) + 2;
  if (*v12 != -4096)
  {
    --result[1];
  }

  *v12 = *a2;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v6 = *(result + 1);
    v15 = result[4];
  }

  *a3 = v12;
  *(a3 + 8) = &v6[2 * v15];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  v59[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v6 = (a2 - 1) | ((a2 - 1) >> 1);
    v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
    v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
    if ((v8 + 1) > 0x40)
    {
      v4 = v8 + 1;
    }

    else
    {
      v4 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v10 = (result + 8);
    v9 = *(result + 8);
    v11 = *(result + 16);
    if (v4 > 4)
    {
      buffer = llvm::allocate_buffer(8 * v4, 8uLL);
      *(v5 + 8) = buffer;
      *(v5 + 16) = v4;
      v25 = *v5;
      v12 = (v9 + 8 * v11);
      *v5 = *v5 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = &buffer->i8[8 * v4];
        v27 = 8 * v4 - 8;
        if (v27 < 0x18)
        {
          v29 = buffer;
          goto LABEL_24;
        }

LABEL_18:
        v28 = (v27 >> 3) + 1;
        v29 = &buffer->i8[8 * (v28 & 0x3FFFFFFFFFFFFFFCLL)];
        v30 = buffer + 1;
        v31 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v31;
          *v30 = v31;
          v30 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_25:
          if (v11)
          {
            v33 = v9;
            do
            {
              v39 = *v33;
              if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v5)
                {
                  v35 = 3;
                  v34 = v5 + 8;
                }

                else
                {
                  v34 = *v10;
                  v35 = v4 - 1;
                }

                v36 = v35 & ((v39 >> 4) ^ (v39 >> 9));
                v37 = (v34 + 8 * v36);
                v38 = *v37;
                if (v39 != *v37)
                {
                  v40 = 0;
                  v41 = 1;
                  while (v38 != -4096)
                  {
                    if (v40)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v38 == -8192;
                    }

                    if (v42)
                    {
                      v40 = v37;
                    }

                    v43 = v36 + v41++;
                    v36 = v43 & v35;
                    v37 = (v34 + 8 * (v43 & v35));
                    v38 = *v37;
                    if (v39 == *v37)
                    {
                      goto LABEL_29;
                    }
                  }

                  if (v40)
                  {
                    v37 = v40;
                  }
                }

LABEL_29:
                *v37 = v39;
                *v5 += 2;
              }

              v33 = (v33 + 8);
            }

            while (v33 != v12);
          }

          llvm::deallocate_buffer(v9, (8 * v11));
        }

        do
        {
LABEL_24:
          *v29 = -4096;
          v29 += 8;
        }

        while (v29 != v26);
        goto LABEL_25;
      }
    }

    else
    {
      v12 = (v9 + 8 * v11);
      *result = 1;
      v4 = v11;
    }

    v26 = (v5 + 40);
    buffer = (v5 + 8);
    v27 = 24;
    goto LABEL_18;
  }

  v13 = (result + 8);
  v14 = &v58;
  if ((*(result + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v15 = *(result + 16);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v58 = *(result + 8);
    v14 = v59;
    v15 = *(result + 16);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v16 = *(result + 24);
      if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }
  }

  *v14++ = v15;
  v16 = *(result + 24);
  if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v17 = *(result + 32);
    if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *v14++ = v16;
  v17 = *(result + 32);
  if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v18 = *result;
    if (v4 >= 5)
    {
      goto LABEL_13;
    }

LABEL_53:
    v4 = v15;
    *result = v18 & 1;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_52:
  *v14++ = v17;
  v18 = *result;
  if (v4 < 5)
  {
    goto LABEL_53;
  }

LABEL_13:
  *result = v18 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v4, 8uLL);
  *(v5 + 8) = result;
  *(v5 + 16) = v4;
  v19 = *v5;
  *v5 = *v5 & 1;
  if (v19)
  {
LABEL_14:
    v20 = v5 + 40;
    v21 = (v5 + 8);
    v22 = 24;
    goto LABEL_56;
  }

LABEL_54:
  if (!v4)
  {
    goto LABEL_60;
  }

  v21 = *v13;
  v20 = *v13 + 8 * v4;
  v22 = 8 * v4 - 8;
  if (v22 < 0x18)
  {
    v23 = *v13;
    do
    {
LABEL_59:
      *v23++ = -4096;
    }

    while (v23 != v20);
    goto LABEL_60;
  }

LABEL_56:
  v44 = (v22 >> 3) + 1;
  v23 = &v21->i64[v44 & 0x3FFFFFFFFFFFFFFCLL];
  v45 = v21 + 1;
  v46 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v45[-1] = v46;
    *v45 = v46;
    v45 += 2;
    v47 -= 4;
  }

  while (v47);
  if (v44 != (v44 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_59;
  }

LABEL_60:
  if (&v58 != v14)
  {
    v48 = &v58;
    do
    {
      v54 = *v48;
      if ((*v48 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v5)
        {
          v50 = 3;
          v49 = v5 + 8;
        }

        else
        {
          v49 = *v13;
          v50 = v4 - 1;
        }

        v51 = v50 & ((v54 >> 4) ^ (v54 >> 9));
        v52 = (v49 + 8 * v51);
        v53 = *v52;
        if (v54 != *v52)
        {
          v55 = 0;
          result = 1;
          while (v53 != -4096)
          {
            if (v55)
            {
              v56 = 0;
            }

            else
            {
              v56 = v53 == -8192;
            }

            if (v56)
            {
              v55 = v52;
            }

            v57 = v51 + result;
            result = (result + 1);
            v51 = v57 & v50;
            v52 = (v49 + 8 * (v57 & v50));
            v53 = *v52;
            if (v54 == *v52)
            {
              goto LABEL_64;
            }
          }

          if (v55)
          {
            v52 = v55;
          }
        }

LABEL_64:
        *v52 = v54;
        *v5 += 2;
      }

      ++v48;
    }

    while (v48 != v14);
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::addToWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block **a2)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v11 = v13;
  v12 = 0x800000000;
  while (1)
  {
    v3 = v12;
    if (v12 >= HIDWORD(v12))
    {
      v7 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v11, v13, v12 + 1, 8);
      a2 = v7;
      v3 = v12;
    }

    *(v11 + v3) = a2;
    v4 = v12 + 1;
    LODWORD(v12) = v12 + 1;
    v5 = a2[2];
    if (!v5)
    {
      break;
    }

    Parent = mlir::Block::getParent(v5);
    if (*(this + 16) == Parent)
    {
      v4 = v12;
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (Parent)
    {
      a2 = *(Parent + 16);
      if (a2)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  if (!*(this + 16) && v4)
  {
LABEL_13:
    v8 = v11;
    v9 = 8 * v4;
    do
    {
      v10 = *v8++;
      v9 -= 8;
    }

    while (v9);
  }

LABEL_15:
  if (v11 != v13)
  {
    free(v11);
  }
}

void anonymous namespace::GreedyPatternRewriteDriver::addSingleOpToWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  if (*(this + 34))
  {
    v4 = *(this + 38);
    if (v4)
    {
      v5 = this + 160;
      v6 = 4;
    }

    else
    {
      v5 = *(this + 20);
      v6 = *(this + 42);
      if (!v6)
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_5;
      }
    }

    v9 = v6 - 1;
    v10 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *&v5[8 * v10];
    if (v11 == a2)
    {
LABEL_9:
      v12 = &v5[8 * v10];
      if ((v4 & 1) == 0)
      {
        if (v12 == (*(this + 20) + 8 * *(this + 42)))
        {
          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = 1;
      while (v11 != -4096)
      {
        v14 = v10 + v13++;
        v10 = v14 & v9;
        v11 = *&v5[8 * v10];
        if (v11 == a2)
        {
          goto LABEL_9;
        }
      }

      if ((v4 & 1) == 0)
      {
        v5 = *(this + 20);
        v7 = *(this + 42);
        v8 = v7;
LABEL_5:
        if (&v5[8 * v8] == &v5[8 * v7])
        {
          return;
        }

        goto LABEL_20;
      }

      v12 = (this + 192);
    }

    if (v12 == (this + 192))
    {
      return;
    }
  }

LABEL_20:
  v15 = (*(this + 8) - *(this + 7)) >> 3;
  v27 = a2;
  v28 = v15;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(this + 10, &v27, &v28, v29);
  if (v29[16] == 1)
  {
    v17 = *(this + 8);
    v16 = *(this + 9);
    if (v17 >= v16)
    {
      v19 = *(this + 7);
      v20 = v17 - v19;
      v21 = (v17 - v19) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v23 = v16 - v19;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v25 = operator new(8 * v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[8 * v21];
      *v26 = a2;
      v18 = v26 + 8;
      memcpy(v25, v19, v20);
      *(this + 7) = v25;
      *(this + 8) = v18;
      *(this + 9) = &v25[8 * v24];
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v17 = a2;
      v18 = v17 + 8;
    }

    *(this + 8) = v18;
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_0>(uint64_t a1, mlir::Block **a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = &v6;
  v6 = 0;
  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v5, a2) || (mlir::OperationFolder::insertKnownConstant(*v4, a2, v6) & 1) != 0)
  {
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_1>(uint64_t a1, int32x2_t *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = &v7;
  v7 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v6, a2) && !mlir::OperationFolder::insertKnownConstant(*v4, a2, v7))
  {
    return 2;
  }

  return 1;
}

uint64_t mlir::MLIRContext::executeActionInternal<anonymous namespace::GreedyPatternRewriteIteration,long long &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = &unk_1F5B0C2F0;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

llvm::raw_ostream *anonymous namespace::GreedyPatternRewriteIteration::print(_anonymous_namespace_::GreedyPatternRewriteIteration *this, llvm::raw_ostream *a2)
{
  v3 = *(a2 + 4);
  if (*(a2 + 3) - v3 > 0x1DuLL)
  {
    qmemcpy(v3, "GreedyPatternRewriteIteration(", 30);
    *(a2 + 4) += 30;
    result = llvm::raw_ostream::operator<<(a2, *(this + 4));
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = llvm::raw_ostream::write(a2, "GreedyPatternRewriteIteration(", 0x1EuLL);
    result = llvm::raw_ostream::operator<<(v4, *(this + 4));
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
LABEL_3:
      *v6 = 41;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, ")", 1uLL);
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_2>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = result;
  if (*(v3 + 108))
  {
    mlir::simplifyRegions(v3 + 16, *(v3 + 256), 1uLL);
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::processWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, uint64_t a2)
{
  v114[6] = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = v114;
  v8 = &v111;
  v9 = &v105;
  v10 = &v109;
  v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  do
  {
    while (1)
    {
LABEL_3:
      v12 = v2;
      while (!*v12)
      {
        if (++v12 == v3)
        {
          return v5 & 1;
        }
      }

      v13 = *(this + 15);
      v14 = v6 < v13 || v13 == -1;
      if (!v14)
      {
        return v5 & 1;
      }

      do
      {
        v16 = *--v3;
        v15 = v16;
      }

      while (!v16);
      *(this + 8) = v3;
      v17 = *(this + 24);
      if (v17)
      {
        v18 = *(this + 10);
        v19 = v17 - 1;
        v20 = (v17 - 1) & ((v15 >> 4) ^ (v15 >> 9));
        v21 = *(v18 + 16 * v20);
        if (v15 == v21)
        {
LABEL_15:
          *(v18 + 16 * v20) = -8192;
          *(this + 11) = vadd_s32(*(this + 88), 0x1FFFFFFFFLL);
        }

        else
        {
          v93 = 1;
          while (v21 != -4096)
          {
            v94 = v20 + v93++;
            v20 = v94 & v19;
            v21 = *(v18 + 16 * v20);
            if (v15 == v21)
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (v2 != v3)
      {
        v22 = v3 - 1;
        do
        {
          if (*v22)
          {
            break;
          }

          *(this + 8) = v22;
          v14 = v22-- == v2;
        }

        while (!v14);
      }

      v102 = v15;
      isOpTriviallyDead = mlir::isOpTriviallyDead(v15, a2);
      v24 = v102;
      if (!isOpTriviallyDead)
      {
        break;
      }

      mlir::RewriterBase::eraseOp((this + 16), v102);
      v5 = 1;
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }
    }

    {
      v95 = v24;
      v24 = v95;
    }

    if ((*(**(v24 + 6) + 32))(*(v24 + 6), v11[193]))
    {
      goto LABEL_56;
    }

    v112 = v7;
    v113 = 0x600000000;
    if ((mlir::Operation::fold(v102) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v113)
    {
      (*(*this + 40))(this, v102);
      v5 = 1;
      v43 = 2;
      goto LABEL_51;
    }

    v101 = *(this + 40);
    v26 = *(v102 + 2);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    *(this + 5) = v26;
    *(this + 6) = v27;
    v109 = v8;
    v110 = 0x600000000;
    v28 = *(v102 + 9);
    v29 = v102 - 16;
    if (!v28)
    {
      v29 = 0;
    }

    v103[0] = v29;
    v103[1] = v28;
    mlir::OperandRange::getTypes(&v104, v103);
    if (!v113)
    {
      v42 = v110;
      goto LABEL_46;
    }

    v98 = v10;
    v99 = v9;
    v100 = v8;
    v97 = v7;
    v30 = v104;
    v31 = v105;
    v32 = 8 * v113;
    v33 = v112;
    while (1)
    {
      v34 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v31) + 8);
      v35 = *v33;
      if ((*v33 & 4) != 0)
      {
        v36 = v35 & 0xFFFFFFFFFFFFFFF8;
        if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          goto LABEL_40;
        }
      }

      v37 = v102;
      v38 = *(v102 + 6);
      if (*(v38 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v104 = *(v38 + 8);
        Values = mlir::SparseElementsAttr::getValues(&v104);
        v37 = v102;
      }

      else
      {
        Values = *(v38 + 24);
      }

      v40 = (*(*Values + 24))(Values, this + 24, *v33 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, *(v37 + 3));
      if (!v40)
      {
        break;
      }

      v36 = v40 - 16;
LABEL_40:
      v41 = v110;
      if (v110 >= HIDWORD(v110))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v100, v110 + 1, 8);
        v41 = v110;
      }

      *(v109 + v41) = v36;
      v42 = v110 + 1;
      LODWORD(v110) = v110 + 1;
      ++v33;
      v31 = (v31 + 1);
      v32 -= 8;
      if (!v32)
      {
        v7 = v97;
        v10 = v98;
        v9 = v99;
        v8 = v100;
LABEL_46:
        v44 = v102;
        mlir::ValueRange::ValueRange(&v104, v109, v42);
        mlir::RewriterBase::replaceOp(this + 2, v44, v104, v105);
        v43 = 2;
        v45 = 1;
        v5 = 1;
        v46 = v101;
        v47 = v109;
        if (v109 == v8)
        {
          goto LABEL_48;
        }

LABEL_47:
        free(v47);
        v46 = v101;
        goto LABEL_48;
      }
    }

    v104 = 1;
    v105 = -4096;
    v106 = -4096;
    v107 = -4096;
    v108 = -4096;
    v46 = v101;
    if (!v110)
    {
      v82 = 1;
      v9 = v99;
      v8 = v100;
      v10 = v98;
LABEL_127:
      v86 = v105;
      v87 = v106;
      if (v82)
      {
        v88 = v10;
      }

      else
      {
        v88 = (v105 + 8 * v106);
      }

      if (v82)
      {
        v89 = v9;
      }

      else
      {
        v89 = v105;
      }

      if (v82)
      {
        v90 = 4;
      }

      else
      {
        v90 = v106;
      }

      v83 = (v89 + 8 * v90);
      v85 = v82;
      goto LABEL_137;
    }

    v54 = v109;
    v55 = (v109 + 8 * v110);
    v9 = v99;
    v8 = v100;
    v10 = v98;
    while (2)
    {
      v103[0] = *v54;
      DefiningOp = mlir::Value::getDefiningOp(v103);
      v65 = v104;
      v66 = v104 & 1;
      if (v104)
      {
        v56 = 4;
        v57 = v9;
        goto LABEL_72;
      }

      v56 = v106;
      if (!v106)
      {
        LODWORD(a2) = 0;
        goto LABEL_98;
      }

      v57 = v105;
LABEL_72:
      v46 = v101;
      v58 = v56 - 1;
      v59 = v58 & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
      v60 = (v57 + 8 * v59);
      v61 = *v60;
      if (DefiningOp != *v60)
      {
        v67 = 0;
        v68 = 1;
        while (v61 != -4096)
        {
          if (v67)
          {
            v69 = 0;
          }

          else
          {
            v69 = v61 == -8192;
          }

          if (v69)
          {
            v67 = v60;
          }

          v70 = v59 + v68++;
          v59 = v70 & v58;
          v60 = (v57 + 8 * v59);
          v61 = *v60;
          if (DefiningOp == *v60)
          {
            goto LABEL_73;
          }
        }

        if (v67)
        {
          v71 = v67;
        }

        else
        {
          v71 = v60;
        }

        if (v104)
        {
          a2 = 4;
        }

        else
        {
          a2 = v106;
        }

        if (4 * (v104 >> 1) + 4 < 3 * a2)
        {
          if (a2 + ~(v104 >> 1) - HIDWORD(v104) <= a2 >> 3)
          {
            goto LABEL_99;
          }
        }

        else
        {
LABEL_98:
          LODWORD(a2) = 2 * a2;
LABEL_99:
          v72 = DefiningOp;
          llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(&v104, a2, v63, v64);
          v65 = v104;
          if (v104)
          {
            v73 = 4;
            v74 = v99;
            goto LABEL_103;
          }

          v73 = v106;
          if (v106)
          {
            v74 = v105;
LABEL_103:
            v66 = v104 & 1;
            v75 = v73 - 1;
            v76 = (v73 - 1) & ((v72 >> 4) ^ (v72 >> 9));
            v71 = (v74 + 8 * v76);
            v77 = *v71;
            if (v72 != *v71)
            {
              v78 = 0;
              v79 = 1;
              while (v77 != -4096)
              {
                if (v78)
                {
                  v80 = 0;
                }

                else
                {
                  v80 = v77 == -8192;
                }

                if (v80)
                {
                  v78 = v71;
                }

                v81 = v76 + v79++;
                v76 = v81 & v75;
                v71 = (v74 + 8 * (v81 & v75));
                v77 = *v71;
                if (v72 == *v71)
                {
                  goto LABEL_104;
                }
              }

              if (v78)
              {
                v71 = v78;
              }
            }
          }

          else
          {
            v66 = 0;
            v71 = 0;
          }

LABEL_104:
          DefiningOp = v72;
          v9 = v99;
          v8 = v100;
          v10 = v98;
          v46 = v101;
        }

        LODWORD(v104) = (v65 & 0xFFFFFFFE | v66) + 2;
        if (*v71 != -4096)
        {
          --HIDWORD(v104);
        }

        *v71 = DefiningOp;
      }

LABEL_73:
      if (++v54 != v55)
      {
        continue;
      }

      break;
    }

    v82 = v104;
    if (v104 <= 1)
    {
      goto LABEL_127;
    }

    v83 = v10;
    v84 = v9;
    if ((v104 & 1) != 0 || (v84 = v105, v83 = (v105 + 8 * v106), v106))
    {
      v85 = v104 & 1;
      while ((*v84 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v84 = (v84 + 8);
        if (v84 == v83)
        {
          v84 = v83;
          break;
        }
      }

      v86 = v105;
      v87 = v106;
      v88 = v84;
LABEL_137:
      if (v85)
      {
        v91 = v10;
        if (v88 == v10)
        {
          goto LABEL_151;
        }

        do
        {
LABEL_145:
          v92 = *v88++;
          mlir::RewriterBase::eraseOp((this + 16), v92);
          if (v88 == v83)
          {
            v46 = v101;
          }

          else
          {
            v46 = v101;
            do
            {
              if ((*v88 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              ++v88;
            }

            while (v88 != v83);
          }
        }

        while (v88 != v91);
        LOBYTE(v82) = v104;
      }

      else
      {
        v91 = (v86 + 8 * v87);
        if (v88 != v91)
        {
          goto LABEL_145;
        }
      }
    }

LABEL_151:
    if ((v82 & 1) == 0)
    {
      llvm::deallocate_buffer(v105, (8 * v106));
    }

    v45 = 0;
    v43 = 0;
    v7 = v97;
    v47 = v109;
    if (v109 != v8)
    {
      goto LABEL_47;
    }

LABEL_48:
    if (v46)
    {
      *(this + 40) = v46;
      if ((v45 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *(this + 5) = 0;
      *(this + 6) = 0;
      if ((v45 & 1) == 0)
      {
LABEL_50:
        v43 = 0;
      }
    }

LABEL_51:
    if (v112 != v7)
    {
      free(v112);
    }

    v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    if (v43)
    {
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }

      goto LABEL_3;
    }

LABEL_56:
    v112 = this;
    v113 = &v102;
    v109 = this;
    v104 = this;
    v48 = *(this + 18);
    v49 = v48 == 0;
    if (v48)
    {
    }

    else
    {
      v50 = 0;
    }

    if (v48)
    {
    }

    else
    {
      v51 = 0;
    }

    if (v49)
    {
      v52 = 0;
    }

    else
    {
    }

    v53 = mlir::PatternApplicator::matchAndRewrite(this + 192, v102, this + 16, v52, &v112, v50, &v109, v25, v51, &v104);
    v6 += v53 & 1;
    v5 |= v53;
    v2 = *(this + 7);
    v3 = *(this + 8);
  }

  while (v2 != v3);
  return v5 & 1;
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_0>(void **a1, uint64_t a2)
{
  v3 = (*a1)[18];
  if (v3)
  {
    (*(*v3 + 72))(v3, a2, *a1[1]);
  }

  return 1;
}

uint64_t llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_1>(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 144);
  if (result)
  {
    return (*(*result + 80))(result, a2, 0);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 144);
  if (v2)
  {
    (*(*v2 + 80))(v2, a2, 1);
  }

  return 1;
}

void sub_1DFED3A0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_1DFED3A3C()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v0);
}

unsigned int *llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(unsigned int *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  v5 = __clz((*result >> 1) - 1);
  if (v5 - 28 >= 3)
  {
    v6 = 1 << (33 - v5);
  }

  else
  {
    v6 = 64;
  }

  if (v4 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((v4 & 1) != 0 && v7 < 5)
  {
    *result &= 1u;
    result[1] = 0;
    v8 = result + 2;
    v9 = result + 10;
    v10 = 24;
    goto LABEL_15;
  }

  if (v4)
  {
    if (v7 <= 4)
    {
      *result = 1;
    }

    else
    {
      *result &= ~1u;
      v17 = result;
      buffer = llvm::allocate_buffer(8 * v7, 8uLL);
      result = v17;
      *(v17 + 1) = buffer;
      *(v17 + 2) = v7;
      v19 = *v17;
      *v17 = *v17 & 1;
      if ((v19 & 1) == 0)
      {
        v20 = &buffer[2 * v7];
        v21 = 8 * v7 - 8;
        if (v21 < 0x18)
        {
          v23 = buffer;
          goto LABEL_31;
        }

LABEL_24:
        v22 = (v21 >> 3) + 1;
        v23 = &buffer[2 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
        v24 = (buffer + 4);
        v25 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24[-1] = v25;
          *v24 = v25;
          v24 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return result;
        }

        do
        {
LABEL_31:
          *v23 = -4096;
          v23 += 2;
        }

        while (v23 != v20);
        return result;
      }
    }

    buffer = result + 2;
    v20 = result + 10;
    v21 = 24;
    goto LABEL_24;
  }

  v12 = result[4];
  if (v7 != v12)
  {
    llvm::deallocate_buffer(*(result + 1), (8 * v12));
  }

  *result = 0;
  if (!v7)
  {
    return result;
  }

  v8 = *(result + 1);
  v9 = &v8[2 * v7];
  v10 = 8 * v7 - 8;
  if (v10 < 0x18)
  {
    v11 = *(result + 1);
    do
    {
LABEL_18:
      *v11 = -4096;
      v11 += 2;
    }

    while (v11 != v9);
    return result;
  }

LABEL_15:
  v13 = (v10 >> 3) + 1;
  v11 = &v8[2 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
  v14 = (v8 + 4);
  v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v14[-1] = v15;
    *v14 = v15;
    v14 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL mlir::Inliner::Impl::optimizeSCCAsync(uint64_t *a1, mlir::CallGraphNode **a2, uint64_t a3, mlir::MLIRContext *this)
{
  v55 = *MEMORY[0x1E69E9840];
  NumThreads = mlir::MLIRContext::getNumThreads(this);
  if (*(a1 + 4) < NumThreads)
  {
    v9 = NumThreads;
    v10 = *(*a1 + 64);
    if (*(a1 + 5) < NumThreads)
    {
      v53[0] = 0;
      v11 = llvm::SmallVectorBase<unsigned int>::mallocForGrow((a1 + 1), a1 + 3, NumThreads, 24, v53);
      llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::moveElementsForGrow((a1 + 1), v11);
      v12 = v53[0];
      v13 = a1[1];
      if (v13 != a1 + 3)
      {
        free(v13);
      }

      a1[1] = v11;
      *(a1 + 5) = v12;
    }

    llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize((a1 + 1), v9, (v10 + 32));
  }

  if (a3)
  {
    v14 = 8 * a3;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v17 = *a1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v16);
      mlir::AnalysisManager::nest((v17 + 24), *(CallableRegion + 16));
      v14 -= 8;
    }

    while (v14);
  }

  v19 = *(a1 + 4);
  v44 = 0;
  v45 = 0;
  __p = 0;
  if (v19)
  {
    v20 = operator new(v19);
    __p = v20;
    v45 = &v20[v19];
    bzero(v20, v19);
    v44 = &v20[v19];
    v21 = v19 + 1;
    do
    {
      atomic_store(0, v20++);
      --v21;
    }

    while (v21 > 1);
  }

  p_p = &__p;
  *v42 = a1;
  v52 = a2;
  v51 = a3;
  if (a3)
  {
    isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(this);
    if (a3 == 1 || (isMultithreadingEnabled & 1) == 0)
    {
      v28 = &__p;
      v29 = &a2[a3];
      while (1)
      {
        v30 = *a2;
        v31 = *v28;
        v32 = v28[1];
        if (*v28 == v32)
        {
          v34 = *v28;
        }

        else
        {
          while (1)
          {
            v33 = 0;
            atomic_compare_exchange_strong(v31, &v33, 1u);
            if (!v33)
            {
              break;
            }

            if (++v31 == v32)
            {
              LODWORD(v31) = v32;
              break;
            }
          }

          LODWORD(v34) = v31;
          v28 = p_p;
          v31 = *p_p;
        }

        v35 = (v34 - v31);
        v36 = mlir::Inliner::Impl::optimizeCallable(*v42, v30, *(*v42 + 8) + 24 * v35);
        atomic_store(0, *v28 + v35);
        if ((v36 & 1) == 0)
        {
          break;
        }

        a2 = v52 + 1;
        v52 = a2;
        if (a2 == v29)
        {
          goto LABEL_36;
        }
      }

      v37 = 0;
    }

    else
    {
      mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v50, this);
      v49 = 0;
      v48 = 0;
      MemorySpace = mlir::MemRefType::getMemorySpace(this);
      v23 = MemorySpace;
      v24 = (*(*MemorySpace + 40))();
      if (v24 >= a3)
      {
        v25 = a3;
      }

      else
      {
        v25 = v24;
      }

      if (v24)
      {
        do
        {
          v26 = MemorySpace;
          v27 = operator new(0x38uLL);
          *v27 = &unk_1F5B0C480;
          v27[1] = &v48;
          v27[2] = &v49;
          v27[3] = &v51;
          v27[4] = v50;
          v27[5] = &p_p;
          v27[6] = &v52;
          v54 = v27;
          llvm::ThreadPoolInterface::asyncImpl<void>(v26, &MemorySpace, &v46, v53);
          if (v54 == v53)
          {
            (*(*v54 + 32))(v54);
          }

          else if (v54)
          {
            (*(*v54 + 40))();
          }

          std::shared_future<void>::~shared_future(&v46);
          --v25;
        }

        while (v25);
        v38 = MemorySpace;
      }

      else
      {
        v38 = v23;
      }

      (*(*v38 + 32))(v38, &MemorySpace);
      v39 = atomic_load(&v48);
      v37 = (v39 & 1) == 0;
      (*(*MemorySpace + 32))(MemorySpace, &MemorySpace);
      mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(v50);
    }
  }

  else
  {
LABEL_36:
    v37 = 1;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  return v37;
}

void llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a2;
  if (v3 != a2)
  {
    if (v3 <= a2)
    {
      v15 = a3;
      v16 = a2 - v3;
      v17 = *a1;
      if (*(a1 + 12) < a2)
      {
        if (v17 <= a3 && v17 + 24 * v3 > a3)
        {
          v21 = a3 - v17;
          llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(a1, a2);
          v17 = *a1;
          v15 = &v21[*a1];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(a1, a2);
          v17 = *a1;
        }
      }

      v18 = *(a1 + 8);
      if (v16)
      {
        v19 = (v17 + 24 * v18);
        do
        {
          v19 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(v19, v15) + 24);
        }

        while (!__CFADD__(v4++, 1));
        v18 = *(a1 + 8);
      }

      v6 = v18 + v16;
    }

    else
    {
      v6 = a2;
      v7 = *a1 + 24 * a2;
      v8 = (*a1 + 24 * v3);
      do
      {
        v9 = v8;
        v8 -= 3;
        if (*(v9 - 3))
        {
          v10 = *(v9 - 4);
          if (v10)
          {
            v11 = 0;
            do
            {
              v12 = *(*v8 + v11);
              if (v12 != -8 && v12 != 0)
              {
                v14 = *v12;
                mlir::OpPassManager::~OpPassManager((v12 + 1));
                llvm::deallocate_buffer(v12, (v14 + 17));
              }

              v11 += 8;
            }

            while (8 * v10 != v11);
          }
        }

        free(*v8);
      }

      while (v8 != v7);
    }

    *(a1 + 8) = v6;
  }
}

uint64_t mlir::Inliner::Impl::optimizeCallable(uint64_t *a1, mlir::CallGraphNode *this, uint64_t a3)
{
  v5 = *(mlir::CallGraphNode::getCallableRegion(this) + 16);
  v27 = *(*(v5 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v27);
  v8 = v7;
  v11 = llvm::StringMapImpl::hash(AttrData, v7, v9, v10);
  Key = llvm::StringMapImpl::FindKey(a3, AttrData, v8, v11);
  v13 = Key;
  if (Key == -1)
  {
    v13 = *(a3 + 8);
  }

  if (v13 != *(a3 + 8))
  {
    v19 = (*a3 + 8 * v13);
LABEL_8:
    v20 = *a1;
    v21 = *(*a1 + 16);
    v22 = *v19;
    v27 = v5;
    v23 = *(v20 + 56);
    if (v23)
    {
      return (*(*v23 + 48))(v23, v21, v22 + 8, &v27);
    }

    goto LABEL_11;
  }

  v14 = *(*a1 + 64);
  if (!*(v14 + 24))
  {
    return 1;
  }

  mlir::OpPassManager::OpPassManager(&v27, AttrData, v8, 1);
  v15 = *(v14 + 24);
  if (v15)
  {
    (*(*v15 + 48))(v15, &v27);
    v18 = llvm::StringMapImpl::hash(AttrData, v8, v16, v17);
    v19 = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(a3, AttrData, v8, v18, &v27);
    mlir::OpPassManager::~OpPassManager(&v27);
    goto LABEL_8;
  }

LABEL_11:
  v25 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::Inliner::Impl::shouldInline(v25, v26);
}

uint64_t mlir::Inliner::Impl::shouldInline(uint64_t a1, void *a2)
{
  v4 = *a2;
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  }

  if ((*(**(v4 + 48) + 32))(*(v4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v5 = a2[3];
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *(v5 + 48);
    v8 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= 3)
    {
      v11 = v8 + 1;
      v12 = (v8 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v10 = &v7->i64[v12];
      v13 = vdupq_n_s64(v5);
      v14 = v7 + 1;
      v15 = 0uLL;
      v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
      v17 = v12;
      v18 = 0uLL;
      do
      {
        v15 = vsubq_s64(v15, vceqq_s64(v13, vandq_s8(v14[-1], v16)));
        v18 = vsubq_s64(v18, vceqq_s64(v13, vandq_s8(*v14, v16)));
        v14 += 2;
        v17 -= 4;
      }

      while (v17);
      v9 = vaddvq_s64(vaddq_s64(v18, v15));
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(v5 + 48);
    }

    v19 = &v7->i64[v6];
    do
    {
      v20 = *v10++;
      if (v5 == (v20 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v9;
      }
    }

    while (v10 != v19);
LABEL_14:
    if (v9)
    {
      return 0;
    }
  }

  CallableRegion = mlir::CallGraphNode::getCallableRegion(v5);
  v22 = *(*a2 + 16);
  if (v22)
  {
    Parent = mlir::Block::getParent(v22);
    if (CallableRegion == Parent)
    {
      return 0;
    }
  }

  else
  {
    Parent = 0;
    if (!CallableRegion)
    {
      return 0;
    }
  }

  if ((mlir::Region::isProperAncestor(CallableRegion, Parent) & 1) == 0)
  {
    v25 = *(CallableRegion + 1);
    if (v25 == CallableRegion)
    {
      goto LABEL_29;
    }

    if (v25[1] == CallableRegion)
    {
      goto LABEL_29;
    }

    v26 = *(*(CallableRegion + 2) + 48);
    if (v26 == *(mlir::Block::getParentOp(*(*a2 + 16)) + 48))
    {
      goto LABEL_29;
    }

    ParentOp = *(*a2 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    {
      goto LABEL_34;
    }

    v28 = ParentOp[6];
    if (v28[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      while (((*(*v28 + 4))(v28, mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
LABEL_29:
        v29 = *(*a1 + 96);
        if (v29)
        {
          v30 = *(*v29 + 48);

          return v30();
        }

        ParentOp = std::__throw_bad_function_call[abi:nn200100]();
LABEL_34:
        v31 = ParentOp;
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
        v28 = v31[6];
        if (v28[2] == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void mlir::Inliner::doInlining(mlir::Inliner *this)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v38[34] = this;
  v38[35] = v39;
  v38[36] = 0x200000000;
  Context = mlir::Attribute::getContext((*this + 24));
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v2 = *(this + 1);
  mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(v33, Context);
  v33[0] = &unk_1F5B0C3E0;
  v33[7] = v35;
  v33[8] = v35;
  v33[9] = 8;
  v34 = 0;
  v36 = v38;
  v37 = 0x800000000;
  v38[32] = v2;
  v38[33] = v26;
  v3 = *this;
  v4 = *(this + 1);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v26;
  __p = 0;
  v30 = 0;
  LODWORD(v31) = 0;
  v32[2] = v26;
  v32[3] = &__p;
  v5 = *(v3 + 16) == 0;
  v32[0] = v4;
  v32[1] = &v19;
  v6 = __p;
  v7 = v31;
  if (v30)
  {
    v8 = __p;
    if (v31)
    {
      v9 = 16 * v31;
      v8 = __p;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 16;
        v9 -= 16;
        if (!v9)
        {
          goto LABEL_20;
        }
      }
    }

    v10 = __p + 16 * v31;
    if (v8 != v10 && v21)
    {
      v11 = v19;
      v12 = v21 - 1;
      v13 = v20;
      do
      {
        v14 = *(v8 + 1);
        v15 = ((v14 >> 4) ^ (v14 >> 9)) & v12;
        v16 = *(v11 + 2 * v15);
        if (v14 == v16)
        {
LABEL_11:
          *(v11 + 2 * v15) = -8192;
          v13 = vadd_s32(v13, 0x1FFFFFFFFLL);
          v20 = v13;
          goto LABEL_12;
        }

        v17 = 1;
        while (v16 != -4096)
        {
          v18 = v15 + v17++;
          v15 = v18 & v12;
          v16 = *(v11 + 2 * v15);
          if (v14 == v16)
          {
            goto LABEL_11;
          }
        }

        do
        {
LABEL_12:
          v8 += 16;
          if (v8 == v10)
          {
            goto LABEL_20;
          }
        }

        while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v8 != v10);
    }
  }

LABEL_20:
  if (*(v4 + 32))
  {
  }

  llvm::deallocate_buffer(v6, (16 * v7));
}

void anonymous namespace::InlinerInterfaceImpl::~InlinerInterfaceImpl(_anonymous_namespace_::InlinerInterfaceImpl *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0C3E0;
  v5 = *(this + 19);
  if (v5 != this + 168)
  {
    free(v5);
  }

  v6 = *(this + 8);
  if (v6 != *(this + 7))
  {
    free(v6);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this, a2, a3, a4);
}

{
  *this = &unk_1F5B0C3E0;
  v5 = *(this + 19);
  if (v5 != this + 168)
  {
    free(v5);
  }

  v6 = *(this + 8);
  if (v6 != *(this + 7))
  {
    free(v6);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this, a2, a3, a4);
}

void sub_1DFED4CF4(void *__p)
{

  operator delete(__p);
}

void anonymous namespace::InlinerInterfaceImpl::processInlinedBlocks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (a2 - 8);
  }

  else
  {
    v6 = 0;
  }

  Parent = mlir::Block::getParent(v6);
  for (i = mlir::CallGraph::lookupNode(*(a1 + 424), Parent); !i; i = mlir::CallGraph::lookupNode(*(a1 + 424), Parent))
  {
    Parent = mlir::Region::getParentRegion(Parent);
  }

  v9 = *(a1 + 424);
  v10 = *(a1 + 432);

  collectCallOps(a2, a3, i, v9, v10, (a1 + 152), 1);
}

void collectCallOps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::SymbolTableCollection *a5, uint64_t *a6, char a7)
{
  v57[16] = *MEMORY[0x1E69E9840];
  v55 = v57;
  v56 = 0x800000000;
  *&v52 = a3;
  if (a1 != a2)
  {
    do
    {
      while (1)
      {
        v9 = a1 ? a1 - 8 : 0;
        *&v51 = v9;
        v10 = v56;
        if (v56 >= HIDWORD(v56))
        {
          break;
        }

        v11 = (v55 + 16 * v56);
        *v11 = v9;
        v11[1] = v52;
        LODWORD(v56) = v10 + 1;
        a1 = *(a1 + 8);
        if (a1 == a2)
        {
          goto LABEL_9;
        }
      }

      v12 = a1;
      v13 = a2;
      llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(&v55, &v51, &v52);
      a2 = v13;
      a1 = *(v12 + 8);
    }

    while (a1 != v13);
LABEL_9:
    v14 = v56;
    if (v56)
    {
      while (1)
      {
        v15 = v55 + 16 * v14;
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        LODWORD(v56) = --v14;
        v18 = v16 + 32;
        v19 = *(v16 + 40);
        if (v19 != v16 + 32)
        {
          break;
        }

LABEL_14:
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      while (1)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v22 = v21;
        if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v21))
        {
          break;
        }

        InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v22);
        *&v51 = v22;
        *(&v51 + 1) = InterfaceFor;
        if (!v22)
        {
          goto LABEL_35;
        }

        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v51);
        if ((CallableForCallee & 4) != 0)
        {
          goto LABEL_28;
        }

        v25 = CallableForCallee & 0xFFFFFFFFFFFFFFF8;
        if ((CallableForCallee & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          goto LABEL_28;
        }

        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v25 = 0;
        }

        *&v52 = v25;
        if (v25)
        {
          mlir::OpaqueAttr::getAttrData(&v52);
          if (!v26)
          {
LABEL_28:
            v27 = mlir::CallGraph::resolveCallable(a4, v51, *(&v51 + 1), a5);
            if (!mlir::CallGraphNode::isExternal(v27))
            {
              v28 = *(a6 + 2);
              if (v28 < *(a6 + 3))
              {
                v20 = *a6 + 32 * v28;
                *v20 = v51;
                *(v20 + 16) = v17;
                *(v20 + 24) = v27;
              }

              else
              {
                v52 = v51;
                v53 = v17;
                v54 = v27;
                if (*a6 <= &v52 && *a6 + 32 * v28 > &v52)
                {
                  v48 = &v52 - *a6;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, v28 + 1, 32);
                  v29 = *a6;
                  v30 = &v48[*a6];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, v28 + 1, 32);
                  v29 = *a6;
                  v30 = &v52;
                }

                v31 = (v29 + 32 * *(a6 + 2));
                v32 = *(v30 + 1);
                *v31 = *v30;
                v31[1] = v32;
              }

              ++*(a6 + 2);
            }
          }
        }

LABEL_19:
        v19 = *(v19 + 8);
        if (v19 == v18)
        {
          v14 = v56;
          goto LABEL_14;
        }
      }

      v51 = 0uLL;
LABEL_35:
      v33 = *(v22 + 44);
      if ((v33 & 0x7FFFFF) != 0)
      {
        v34 = v22 + 16 * ((v33 >> 23) & 1) + ((v33 >> 21) & 0x7F8) + 32 * *(v22 + 40) + 64;
        v35 = v34 + 24 * (v33 & 0x7FFFFF);
        if (a7)
        {
          do
          {
            v36 = mlir::CallGraph::lookupNode(a4, v34);
            if (v36)
            {
              v37 = v36;
            }

            else
            {
              v37 = v17;
            }

            v38 = *(v34 + 8);
            if (v38 != v34)
            {
              v39 = v56;
              do
              {
                while (1)
                {
                  v40 = v38 ? v38 - 8 : 0;
                  if (v39 >= HIDWORD(v56))
                  {
                    break;
                  }

                  v41 = (v55 + 16 * v39);
                  *v41 = v40;
                  v41[1] = v37;
                  LODWORD(v56) = ++v39;
                  v38 = *(v38 + 8);
                  if (v38 == v34)
                  {
                    goto LABEL_38;
                  }
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v39 + 1, 16);
                v42 = (v55 + 16 * v56);
                *v42 = v40;
                v42[1] = v37;
                v39 = v56 + 1;
                LODWORD(v56) = v56 + 1;
                v38 = *(v38 + 8);
              }

              while (v38 != v34);
            }

LABEL_38:
            v34 += 24;
          }

          while (v34 != v35);
        }

        else
        {
          do
          {
            if (!mlir::CallGraph::lookupNode(a4, v34))
            {
              v43 = *(v34 + 8);
              if (v43 != v34)
              {
                v44 = v56;
                do
                {
                  while (1)
                  {
                    v45 = v43 ? v43 - 8 : 0;
                    if (v44 >= HIDWORD(v56))
                    {
                      break;
                    }

                    v46 = (v55 + 16 * v44);
                    *v46 = v45;
                    v46[1] = v17;
                    LODWORD(v56) = ++v44;
                    v43 = *(v43 + 8);
                    if (v43 == v34)
                    {
                      goto LABEL_52;
                    }
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v44 + 1, 16);
                  v47 = (v55 + 16 * v56);
                  *v47 = v45;
                  v47[1] = v17;
                  v44 = v56 + 1;
                  LODWORD(v56) = v56 + 1;
                  v43 = *(v43 + 8);
                }

                while (v43 != v34);
              }
            }

LABEL_52:
            v34 += 24;
          }

          while (v34 != v35);
        }
      }

      goto LABEL_19;
    }
  }

LABEL_10:
  if (v55 != v57)
  {
    free(v55);
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void anonymous namespace::CGUseList::recomputeUses(_anonymous_namespace_::CGUseList *this, mlir::CallGraphNode *a2, mlir::CallGraph *a3)
{
  v5 = a2;
  mlir::CallGraphNode::getCallableRegion(a2);
  llvm::deallocate_buffer(*v4, (8 * *(v4 + 16)));
}

void sub_1DFED52D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  llvm::deallocate_buffer(*(v4 + 24), (16 * *(v4 + 40)));
}

void sub_1DFED52F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  llvm::deallocate_buffer(0, 0);
}

void sub_1DFED531C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, llvm *a12, uint64_t a13, int a14, int a15, char a16)
{
  a12 = 0;
  a13 = 0;
  a14 = 0;
  a10 = &a16;
  llvm::deallocate_buffer(a12, (16 * a14));
}

uint64_t llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<anonymous namespace::CGUseList::CGUseList(mlir::Operation *,mlir::CallGraph &,mlir::SymbolTableCollection &)::$_0>(uint64_t **a1, uint64_t a2, char a3)
{
  v5 = a1[1];
  v6 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  mlir::Region::OpIterator::OpIterator(&v28, v6, 0);
  mlir::Region::OpIterator::OpIterator(&v26, v6, 1);
  v25 = v29;
  result = v29;
  v24 = v28;
  v8 = v27;
  if (v29 != v27)
  {
    while (1)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v10 = v9;
      if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
      {
        break;
      }

      InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
      v22 = v10;
      v23 = InterfaceFor;
      if (!v10)
      {
        goto LABEL_3;
      }

      v12 = *a1;
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v22);
      v21 = mlir::CallGraph::lookupNode(v12, CallableForCallee);
      if (!v21)
      {
        goto LABEL_3;
      }

      InherentAttr = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
      if (!InherentAttr)
      {
        goto LABEL_14;
      }

      if (v10[47])
      {
        v30.var0 = "sym_name";
        v30.var1 = 8;
        InherentAttr = mlir::Operation::getInherentAttr(v10, v30);
        if (v15)
        {
          if (InherentAttr)
          {
            goto LABEL_16;
          }

LABEL_14:
          v19 = 0;
          v20 = InherentAttr;
          goto LABEL_4;
        }
      }

      v31.var0 = "sym_name";
      v31.var1 = 8;
      if (mlir::DictionaryAttr::contains((v10 + 56), v31))
      {
LABEL_16:
        v16 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
        v19 = v10;
        v20 = v16;
        if ((a3 & 1) != 0 || mlir::CallableOpInterface::getResAttrsAttr(&v19))
        {
          if (mlir::SymbolOpInterface::canDiscardOnUseEmpty(&v19))
          {
            v18 = 0;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(v5, &v21, &v18, v17);
          }
        }

        goto LABEL_4;
      }

      v19 = 0;
      v20 = 0;
LABEL_4:
      mlir::Region::OpIterator::operator++(&v28);
      result = v29;
      if (v29 == v8)
      {
        return result;
      }
    }

    v22 = 0;
    v23 = 0;
LABEL_3:
    goto LABEL_4;
  }

  return result;
}

void walkReferencedSymbolNodes(mlir::Block **a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  mlir::SymbolTable::getSymbolUses(a1, &__p);
  v11 = a1[2];
  if (!v11)
  {
    ParentOp = 0;
    v13 = __p;
    v14 = v26;
    if (__p == v26)
    {
      goto LABEL_16;
    }

    while (1)
    {
LABEL_7:
      v21 = v13[1];
      v22 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(a4, &v21, &v22, &v23);
      v15 = v23;
      if (v24 != 1)
      {
        goto LABEL_13;
      }

      InterfaceFor = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, ParentOp, v13[1]);
      v17 = InterfaceFor;
      if (InterfaceFor)
      {
        if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_6;
        }

        InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
      }

      v21 = v17;
      v22 = InterfaceFor;
      if (v17)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v21);
        *(v15 + 8) = mlir::CallGraph::lookupNode(a2, CallableForCallee);
LABEL_13:
        v19 = *(v15 + 8);
        if (v19)
        {
          a5(a6, v19, *v13);
        }
      }

LABEL_6:
      v13 += 2;
      if (v13 == v14)
      {
        goto LABEL_16;
      }
    }
  }

  ParentOp = mlir::Block::getParentOp(v11);
  v13 = __p;
  v14 = v26;
  if (__p != v26)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (v27 == 1)
  {
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 56 * v4;
    v6 = *v5;
    if (*v5 == *a2)
    {
      return v5 + 8;
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
      v5 = *a1 + 56 * (v12 & v3);
      v6 = *v5;
      if (*v5 == *a2)
      {
        return v5 + 8;
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
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  return v5 + 8;
}

_DWORD *anonymous namespace::CGUseList::decrementDiscardableUses(_DWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = *a2;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v6;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *a2;
    }

    v11 = *a2 + 8 * v4;
    while (v6 != v11)
    {
      v12 = *v6++;
      v15 = v12;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v3, &v15);
      --*result;
      for (; v6 != v11; ++v6)
      {
        if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }
      }
    }
  }

LABEL_6:
  if (*(a2 + 32))
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    if (v8)
    {
      v9 = 16 * v8;
      for (i = *(a2 + 24); (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 16)
      {
        v9 -= 16;
        if (!v9)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 24);
    }

    v13 = v7 + 16 * v8;
    while (i != v13)
    {
      v14 = *(i + 8);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](v3, i);
      *result -= v14;
      do
      {
        i += 16;
      }

      while (i != v13 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 56 * v5);
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
        v6 = (result + 56 * (v11 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(56 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 56 * v10 - 56;
    if (v11 >= 0x38)
    {
      v16 = v11 / 0x38 + 1;
      v12 = &result[7 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[7] = -4096;
        v17 += 14;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v30 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v31 = *(a1 + 16) - 1;
              v32 = v31 & ((v30 >> 4) ^ (v30 >> 9));
              v25 = *a1 + 56 * v32;
              v33 = *v25;
              if (*v25 != v30)
              {
                v34 = 0;
                v35 = 1;
                while (v33 != -4096)
                {
                  if (v34)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v33 == -8192;
                  }

                  if (v36)
                  {
                    v34 = v25;
                  }

                  v37 = v32 + v35++;
                  v32 = v37 & v31;
                  v25 = *a1 + 56 * (v37 & v31);
                  v33 = *v25;
                  if (*v25 == v30)
                  {
                    goto LABEL_26;
                  }
                }

                if (v34)
                {
                  v25 = v34;
                }
              }

LABEL_26:
              *(v25 + 8) = 0;
              *(v25 + 16) = 0;
              *v25 = v30;
              *(v25 + 24) = 0;
              *(v25 + 8) = *(v20 + 1);
              *(v20 + 1) = 0;
              *(v25 + 16) = *(v20 + 4);
              *(v20 + 4) = 0;
              v26 = *(v25 + 20);
              *(v25 + 20) = *(v20 + 5);
              *(v20 + 5) = v26;
              v27 = *(v25 + 24);
              *(v25 + 24) = *(v20 + 6);
              *(v20 + 6) = v27;
              *(v25 + 32) = 0;
              *(v25 + 40) = 0;
              *(v25 + 48) = 0;
              *(v25 + 32) = *(v20 + 4);
              *(v20 + 4) = 0;
              *(v25 + 40) = *(v20 + 10);
              *(v20 + 10) = 0;
              v28 = *(v25 + 44);
              *(v25 + 44) = *(v20 + 11);
              *(v20 + 11) = v28;
              v29 = *(v25 + 48);
              *(v25 + 48) = *(v20 + 12);
              *(v20 + 12) = v29;
              ++*(a1 + 8);
              llvm::deallocate_buffer(0, (16 * v29));
            }

            v20 = (v20 + 56);
          }

          while (v20 != (v4 + 56 * v3));
        }

        llvm::deallocate_buffer(v4, (56 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[7 * v10];
    do
    {
      *v12 = -4096;
      v12 += 7;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 56 * v13 - 56;
    if (v14 < 0x38)
    {
      v15 = result;
LABEL_21:
      v24 = &result[7 * v13];
      do
      {
        *v15 = -4096;
        v15 += 7;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x38 + 1;
    v15 = &result[7 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[7] = -4096;
      v22 += 14;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t **llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::recomputeUses(mlir::CallGraphNode *,mlir::CallGraph &)::$_0>(uint64_t **result, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v3 = *(*result + 4);
  if (v3)
  {
    v4 = **result;
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 == v3)
      {
        return result;
      }

      v8 = result[1];
      v7 = result[2];
      if (*v8 == a3)
      {
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7, &v11, v12);
        if (v12[16] != 1)
        {
          return result;
        }
      }

      else
      {
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[]((v7 + 3), &v11);
        ++*result;
      }

      ++*(v4 + 16 * v5 + 8);
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

char *std::vector<mlir::CallGraphNode *>::__assign_with_size[abi:nn200100]<mlir::CallGraphNode **,mlir::CallGraphNode **>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      goto LABEL_21;
    }

    v10 = v6 >> 2;
    if (v6 >> 2 <= a4)
    {
      v10 = a4;
    }

    v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12 >> 61)
    {
LABEL_21:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = 8 * v12;
    result = operator new(8 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    v15 = a3 - a2;
    if (v15)
    {
      result = memcpy(result, a2, v15);
    }

LABEL_17:
    a1[1] = &v14[v15];
    return result;
  }

  v14 = a1[1];
  v16 = v14 - result;
  if (a4 > (v14 - result) >> 3)
  {
    v17 = &a2[v16];
    if (v14 != result)
    {
      result = memmove(result, a2, v16);
      v14 = a1[1];
    }

    v15 = a3 - v17;
    if (v15)
    {
      result = memmove(v14, v17, v15);
    }

    goto LABEL_17;
  }

  v18 = a3 - a2;
  if (v18)
  {
    v19 = result;
    memmove(result, a2, v18);
    result = v19;
  }

  a1[1] = &result[v18];
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            do
            {
              v11 = *(*v7 + v10);
              if (v11 != -8 && v11 != 0)
              {
                v13 = *v11;
                mlir::OpPassManager::~OpPassManager((v11 + 1));
                llvm::deallocate_buffer(v11, (v13 + 17));
              }

              v10 += 8;
            }

            while (8 * v9 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F5B0C480;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B0C480;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
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
      v5 = *(**(a1 + 48) + 8 * add);
      v6 = *(a1 + 40);
      v7 = v6[1];
      v8 = **v6;
      v9 = (*v6)[1];
      if (v8 == v9)
      {
        v11 = **v6;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v6;
      }

      v12 = (v11 - v8);
      v13 = mlir::Inliner::Impl::optimizeCallable(v7, v5, v7[1] + 24 * v12);
      atomic_store(0, &(**v6)[v12]);
      if ((v13 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
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
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  mlir::OpPassManager::OpPassManager(buffer + 1, a5);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::CallGraphSCC &)>::callback_fn<mlir::Inliner::doInlining(void)::$_0>(uint64_t a1, mlir::CallGraphNode ***a2, uint64_t a3, unint64_t a4)
{
  v165[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = *(a1 + 8);
  v145 = *(a1 + 16);
  v142 = **(a1 + 24);
  v144 = *a1;
  v146 = *(v5 + 424);
  v7 = *a2;
  v8 = a2[1];
  v158 = v160;
  *v159 = 0x400000000;
  if (v7 == v8)
  {
LABEL_20:
    v162 = 0;
    v161 = 0u;
    v163 = v165;
    v164 = 0x100000000;
    if (v7 == v8)
    {
LABEL_21:
      v158 = v160;
      *v159 = 0x800000000;
      v15 = *(v5 + 160);
      if (v15)
      {
        v16 = operator new(16 * v15);
        v17 = v16;
        v18 = &v16[16 * v15];
        v19 = v16;
        if (((v15 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_242;
        }

        v20 = ((v15 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
        v19 = &v16[16 * (v20 & 0x1FFFFFFFFFFFFFFELL)];
        v21 = v16 + 16;
        v22 = v20 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v21 - 16) = 0;
          *v21 = 0;
          *(v21 - 8) = 0;
          v21[8] = 0;
          v21 += 32;
          v22 -= 2;
        }

        while (v22);
        if (v20 != (v20 & 0x1FFFFFFFFFFFFFFELL))
        {
LABEL_242:
          do
          {
            *v19 = 0;
            v19[8] = 0;
            v19 += 16;
          }

          while (v19 != v18);
        }

        v23 = 0;
        v24 = &v16[16 * v15];
        while (1)
        {
          v39 = *(v5 + 152) + 32 * v23;
          if (DWORD2(v161))
          {
            if (v162)
            {
              v40 = *(v39 + 16);
              v41 = ((v40 >> 4) ^ (v40 >> 9)) & (v162 - 1);
              v42 = *(v161 + 8 * v41);
              if (v42 == v40)
              {
LABEL_60:
                if (v41 != v162)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v65 = 1;
                while (v42 != -4096)
                {
                  v66 = v41 + v65++;
                  v41 = v66 & (v162 - 1);
                  v42 = *(v161 + 8 * v41);
                  if (v42 == v40)
                  {
                    goto LABEL_60;
                  }
                }
              }
            }
          }

          else
          {
            if (v164)
            {
              v43 = 8 * v164;
              v44 = v163;
              while (*v44 != *(v39 + 16))
              {
                v44 += 8;
                v43 -= 8;
                if (!v43)
                {
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v44 = v163;
            }

            if (v44 != &v163[8 * v164])
            {
              goto LABEL_56;
            }
          }

LABEL_69:
          v45 = *(v39 + 16);
          v150 = *v39;
          *v151 = v45;
          if (*&v17[16 * v23 + 8])
          {
            v46 = *&v17[16 * v23];
            do
            {
              v47 = v158 + 24 * v46;
              if (*v47 == v151[1])
              {
                goto LABEL_55;
              }

              v46 = *(v47 + 1);
            }

            while ((v47[16] & 1) != 0);
          }

          v147 = *&v17[16 * v23];
          if (mlir::Inliner::Impl::shouldInline(v6, &v150))
          {
            break;
          }

LABEL_55:
          v15 = *(v5 + 160);
LABEL_56:
          if (++v23 >= v15)
          {
            goto LABEL_126;
          }
        }

        v48 = *(&v150 + 1);
        v148 = v150;
        v49 = *(v5 + 160);
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v151[1]);
        v51 = v151[1];
        v52 = *(mlir::CallGraphNode::getCallableRegion(v151[1]) + 16);
        if (mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v52))
        {
          if (*(v52 + 47) && (v168.var0 = "sym_name", v168.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(v52, v168), (v53 & 1) != 0))
          {
            if (InherentAttr)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v169.var0 = "sym_name";
            v169.var1 = 8;
            if (mlir::DictionaryAttr::contains((v52 + 56), v169))
            {
LABEL_78:
              v55 = *(v145 + 4);
              if (v55)
              {
                v56 = *v145;
                v57 = (v55 - 1) & ((v51 >> 4) ^ (v51 >> 9));
                v58 = *(*v145 + 16 * v57);
                if (v58 == v51)
                {
LABEL_80:
                  if (v57 != v55)
                  {
                    v59 = *(v56 + 16 * v57 + 8) == 1;
                    v60 = CallableRegion[2];
                    if (!v60)
                    {
                      goto LABEL_89;
                    }

LABEL_99:
                    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v60);
                    goto LABEL_100;
                  }
                }

                else
                {
                  v67 = 1;
                  while (v58 != -4096)
                  {
                    v68 = v57 + v67++;
                    v57 = v68 & (v55 - 1);
                    v58 = *(v56 + 16 * v57);
                    if (v58 == v51)
                    {
                      goto LABEL_80;
                    }
                  }
                }
              }

              goto LABEL_98;
            }
          }
        }

        if (mlir::isMemoryEffectFree(v52, v53))
        {
          v61 = *(v52 + 36);
          v62 = v52 - 16;
          if (!v61)
          {
            v62 = 0;
          }

          *&v155[0] = v62;
          *(&v155[0] + 1) = v61;
          mlir::ResultRange::getUses(v155, v152);
          v63 = v154;
          if (v153 != v154)
          {
            v155[0] = *v152;
            v155[1] = *&v152[16];
            v156 = v153;
            mlir::ResultRange::UseIterator::operator++(v155);
            v59 = v156 == v63;
            v60 = CallableRegion[2];
            if (v60)
            {
              goto LABEL_99;
            }

LABEL_89:
            InterfaceFor = 0;
LABEL_100:
            if (mlir::inlineCall(v5, v148, v48, v60, InterfaceFor, CallableRegion, !v59))
            {
              *v152 = v151[1];
              *&v152[8] = v147;
              v69 = v159[0];
              v70 = v158;
              if (v159[0] >= v159[1])
              {
                if (v158 <= v152 && v158 + 24 * v159[0] > v152)
                {
                  v80 = v152 - v158;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v158, v160, v159[0] + 1, 24);
                  v70 = v158;
                  v71 = v158 + v80;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v158, v160, v159[0] + 1, 24);
                  v71 = v152;
                  v70 = v158;
                }
              }

              else
              {
                v71 = v152;
              }

              v72 = v70 + 24 * v159[0];
              v73 = *v71;
              *(v72 + 2) = *(v71 + 2);
              *v72 = v73;
              ++v159[0];
              for (; v49 != *(v5 + 160); ++v49)
              {
                while (v18 < v24)
                {
                  *v18 = v69;
                  v18[8] = 1;
                  *(v18 + 9) = *v149;
                  *(v18 + 3) = *&v149[3];
                  v18 += 16;
                  if (++v49 == *(v5 + 160))
                  {
                    goto LABEL_120;
                  }
                }

                v74 = v18 - v17;
                v75 = (v18 - v17) >> 4;
                v76 = v75 + 1;
                if ((v75 + 1) >> 60)
                {
                  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                }

                if ((v24 - v17) >> 3 > v76)
                {
                  v76 = (v24 - v17) >> 3;
                }

                if ((v24 - v17) >= 0x7FFFFFFFFFFFFFF0)
                {
                  v77 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v77 = v76;
                }

                if (v77)
                {
                  if (v77 >> 60)
                  {
                    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                  }

                  v78 = operator new(16 * v77);
                }

                else
                {
                  v78 = 0;
                }

                v79 = &v78[16 * v75];
                v24 = &v78[16 * v77];
                *v79 = v69;
                v79[8] = 1;
                *(v79 + 9) = *v149;
                *(v79 + 3) = *&v149[3];
                v18 = v79 + 16;
                memcpy(v78, v17, v74);
                if (v17)
                {
                  operator delete(v17);
                }

                v17 = v78;
              }

LABEL_120:
              v157 = v151[0];
              *(&v155[0] + 1) = v145;
              memset(v152, 0, 20);
              llvm::deallocate_buffer(*v152, (16 * *&v152[16]));
            }

            v6 = v144;
            goto LABEL_55;
          }
        }

LABEL_98:
        v59 = 0;
        v60 = CallableRegion[2];
        if (v60)
        {
          goto LABEL_99;
        }

        goto LABEL_89;
      }

      v17 = 0;
LABEL_126:
      v81 = a2;
      if (!v164)
      {
LABEL_228:
        *(v5 + 160) = 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v158 != v160)
        {
          free(v158);
        }

        if (v163 != v165)
        {
          free(v163);
        }

        llvm::deallocate_buffer(v161, (8 * v162));
      }

      v82 = v163;
      v83 = &v163[8 * v164];
LABEL_130:
      v84 = *v82;
      v86 = *v81;
      v85 = v81[1];
      if (*v81 != v85)
      {
        while (*v86 != v84)
        {
          if (++v86 == v85)
          {
            goto LABEL_144;
          }
        }
      }

      if (v86 == v85)
      {
        goto LABEL_144;
      }

      v87 = v85 - (v86 + 1);
      if (v85 != v86 + 1)
      {
        v88 = *v82;
        memmove(v86, v86 + 1, v85 - (v86 + 1));
        v84 = v88;
      }

      v81[1] = (v86 + v87);
      v89 = v81[3];
      v91 = &v89[1];
      v90 = v89[1];
      v92 = v89[3].u32[0];
      v93 = v84 >> 4;
      if (!v92)
      {
        goto LABEL_192;
      }

      v94 = v92 - 1;
      v95 = (v92 - 1) & (v93 ^ (v84 >> 9));
      v96 = &v90[2 * v95];
      v97 = *v96;
      if (v84 == *v96)
      {
        v98 = *(v96 + 2);
        v99 = *v90;
        if (*v90)
        {
          goto LABEL_157;
        }

        goto LABEL_140;
      }

      v114 = 0;
      v115 = 1;
      while (v97 != -4096)
      {
        if (v114)
        {
          v116 = 0;
        }

        else
        {
          v116 = v97 == -8192;
        }

        if (v116)
        {
          v114 = v96;
        }

        v117 = v95 + v115++;
        v95 = v117 & v94;
        v96 = &v90[2 * v95];
        v97 = *v96;
        if (v84 == *v96)
        {
          v98 = *(v96 + 2);
LABEL_156:
          v94 = v92 - 1;
          v99 = *v90;
          if (*v90)
          {
LABEL_157:
            v109 = 0;
            v110 = 0;
            v111 = 1;
            v100 = v90;
            while (v99 != -4096)
            {
              if (v110)
              {
                v112 = 0;
              }

              else
              {
                v112 = v99 == -8192;
              }

              if (v112)
              {
                v110 = v100;
              }

              v113 = v109 + v111++;
              v109 = v113 & v94;
              v100 = &v90[2 * (v113 & v94)];
              v99 = *v100;
              if (!*v100)
              {
                goto LABEL_141;
              }
            }

            if (v110)
            {
              v100 = v110;
            }

            goto LABEL_179;
          }

LABEL_140:
          v100 = v90;
LABEL_141:
          *(v100 + 2) = v98;
          v101 = v89[3].i32[0];
          if (v101)
          {
            v102 = v101 - 1;
            v103 = (v101 - 1) & (v93 ^ (v84 >> 9));
            v104 = v90[2 * v103];
            if (v84 == v104)
            {
LABEL_143:
              v90[2 * v103] = -8192;
              v89[2] = vadd_s32(v89[2], 0x1FFFFFFFFLL);
            }

            else
            {
              v119 = 1;
              while (v104 != -4096)
              {
                v120 = v103 + v119++;
                v103 = v120 & v102;
                v104 = v90[2 * v103];
                if (v84 == v104)
                {
                  goto LABEL_143;
                }
              }
            }
          }

LABEL_144:
          v105 = *(v5 + 56);
          if (*(v5 + 64) != v105)
          {
            goto LABEL_128;
          }

          v106 = *(v5 + 76);
          if (!v106)
          {
LABEL_149:
            if (v106 < *(v5 + 72))
            {
              *(v5 + 76) = v106 + 1;
              *(v105 + 8 * v106) = v84;
              goto LABEL_129;
            }

LABEL_128:
            llvm::SmallPtrSetImplBase::insert_imp_big((v5 + 56), v84);
            goto LABEL_129;
          }

          v107 = 8 * v106;
          v108 = *(v5 + 56);
          while (*v108 != v84)
          {
            ++v108;
            v107 -= 8;
            if (!v107)
            {
              goto LABEL_149;
            }
          }

LABEL_129:
          if (++v82 == v83)
          {
            goto LABEL_228;
          }

          goto LABEL_130;
        }
      }

      v121 = v114 ? v114 : v96;
      v122 = v89[2].i32[0];
      if (4 * v122 + 4 < 3 * v92)
      {
        if (v92 + ~v122 - v89[2].i32[1] > v92 >> 3)
        {
          v89[2].i32[0] = v122 + 1;
          if (*v121 == -4096)
          {
LABEL_155:
            v98 = 0;
            *v121 = v84;
            *(v121 + 2) = 0;
            v92 = v89[3].u32[0];
            if (v92)
            {
              goto LABEL_156;
            }

            v100 = 0;
LABEL_179:
            v118 = v89[2].i32[0];
            if (4 * v118 + 4 >= 3 * v92)
            {
              v92 *= 2;
            }

            else if (v92 + ~v118 - v89[2].i32[1] > v92 >> 3)
            {
              v89[2].i32[0] = v118 + 1;
              if (*v100 == -4096)
              {
LABEL_183:
                *v100 = 0;
                *(v100 + 2) = 0;
                goto LABEL_141;
              }

LABEL_182:
              --v89[2].i32[1];
              goto LABEL_183;
            }

            v132 = v84;
            llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(v91, v92);
            v90 = v89[1];
            v133 = v89[3].i32[0];
            if (v133)
            {
              v134 = *v90;
              v100 = v89[1];
              if (*v90)
              {
                v135 = 0;
                v136 = 0;
                v137 = v133 - 1;
                v138 = 1;
                v100 = v89[1];
                while (v134 != -4096)
                {
                  if (v136)
                  {
                    v139 = 0;
                  }

                  else
                  {
                    v139 = v134 == -8192;
                  }

                  if (v139)
                  {
                    v136 = v100;
                  }

                  v140 = v135 + v138++;
                  v135 = v140 & v137;
                  v100 = &v90[2 * (v140 & v137)];
                  v134 = *v100;
                  v81 = a2;
                  if (!*v100)
                  {
                    goto LABEL_220;
                  }
                }

                if (v136)
                {
                  v100 = v136;
                }

                v81 = a2;
              }
            }

            else
            {
              v100 = 0;
            }

LABEL_220:
            v84 = v132;
            ++v89[2].i32[0];
            if (*v100 == -4096)
            {
              goto LABEL_183;
            }

            goto LABEL_182;
          }

LABEL_154:
          --v89[2].i32[1];
          goto LABEL_155;
        }
      }

      else
      {
LABEL_192:
        v92 *= 2;
      }

      v123 = v84;
      llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::grow(v91, v92);
      v90 = v89[1];
      v124 = v89[3].i32[0];
      if (v124)
      {
        v84 = v123;
        v125 = v124 - 1;
        v126 = v125 & (v93 ^ (v123 >> 9));
        v121 = &v90[2 * v126];
        v127 = *v121;
        if (v123 != *v121)
        {
          v128 = 0;
          v129 = 1;
          while (v127 != -4096)
          {
            if (v128)
            {
              v130 = 0;
            }

            else
            {
              v130 = v127 == -8192;
            }

            if (v130)
            {
              v128 = v121;
            }

            v131 = v126 + v129++;
            v126 = v131 & v125;
            v121 = &v90[2 * (v131 & v125)];
            v127 = *v121;
            v84 = v123;
            v81 = a2;
            if (v123 == *v121)
            {
              goto LABEL_205;
            }
          }

          if (v128)
          {
            v121 = v128;
          }

          v84 = v123;
          v81 = a2;
        }
      }

      else
      {
        v121 = 0;
        v84 = v123;
      }

LABEL_205:
      ++v89[2].i32[0];
      if (*v121 == -4096)
      {
        goto LABEL_155;
      }

      goto LABEL_154;
    }

    while (1)
    {
      v158 = *v7;
      if (mlir::CallGraphNode::isExternal(v158))
      {
        goto LABEL_29;
      }

      v26 = v158;
      v27 = *(mlir::CallGraphNode::getCallableRegion(v158) + 16);
      if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v27))
      {
        break;
      }

      if (*(v27 + 47) && (v166.var0 = "sym_name", v166.var1 = 8, v29 = mlir::Operation::getInherentAttr(v27, v166), (v28 & 1) != 0))
      {
        if (!v29)
        {
          break;
        }
      }

      else
      {
        v167.var0 = "sym_name";
        v167.var1 = 8;
        if ((mlir::DictionaryAttr::contains((v27 + 56), v167) & 1) == 0)
        {
          break;
        }
      }

      v30 = *(v145 + 4);
      if (v30)
      {
        v31 = *v145;
        v32 = (v30 - 1) & ((v26 >> 4) ^ (v26 >> 9));
        v33 = *(*v145 + 16 * v32);
        if (v33 == v26)
        {
LABEL_37:
          if (v32 != v30 && !*(v31 + 16 * v32 + 8))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v37 = 1;
          while (v33 != -4096)
          {
            v38 = v32 + v37++;
            v32 = v38 & (v30 - 1);
            v33 = *(v31 + 16 * v32);
            if (v33 == v26)
            {
              goto LABEL_37;
            }
          }
        }
      }

LABEL_28:
      v25 = mlir::CallGraphNode::getCallableRegion(v158);
      collectCallOps(*(v25 + 8), v25, v158, v146, *(v5 + 432), (v5 + 152), 0);
LABEL_29:
      if (++v7 == v8)
      {
        goto LABEL_21;
      }
    }

    if (mlir::isMemoryEffectFree(v27, v28))
    {
      v34 = *(v27 + 36);
      if (v34)
      {
        v35 = v27 - 16;
      }

      else
      {
        v35 = 0;
      }

      if (!v34)
      {
LABEL_49:
        llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(&v161, &v158);
        goto LABEL_29;
      }

      v36 = 0;
      while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36))
      {
        if (v34 == ++v36)
        {
          goto LABEL_49;
        }
      }
    }

    goto LABEL_28;
  }

  do
  {
    v9 = *v7;
    if (!mlir::CallGraphNode::isExternal(*v7) && !mlir::CallGraphNode::hasChildren(v9))
    {
      v10 = *(mlir::CallGraphNode::getCallableRegion(v9) + 16);
      {
      }

      if ((*(**(v10 + 48) + 32))(*(v10 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        v11 = v159[0];
        if (v159[0] >= v159[1])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v158, v160, v159[0] + 1, 8);
          v11 = v159[0];
        }

        *(v158 + v11) = v9;
        ++v159[0];
      }
    }

    ++v7;
  }

  while (v7 != v8);
  v12 = v158;
  if (!v159[0])
  {
LABEL_16:
    v14 = 0;
    if (v12 == v160)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = mlir::Inliner::Impl::optimizeSCCAsync(v6, v158, v159[0], v142);
  v12 = v158;
  if (v13)
  {
    if (v159[0])
    {
    }

    goto LABEL_16;
  }

  v14 = 1;
  if (v158 != v160)
  {
LABEL_17:
    free(v12);
  }

LABEL_18:
  if ((v14 & 1) == 0)
  {
    v146 = *(v5 + 424);
    v7 = *a2;
    v8 = a2[1];
    goto LABEL_20;
  }

  return 0;
}

void anonymous namespace::CGUseList::eraseNode(_anonymous_namespace_::CGUseList *this, mlir::CallGraphNode *a2)
{
  v2 = *(a2 + 14);
  if (v2)
  {
    v3 = *(a2 + 6);
    v4 = 8 * v2;
    do
    {
      if ((*v3 & 6) == 4)
      {
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  v5 = *(this + 3);
  v6 = *(this + 10);
  if (v6)
  {
    v7 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = v5 + 56 * v7;
    v9 = *v8;
    if (*v8 == a2)
    {
      goto LABEL_13;
    }

    v10 = 1;
    while (v9 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v6 - 1);
      v8 = v5 + 56 * v7;
      v9 = *v8;
      if (*v8 == a2)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = v5 + 56 * v6;
LABEL_13:
  llvm::deallocate_buffer(*(v8 + 32), (16 * *(v8 + 48)));
}

uint64_t *llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::dropCallUses(mlir::CallGraphNode *,mlir::Operation *,mlir::CallGraph &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  result = a1[1];
  v4 = *v3;
  v5 = *(v3 + 4);
  v10 = a2;
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v4 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v5)
      {
        --*(v4 + 16 * v6 + 8);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](result, &v10);
        --*result;
      }
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & (v5 - 1);
        v7 = *(v4 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Operation *a3)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, uint64_t a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, *(a2 + 16));
  if (result)
  {
    v3 = *(*result + 24);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::isLegalToInline(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  result = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t mlir::InlinerInterface::shouldAnalyzeRecursively(mlir::InlinerInterface *this, mlir::Operation *a2)
{
  InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2);
  if (!InterfaceFor)
  {
    return 1;
  }

  v3 = *(*InterfaceFor + 40);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::InlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v3 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(this, a2) + 48);

  return v3();
}

uint64_t mlir::InlinerInterface::handleTerminator(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 56);

  return v2();
}

uint64_t mlir::InlinerInterface::handleArgument(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 72);

  return v4();
}

uint64_t mlir::InlinerInterface::handleResult(mlir::detail::DialectInterfaceCollectionBase *a1, int a2, int a3, Operation *a4)
{
  v4 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a4) + 80);

  return v4();
}

uint64_t mlir::InlinerInterface::processInlinedCallBlocks(mlir::detail::DialectInterfaceCollectionBase *a1, Operation *a2)
{
  v2 = *(*mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, a2) + 88);

  return v2();
}

uint64_t inlineRegionImpl(mlir::InlinerInterface *a1, uint64_t *a2, mlir::Block *this, char *a4, mlir::IRMapping *a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*a2 == a2)
  {
    return 0;
  }

  v20 = a2[1];
  v21 = v20 - 8;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = *(v21 + 56);
  if (v23 != v22)
  {
    v24 = *(a5 + 4);
    if (v24)
    {
      v25 = *a5;
      v26 = v24 - 1;
      while (1)
      {
        v27 = HIDWORD(*v22);
        v28 = 0x9DDFEA08EB382D69 * ((8 * *v22 - 0xAE502812AA7333) ^ v27);
        v29 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v27 ^ (v28 >> 47) ^ v28)) >> 32) >> 15) ^ (-348639895 * (v27 ^ (v28 >> 47) ^ v28)))) & v26;
        v30 = *(v25 + 16 * v29);
        if (v30 != *v22)
        {
          break;
        }

LABEL_8:
        if (++v22 == v23)
        {
          goto LABEL_15;
        }
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & v26;
        v30 = *(v25 + 16 * (v32 & v26));
        if (v30 == *v22)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

LABEL_15:
  Parent = mlir::Block::getParent(this);
  result = (*(*a1 + 32))(a1, Parent, a2, a13, a5);
  if (result)
  {
    result = isLegalToInline(a1, a2, Parent, a13, a5);
    if (result)
    {
      v36 = mlir::Block::getParent(this);
      v96[0] = mlir::Region::getContext(v36);
      v96[1] = 0;
      v93 = this;
      v97 = this;
      v98 = a4;
      v37 = a2[2];
      if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v37))
      {
        if (v37)
        {
          InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v37);
LABEL_22:
          v91 = v37;
          if (a14)
          {
            v38 = v37 == 0;
          }

          else
          {
            v38 = 1;
          }

          v39 = !v38;
          v89 = v39;
          if (!v38)
          {
            handleArgumentImpl(a1, v96, a14, a15, v37, InterfaceFor, a5);
          }

          v40 = v93;
          v41 = mlir::Block::splitBlock(v93, a4);
          v42 = (v41 + 8);
          if (a13)
          {
            mlir::Region::cloneInto(a2, Parent, v42, a5);
          }

          else
          {
            v43 = a2[1];
            if (v43 != a2 && v42 != a2)
            {
              llvm::ilist_traits<mlir::Block>::transferNodesFromList(Parent, a2, a2[1], a2);
              v44 = *a2;
              v45 = *v43;
              *(v45 + 8) = a2;
              *a2 = v45;
              v46 = *v42;
              *(v44 + 1) = v42;
              *v43 = v46;
              *(v46 + 8) = v43;
              *v42 = v44;
            }
          }

          v47 = *(v93 + 2);
          v48 = (v47 - 8);
          if (v47)
          {
            v49 = (v47 - 8);
          }

          else
          {
            v49 = 0;
          }

          v92 = v49;
          if ((a12 & 1) != 0 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
          {
            remapInlinedLocations(v47, v42, a11);
          }

          if ((a13 & 1) == 0)
          {
            v99 = a5;
            if (v47 != v42)
            {
              v50 = v47;
              do
              {
                v51 = v50 - 1;
                if (!v50)
                {
                  v51 = 0;
                }

                v52 = v51[5];
                v53 = v51 + 4;
                if (v52 != v51 + 4)
                {
                  do
                  {
                    v54 = v52[1];
                    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                    mlir::detail::walk<mlir::ForwardIterator>(v55, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<remapInlinedOperands(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>,mlir::IRMapping &)::$_0>, &v99, 1);
                    v52 = v54;
                  }

                  while (v54 != v53);
                }

                v50 = v50[1];
              }

              while (v50 != v42);
            }

            v48 = (v47 - 8);
            v40 = v93;
          }

          if (a14)
          {
            (*(*a1 + 88))(a1, a14, v47, v42);
          }

          (*(*a1 + 16))(a1, v47, v42);
          if (*(v47 + 8) == v42)
          {
            mlir::Block::getTerminator(v48);
            v71 = v70;
            v72 = *(v70 + 16);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            v97 = v72;
            v98 = v73;
            if (v89)
            {
              if ((*(v71 + 46) & 0x80) != 0)
              {
                v74 = *(v71 + 72);
                v75 = *(v71 + 68);
              }

              else
              {
                v74 = 0;
                v75 = 0;
              }

              mlir::ValueRange::ValueRange(&v99, v74, v75);
              handleResultImpl(a1, v96, a14, a15, v91, InterfaceFor, v99, v100);
            }

            (*(*a1 + 64))(a1, v71, a6, a7);
            mlir::Operation::erase(v71, v76);
            v77 = (v41 + 32);
            if (*(v41 + 4) != v41 + 32 && v41 != v48)
            {
              v78 = (v47 + 24);
              v79 = *(v41 + 5);
              llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v47 + 24, (v41 + 32), v79, (v41 + 32));
              if (v79 != v77)
              {
                v80 = *v77;
                v81 = *v79;
                *(v81 + 8) = v77;
                *v77 = v81;
                v82 = *v78;
                *(v80 + 8) = v78;
                *v79 = v82;
                *(v82 + 8) = v79;
                *v78 = v80;
              }
            }

            mlir::Block::erase(v41);
            i = v92;
          }

          else
          {
            v99 = 0;
            v100 = a6;
            v101 = 0;
            if (a7)
            {
              v56 = 0;
              v57 = 0;
              do
              {
                v95 = mlir::ValueRange::dereference_iterator(&v100, v57);
                v58 = mlir::TypeRange::dereference_iterator(a9, v56);
                Loc = mlir::Value::getLoc(&v95);
                v60 = mlir::Block::addArgument(v41, v58, Loc);
                v61 = v95;
                while (1)
                {
                  v62 = *v61;
                  if (!*v61)
                  {
                    break;
                  }

                  v63 = v62[1];
                  if (v63)
                  {
                    v64 = *v62;
                    *v63 = *v62;
                    if (v64)
                    {
                      *(v64 + 8) = v63;
                    }
                  }

                  v62[3] = v60;
                  v62[1] = v60;
                  v65 = *v60;
                  *v62 = *v60;
                  if (v65)
                  {
                    *(v65 + 8) = v62;
                  }

                  *v60 = v62;
                }

                v56 = v99 + 1;
                v57 = v101 + 1;
                v99 = (v99 + 1);
                v101 = v57;
              }

              while (v57 != a7);
            }

            v66 = *(v41 + 5);
            v97 = v41;
            v98 = v66;
            if (v89)
            {
              mlir::ValueRange::ValueRange(&v99, *(v41 + 6), (*(v41 + 7) - *(v41 + 6)) >> 3);
              handleResultImpl(a1, v96, a14, a15, v91, InterfaceFor, v99, v100);
            }

            for (i = v92; v47 != v42; v47 = *(v47 + 8))
            {
              if (v47)
              {
                v68 = (v47 - 8);
              }

              else
              {
                v68 = 0;
              }

              mlir::Block::getTerminator(v68);
              (*(*a1 + 56))(a1, v69, v41);
            }
          }

          v83 = (i + 32);
          if (*(i + 4) != (i + 32) && i != v40)
          {
            v84 = (v40 + 32);
            v85 = *(i + 5);
            llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v84, i + 32, v85, i + 32);
            if (v85 != v83)
            {
              v86 = *v83;
              v87 = *v85;
              *(v87 + 8) = v83;
              *v83 = v87;
              v88 = *v84;
              *(v86 + 8) = v84;
              *v85 = v88;
              *(v88 + 8) = v85;
              *v84 = v86;
            }
          }

          mlir::Block::erase(i);
          return 1;
        }
      }

      else
      {
        v37 = 0;
      }

      InterfaceFor = 0;
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t mlir::inlineCall(mlir::InlinerInterface *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int a7)
{
  v132[8] = *MEMORY[0x1E69E9840];
  v120 = a2;
  v121 = a3;
  v119[0] = a4;
  v119[1] = a5;
  if (*a6 == a6)
  {
    return 0;
  }

  v9 = a6[1];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(v119);
  v13 = v12;
  v15 = mlir::CallOpInterface::getArgOperands(&v120);
  v16 = v14;
  v130 = v132;
  v131 = 0x800000000;
  if (v14 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v132, v14, 8);
    v17 = &v130[8 * v131];
    if (v16 >= 0xD && (v17 >= v15 + 32 * v16 || v15 + 24 >= &v130[8 * v16 + 8 * v131]))
    {
      v19 = v16 & 3;
      if ((v16 & 3) == 0)
      {
        v19 = 4;
      }

      v18 = v16 - v19;
      v20 = &v17[8 * v18];
      v21 = (v15 + 88);
      v22 = (v17 + 16);
      v23 = v18;
      do
      {
        v24 = v21 - 8;
        v25 = vld4q_f64(v24);
        v26 = vld4q_f64(v21);
        *(v22 - 1) = v25;
        *v22 = v26;
        v21 += 16;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      v17 = v20;
      goto LABEL_19;
    }

LABEL_13:
    v18 = 0;
LABEL_19:
    v27 = v16 - v18;
    v28 = (v15 + 32 * v18 + 24);
    do
    {
      v29 = *v28;
      v28 += 4;
      *v17 = v29;
      v17 += 8;
      --v27;
    }

    while (v27);
    v30 = v131;
    goto LABEL_22;
  }

  if (v14)
  {
    v17 = v132;
    goto LABEL_13;
  }

  v30 = 0;
LABEL_22:
  v31 = v30 + v16;
  LODWORD(v131) = v31;
  v32 = *(v120 + 36);
  if (v32)
  {
    v33 = v120 - 16;
  }

  else
  {
    v33 = 0;
  }

  v127 = v129;
  v128 = 0x800000000;
  if (v32 >= 9)
  {
    v34 = a1;
    v35 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v32, 8);
    v36 = v128;
    v37 = v127;
    goto LABEL_29;
  }

  if (v32)
  {
    v34 = a1;
    v35 = v13;
    v36 = 0;
    v37 = v129;
LABEL_29:
    v38 = 0;
    v39 = &v37[8 * v36];
    do
    {
      *&v39[8 * v38] = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v38);
      ++v38;
    }

    while (v32 != v38);
    v40 = v128;
    v31 = v131;
    v13 = v35;
    a1 = v34;
    goto LABEL_32;
  }

  v40 = 0;
LABEL_32:
  v41 = (v40 + v32);
  LODWORD(v128) = v41;
  if (v31 == ((*(v10 + 56) - *(v10 + 48)) >> 3) && v13 == v41)
  {
    v124 = v126;
    v125 = 0x400000000;
    v105 = v13;
    v43 = v13 + v31;
    if (v43 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v43, 8);
    }

    v44 = v120;
    v116[0] = mlir::Attribute::getContext((v120 + 24));
    v116[1] = 0;
    v45 = *(v44 + 16);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v117 = v45;
    v118 = v47;
    v48 = *(v120 + 48);
    if (*(v48 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v108[0] = *(v48 + 8);
      Values = mlir::SparseElementsAttr::getValues(v108);
      v50 = *(a1 + 6);
      v106 = a7;
      if (!v50)
      {
LABEL_50:
        v58 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      Values = *(v48 + 24);
      v50 = *(a1 + 6);
      v106 = a7;
      if (!v50)
      {
        goto LABEL_50;
      }
    }

    v51 = *(a1 + 1);
    v52 = 0x9DDFEA08EB382D69 * ((8 * Values - 0xAE502812AA7333) ^ HIDWORD(Values));
    v53 = 0x9DDFEA08EB382D69 * (HIDWORD(Values) ^ (v52 >> 47) ^ v52);
    v54 = 1;
    v55 = (-348639895 * ((v53 >> 47) ^ v53)) & (v50 - 1);
    v56 = *(v51 + 8 * v55);
    if (v56 == -8192)
    {
      goto LABEL_48;
    }

    while (1)
    {
      if (v56 == -4096)
      {
        goto LABEL_50;
      }

      if (*(v56 + 8) == Values)
      {
        break;
      }

      do
      {
LABEL_48:
        v57 = v55 + v54++;
        v55 = v57 & (v50 - 1);
        v56 = *(v51 + 8 * v55);
      }

      while (v56 == -8192);
    }

    if (v55 == v50)
    {
      v58 = 0;
    }

    else
    {
      v58 = v56;
    }

LABEL_54:
    v108[0] = 0;
    v108[1] = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    if (v131)
    {
      v59 = 0;
      v60 = 8 * v131;
      do
      {
        v62 = *(*(v10 + 48) + v59);
        v61 = *&v130[v59];
        if ((*(v61 + 8) & 0xFFFFFFFFFFFFFFF8) != (v62[1] & 0xFFFFFFFFFFFFFFF8))
        {
          if (!v58 || (v63 = (*(*v58 + 64))(v58, v116, *&v130[v59])) == 0)
          {
            if (v125)
            {
              v82 = v124;
              v83 = (v124 + 8 * v125);
              do
              {
                v84 = *v82;
                v85 = *(*v82 - 2);
                if (v85)
                {
                  v86 = *(*(v84 + 9) + 24);
                  do
                  {
                    v87 = v85[1];
                    if (v87)
                    {
                      v88 = *v85;
                      *v87 = *v85;
                      if (v88)
                      {
                        *(v88 + 8) = v87;
                      }
                    }

                    v85[3] = v86;
                    v85[1] = v86;
                    v89 = *v86;
                    *v85 = *v86;
                    if (v89)
                    {
                      *(v89 + 8) = v85;
                    }

                    *v86 = v85;
                    v85 = *(v84 - 2);
                  }

                  while (v85);
                }

                mlir::Operation::erase(v84, v46);
                ++v82;
              }

              while (v82 != v83);
            }

            goto LABEL_109;
          }

          v64 = v125;
          if (v125 >= HIDWORD(v125))
          {
            v65 = v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v63 = v65;
            v64 = v125;
          }

          *(v124 + v64) = v63;
          LODWORD(v125) = v125 + 1;
          v61 = v63 - 16;
        }

        v123[0] = v62;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v108, v123) = v61;
        v59 += 8;
      }

      while (v60 != v59);
    }

    v66 = *(v120 + 16);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v69 = *(v68 + 8);
    v117 = v66;
    v118 = v69;
    v70 = v128;
    if (v128)
    {
      if (v58)
      {
        v71 = 0;
        while (1)
        {
          v73 = *(v127 + v71);
          if (*(ArgOperands + 8 * v71) != (v73[1] & 0xFFFFFFFFFFFFFFF8))
          {
            v74 = (*(*v58 + 64))(v58, v116, *(v127 + v71));
            if (!v74)
            {
              goto LABEL_98;
            }

            v75 = v74;
            v76 = v125;
            if (v125 >= HIDWORD(v125))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
              v76 = v125;
            }

            *(v124 + v76) = v75;
            LODWORD(v125) = v125 + 1;
            v77 = (v75 - 16);
            v123[0] = (v75 - 16);
            while (1)
            {
              v78 = *v73;
              if (!*v73)
              {
                break;
              }

              v79 = v78[1];
              if (v79)
              {
                v80 = *v78;
                *v79 = *v78;
                if (v80)
                {
                  *(v80 + 8) = v79;
                }
              }

              v78[3] = v77;
              v78[1] = v77;
              v81 = *v77;
              *v78 = *v77;
              if (v81)
              {
                *(v81 + 8) = v78;
              }

              *v77 = v78;
            }

            DefiningOp = mlir::Value::getDefiningOp(v123);
            mlir::Operation::replaceUsesOfWith(DefiningOp, v123[0], v73);
          }

          if (++v71 == v70)
          {
            goto LABEL_94;
          }
        }
      }

      v90 = v127;
      v91 = ArgOperands;
      while (1)
      {
        v92 = *v90++;
        if (*v91 != (*(v92 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        ++v91;
        LODWORD(v70) = v70 - 1;
        if (!v70)
        {
          goto LABEL_94;
        }
      }

LABEL_98:
      v123[0] = 0;
      if (v125)
      {
        v96 = v124;
        v97 = (v124 + 8 * v125);
        do
        {
          v98 = *v96;
          v99 = *(*v96 - 2);
          if (v99)
          {
            v100 = *(*(v98 + 9) + 24);
            do
            {
              v101 = v99[1];
              if (v101)
              {
                v102 = *v99;
                *v101 = *v99;
                if (v102)
                {
                  *(v102 + 8) = v101;
                }
              }

              v99[3] = v100;
              v99[1] = v100;
              v103 = *v100;
              *v99 = *v100;
              if (v103)
              {
                *(v103 + 8) = v99;
              }

              *v100 = v99;
              v99 = *(v98 - 2);
            }

            while (v99);
          }

          mlir::Operation::erase(v98, v67);
          ++v96;
        }

        while (v96 != v97);
      }
    }

    else
    {
LABEL_94:
      if (((*(*a1 + 24))(a1, v120, v119[0], v106) & 1) == 0 || (v94 = *(v120 + 8), v93 = *(v120 + 16), mlir::ValueRange::ValueRange(v123, v127, v128), mlir::ValueRange::ValueRange(v122, ArgOperands, v105), (inlineRegionImpl(a1, a6, v93, v94, v108, v123[0], v123[1], v95, v122[0], v122[1], *(v120 + 24), 1, v106, v120, v121) & 1) == 0))
      {
        mlir::inlineCall(mlir::InlinerInterface &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::Region *,BOOL)::$_0::operator()(v124, v125);
      }
    }

LABEL_109:
    llvm::deallocate_buffer(v113, (16 * v115));
  }

  if (v127 != v129)
  {
    free(v127);
  }

  if (v130 != v132)
  {
    free(v130);
  }

  return 0;
}

uint64_t mlir::inlineCall(mlir::InlinerInterface &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::Region *,BOOL)::$_0::operator()(mlir::Operation **a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = &a1[a2];
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 2);
      if (v5)
      {
        v6 = *(*(v4 + 9) + 24);
        do
        {
          v7 = v5[1];
          if (v7)
          {
            v8 = *v5;
            *v7 = *v5;
            if (v8)
            {
              *(v8 + 8) = v7;
            }
          }

          v5[3] = v6;
          v9 = *v6;
          *v5 = *v6;
          v5[1] = v6;
          if (v9)
          {
            *(v9 + 8) = v5;
          }

          *v6 = v5;
          v5 = *(v4 - 2);
        }

        while (v5);
      }

      mlir::Operation::erase(v4, a2);
      ++v2;
    }

    while (v2 != v3);
  }

  return 0;
}

uint64_t isLegalToInline(mlir::InlinerInterface *a1, uint64_t a2, mlir::Region *a3, _BOOL8 a4, mlir::IRMapping *a5)
{
  v5 = *(a2 + 8);
  if (v5 != a2)
  {
    while (2)
    {
      v11 = v5 - 8;
      if (!v5)
      {
        v11 = 0;
      }

      v12 = v11 + 32;
      for (i = *(v11 + 40); i != v12; i = *(i + 8))
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v15 = v14;
        result = (*(*a1 + 40))(a1, v14, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        if ((*(*a1 + 48))(a1, v15))
        {
          v17 = *(v15 + 44);
          if ((v17 & 0x7FFFFF) != 0)
          {
            v18 = v15 + 16 * ((v17 >> 23) & 1) + ((v17 >> 21) & 0x7F8) + 32 * *(v15 + 40) + 64;
            v19 = 24 * (v17 & 0x7FFFFF);
            while ((isLegalToInline(a1, v18, a3, a4, a5) & 1) != 0)
            {
              v18 += 24;
              v19 -= 24;
              if (!v19)
              {
                goto LABEL_5;
              }
            }

            return 0;
          }
        }

LABEL_5:
        ;
      }

      v5 = *(v5 + 8);
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void handleArgumentImpl(uint64_t a1, mlir::DictionaryAttr **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v54[0] = a5;
  v54[1] = a6;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v54);
  if (*CallableForCallee == CallableForCallee)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v12 = CallableForCallee[1];
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = (*(v13 + 56) - *(v13 + 48)) >> 3;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(a2, 0, 0);
  v16 = DictionaryAttr;
  v56 = v58;
  v57 = 0x600000000;
  if (v14 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v14, 8);
    v17 = (v56 + 8 * (v14 & 0xFFFFFFFC));
    v18 = v14 & 3;
    v19 = vdupq_n_s64(v16);
    v20 = (v56 + 16);
    v21 = v14 & 0xFFFFFFFC;
    do
    {
      v20[-1] = v19;
      *v20 = v19;
      v20 += 2;
      v21 -= 4;
    }

    while (v21);
    if ((v14 & 0xFFFFFFFC) != v14)
    {
      do
      {
        *v17++ = v16;
        --v18;
      }

      while (v18);
    }

    goto LABEL_30;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  v22 = vdupq_n_s64(v14 - 1);
  v23 = v14 + 1;
  v24 = vmovn_s64(vcgeq_u64(v22, xmmword_1E09700F0));
  if (v24.i8[0])
  {
    v58[0] = DictionaryAttr;
    v25 = v23 & 0xE;
    if ((v24.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v25 = v23 & 0xE;
    if ((v24.i8[4] & 1) == 0)
    {
LABEL_16:
      if (v25 == 2)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }
  }

  v58[1] = DictionaryAttr;
  if (v25 == 2)
  {
    goto LABEL_30;
  }

LABEL_20:
  v26 = vmovn_s64(vcgtq_u64(v22, xmmword_1E0970220));
  if (v26.i8[0])
  {
    v58[2] = DictionaryAttr;
    if ((v26.i8[4] & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    v58[3] = DictionaryAttr;
    if (v25 == 4)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (v26.i8[4])
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v25 == 4)
  {
    goto LABEL_30;
  }

LABEL_26:
  v27 = vmovn_s64(vcgtq_u64(v22, xmmword_1E0970230));
  if (v27.i8[0])
  {
    v58[4] = DictionaryAttr;
  }

  if (v27.i8[4])
  {
    v58[5] = DictionaryAttr;
  }

LABEL_30:
  LODWORD(v57) = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v54);
  if (ArgAttrsAttr)
  {
    Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v29 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v31 = (v29 + 8 * v30);
    if (Value != v31)
    {
      v32 = 0;
      do
      {
        v33 = *Value++;
        *(v56 + v32) = v33;
        v32 += 8;
      }

      while (Value != v31);
    }
  }

  v34 = mlir::CallOpInterface::getCallableForCallee(v54);
  if (*v34 == v34)
  {
    v39 = v56;
    goto LABEL_56;
  }

  v35 = v34[1];
  if (v35)
  {
    v36 = v35 - 8;
  }

  else
  {
    v36 = 0;
  }

  v37 = *(v36 + 48);
  v38 = *(v36 + 56);
  v39 = v56;
  if (v38 == v37 || v57 == 0)
  {
LABEL_56:
    if (v39 != v58)
    {
      goto LABEL_57;
    }

    return;
  }

  v41 = v56 + 8 * v57;
  do
  {
    v42 = *(a7 + 4);
    if (v42)
    {
      v43 = *a7;
      v44 = HIDWORD(*v37);
      v45 = 0x9DDFEA08EB382D69 * ((8 * *v37 - 0xAE502812AA7333) ^ v44);
      v46 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v44 ^ (v45 >> 47) ^ v45)) >> 32) >> 15) ^ (-348639895 * (v44 ^ (v45 >> 47) ^ v45)))) & (v42 - 1);
      v47 = *(*a7 + 16 * v46);
      if (v47 == *v37)
      {
LABEL_45:
        if (v46 != v42)
        {
          v48 = *(v43 + 16 * v46 + 8);
          goto LABEL_48;
        }
      }

      else
      {
        v52 = 1;
        while (v47 != -4096)
        {
          v53 = v46 + v52++;
          v46 = v53 & (v42 - 1);
          v47 = *(v43 + 16 * v46);
          if (v47 == *v37)
          {
            goto LABEL_45;
          }
        }
      }
    }

    v48 = 0;
LABEL_48:
    v49 = *v39;
    v39 += 8;
    v50 = (*(*a1 + 72))(a1, a2, a3, v54[0], v48, v49);
    v51 = *v37++;
    ArgAttrsAttr = v51;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a7, &ArgAttrsAttr) = v50;
  }

  while (v37 != v38 && v39 != v41);
  v39 = v56;
  if (v56 == v58)
  {
    return;
  }

LABEL_57:
  free(v39);
}

void remapInlinedLocations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v40 = v42;
  v41 = &v44;
  v39 = 0;
  v37 = 0u;
  *v38 = 0u;
  *v35 = 0u;
  *__p = 0u;
  v44 = a3;
  v45[0] = &unk_1F5B0C518;
  v45[1] = &v40;
  v46 = v45;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(v35, v45);
  if (v46 == v45)
  {
    (*(*v46 + 32))(v46);
    if (a1 != a2)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v46)
  {
    (*(*v46 + 40))();
  }

  if (a1 == a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (a1)
  {
    v6 = (a1 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6[6];
  v8 = v6[7];
  while (1)
  {
    if (v7 == v8)
    {
      for (i = v6[5]; i != v6 + 4; i = i[1])
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(v35, v34, 0, 1, 0);
      }

      a1 = *(a1 + 8);
      if (a1 != a2)
      {
        goto LABEL_10;
      }

LABEL_7:
      llvm::deallocate_buffer(v38[0], (16 * v39));
    }

    v9 = *(*v7 + 32);
    v10 = v40;
    v11 = *(v40 + 4);
    if (!v11)
    {
      goto LABEL_39;
    }

    v12 = *v40;
    v13 = ((v9 >> 4) ^ (v9 >> 9)) & (v11 - 1);
    v14 = (*v40 + 16 * v13);
    v15 = *v14;
    if (v9 != *v14)
    {
      break;
    }

LABEL_18:
    v16 = *(v12 + 2 * v13 + 1);
    if (v16)
    {
      goto LABEL_25;
    }

LABEL_14:
    v7 += 8;
  }

  v18 = 0;
  v19 = 1;
  while (v15 != -4096)
  {
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15 == -8192;
    }

    if (v20)
    {
      v18 = v14;
    }

    v21 = v13 + v19++;
    v13 = v21 & (v11 - 1);
    v14 = (v12 + 16 * v13);
    v15 = *v14;
    if (v9 == *v14)
    {
      goto LABEL_18;
    }
  }

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v14;
  }

  v23 = *(v40 + 2);
  if (4 * v23 + 4 < 3 * v11)
  {
    if (v11 + ~v23 - *(v40 + 3) > v11 >> 3)
    {
      *(v40 + 2) = v23 + 1;
      if (*v22 == -4096)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v24 = *(*v7 + 32);
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(v40, v11);
    v25 = *(v10 + 4);
    if (v25)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_39:
    v24 = *(*v7 + 32);
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(v40, 2 * v11);
    v25 = *(v10 + 4);
    if (v25)
    {
LABEL_40:
      v9 = v24;
      v26 = v25 - 1;
      v27 = v26 & ((v24 >> 4) ^ (v24 >> 9));
      v22 = (*v10 + 16 * v27);
      v28 = *v22;
      if (v24 != *v22)
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
            v29 = v22;
          }

          v32 = v27 + v30++;
          v27 = v32 & v26;
          v22 = (*v10 + 16 * v27);
          v28 = *v22;
          if (v24 == *v22)
          {
            goto LABEL_52;
          }
        }

        if (v29)
        {
          v22 = v29;
        }
      }

LABEL_52:
      ++*(v10 + 2);
      if (*v22 == -4096)
      {
LABEL_24:
        *v22 = v9;
        v22[1] = 0;
        v17.var0.var0 = *v41;
        v16 = mlir::CallSiteLoc::get(v9, v17, v5);
        v22[1] = v16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_25:
        *(*v7 + 32) = v16;
        goto LABEL_14;
      }

LABEL_23:
      --*(v10 + 3);
      goto LABEL_24;
    }
  }

  v22 = 0;
  v9 = v24;
  goto LABEL_52;
}

void handleResultImpl(uint64_t a1, mlir::DictionaryAttr **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v68[6] = *MEMORY[0x1E69E9840];
  v61[0] = a5;
  v61[1] = a6;
  DictionaryAttr = mlir::Builder::getDictionaryAttr(a2, 0, 0);
  v14 = DictionaryAttr;
  v66 = v68;
  v67 = 0x600000000;
  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, a8, 8);
    v15 = (v66 + 8 * (a8 & 0xFFFFFFFFFFFFFFFCLL));
    v16 = a8 & 3;
    v17 = vdupq_n_s64(v14);
    v18 = (v66 + 16);
    v19 = a8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    if (a8 != (a8 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        *v15++ = v14;
        --v16;
      }

      while (v16);
    }

    goto LABEL_24;
  }

  if (!a8)
  {
    goto LABEL_24;
  }

  v20 = vdupq_n_s64(a8 - 1);
  v21 = a8 + 1;
  v22 = vmovn_s64(vcgeq_u64(v20, xmmword_1E09700F0));
  if (v22.i8[0])
  {
    v68[0] = DictionaryAttr;
    v23 = v21 & 0xE;
    if ((v22.i8[4] & 1) == 0)
    {
LABEL_10:
      if (v23 == 2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v23 = v21 & 0xE;
    if ((v22.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v68[1] = DictionaryAttr;
  if (v23 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v24 = vmovn_s64(vcgtq_u64(v20, xmmword_1E0970220));
  if ((v24.i8[0] & 1) == 0)
  {
    if ((v24.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v68[3] = DictionaryAttr;
    if (v23 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v68[2] = DictionaryAttr;
  if (v24.i8[4])
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v23 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v25 = vmovn_s64(vcgtq_u64(v20, xmmword_1E0970230));
  if (v25.i8[0])
  {
    v68[4] = DictionaryAttr;
  }

  if (v25.i8[4])
  {
    v68[5] = DictionaryAttr;
  }

LABEL_24:
  LODWORD(v67) = a8;
  v64[0] = mlir::CallableOpInterface::getResAttrsAttr(v61);
  if (v64[0])
  {
    Value = mlir::ArrayAttr::getValue(v64);
    v27 = mlir::ArrayAttr::getValue(v64);
    v29 = (v27 + 8 * v28);
    if (Value != v29)
    {
      v30 = 0;
      do
      {
        v31 = *Value++;
        *(v66 + v30) = v31;
        v30 += 8;
      }

      while (Value != v29);
    }
  }

  v64[1] = 0x600000000;
  v62[0] = a7;
  v62[1] = 0;
  v63 = v66;
  v64[0] = &v65;
  if (a8 && v67)
  {
    v32 = mlir::ValueRange::dereference_iterator(v62, 0);
    v33 = v63;
    v60[0] = v32;
    v60[1] = v63;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v34 = *v32;
    if (!*v32)
    {
      v54 = v32;
LABEL_73:
      v55 = (*(*a1 + 80))(a1, a2, a3, v61[0], v54, *v33);
      v56 = &v57;
      mlir::Value::replaceUsesWithIf(v60, v55, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>, &v56);
      llvm::deallocate_buffer(v57, (8 * v59));
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v41 = v34[2];
      if (!v36)
      {
        goto LABEL_53;
      }

      v38 = ((v41 >> 4) ^ (v41 >> 9)) & (v36 - 1);
      v39 = v37 + 8 * v38;
      v40 = *v39;
      if (v41 != *v39)
      {
        break;
      }

LABEL_33:
      v34 = *v34;
      if (!v34)
      {
        v54 = v60[0];
        goto LABEL_73;
      }
    }

    v42 = 0;
    v43 = 1;
    while (v40 != -4096)
    {
      if (v42)
      {
        v44 = 0;
      }

      else
      {
        v44 = v40 == -8192;
      }

      if (v44)
      {
        v42 = v39;
      }

      v45 = v38 + v43++;
      v38 = v45 & (v36 - 1);
      v39 = v37 + 8 * v38;
      v40 = *v39;
      if (v41 == *v39)
      {
        goto LABEL_33;
      }
    }

    if (v42)
    {
      v46 = v42;
    }

    else
    {
      v46 = v39;
    }

    if (4 * v35 + 4 < 3 * v36)
    {
      if (v36 + ~v35 - HIDWORD(v58) > v36 >> 3)
      {
        LODWORD(v58) = ++v35;
        if (*v46 == -4096)
        {
LABEL_39:
          *v46 = v41;
          goto LABEL_33;
        }

LABEL_38:
        --HIDWORD(v58);
        goto LABEL_39;
      }
    }

    else
    {
LABEL_53:
      v36 *= 2;
    }

    llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(&v57, v36);
    v37 = v57;
    v36 = v59;
    if (v59)
    {
      v47 = v59 - 1;
      v48 = (v59 - 1) & ((v41 >> 4) ^ (v41 >> 9));
      v46 = v57 + 8 * v48;
      v49 = *v46;
      if (v41 != *v46)
      {
        v50 = 0;
        v51 = 1;
        while (v49 != -4096)
        {
          if (v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = v49 == -8192;
          }

          if (v52)
          {
            v50 = v46;
          }

          v53 = v48 + v51++;
          v48 = v53 & v47;
          v46 = v57 + 8 * (v53 & v47);
          v49 = *v46;
          if (v41 == *v46)
          {
            goto LABEL_66;
          }
        }

        if (v50)
        {
          v46 = v50;
        }
      }
    }

    else
    {
      v46 = 0;
    }

LABEL_66:
    v35 = v58 + 1;
    LODWORD(v58) = v58 + 1;
    if (*v46 == -4096)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v66 != v68)
  {
    free(v66);
  }
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0C518;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0C518;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EEclEOSK_@<X0>(uint64_t a1@<X0>, mlir::CallSiteLoc **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  result = mlir::LocationAttr::classof(*a2);
  if (result)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v13 = v5;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>(*v8, &v13, &v11);
    if (v12)
    {
      v10.var0.var0 = **(v8 + 8);
      result = mlir::CallSiteLoc::get(v13, v10, v9);
      *(v11 + 8) = result;
    }

    else
    {
      result = *(v11 + 8);
    }

    *a3 = result;
    *(a3 + 8) = 2;
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS8_14ilist_iteratorINS8_12ilist_detail12node_optionsINS2_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS2_8LocationEE3__0NS2_12LocationAttrENS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSL_ISQ_SM_EEEEEEvE4typeEOT_EUlSK_E_NS_9allocatorISZ_EEFNSS_INSL_ISK_SM_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL21remapInlinedLocationsN4llvm14iterator_rangeINS5_14ilist_iteratorINS5_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEENS_8LocationEE3$_0NS_12LocationAttrENS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSI_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSJ_ISO_SK_EEEEEEvE4typeEOT_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>,mlir::Location,mlir::LocationAttr,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseMapPair<mlir::Location,mlir::LocationAttr>>::try_emplace<>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
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
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<handleResultImpl(mlir::InlinerInterface &,mlir::OpBuilder &,mlir::CallOpInterface,mlir::CallableOpInterface,mlir::ValueRange)::$_0>(uint64_t **a1, uint64_t a2)
{
  v2 = *(*a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = **a1;
  v5 = v2 - 1;
  v6 = ((v3 >> 4) ^ (v3 >> 9)) & v5;
  v7 = *(v4 + 8 * v6);
  if (v7 == v3)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    result = v7 != -4096;
    if (v7 == -4096)
    {
      break;
    }

    v10 = v6 + v9++;
    v6 = v10 & v5;
    v7 = *(v4 + 8 * v6);
    result = 1;
  }

  while (v7 != v3);
  return result;
}

uint64_t mlir::eraseUnreachableBlocks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v49 = v53;
  v50 = v53;
  v51 = 16;
  v52 = 0;
  v58 = v60;
  v59 = 0x100000000;
  if (a3 < 2)
  {
    v6 = 0;
    if (!a3)
    {
      v8 = 0;
      goto LABEL_78;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, a3, 8);
    v6 = v59;
  }

  v7 = 24 * a3;
  do
  {
    if (v6 >= HIDWORD(v59))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v6 + 1, 8);
      v6 = v59;
    }

    v58[v6] = a2;
    v6 = v59 + 1;
    LODWORD(v59) = v59 + 1;
    a2 += 24;
    v7 -= 24;
  }

  while (v7);
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v58[--v6];
      LODWORD(v59) = v6;
      if (*v9 == v9)
      {
        goto LABEL_11;
      }

      v10 = v9[1];
      if (*(v10 + 8) != v9)
      {
        break;
      }

      v11 = v10 + 24;
      for (i = *(v10 + 32); i != v11; i = *(i + 8))
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v14 = *(v13 + 44);
        v15 = v14 & 0x7FFFFF;
        if ((v14 & 0x7FFFFF) != 0)
        {
          v16 = v13 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 32 * *(v13 + 40) + 64;
          v17 = v59;
          v18 = 24 * v15;
          do
          {
            if (v17 >= HIDWORD(v59))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v17 + 1, 8);
              v17 = v59;
            }

            v58[v17] = v16;
            v17 = v59 + 1;
            LODWORD(v59) = v59 + 1;
            v16 += 24;
            v18 -= 24;
          }

          while (v18);
        }
      }

LABEL_10:
      v6 = v59;
LABEL_11:
      if (!v6)
      {
        goto LABEL_78;
      }
    }

    if (v50 != v49)
    {
      if (v51 >= 0x21 && 4 * (HIDWORD(v51) - v52) < v51)
      {
        llvm::SmallPtrSetImplBase::shrink_and_clear(&v49);
        goto LABEL_29;
      }

      memset(v50, 255, 8 * v51);
    }

    HIDWORD(v51) = 0;
    v52 = 0;
LABEL_29:
    v19 = v9[1];
    if (v19)
    {
      v20 = (v19 - 8);
    }

    else
    {
      v20 = 0;
    }

    llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,16u>,true,llvm::GraphTraits<mlir::Block *>>::df_iterator(&v54, v20, &v49);
    v21 = v54;
    v22 = v55;
    v23 = v56 - v55;
    if (v56 == v55)
    {
      v24 = 0;
      if (v55)
      {
LABEL_35:
        v56 = v22;
        operator delete(v22);
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      v24 = operator new(v56 - v55);
      v25 = v23 & 0x7FFFFFFFFFFFFFE0;
      memcpy(v24, v22, v25);
      v23 = &v24[v25];
      if (v22)
      {
        goto LABEL_35;
      }
    }

    v54 = v21;
    v26 = v23 - v24;
    if (v23 != v24)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_83:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v27 = operator new(v23 - v24);
      v55 = v27;
      v57 = &v27[v26];
      v28 = v26 & 0x7FFFFFFFFFFFFFE0;
      memcpy(v27, v24, v28);
      v56 = &v27[v28];
      if (!v28)
      {
        goto LABEL_41;
      }

      do
      {
        llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,16u>,true,llvm::GraphTraits<mlir::Block *>>::toNext(&v54);
        v27 = v55;
      }

      while (v56 != v55);
      if (v55)
      {
LABEL_41:
        v56 = v27;
        operator delete(v27);
      }
    }

    if (v24)
    {
      operator delete(v24);
    }

    v29 = v9[1];
    if (v29 == v9)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v30 = v29[1];
      v31 = v49;
      v32 = v50;
      if (v50 != v49)
      {
        break;
      }

      v35 = HIDWORD(v51);
      if (!HIDWORD(v51))
      {
LABEL_59:
        v33 = &v50[8 * HIDWORD(v51)];
        v34 = v50;
LABEL_60:
        if (v34 == v32)
        {
          v39 = v35;
        }

        else
        {
          v39 = v51;
        }

        if (v33 != &v34[8 * v39])
        {
          goto LABEL_64;
        }

        goto LABEL_46;
      }

      v38 = 8 * HIDWORD(v51);
      while (*v31 != v29 - 1)
      {
        v31 += 8;
        v38 -= 8;
        if (!v38)
        {
          goto LABEL_59;
        }
      }

      if (v31 != &v50[8 * HIDWORD(v51)])
      {
LABEL_64:
        v40 = v29 + 3;
        for (j = v29[4]; j != v40; j = j[1])
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v43 = *(v42 + 44);
          v44 = v43 & 0x7FFFFF;
          if ((v43 & 0x7FFFFF) != 0)
          {
            v45 = v42 + 16 * ((v43 >> 23) & 1) + ((v43 >> 21) & 0x7F8) + 32 * *(v42 + 40) + 64;
            v46 = v59;
            v47 = 24 * v44;
            do
            {
              if (v46 >= HIDWORD(v59))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v46 + 1, 8);
                v46 = v59;
              }

              v58[v46] = v45;
              v46 = v59 + 1;
              LODWORD(v59) = v59 + 1;
              v45 += 24;
              v47 -= 24;
            }

            while (v47);
          }
        }

        goto LABEL_47;
      }

LABEL_46:
      mlir::Block::dropAllDefinedValueUses(v29 - 1);
      (*(*a1 + 24))(a1, v29 - 1);
      v8 = 1;
LABEL_47:
      v29 = v30;
      if (v30 == v9)
      {
        goto LABEL_10;
      }
    }

    v33 = llvm::SmallPtrSetImplBase::doFind(&v49, v29 - 1);
    v32 = v49;
    v34 = v50;
    v35 = HIDWORD(v51);
    if (!v33)
    {
      v36 = v51;
      if (v50 == v49)
      {
        v36 = HIDWORD(v51);
        v37 = HIDWORD(v51);
      }

      else
      {
        v37 = v51;
      }

      if (&v50[8 * v36] != &v50[8 * v37])
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    }

    goto LABEL_60;
  }

LABEL_78:
  if (v58 != v60)
  {
    free(v58);
  }

  if (v50 != v49)
  {
    free(v50);
  }

  return v8 & 1;
}

void propagateLiveness(void *a1, uint64_t a2)
{
  v182[3] = *MEMORY[0x1E69E9840];
  if (*a1 == a1)
  {
    return;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v163 = v4;
  llvm::post_order<mlir::Block *>(&v163, &v169);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v163, &v165, &v169);
  v166 = v168;
  v167 = 0x800000000;
  v5 = v172;
  if (v172)
  {
    if (v172 < 9)
    {
      v7 = v168;
      v6 = v172;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v168, v172, 40);
      v6 = v172;
      if (!v172)
      {
LABEL_11:
        LODWORD(v167) = v5;
        goto LABEL_12;
      }

      v7 = v166;
    }

    memcpy(v7, __src, 40 * v6);
    goto LABEL_11;
  }

LABEL_12:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v157, &v159, &v174);
  v160 = v162;
  v161 = 0x800000000;
  v8 = v177;
  if (v177)
  {
    if (v177 < 9uLL)
    {
      v10 = v162;
      v9 = v177;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v177, 40);
      v9 = v177;
      if (!v177)
      {
LABEL_18:
        LODWORD(v161) = v8;
        goto LABEL_19;
      }

      v10 = v160;
    }

    memcpy(v10, v176, 40 * v9);
    goto LABEL_18;
  }

LABEL_19:
  v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  while (1)
  {
    if (v167 != v8)
    {
      goto LABEL_32;
    }

    if (!v8)
    {
      break;
    }

    v12 = v160;
    v13 = v166;
    while (1)
    {
      v14 = *v13 == *v12 && v13[2] == v12[2];
      if (!v14 || v13[4] != v12[4])
      {
        break;
      }

      v13 += 5;
      v12 += 5;
      if (v13 == (v166 + 40 * v8))
      {
        goto LABEL_253;
      }
    }

LABEL_32:
    v15 = (*(v166 + 5 * v167 - 5) + 32);
    v16 = *v15;
    v151 = *(v166 + 5 * v167 - 5);
    v152 = v15;
    if (*v15 != v15)
    {
      while (1)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v18 = v17;
        v19 = *(v17 + 44);
        if ((v19 & 0x7FFFFF) != 0)
        {
          v20 = (v17 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 32 * *(v17 + 40) + 64);
          v21 = 24 * (v19 & 0x7FFFFF);
          do
          {
            propagateLiveness(v20, a2);
            v20 += 3;
            v21 -= 24;
          }

          while (v21);
        }

        {
        }

        v22 = (*(**(v18 + 48) + 32))(*(v18 + 48), v11[125]);
        v23 = *(a2 + 32);
        v24 = *(a2 + 48);
        if (v22)
        {
          break;
        }

        if (!v24)
        {
          goto LABEL_53;
        }

        v29 = (v24 - 1) & ((v18 >> 4) ^ (v18 >> 9));
        v30 = *(v23 + 8 * v29);
        if (v30 != v18)
        {
          v31 = 1;
          while (v30 != -4096)
          {
            v32 = v29 + v31++;
            v29 = v32 & (v24 - 1);
            v30 = *(v23 + 8 * v29);
            if (v30 == v18)
            {
              goto LABEL_37;
            }
          }

LABEL_53:
          if (mlir::wouldOpBeTriviallyDead(v18, v24))
          {
            v33 = *(v18 + 36);
            if (v33)
            {
              v34 = v18 - 16;
            }

            else
            {
              v34 = 0;
            }

            if (v33)
            {
              for (i = 0; i != v33; ++i)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v34, i);
                processValue(NextResultAtOffset, a2);
              }
            }

            goto LABEL_37;
          }

          v94 = *(a2 + 48);
          if (!v94)
          {
            goto LABEL_211;
          }

          v95 = *(a2 + 32);
          v96 = (v94 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v97 = (v95 + 8 * v96);
          v98 = *v97;
          if (v18 == *v97)
          {
            v99 = 0;
LABEL_169:
            *a2 |= v99;
            goto LABEL_37;
          }

          v115 = 0;
          v116 = 1;
          while (v98 != -4096)
          {
            v99 = 0;
            if (v115)
            {
              v117 = 0;
            }

            else
            {
              v117 = v98 == -8192;
            }

            if (v117)
            {
              v115 = v97;
            }

            v118 = v96 + v116++;
            v96 = v118 & (v94 - 1);
            v97 = (v95 + 8 * v96);
            v98 = *v97;
            if (v18 == *v97)
            {
              goto LABEL_169;
            }
          }

          v119 = v115 ? v115 : v97;
          v120 = *(a2 + 40);
          if (4 * v120 + 4 < 3 * v94)
          {
            if (v94 + ~v120 - *(a2 + 44) <= v94 >> 3)
            {
              goto LABEL_212;
            }

            *(a2 + 40) = v120 + 1;
            if (*v119 == -4096)
            {
LABEL_168:
              *v119 = v18;
              v99 = 1;
              goto LABEL_169;
            }
          }

          else
          {
LABEL_211:
            v94 *= 2;
LABEL_212:
            llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a2 + 32, v94);
            v121 = *(a2 + 48);
            if (v121)
            {
              v122 = *(a2 + 32);
              v123 = v121 - 1;
              v124 = (v121 - 1) & ((v18 >> 4) ^ (v18 >> 9));
              v119 = (v122 + 8 * v124);
              v125 = *v119;
              if (v18 != *v119)
              {
                v126 = 0;
                v127 = 1;
                while (v125 != -4096)
                {
                  if (v126)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = v125 == -8192;
                  }

                  if (v128)
                  {
                    v126 = v119;
                  }

                  v129 = v124 + v127++;
                  v124 = v129 & v123;
                  v119 = (v122 + 8 * (v129 & v123));
                  v125 = *v119;
                  v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
                  v15 = v152;
                  if (v18 == *v119)
                  {
                    goto LABEL_224;
                  }
                }

                if (v126)
                {
                  v119 = v126;
                }

                v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
                v15 = v152;
              }
            }

            else
            {
              v119 = 0;
            }

LABEL_224:
            ++*(a2 + 40);
            if (*v119 == -4096)
            {
              goto LABEL_168;
            }
          }

          --*(a2 + 44);
          goto LABEL_168;
        }

LABEL_37:
        v16 = *v16;
        if (v16 == v15)
        {
          goto LABEL_33;
        }
      }

      if (!v24)
      {
        goto LABEL_183;
      }

      v25 = (v24 - 1) & ((v18 >> 4) ^ (v18 >> 9));
      v26 = (v23 + 8 * v25);
      v27 = *v26;
      if (v18 == *v26)
      {
        v28 = 0;
        goto LABEL_66;
      }

      v100 = 0;
      v101 = 1;
      while (v27 != -4096)
      {
        v28 = 0;
        if (v100)
        {
          v102 = 0;
        }

        else
        {
          v102 = v27 == -8192;
        }

        if (v102)
        {
          v100 = v26;
        }

        v103 = v25 + v101++;
        v25 = v103 & (v24 - 1);
        v26 = (v23 + 8 * v25);
        v27 = *v26;
        if (v18 == *v26)
        {
          goto LABEL_66;
        }
      }

      v104 = v100 ? v100 : v26;
      v105 = *(a2 + 40);
      if (4 * v105 + 4 >= (3 * v24))
      {
LABEL_183:
        LODWORD(v24) = 2 * v24;
LABEL_184:
        llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a2 + 32, v24);
        v106 = *(a2 + 48);
        if (v106)
        {
          v107 = *(a2 + 32);
          v108 = v106 - 1;
          v109 = (v106 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v104 = (v107 + 8 * v109);
          v110 = *v104;
          if (v18 != *v104)
          {
            v111 = 0;
            v112 = 1;
            while (v110 != -4096)
            {
              if (v111)
              {
                v113 = 0;
              }

              else
              {
                v113 = v110 == -8192;
              }

              if (v113)
              {
                v111 = v104;
              }

              v114 = v109 + v112++;
              v109 = v114 & v108;
              v104 = (v107 + 8 * (v114 & v108));
              v110 = *v104;
              if (v18 == *v104)
              {
                goto LABEL_196;
              }
            }

            if (v111)
            {
              v104 = v111;
            }
          }
        }

        else
        {
          v104 = 0;
        }

LABEL_196:
        ++*(a2 + 40);
        if (*v104 == -4096)
        {
          goto LABEL_65;
        }

LABEL_64:
        --*(a2 + 44);
        goto LABEL_65;
      }

      if (v24 + ~v105 - *(a2 + 44) <= v24 >> 3)
      {
        goto LABEL_184;
      }

      *(a2 + 40) = v105 + 1;
      if (*v104 != -4096)
      {
        goto LABEL_64;
      }

LABEL_65:
      *v104 = v18;
      v28 = 1;
LABEL_66:
      *a2 |= v28;
      v153 = v16;
      if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v18))
      {
        InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v18);
        v155 = v18;
        v156 = InterfaceFor;
        if (v18)
        {
          v154 = *(v18 + 40);
          if (v154)
          {
            v38 = 0;
            while (1)
            {
              mlir::BranchOpInterface::getSuccessorOperands(&v155, v38);
              v39 = v179;
              if (v179)
              {
                break;
              }

LABEL_113:
              if (v181 != v182)
              {
                free(v181);
              }

              if (++v38 == v154)
              {
                goto LABEL_36;
              }
            }

            v40 = 0;
            v41 = *(a2 + 8);
            v42 = *(a2 + 24);
            while (1)
            {
LABEL_74:
              v43 = *(*(v18 + 64 + 16 * ((*(v18 + 44) >> 23) & 1) + ((*(v18 + 44) >> 21) & 0x7F8) + 32 * v38 + 24) + 48);
              v44 = *(v43 + 8 * v40);
              if (!v42)
              {
                goto LABEL_95;
              }

              v45 = 0x9DDFEA08EB382D69 * ((8 * *(v43 + 8 * v40) - 0xAE502812AA7333) ^ HIDWORD(*(v43 + 8 * v40)));
              v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v45 >> 47) ^ v45);
              v47 = (-348639895 * ((v46 >> 47) ^ v46)) & (v42 - 1);
              v48 = (v41 + 8 * v47);
              v49 = *v48;
              if (v44 != *v48)
              {
                break;
              }

LABEL_76:
              *a2 = *a2;
              if (++v40 == v39)
              {
                goto LABEL_113;
              }
            }

            v50 = 0;
            v51 = 1;
            while (v49 != -4096)
            {
              if (v50)
              {
                v52 = 0;
              }

              else
              {
                v52 = v49 == -8192;
              }

              if (v52)
              {
                v50 = v48;
              }

              v53 = v47 + v51++;
              v47 = v53 & (v42 - 1);
              v48 = (v41 + 8 * v47);
              v49 = *v48;
              if (v44 == *v48)
              {
                goto LABEL_76;
              }
            }

            if (v50)
            {
              v54 = v50;
            }

            else
            {
              v54 = v48;
            }

            v55 = *(a2 + 16);
            if (4 * v55 + 4 < 3 * v42)
            {
              if (v42 + ~v55 - *(a2 + 20) <= v42 >> 3)
              {
                goto LABEL_96;
              }

              *(a2 + 16) = v55 + 1;
              if (*v54 == -4096)
              {
LABEL_73:
                *v54 = v44;
                *a2 |= 1u;
                if (++v40 == v39)
                {
                  goto LABEL_113;
                }

                goto LABEL_74;
              }
            }

            else
            {
LABEL_95:
              v42 *= 2;
LABEL_96:
              llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(a2 + 8, v42);
              v41 = *(a2 + 8);
              v42 = *(a2 + 24);
              if (v42)
              {
                v56 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
                v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v56 >> 47) ^ v56);
                v58 = v42 - 1;
                v59 = (v42 - 1) & (-348639895 * ((v57 >> 47) ^ v57));
                v54 = (v41 + 8 * v59);
                v60 = *v54;
                if (v44 != *v54)
                {
                  v61 = 0;
                  v62 = 1;
                  while (v60 != -4096)
                  {
                    if (v61)
                    {
                      v63 = 0;
                    }

                    else
                    {
                      v63 = v60 == -8192;
                    }

                    if (v63)
                    {
                      v61 = v54;
                    }

                    v64 = v59 + v62++;
                    v59 = v64 & v58;
                    v54 = (v41 + 8 * (v64 & v58));
                    v60 = *v54;
                    if (v44 == *v54)
                    {
                      goto LABEL_108;
                    }
                  }

                  if (v61)
                  {
                    v54 = v61;
                  }
                }
              }

              else
              {
                v54 = 0;
              }

LABEL_108:
              ++*(a2 + 16);
              if (*v54 == -4096)
              {
                goto LABEL_73;
              }
            }

            --*(a2 + 20);
            goto LABEL_73;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v155 = 0;
        v156 = 0;
      }

      mlir::SuccessorRange::SuccessorRange(&v179, v18);
      v65 = v180;
      if (v180)
      {
        v66 = 0;
        v67 = v179;
        while (1)
        {
          v68 = *(v67 + 32 * v66 + 24);
          v69 = *(v68 + 48);
          v70 = *(v68 + 56);
          if (v69 != v70)
          {
            break;
          }

LABEL_118:
          if (++v66 == v65)
          {
            goto LABEL_36;
          }
        }

        v71 = *(a2 + 8);
        v72 = *(a2 + 24);
        while (1)
        {
LABEL_122:
          v73 = *v69;
          if (!v72)
          {
            goto LABEL_143;
          }

          v74 = 0x9DDFEA08EB382D69 * ((8 * *v69 - 0xAE502812AA7333) ^ HIDWORD(*v69));
          v75 = 0x9DDFEA08EB382D69 * (HIDWORD(v73) ^ (v74 >> 47) ^ v74);
          v76 = (-348639895 * ((v75 >> 47) ^ v75)) & (v72 - 1);
          v77 = (v71 + 8 * v76);
          v78 = *v77;
          if (v73 != *v77)
          {
            break;
          }

LABEL_124:
          *a2 = *a2;
          if (++v69 == v70)
          {
            goto LABEL_118;
          }
        }

        v79 = 0;
        v80 = 1;
        while (v78 != -4096)
        {
          if (v79)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 == -8192;
          }

          if (v81)
          {
            v79 = v77;
          }

          v82 = v76 + v80++;
          v76 = v82 & (v72 - 1);
          v77 = (v71 + 8 * v76);
          v78 = *v77;
          if (v73 == *v77)
          {
            goto LABEL_124;
          }
        }

        if (v79)
        {
          v83 = v79;
        }

        else
        {
          v83 = v77;
        }

        v84 = *(a2 + 16);
        if (4 * v84 + 4 < 3 * v72)
        {
          if (v72 + ~v84 - *(a2 + 20) <= v72 >> 3)
          {
            goto LABEL_144;
          }

          *(a2 + 16) = v84 + 1;
          if (*v83 == -4096)
          {
LABEL_121:
            *v83 = v73;
            *a2 |= 1u;
            if (++v69 == v70)
            {
              goto LABEL_118;
            }

            goto LABEL_122;
          }
        }

        else
        {
LABEL_143:
          v72 *= 2;
LABEL_144:
          llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(a2 + 8, v72);
          v71 = *(a2 + 8);
          v72 = *(a2 + 24);
          if (v72)
          {
            v85 = 0x9DDFEA08EB382D69 * ((8 * v73 - 0xAE502812AA7333) ^ HIDWORD(v73));
            v86 = 0x9DDFEA08EB382D69 * (HIDWORD(v73) ^ (v85 >> 47) ^ v85);
            v87 = v72 - 1;
            v88 = (v72 - 1) & (-348639895 * ((v86 >> 47) ^ v86));
            v83 = (v71 + 8 * v88);
            v89 = *v83;
            if (v73 != *v83)
            {
              v90 = 0;
              v91 = 1;
              while (v89 != -4096)
              {
                if (v90)
                {
                  v92 = 0;
                }

                else
                {
                  v92 = v89 == -8192;
                }

                if (v92)
                {
                  v90 = v83;
                }

                v93 = v88 + v91++;
                v88 = v93 & v87;
                v83 = (v71 + 8 * (v93 & v87));
                v89 = *v83;
                if (v73 == *v83)
                {
                  goto LABEL_156;
                }
              }

              if (v90)
              {
                v83 = v90;
              }
            }
          }

          else
          {
            v83 = 0;
          }

LABEL_156:
          ++*(a2 + 16);
          if (*v83 == -4096)
          {
            goto LABEL_121;
          }
        }

        --*(a2 + 20);
        goto LABEL_121;
      }

LABEL_36:
      v11 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
      v15 = v152;
      v16 = v153;
      goto LABEL_37;
    }

LABEL_33:
    if (!mlir::Block::isEntryBlock(v151))
    {
      v130 = *(v151 + 6);
      v131 = *(v151 + 7);
      while (v130 != v131)
      {
        v132 = *v130;
        if (*v130)
        {
          v133 = (*(*v130 + 1) & 7) == 7;
        }

        else
        {
          v133 = 1;
        }

        if (v133)
        {
          v134 = *(a2 + 24);
          if (!v134)
          {
            goto LABEL_233;
          }

          v135 = *(a2 + 8);
          v136 = 0x9DDFEA08EB382D69 * ((8 * *v130 - 0xAE502812AA7333) ^ (*v130 >> 32));
          v137 = 0x9DDFEA08EB382D69 * (HIDWORD(v132) ^ (v136 >> 47) ^ v136);
          v138 = v134 - 1;
          v139 = v138 & (-348639895 * ((v137 >> 47) ^ v137));
          v140 = *(v135 + 8 * v139);
          if (v140 != v132)
          {
            v141 = 1;
            while (v140 != -4096)
            {
              v142 = v139 + v141++;
              v139 = v142 & v138;
              v140 = *(v135 + 8 * v139);
              if (v140 == v132)
              {
                goto LABEL_234;
              }
            }

            goto LABEL_233;
          }
        }

        else
        {
          Owner = mlir::detail::OpResultImpl::getOwner(*v130);
          v144 = *(a2 + 48);
          if (!v144)
          {
            goto LABEL_233;
          }

          v145 = *(a2 + 32);
          v146 = v144 - 1;
          v147 = ((Owner >> 4) ^ (Owner >> 9)) & v146;
          v148 = *(v145 + 8 * v147);
          if (v148 != Owner)
          {
            v149 = 1;
            while (v148 != -4096)
            {
              v150 = v147 + v149++;
              v147 = v150 & v146;
              v148 = *(v145 + 8 * v147);
              if (v148 == Owner)
              {
                goto LABEL_234;
              }
            }

LABEL_233:
            processValue(v132, a2);
          }
        }

LABEL_234:
        ++v130;
      }
    }

    LODWORD(v167) = v167 - 1;
    if (v167)
    {
      llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(&v163);
    }

    v8 = v161;
  }

LABEL_253:
  if (v160 != v162)
  {
    free(v160);
  }

  if (v158 != v157)
  {
    free(v158);
  }

  if (v166 != v168)
  {
    free(v166);
  }

  if (v164 != v163)
  {
    free(v164);
  }

  if (v176 != &v178)
  {
    free(v176);
  }

  if (v175 != v174)
  {
    free(v175);
  }

  if (__src != &v173)
  {
    free(__src);
  }

  if (v170 != v169)
  {
    free(v170);
  }
}