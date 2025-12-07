void mlir::getControlFlowPredecessors(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55[6] = *MEMORY[0x277D85DE8];
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    v5 = v4 == 7;
    if (v4 == 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    if (!v5)
    {
      v7 = *(v6 + 8) & 7;
      if (v7 == 6)
      {
        v8 = v6 + 24 * *(v6 + 16);
        v9 = v8 + 120;
        if (v8 == -120)
        {
LABEL_37:
          InterfaceFor = 0;
          if (v9)
          {
LABEL_38:
            __src = InterfaceFor[1](InterfaceFor, v9);
            v49 = (*InterfaceFor)(InterfaceFor, v9);
            v53 = v55;
            v54 = 0x600000000;
            llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v53, &__src, &v50);
            *a2 = a2 + 16;
            *(a2 + 8) = 0x600000000;
            if (v54)
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v53);
            }

            *(a2 + 64) = 1;
            v28 = v53;
            if (v53 == v55)
            {
              return;
            }

LABEL_66:
            free(v28);
            return;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v9 = v6 + 16 * v7 + 16;
      }

      if (mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
      {
        InterfaceFor = mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
        if (v9)
        {
          goto LABEL_38;
        }

LABEL_30:
        v25 = *(v3 + 8) & 7;
        v26 = v25 == 7;
        if (v25 == 7)
        {
          v27 = 0;
        }

        else
        {
          v27 = v3;
        }

        if (v26)
        {
          goto LABEL_67;
        }

        v30 = *(v27 + 8) & 7;
        if (v30 == 6)
        {
          v31 = v27 + 24 * *(v27 + 16);
          v32 = v31 + 120;
          if (v31 == -120)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v32 = v27 + 16 * v30 + 16;
        }

        v34 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v32);
        v36 = v35;
        if (!v34)
        {
LABEL_67:
          *a2 = 0;
          *(a2 + 64) = 0;
          return;
        }

        v37 = *(v34 + 36);
        v38 = (v34 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
        if (!v37)
        {
          v38 = 4;
        }

        __src = 0;
        v49 = v38;
        v50 = v37;
        v39 = *(v3 + 8);
        if ((v39 & 7) == 6)
        {
          v40 = *(v3 + 16) + 6;
        }

        else
        {
          v40 = v39 & 7;
        }

        v41 = v34;
        goto LABEL_63;
      }
    }

    v9 = 0;
    goto LABEL_37;
  }

  v47 = a1;
  v11 = *(a1 + 16);
  v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = v13 - 8;
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v11)
  {
    v53 = v55;
    v54 = 0x600000000;
    v15 = *v11;
    if (*v11)
    {
      do
      {
        v16 = mlir::PredecessorIterator::unwrap(v15);
        v17 = llvm::DefaultDoCastIfPossible<mlir::BranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::BranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v16 + 32));
        if (!v17)
        {
          v33 = 0;
          *a2 = 0;
          goto LABEL_50;
        }

        (*v18)(&__src, v18, v17, (v15 - ((v15[2] + 16 * ((*(v15[2] + 44) >> 23) & 1) + ((*(v15[2] + 44) >> 21) & 0x7F8) + 71) & 0x1FFFFFFFF8)) >> 5);
        v19 = *(a1 + 24);
        v20 = v19 >= __src;
        v21 = v19 - __src;
        if (v20)
        {
          v22 = *(*(v49 + 72) + 32 * (v21 + v50) + 24);
          if (v22)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, v22);
          }
        }

        if (v51 != &v52)
        {
          free(v51);
        }

        v15 = *v15;
      }

      while (v15);
      v23 = v54;
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
      if (v23)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v53);
      }
    }

    else
    {
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
    }

    v33 = 1;
LABEL_50:
    *(a2 + 64) = v33;
    v28 = v53;
    if (v53 != v55)
    {
      goto LABEL_66;
    }

    return;
  }

  if (v12)
  {
    v29 = *(v12 + 16);
  }

  else
  {
    v29 = 0;
  }

  v42 = llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(v29);
  if (!v42)
  {
    goto LABEL_67;
  }

  v44 = v42;
  v45 = v43;
  ParentRegion = mlir::Value::getParentRegion(&v47);
  v49 = 0;
  v50 = 0;
  __src = ParentRegion;
  v40 = *(a1 + 24);
  v41 = v44;
  v36 = v45;
LABEL_63:
  getRegionPredecessorOperands(&v53, v41, v36, &__src, v40);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v54)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v53);
  }

  *(a2 + 64) = 1;
  v28 = v53;
  if (v53 != v55)
  {
    goto LABEL_66;
  }
}

void getRegionPredecessorOperands(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v42[6] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
  }

  else
  {
    v10 = 0;
  }

  v40 = v42;
  v41 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v40, v10);
  v37 = v39;
  v38 = 0x200000000;
  (*(a3 + 8))(a3, a2, v40, v41, &v37);
  v11 = *a4;
  if (v38)
  {
    v12 = 24 * v38;
    v13 = v37;
    while (*v13 != v11)
    {
      v13 += 3;
      v12 -= 24;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = v37;
  }

  if (v13 != (v37 + 24 * v38))
  {
    v14 = (*a3)(a3, a2, v11);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *(v14 + 32 * a5 + 24));
  }

LABEL_11:
  v15 = *(a2 + 44);
  if ((v15 & 0x7FFFFF) != 0)
  {
    v16 = ((a2 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v17 = v16 + 24 * (v15 & 0x7FFFFF);
    v18 = a5;
    do
    {
      for (i = *(v16 + 8); i != v16; i = *(i + 8))
      {
        v20 = i - 8;
        if (!i)
        {
          v20 = 0;
        }

        v21 = *(v20 + 32);
        InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
        if (InterfaceFor)
        {
          if (v21)
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
          }

          else
          {
            InterfaceFor = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v29 = v21;
        v30 = InterfaceFor;
        if (v21)
        {
          if ((*(v21 + 46) & 0x80) != 0)
          {
            v23 = *(v21 + 68);
          }

          else
          {
            v23 = 0;
          }

          v34 = v36;
          v35 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v34, v23);
          v31 = v33;
          v32 = 0x200000000;
          (*(v30 + 8))(v30, v29, v34, v35, &v31);
          v24 = v31;
          v25 = *a4;
          v26 = v31;
          if (v32)
          {
            v27 = 24 * v32;
            v26 = v31;
            while (*v26 != v25)
            {
              v26 += 3;
              v27 -= 24;
              if (!v27)
              {
                goto LABEL_32;
              }
            }
          }

          if (v26 != (v31 + 24 * v32))
          {
            SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v29, v25);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *(SuccessorOperands + 32 * v18 + 24));
            v24 = v31;
          }

LABEL_32:
          if (v24 != v33)
          {
            free(v24);
          }

          if (v34 != v36)
          {
            free(v34);
          }
        }
      }

      v16 += 24;
    }

    while (v16 != v17);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }
}

void llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
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
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 8 * v8);
  v10 = *v9;
  if (*v9 == a2)
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
      v9 = (v3 + 8 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
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
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v6, &v6[v7]);

    JUMPOUT(0x25F891030);
  }

  v8 = v14;
  for (i = 8; i != 136; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 0x10)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v14, v8);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 34;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[2 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 2;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 1) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SelectLikeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[305];
}

uint64_t llvm::getTypeName<mlir::SelectLikeOpInterface>()
{
  {
    llvm::getTypeName<mlir::SelectLikeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface>();
    unk_27FC189A0 = v1;
  }

  return llvm::getTypeName<mlir::SelectLikeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SelectLikeOpInterface]";
  v6 = 89;
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

uint64_t mlir::sortTopologically(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    v5 = 1;
    return v5 & 1;
  }

  v9 = a2;
  v20 = 0;
  v21 = 0;
  v10 = a2;
  v22 = 0;
  do
  {
    v26[0] = v10;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v20, v26, v24);
    v10 = v10[1];
  }

  while (v10 != a3);
  if (v21.i32[0])
  {
    v18 = 1;
    while (1)
    {
      if (v9 == a3)
      {
        v12 = v9;
      }

      else
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = v9[1];
          v26[0] = a4;
          v26[1] = a5;
          v24[0] = v26;
          v24[1] = &v25;
          v24[2] = &v20;
          v25 = v9;
          v23 = v24;
          if (mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>, &v23, 1))
          {
            v24[0] = v9;
            v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(&v20, v24);
            if (v14)
            {
              *v14 = -8192;
              v21 = vadd_s32(v21, 0x1FFFFFFFFLL);
            }

            if (v9 != v12)
            {
              v15 = v9[1];
              if (v15 != v12)
              {
                llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(a1 + 32, v12, v9[2] + 32, v9, v15);
              }
            }

            if (v9 == v12)
            {
              v12 = v12[1];
            }

            v11 = 1;
          }

          v9 = v13;
        }

        while (v13 != a3);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v24[0] = v12;
      v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(&v20, v24);
      if (v16)
      {
        *v16 = -8192;
        v21 = vadd_s32(v21, 0x1FFFFFFFFLL);
      }

      v18 = 0;
      v12 = v12[1];
LABEL_25:
      v9 = v12;
      if (!v21.i32[0])
      {
        goto LABEL_28;
      }
    }
  }

  v18 = 1;
LABEL_28:
  MEMORY[0x25F891030](v20, 8);
  v5 = v18;
  return v5 & 1;
}

uint64_t mlir::sortTopologically(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4 == a1 + 32)
  {
    return 1;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v9 = (*(**(v4 + 48) + 32))(*(v4 + 48), v8);
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = v10 == v3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v3 = *v3;
  }

  return mlir::sortTopologically(a1, v10, v3, a2, a3);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 68);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 72);
    v5 = *a1;
    do
    {
      v6 = *(v4 + 32 * v3 + 24);
      v7 = **v5;
      if (!v7 || (v7(*(*v5 + 8), *(v4 + 32 * v3 + 24), **(v5 + 8)) & 1) == 0)
      {
        v8 = (~*(v6 + 8) & 7) != 0 ? v6 : 0;
        if (v8)
        {
          v9 = *(v8 + 8) & 7;
          if (v9 == 6)
          {
            v10 = v8 + 24 * *(v8 + 16);
            v11 = v10 + 120;
            if (v10 != -120)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v11 = v8 + 16 * v9 + 16;
LABEL_14:
            while (v11 != **(v5 + 8))
            {
              v12 = *(v5 + 16);
              v18 = v11;
              v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v12, &v18);
              if (v13)
              {
                v14 = v13 == *v12 + 8 * *(v12 + 16);
              }

              else
              {
                v14 = 1;
              }

              if (!v14)
              {
                return 0;
              }

              v15 = *(v11 + 16);
              if (v15)
              {
                v16 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
                if (v16)
                {
                  v11 = *(v16 + 16);
                  if (v11)
                  {
                    continue;
                  }
                }
              }

              break;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t mlir::detail::getDefaultTypeSizeInBits(uint64_t *a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v35 = a1;
  v4 = *a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v35);
  }

  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v9))
  {
    return mlir::Type::getIntOrFloatBitWidth(&v35);
  }

  v12 = *(*a1 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v17 = a1[1];
    DefaultPreferredAlignment = mlir::detail::getDefaultPreferredAlignment(v17, a2, a3, a4);
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(v17, a2, a3, a4);
    return DefaultTypeSizeInBits + 8 * DefaultPreferredAlignment + -8 * DefaultPreferredAlignment + (DefaultTypeSizeInBits + 8 * DefaultPreferredAlignment - 1) / (8 * DefaultPreferredAlignment) * 8 * DefaultPreferredAlignment;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v20 = *(**a1 + 32);
    IndexBitwidth = getIndexBitwidth(a3, a4);
    v22 = mlir::IntegerType::get(v20, IndexBitwidth, 0);
    v36 = a2;
    return cachedLookup<llvm::TypeSize>(v22, a2 + 8, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>, &v36);
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a1);
    if (!v14)
    {
      reportMissingDataLayout(a1);
    }

    return (*(v15 + 8))(v15, v14, a2, a3, a4);
  }

  v24 = a1[1];
  v23 = a1[2];
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    v27 = 1;
    do
    {
      v28 = *v24++;
      v27 *= v28;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v27 = 1;
  }

  v29 = *(v25 - 1);
  v30 = 1 << -__clz(v29 - 1);
  if (v29 <= 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  v32 = v13[3];
  v36 = a2;
  v10 = 8 * v27 / v29 * v31 * cachedLookup<llvm::TypeSize>(v32, a2 + 5, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>, &v36);
  if (v33)
  {
  }

  memchr(v13[4], 1, v13[5]);
  return v10;
}

uint64_t mlir::detail::getDefaultPreferredAlignment(uint64_t *a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v5 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
LABEL_7:
    v22 = a2;
    v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>;
    v11 = a2 + 11;
    v8 = v5;
    return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
  }

  else
  {
    while (1)
    {
      v8 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v5);
      if (v8)
      {
        if (!a4)
        {
          v22 = a2;
          v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>;
          v11 = a2 + 11;
          return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
        }

        EntryForIntegerType = *a3;
        v13 = a3[1];
        goto LABEL_12;
      }

      v9 = *(*v5 + 136);
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        break;
      }

      if (v9 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v15 = *(**v5 + 32);
        IndexBitwidth = getIndexBitwidth(a3, a4);
        v8 = mlir::IntegerType::get(v15, IndexBitwidth, 0);
        v22 = a2;
        v10 = llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>;
        v11 = a2 + 14;
        return cachedLookup<unsigned long long>(v8, v11, v10, &v22);
      }

      if (v9 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v17 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(v5);
        if (!v17)
        {
          reportMissingDataLayout(v5);
        }

        v19 = *(v18 + 24);

        return v19(v18, v17, a2, a3, a4);
      }

      v5 = v5[1];
      if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_7;
      }
    }

    if (!a4)
    {
      v22 = a2;
      v20 = cachedLookup<llvm::TypeSize>(v5, a2 + 5, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>, &v22);
      v21 = 1 << -__clz(v20 - 1);
      if (v20 <= 0)
      {
        return 0;
      }

      else
      {
        return v21;
      }
    }

    EntryForIntegerType = findEntryForIntegerType(v5, a3, a4);
LABEL_12:

    return extractPreferredAlignment(EntryForIntegerType, v13);
  }
}

uint64_t getIndexBitwidth(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 64;
  }

  v2 = (*(a1[1] + 8))(a1[1], *a1);
  if (*(v2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v2 + 16);
}

void reportMissingDataLayout(uint64_t a1)
{
  memset(v6, 0, sizeof(v6));
  llvm::raw_string_ostream::raw_string_ostream(v5, v6);
  v2 = llvm::raw_ostream::operator<<(v5, "neither the scoping op nor the type class provide data layout information for ");
  mlir::operator<<(v2, a1);
  v4 = 260;
  v3 = v6;
  llvm::report_fatal_error(&v3, 1);
}

uint64_t mlir::detail::getDefaultStackAlignment(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*(a2 + 8))(a2, a1);
  if (*(v2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v2 + 16);
}

uint64_t *getSpec(mlir::Operation *a1)
{
  if (*(*(a1 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v5 = a1;
    return mlir::ModuleOp::getDataLayoutSpec(&v5);
  }

  else
  {
    v2 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
    v3 = *v1;

    return v3(v1, v2);
  }
}

uint64_t *getCombinedDataLayout(mlir::Operation *a1)
{
  v39[6] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v37 = v39;
  v38 = 0x300000000;
  v34 = v36;
  v35 = 0x300000000;
  v2 = *(a1 + 2);
  if (!v2 || (v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v4 = *(v3 + 16)) == 0)
  {
LABEL_22:
    Spec = getSpec(a1);
    goto LABEL_23;
  }

  do
  {
    if (*(v4[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v31 = v4;
      v9 = v4[2];
      if (v9 && (v10 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && *(v10 + 16) || mlir::ModuleOp::getDataLayoutSpec(&v31))
      {
        DataLayoutSpec = mlir::ModuleOp::getDataLayoutSpec(&v31);
        goto LABEL_13;
      }
    }

    else
    {
      v5 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4);
      if (v5)
      {
        DataLayoutSpec = (*v6)(v6, v5);
LABEL_13:
        llvm::SmallVectorTemplateBase<mlir::DataLayoutSpecInterface,true>::push_back(&v34, DataLayoutSpec, v8);
      }
    }

    v11 = v4[2];
    if (!v11)
    {
      break;
    }

    v12 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v12)
    {
      break;
    }

    v4 = *(v12 + 16);
  }

  while (v4);
  if (!v35)
  {
    goto LABEL_22;
  }

  v13 = v34;
  v14 = 16 * v35;
  while (1)
  {
    v15 = v34 + v14;
    if (*(v34 + v14 - 16))
    {
      break;
    }

    v14 -= 16;
    if (!v14)
    {
      v31 = v33;
      HIDWORD(v32) = 2;
      goto LABEL_48;
    }
  }

  v31 = v33;
  v32 = 0x200000000;
  if (v14)
  {
    v18 = 0;
    v19 = v34 + v14;
    do
    {
      v20 = v18++;
      v19 -= 16;
      if (v19 == v34)
      {
        break;
      }

      v21 = v19;
      while (1)
      {
        v22 = *(v21 - 2);
        v21 -= 16;
        if (v22)
        {
          break;
        }

        v19 = v21;
        if (v21 == v34)
        {
          goto LABEL_37;
        }
      }
    }

    while (v19 != v34);
LABEL_37:
    if (v20 < 2)
    {
      v23 = 0;
      v24 = v33;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v18, 16);
      v23 = v32;
      v24 = v31;
    }

    v25 = &v24[16 * v23];
    do
    {
      v26 = v15 - 16;
      *v25 = *(v15 - 1);
      if (v15 - 16 == v13)
      {
        break;
      }

      v15 -= 16;
      while (1)
      {
        v27 = *(v26 - 2);
        v26 -= 16;
        if (v27)
        {
          break;
        }

        v15 = v26;
        if (v26 == v13)
        {
          goto LABEL_47;
        }
      }

      ++v25;
    }

    while (v15 != v13);
LABEL_47:
    LODWORD(v14) = v32 + v18;
  }

LABEL_48:
  LODWORD(v32) = v14;
  v28 = getSpec(a1);
  if (v28)
  {
    v30 = (*v29)(v29, v28, v31, v32);
    goto LABEL_52;
  }

  if (v32)
  {
    v30 = (**(v31 + 2 * v32 - 1))();
LABEL_52:
    Spec = v30;
  }

  else
  {
    Spec = 0;
  }

  if (v31 != v33)
  {
    free(v31);
  }

LABEL_23:
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return Spec;
}

uint64_t mlir::DataLayout::DataLayout(uint64_t a1, mlir::Operation *a2)
{
  *a1 = getCombinedDataLayout(a2);
  *(a1 + 8) = v4;
  *(a1 + 16) = getTargetSystemSpec(a2);
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

{
  *a1 = getCombinedDataLayout(a2);
  *(a1 + 8) = v4;
  *(a1 + 16) = getTargetSystemSpec(a2);
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

mlir::Operation *getTargetSystemSpec(mlir::Operation *result)
{
  if (result)
  {
    v1 = *(*(result + 6) + 16);
    v2 = v1 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id;
    if (v1 == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v3 = result;
    }

    else
    {
      v3 = 0;
    }

    v6 = v3;
    if (!v2)
    {
      while (1)
      {
        v4 = *(result + 2);
        if (!v4)
        {
          break;
        }

        v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v5)
        {
          break;
        }

        result = *(v5 + 16);
        if (!result || *(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
        {
          goto LABEL_13;
        }
      }

      result = 0;
LABEL_13:
      v6 = result;
    }

    return mlir::ModuleOp::getTargetSystemSpec(&v6);
  }

  return result;
}

uint64_t mlir::DataLayout::closest@<X0>(mlir::DataLayout *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v3 = this;
    while (1)
    {
      if (*(*(v3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        v7 = a2;
        v8 = v3;
        goto LABEL_9;
      }

      v4 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v3);
      if (v4)
      {
        break;
      }

      v5 = *(v3 + 2);
      if (v5)
      {
        v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v6)
        {
          v3 = *(v6 + 16);
          if (v3)
          {
            continue;
          }
        }
      }

      goto LABEL_8;
    }

    return mlir::DataLayout::DataLayout(a2, v4);
  }

  else
  {
LABEL_8:
    v7 = a2;
    v8 = 0;
LABEL_9:

    return mlir::DataLayout::DataLayout(v7, v8);
  }
}

uint64_t cachedLookup<llvm::TypeSize>(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *a2;
    v8 = v6 - 1;
    v9 = (v6 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v10 = *a2 + 24 * v9;
    v11 = *v10;
    if (*v10 == a1)
    {
LABEL_3:
      if (v10 != v7 + 24 * v6)
      {
        return *(v10 + 8);
      }
    }

    else
    {
      v19 = 1;
      while (v11 != -4096)
      {
        v20 = v9 + v19++;
        v9 = v20 & v8;
        v10 = v7 + 24 * (v20 & v8);
        v11 = *v10;
        if (*v10 == a1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v12 = a3(a4, a1);
  v14 = v13;
  v21 = 0;
  v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>,mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 4), a1, &v21);
  v10 = v21;
  if (v15)
  {
    return *(v10 + 8);
  }

  v22 = v21;
  v16 = *(a2 + 2);
  v17 = *(a2 + 4);
  if (4 * v16 + 4 >= 3 * v17)
  {
    v17 *= 2;
    goto LABEL_16;
  }

  if (v17 + ~v16 - *(a2 + 3) <= v17 >> 3)
  {
LABEL_16:
    llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::grow(a2, v17);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>,mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 4), a1, &v22);
    v16 = *(a2 + 2);
    v10 = v22;
  }

  *(a2 + 2) = v16 + 1;
  if (*v10 != -4096)
  {
    --*(a2 + 3);
  }

  *v10 = a1;
  *(v10 + 8) = v12;
  *(v10 + 16) = v14;
  return *(v10 + 8);
}

uint64_t cachedLookup<unsigned long long>(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *a2;
    v8 = (v6 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v9 = *(*a2 + 16 * v8);
    if (v9 == a1)
    {
LABEL_3:
      if (v8 != v6)
      {
        v12 = (v7 + 16 * v8);
        return v12[1];
      }
    }

    else
    {
      v16 = 1;
      while (v9 != -4096)
      {
        v17 = v8 + v16++;
        v8 = v17 & (v6 - 1);
        v9 = *(v7 + 16 * v8);
        if (v9 == a1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v10 = a3(a4, a1);
  v18 = 0;
  v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>,mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 4), a1, &v18);
  v12 = v18;
  if ((v11 & 1) == 0)
  {
    v13 = *(a2 + 4);
    v19 = v18;
    v14 = *(a2 + 2);
    if (4 * v14 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v14 - *(a2 + 3) > v13 >> 3)
    {
LABEL_7:
      *(a2 + 2) = v14 + 1;
      if (*v12 != -4096)
      {
        --*(a2 + 3);
      }

      *v12 = a1;
      v12[1] = v10;
      return v12[1];
    }

    llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::grow(a2, v13);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>,mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 4), a1, &v19);
    v14 = *(a2 + 2);
    v12 = v19;
    goto LABEL_7;
  }

  return v12[1];
}

uint64_t mlir::DataLayout::getTypeIndexBitwidth(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  v10 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::doFind<mlir::Type>((a1 + 136), &v10);
  if (v3 && v3 != (*(a1 + 136) + 24 * *(a1 + 152)))
  {
    return v3[1];
  }

  *&v8 = llvm::function_ref<std::optional<unsigned long long> ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeIndexBitwidth(mlir::Type)::$_0>(&v7, v10);
  BYTE8(v8) = v5;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::try_emplace<std::optional<unsigned long long>>(a1 + 136, &v10, &v8, v9);
  return *(v9[0] + 8);
}

uint64_t mlir::DataLayout::getEndianness(mlir::DataLayout *this)
{
  if (*(this + 168) == 1)
  {
    return *(this + 20);
  }

  if (*this)
  {
    (*(*(this + 1) + 16))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
  }

  else
  {
    v5 = 0;
    v3 = 0;
  }

  v6 = *(this + 4);
  if (v6 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6))
  {
    result = (*(v7 + 56))(v3, v5);
  }

  else if (v3)
  {
    result = (*(v5 + 8))(v5, v3);
  }

  else
  {
    result = 0;
  }

  if ((*(this + 168) & 1) == 0)
  {
    *(this + 168) = 1;
  }

  *(this + 20) = result;
  return result;
}

uint64_t mlir::DataLayout::getStackAlignment(mlir::DataLayout *this)
{
  if (*(this + 232) == 1)
  {
    return *(this + 28);
  }

  if (*this)
  {
    (*(*(this + 1) + 48))();
    v3 = (*(*(this + 1) + 64))();
    v5 = v4;
  }

  else
  {
    v5 = 0;
    v3 = 0;
  }

  v6 = *(this + 4);
  if (v6 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6))
  {
    result = (*(v7 + 88))(v3, v5);
  }

  else
  {
    result = mlir::detail::getDefaultStackAlignment(v3, v5);
  }

  *(this + 28) = result;
  *(this + 232) = 1;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DataLayoutTypeInterface>();
      mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[310];
}

uint64_t llvm::getTypeName<mlir::DataLayoutTypeInterface>()
{
  {
    llvm::getTypeName<mlir::DataLayoutTypeInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DataLayoutTypeInterface>();
    *algn_27FC189C8 = v1;
  }

  return llvm::getTypeName<mlir::DataLayoutTypeInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DataLayoutTypeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DataLayoutTypeInterface]";
  v6 = 91;
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

uint64_t *findEntryForIntegerType(uint64_t a1, void *a2, uint64_t a3)
{
  v23[0] = 0;
  v23[1] = 0;
  v3 = v23;
  v22[1] = v23;
  if (!a3)
  {
    v11 = 0;
LABEL_21:
    v13 = v3;
    do
    {
      v19 = v13;
      v13 = v13[2];
    }

    while (*v13 == v19);
    goto LABEL_23;
  }

  v4 = a2;
  v6 = &a2[2 * a3];
  do
  {
    v22[0] = ((*v4[1])(v4[1], *v4) & 0xFFFFFFFFFFFFFFF8);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v22);
    v8 = v23[0];
    if (!v23[0])
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 32);
        if (v10 <= IntOrFloatBitWidth)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (v10 >= IntOrFloatBitWidth)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v4 += 2;
  }

  while (v4 != v6);
  v11 = v23[0];
  v12 = *(a1 + 8) & 0x3FFFFFFF;
  v13 = v23;
  v14 = v23[0];
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v12;
    v17 = v15 < v12;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v23)
  {
    v18 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v18;
        v18 = v18[1];
      }

      while (v18);
      goto LABEL_23;
    }

    v3 = v13;
    goto LABEL_21;
  }

LABEL_23:
  v20 = v13[5];
  std::__tree<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>>>::destroy(v11);
  return v20;
}

void std::__tree<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,mlir::DataLayoutEntryInterface>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t extractPreferredAlignment(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))(a2, a1);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v4, &v5);
  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v7 - 1;
  }

  return *(v5 + 8 * v2) >> 3;
}

void llvm::SmallVectorTemplateBase<mlir::DataLayoutSpecInterface,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1E750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E750))
  {
    v1 = llvm::getTypeName<mlir::DataLayoutOpInterface>();
    _MergedGlobals_20 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1E750);
  }

  return _MergedGlobals_20;
}

uint64_t llvm::getTypeName<mlir::DataLayoutOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1E768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E768))
  {
    qword_27FC1E758 = llvm::detail::getTypeNameImpl<mlir::DataLayoutOpInterface>();
    unk_27FC1E760 = v1;
    __cxa_guard_release(&qword_27FC1E768);
  }

  return qword_27FC1E758;
}

const char *llvm::detail::getTypeNameImpl<mlir::DataLayoutOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DataLayoutOpInterface]";
  v6 = 89;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>,mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::LookupBucketFor<mlir::Type>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
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
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
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
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>,mlir::Type,llvm::TypeSize,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::TypeSize>>::LookupBucketFor<mlir::Type>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
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
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

unint64_t llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>(void **a1, uint64_t *a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v11 = v13;
  v12 = 0x400000000;
  if (*v3)
  {
    (*(v3[1] + 56))(v9);
    llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(&v11, v9);
    if (v9[0] != &v10)
    {
      free(v9[0]);
    }
  }

  v4 = v3[4];
  if (v4 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4))
  {
    v6 = (*(v5 + 16))(a2, v3, v11, v12);
  }

  else
  {
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(a2, v3, v11, v12);
    if (DefaultTypeSizeInBits)
    {
      v6 = ((DefaultTypeSizeInBits - (DefaultTypeSizeInBits != 0)) >> 3) + 1;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

uint64_t llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 16 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 16 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 16 * v9), (*a2 + 16 * v9), 16 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

unint64_t llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSizeInBits(mlir::Type)::$_0>(void **a1, uint64_t *a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v11 = v13;
  v12 = 0x400000000;
  if (*v3)
  {
    (*(v3[1] + 56))(v9);
    llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(&v11, v9);
    if (v9[0] != &v10)
    {
      free(v9[0]);
    }
  }

  v4 = v3[4];
  if (v4 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4))
  {
    DefaultTypeSizeInBits = (*(v5 + 24))(a2, v3, v11, v12);
  }

  else
  {
    DefaultTypeSizeInBits = mlir::detail::getDefaultTypeSizeInBits(a2, v3, v11, v12);
  }

  v7 = DefaultTypeSizeInBits;
  if (v11 != v13)
  {
    free(v11);
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>,mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::LookupBucketFor<mlir::Type>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>,mlir::Type,unsigned long long,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,unsigned long long>>::LookupBucketFor<mlir::Type>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
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

uint64_t llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>(void **a1, uint64_t *a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v33 = v35;
  v34 = 0x400000000;
  if (*v3)
  {
    (*(v3[1] + 56))(&v30);
    llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(&v33, &v30);
    if (v30 != &v32)
    {
      free(v30);
    }
  }

  v4 = v3[4];
  if (v4 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4))
  {
    v6 = (*(v5 + 32))(a2, v3, v33, v34);
LABEL_7:
    v7 = v6;
  }

  else if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
LABEL_15:
    v30 = v3;
    v12 = v3 + 5;
    v10 = a2;
LABEL_16:
    v13 = cachedLookup<llvm::TypeSize>(v10, v12, llvm::function_ref<llvm::TypeSize ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeSize(mlir::Type)::$_0>, &v30);
    v14 = 1 << -__clz(v13 - 1);
    if (v13 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v14;
    }
  }

  else
  {
    v8 = v33;
    v9 = v34;
    while (1)
    {
      v10 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(a2);
      if (v10)
      {
        if (!v9)
        {
          v30 = v3;
          v12 = v3 + 5;
          goto LABEL_16;
        }

        v15 = (*(v8[1] + 8))(v8[1], *v8);
        goto LABEL_24;
      }

      v11 = *(*a2 + 136);
      if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v16 = *(**a2 + 32);
        IndexBitwidth = getIndexBitwidth(v8, v9);
        v18 = mlir::IntegerType::get(v16, IndexBitwidth, 0);
        v30 = v3;
        v6 = cachedLookup<unsigned long long>(v18, v3 + 11, llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeABIAlignment(mlir::Type)::$_0>, &v30);
        goto LABEL_7;
      }

      if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        break;
      }

      if (v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v22 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a2);
        if (!v22)
        {
          reportMissingDataLayout(a2);
        }

        v6 = (*(v23 + 16))(v23, v22, v3, v8, v9);
        goto LABEL_7;
      }

      a2 = a2[1];
      if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_15;
      }
    }

    if (v9)
    {
      EntryForIntegerType = findEntryForIntegerType(a2, v8, v9);
      v15 = (*(v20 + 8))(v20, EntryForIntegerType);
LABEL_24:
      v29 = v15;
      mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v29, &v30);
      if (v31)
      {
        v21 = 0;
      }

      else
      {
        v21 = v32;
      }

      v7 = *(v30 + v21) >> 3;
      goto LABEL_39;
    }

    v24 = a2[1] & 0x3FFFFFFF;
    v25 = (v24 - (v24 != 0)) >> 3;
    if (v24)
    {
      ++v25;
    }

    v26 = 1 << -__clz(v25 - 1);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v24 <= 0x3F)
    {
      v7 = v27;
    }

    else
    {
      v7 = 4;
    }
  }

LABEL_39:
  if (v33 != v35)
  {
    free(v33);
  }

  return v7;
}

uint64_t llvm::function_ref<unsigned long long ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypePreferredAlignment(mlir::Type)::$_0>(void **a1, uint64_t *a2)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v11 = v13;
  v12 = 0x400000000;
  if (*v3)
  {
    (*(v3[1] + 56))(v9);
    llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(&v11, v9);
    if (v9[0] != &v10)
    {
      free(v9[0]);
    }
  }

  v4 = v3[4];
  if (v4 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4))
  {
    DefaultPreferredAlignment = (*(v5 + 40))(a2, v3, v11, v12);
  }

  else
  {
    DefaultPreferredAlignment = mlir::detail::getDefaultPreferredAlignment(a2, v3, v11, v12);
  }

  v7 = DefaultPreferredAlignment;
  if (v11 != v13)
  {
    free(v11);
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::try_emplace<std::optional<unsigned long long>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::LookupBucketFor<mlir::Type>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::InsertIntoBucketImpl<mlir::Type>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::doFind<mlir::Type>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 24 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 24 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::LookupBucketFor<mlir::Type>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::InsertIntoBucketImpl<mlir::Type>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::LookupBucketFor<mlir::Type>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
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
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
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
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v22 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>,mlir::Type,std::optional<unsigned long long>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,std::optional<unsigned long long>>>::LookupBucketFor<mlir::Type>(a1, v16, &v22);
          *v22 = *v16;
          *(v22 + 8) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = 24 * v17 - 24;
    v20 = vdupq_n_s64(v19 / 0x18);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v18), xmmword_25D0A0500)));
      if (v21.i8[0])
      {
        *result = -4096;
      }

      if (v21.i8[4])
      {
        result[3] = -4096;
      }

      v18 += 2;
      result += 6;
    }

    while (((v19 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v18);
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<unsigned long long> ()(mlir::Type)>::callback_fn<mlir::DataLayout::getTypeIndexBitwidth(mlir::Type)::$_0>(void **a1, uint64_t *a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v16 = v18;
  v17 = 0x400000000;
  if (*v3)
  {
    (*(v3[1] + 56))(v14);
    llvm::SmallVectorImpl<mlir::DataLayoutEntryInterface>::operator=(&v16, v14);
    if (v14[0] != &v15)
    {
      free(v14[0]);
    }
  }

  v4 = v3[4];
  if (v4 && llvm::DefaultDoCastIfPossible<mlir::DataLayoutOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DataLayoutOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4))
  {
    v6 = (*(v5 + 48))(a2, v3, v16, v17);
  }

  else
  {
    v7 = v16;
    v8 = v17;
    if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      IndexBitwidth = getIndexBitwidth(v16, v17);
      v11 = IndexBitwidth & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      IndexBitwidth = llvm::DefaultDoCastIfPossible<mlir::DataLayoutTypeInterface,mlir::Type,llvm::CastInfo<mlir::DataLayoutTypeInterface,mlir::Type,void>>::doCastIfPossible(a2);
      v11 = IndexBitwidth;
      if (IndexBitwidth)
      {
        IndexBitwidth = (*(v10 + 32))(v10, IndexBitwidth, v3, v7, v8);
        v11 = IndexBitwidth & 0xFFFFFFFFFFFFFF00;
        if ((v12 & 1) == 0)
        {
          LOBYTE(IndexBitwidth) = 0;
          v11 = 0;
        }
      }
    }

    v6 = v11 | IndexBitwidth;
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v6;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::InsertIntoBucketImpl<mlir::StringAttr>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
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
        v7 = (v4 + 8 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::InsertIntoBucketImpl<mlir::StringAttr>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t mlir::ConstantIntRanges::getStorageBitwidth(uint64_t *a1)
{
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v4 = v2;
  if (v2)
  {
    v2 = (*(v3 + 8))(v3, v2);
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(*v5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 64;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v5[1] & 0x3FFFFFFF;
  }

  return 0;
}

mlir::ConstantIntRanges *mlir::ConstantIntRanges::maxRange@<X0>(mlir::ConstantIntRanges *this@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v7 = this;
  if (this >= 0x41)
  {
    operator new[]();
  }

  v6 = 0;
  llvm::APInt::getAllOnes(&v4, this);
  result = mlir::ConstantIntRanges::fromUnsigned(&v6, &v4, a2);
  if (v5 >= 0x41)
  {
    result = v4;
    if (v4)
    {
      result = MEMORY[0x25F891010](v4, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x25F891010](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::ConstantIntRanges::fromUnsigned@<X0>(mlir::ConstantIntRanges *this@<X0>, const llvm::APInt *a2@<X1>, mlir::ConstantIntRanges *a3@<X8>)
{
  v6 = *(this + 2);
  v24 = 1;
  v23 = 0;
  v22 = 1;
  v21 = 0;
  v7 = v6 - 1;
  v8 = (v6 - 1) >> 6;
  v9 = (*this + 8 * v8);
  if (v6 < 0x41)
  {
    v9 = this;
  }

  v10 = 1 << v7;
  v11 = (*v9 & (1 << v7)) == 0;
  v12 = *(a2 + 2);
  v13 = v12 - 1;
  if (v12 >= 0x41)
  {
    v14 = (*a2 + 8 * ((v12 - 1) >> 6));
  }

  else
  {
    v14 = a2;
  }

  if ((v11 ^ (((*v14 >> v13) & 1) == 0)))
  {
    llvm::APInt::getSignedMinValue(v6, &v19);
    if (v24 >= 0x41 && v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }

    v23 = v19;
    v24 = v20;
    llvm::APInt::getAllOnes(&v19, v6);
    if (v20 >= 0x41)
    {
      v15 = (v19 + 8 * v8);
    }

    else
    {
      v15 = &v19;
    }

    *v15 = (*v15 & ~v10);
    if (v22 >= 0x41 && v21)
    {
      MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }

    v21 = v19;
    v22 = v20;
  }

  else
  {
    if (llvm::APInt::compareSigned(this, a2) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = this;
    }

    llvm::APInt::operator=(&v23, v16);
    if (llvm::APInt::compareSigned(this, a2) <= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = this;
    }

    llvm::APInt::operator=(&v21, v17);
  }

  result = mlir::ConstantIntRanges::ConstantIntRanges(a3, this, a2, &v23, &v21);
  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }
  }

  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      return MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::ConstantIntRanges::fromSigned@<X0>(mlir::ConstantIntRanges *this@<X0>, const llvm::APInt *a2@<X1>, mlir::ConstantIntRanges *a3@<X8>)
{
  v6 = *(this + 2);
  v20 = 1;
  v19 = 0;
  v18 = 1;
  v17 = 0;
  v7 = (*this + 8 * ((v6 - 1) >> 6));
  if (v6 < 0x41)
  {
    v7 = this;
  }

  v8 = ((*v7 >> (v6 - 1)) & 1) == 0;
  v9 = *(a2 + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*a2 + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = a2;
  }

  if ((v8 ^ (((*v11 >> v10) & 1) == 0)))
  {
    if (v6 >= 0x41)
    {
      operator new[]();
    }

    v19 = 0;
    v20 = v6;
    llvm::APInt::getAllOnes(&v15, v6);
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x25F891010](v17, 0x1000C8000313F17);
    }

    v17 = v15;
    v18 = v16;
  }

  else
  {
    if (llvm::APInt::compare(this, a2) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = this;
    }

    llvm::APInt::operator=(&v19, v12);
    if (llvm::APInt::compare(this, a2) <= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = this;
    }

    llvm::APInt::operator=(&v17, v13);
  }

  result = mlir::ConstantIntRanges::ConstantIntRanges(a3, &v19, &v17, this, a2);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x25F891010](v17, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  return result;
}

llvm::APInt *mlir::ConstantIntRanges::rangeUnion@<X0>(llvm::APInt *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (!*(this + 2))
  {
    *(a3 + 8) = 0;
    *a3 = *this;
    v12 = *(this + 6);
    *(a3 + 24) = v12;
    if (v12 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 16) = *(this + 2);
    v14 = *(this + 10);
    *(a3 + 40) = v14;
    if (v14 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 32) = *(this + 4);
    v15 = *(this + 14);
    *(a3 + 56) = v15;
    if (v15 > 0x40)
    {
      operator new[]();
    }

    v16 = *(this + 6);
    goto LABEL_33;
  }

  if (!*(a2 + 2))
  {
    *(a3 + 8) = 0;
    *a3 = *a2;
    v13 = *(a2 + 6);
    *(a3 + 24) = v13;
    if (v13 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 16) = *(a2 + 2);
    v17 = *(a2 + 10);
    *(a3 + 40) = v17;
    if (v17 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 32) = *(a2 + 4);
    v18 = *(a2 + 14);
    *(a3 + 56) = v18;
    if (v18 > 0x40)
    {
      operator new[]();
    }

    v16 = *(a2 + 6);
LABEL_33:
    *(a3 + 48) = v16;
    return this;
  }

  if (llvm::APInt::compare(this, a2) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = (v3 + 16);
  if (llvm::APInt::compare((v3 + 16), (a2 + 16)) <= 0)
  {
    v7 = (a2 + 16);
  }

  v8 = (v3 + 32);
  if (llvm::APInt::compareSigned((v3 + 32), (a2 + 32)) >= 0)
  {
    v8 = (a2 + 32);
  }

  v9 = (v3 + 48);
  v10 = (a2 + 48);
  if (llvm::APInt::compareSigned(v9, v10) <= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  return mlir::ConstantIntRanges::ConstantIntRanges(a3, v6, v7, v8, v11);
}

llvm::APInt *mlir::ConstantIntRanges::intersection@<X0>(llvm::APInt *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (!*(this + 2))
  {
    *(a3 + 8) = 0;
    *a3 = *this;
    v12 = *(this + 6);
    *(a3 + 24) = v12;
    if (v12 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 16) = *(this + 2);
    v14 = *(this + 10);
    *(a3 + 40) = v14;
    if (v14 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 32) = *(this + 4);
    v15 = *(this + 14);
    *(a3 + 56) = v15;
    if (v15 > 0x40)
    {
      operator new[]();
    }

    v16 = *(this + 6);
    goto LABEL_33;
  }

  if (!*(a2 + 2))
  {
    *(a3 + 8) = 0;
    *a3 = *a2;
    v13 = *(a2 + 6);
    *(a3 + 24) = v13;
    if (v13 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 16) = *(a2 + 2);
    v17 = *(a2 + 10);
    *(a3 + 40) = v17;
    if (v17 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 32) = *(a2 + 4);
    v18 = *(a2 + 14);
    *(a3 + 56) = v18;
    if (v18 > 0x40)
    {
      operator new[]();
    }

    v16 = *(a2 + 6);
LABEL_33:
    *(a3 + 48) = v16;
    return this;
  }

  if (llvm::APInt::compare(this, a2) <= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = (v3 + 16);
  if (llvm::APInt::compare((v3 + 16), (a2 + 16)) >= 0)
  {
    v7 = (a2 + 16);
  }

  v8 = (v3 + 32);
  if (llvm::APInt::compareSigned((v3 + 32), (a2 + 32)) <= 0)
  {
    v8 = (a2 + 32);
  }

  v9 = (v3 + 48);
  v10 = (a2 + 48);
  if (llvm::APInt::compareSigned(v9, v10) >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  return mlir::ConstantIntRanges::ConstantIntRanges(a3, v6, v7, v8, v11);
}

uint64_t mlir::ConstantIntRanges::getConstantValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 8);
  if (v4 > 0x40)
  {
    this = memcmp(*this, *(this + 16), ((v4 + 63) >> 3) & 0x3FFFFFF8);
    if (!this)
    {
      *(a2 + 8) = v4;
      operator new[]();
    }
  }

  else
  {
    v5 = *this;
    if (v4)
    {
      v6 = v5 == *(this + 16);
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_12;
    }
  }

  v4 = *(v2 + 40);
  if (v4 > 0x40)
  {
    this = memcmp(*(v2 + 32), *(v2 + 48), ((v4 + 63) >> 3) & 0x3FFFFFF8);
    if (!this)
    {
      *(a2 + 8) = v4;
      operator new[]();
    }

    goto LABEL_14;
  }

  if (!v4 || (v5 = *(v2 + 32), v5 != *(v2 + 48)))
  {
LABEL_14:
    v7 = 0;
    *a2 = 0;
    goto LABEL_17;
  }

LABEL_12:
  *(a2 + 8) = v4;
  *a2 = v5;
  v7 = 1;
LABEL_17:
  *(a2 + 16) = v7;
  return this;
}

llvm::APInt *mlir::IntegerValueRange::getMaxRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ConstantIntRanges::getStorageBitwidth((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (result)
  {
    v4 = result;
    v21 = result;
    if (result >= 0x41)
    {
      operator new[]();
    }

    v20 = 0;
    llvm::APInt::getAllOnes(&v18, result);
    llvm::APInt::getSignedMinValue(v4, &v16);
    llvm::APInt::getAllOnes(&v14, v4);
    if (v15 >= 0x41)
    {
      v5 = v14 + 8 * ((v4 - 1) >> 6);
    }

    else
    {
      v5 = &v14;
    }

    *v5 &= ~(1 << (v4 - 1));
    result = mlir::ConstantIntRanges::ConstantIntRanges(&v6, &v20, &v18, &v16, &v14);
    *(a2 + 8) = v7;
    *a2 = v6;
    *(a2 + 24) = v9;
    *(a2 + 16) = v8;
    v7 = 0;
    v9 = 0;
    *(a2 + 40) = v11;
    *(a2 + 32) = v10;
    *(a2 + 56) = v13;
    *(a2 + 48) = v12;
    v11 = 0;
    v13 = 0;
    *(a2 + 64) = 1;
    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        return MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

void mlir::intrange::detail::defaultInferResultRanges(uint64_t a1, void (**a2)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(&v16, a4);
    goto LABEL_4;
  }

  if (a4)
  {
LABEL_4:
    v8 = 72 * a4;
    while (*(a3 + 64) == 1)
    {
      v9 = llvm::SmallVectorTemplateCommon<mlir::ConstantIntRanges,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>>(&v16, a3, 1);
      v10 = v16 + 64 * v17;
      v11 = *(v9 + 8);
      *(v10 + 2) = v11;
      if (v11 > 0x40)
      {
        operator new[]();
      }

      *v10 = *v9;
      v12 = *(v9 + 24);
      *(v10 + 6) = v12;
      if (v12 > 0x40)
      {
        operator new[]();
      }

      *(v10 + 2) = *(v9 + 16);
      v13 = *(v9 + 40);
      *(v10 + 10) = v13;
      if (v13 > 0x40)
      {
        operator new[]();
      }

      *(v10 + 4) = *(v9 + 32);
      v14 = *(v9 + 56);
      *(v10 + 14) = v14;
      if (v14 > 0x40)
      {
        operator new[]();
      }

      *(v10 + 6) = *(v9 + 48);
      LODWORD(v17) = v17 + 1;
      a3 += 72;
      v8 -= 72;
      if (!v8)
      {
        v15 = v16;
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  v15 = v18;
LABEL_21:
  (*a2)(a2, a1, v15);
LABEL_22:
  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(v16, v16 + 8 * v17);
  if (v16 != v18)
  {
    free(v16);
  }
}

uint64_t mlir::intrange::detail::defaultInferResultRangesFromOptional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[9] = *MEMORY[0x277D85DE8];
  v8 = v26;
  v24 = v26;
  v25 = 0x100000000;
  v9 = a4 << 6 >> 6;
  if (v9 < 2)
  {
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(&v24, v9);
    v10 = v25;
    v8 = v24;
  }

  v11 = a4 << 6;
  if (a4)
  {
    v21 = a1;
    v12 = &v8[9 * v10 + 8];
    v13 = (a3 + 32);
    v20 = a4 << 6;
    do
    {
      if (*(v13 - 6) > 0x40u)
      {
        operator new[]();
      }

      v23 = *(v13 - 4);
      v14 = *(v13 - 2);
      if (v14 > 0x40)
      {
        operator new[]();
      }

      v22 = *(v13 - 2);
      v15 = *(v13 + 2);
      if (v15 > 0x40)
      {
        operator new[]();
      }

      v16 = *v13;
      v17 = *(v13 + 6);
      if (v17 > 0x40)
      {
        operator new[]();
      }

      v18 = v13[2];
      *(v12 - 14) = *(v13 - 6);
      *(v12 - 8) = v23;
      *(v12 - 10) = v14;
      *(v12 - 6) = v22;
      *(v12 - 6) = v15;
      *(v12 - 4) = v16;
      *(v12 - 2) = v17;
      *(v12 - 2) = v18;
      *v12 = 1;
      v12 += 72;
      v13 += 8;
      v11 -= 64;
    }

    while (v11);
    v10 = v25;
    v8 = v24;
    a1 = v21;
    v11 = v20;
  }

  LODWORD(v25) = v10 + (v11 >> 6);
  (*(a2 + 8))(a2, a1, v8);
  return llvm::SmallVector<mlir::IntegerValueRange,1u>::~SmallVector(&v24);
}

mlir::ConstantIntRanges *mlir::ConstantIntRanges::ConstantIntRanges(mlir::ConstantIntRanges *this, const void **a2, const void **a3, const void **a4, const void **a5)
{
  v5 = *(a2 + 2);
  *(this + 2) = v5;
  if (v5 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;
  v6 = *(a3 + 2);
  *(this + 6) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *(this + 2) = *a3;
  v7 = *(a4 + 2);
  *(this + 10) = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *(this + 4) = *a4;
  v8 = *(a5 + 2);
  *(this + 14) = v8;
  if (v8 > 0x40)
  {
    operator new[]();
  }

  *(this + 6) = *a5;
  return this;
}

uint64_t std::optional<mlir::ConstantIntRanges>::optional[abi:nn200100](uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *(result + 8) = *(a2 + 8);
    *result = *a2;
    *(a2 + 8) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 16) = *(a2 + 16);
    *(a2 + 24) = 0;
    *(result + 40) = *(a2 + 40);
    *(result + 32) = *(a2 + 32);
    *(a2 + 40) = 0;
    *(result + 56) = *(a2 + 56);
    *(result + 48) = *(a2 + 48);
    *(a2 + 56) = 0;
    *(result + 64) = 1;
  }

  return result;
}

void *llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      if (*(v2 - 2) >= 0x41u)
      {
        result = *(v2 - 2);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 6) >= 0x41u)
      {
        result = *(v2 - 4);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 10) >= 0x41u)
      {
        result = *(v2 - 6);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      v2 -= 8;
      if (*(v4 - 14) >= 0x41u)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(void **a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 64, &v6);
  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::uninitialized_move<mlir::ConstantIntRanges*,mlir::ConstantIntRanges*>(*a1, *a1 + 64 * *(a1 + 2), v4);
  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(*a1, *a1 + 8 * *(a1 + 2));
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 3) = v5;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::uninitialized_move<mlir::ConstantIntRanges*,mlir::ConstantIntRanges*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = a3 + 32;
    do
    {
      *(v3 - 24) = *(result + 8);
      *(v3 - 32) = *result;
      *(result + 8) = 0;
      *(v3 - 8) = *(result + 24);
      *(v3 - 16) = *(result + 16);
      *(result + 24) = 0;
      *(v3 + 8) = *(result + 40);
      *v3 = *(result + 32);
      *(result + 40) = 0;
      *(v3 + 24) = *(result + 56);
      *(v3 + 16) = *(result + 48);
      *(result + 56) = 0;
      result += 64;
      v3 += 64;
    }

    while (result != a2);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::ConstantIntRanges,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow(a1, v5);
    }
  }

  return a2;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRanges(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::IntegerValueRange>,llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>)::$_0>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = *a1;
  if (*(a3 + 8) > 0x40u)
  {
    operator new[]();
  }

  v10 = *a3;
  v3 = *(a3 + 24);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *(a3 + 16);
  v5 = *(a3 + 40);
  if (v5 > 0x40)
  {
    operator new[]();
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 56);
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *(a3 + 48);
  v13 = *(a3 + 8);
  v12 = v10;
  v15 = v3;
  v14 = v4;
  v17 = v5;
  v16 = v6;
  v19 = v7;
  v18 = v8;
  v20 = 1;
  result = (*v11)(*(v11 + 8), a2, &v12);
  if (v20 == 1)
  {
    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }
    }

    if (v13 >= 0x41)
    {
      result = v12;
      if (v12)
      {
        return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 72, &v6);
  llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = 72 * v3;
    do
    {
      std::optional<mlir::ConstantIntRanges>::optional[abi:nn200100](a2, v2);
      a2 += 72;
      v2 += 9;
      v6 -= 72;
    }

    while (v6);
    v2 = *a1;
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  return llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(v2, &v2[9 * v7]);
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      v2 -= 9;
      if (*(v4 - 8) == 1)
      {
        if (*(v4 - 4) >= 0x41u)
        {
          result = *(v4 - 3);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v4 - 8) >= 0x41u)
        {
          result = *(v4 - 5);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v4 - 12) >= 0x41u)
        {
          result = *(v4 - 7);
          if (result)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }

        if (*(v4 - 16) >= 0x41u)
        {
          result = *v2;
          if (*v2)
          {
            result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t llvm::SmallVector<mlir::IntegerValueRange,1u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(*a1, (*a1 + 72 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRangesFromOptional(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::ConstantIntRanges>,llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>)::$_0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    return (**result)(*(*result + 8), a2);
  }

  return result;
}

uint64_t mlir::detail::verifyLoopLikeOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  else
  {
    InterfaceFor = 0;
  }

  v70[0] = this;
  v70[1] = InterfaceFor;
  mlir::LoopLikeOpInterface::getInits(v70);
  v5 = v4;
  (*(InterfaceFor + 72))(InterfaceFor, this);
  if (v5 != v6)
  {
    v68[0] = "different number of inits and region iter_args: ";
    v69 = 259;
    mlir::Operation::emitOpError(&v74, this, v68);
    mlir::LoopLikeOpInterface::getInits(v70);
    v71 = v37;
    v38 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v74, &v71);
    v39 = v38;
    if (*v38)
    {
      mlir::Diagnostic::operator<<<5ul>((v38 + 1), " != ");
    }

    (*(InterfaceFor + 72))(InterfaceFor, this);
    goto LABEL_33;
  }

  mlir::LoopLikeOpInterface::getYieldedValues(this, InterfaceFor);
  if (v7)
  {
    (*(InterfaceFor + 72))(InterfaceFor, this);
    v9 = v8;
    mlir::LoopLikeOpInterface::getYieldedValues(this, InterfaceFor);
    if (v9 != v10)
    {
      v68[0] = "different number of region iter_args and yielded values: ";
      v69 = 259;
      mlir::Operation::emitOpError(&v74, this, v68);
      (*(InterfaceFor + 72))(InterfaceFor, this);
      v71 = v41;
      v42 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v74, &v71);
      v39 = v42;
      if (*v42)
      {
        mlir::Diagnostic::operator<<<5ul>((v42 + 1), " != ");
      }

      mlir::LoopLikeOpInterface::getYieldedValues(this, InterfaceFor);
LABEL_33:
      v66.__r_.__value_.__r.__words[0] = v40;
      v43 = &v66;
LABEL_34:
      v36 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v39, v43) + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
      return v36 & 1;
    }
  }

  (*(InterfaceFor + 88))(&v74, InterfaceFor, this);
  if (v76 == 1)
  {
    (*(InterfaceFor + 88))(v68, InterfaceFor, this);
    v11 = v68[1];
    (*(InterfaceFor + 72))(InterfaceFor, this);
    if (v11 != v12)
    {
      v68[0] = "different number of loop results and region iter_args: ";
      v69 = 259;
      mlir::Operation::emitOpError(&v74, this, v68);
      (*(InterfaceFor + 88))(&v71, InterfaceFor, this);
      v66.__r_.__value_.__r.__words[0] = v72;
      v45 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v74, &v66);
      v39 = v45;
      if (*v45)
      {
        mlir::Diagnostic::operator<<<5ul>((v45 + 1), " != ");
      }

      (*(InterfaceFor + 72))(InterfaceFor, this);
      v73[0] = v46;
      v43 = v73;
      goto LABEL_34;
    }
  }

  YieldedValues = mlir::LoopLikeOpInterface::getYieldedValues(this, InterfaceFor);
  v15 = v14;
  v73[0] = YieldedValues;
  v73[1] = v14;
  Inits = mlir::LoopLikeOpInterface::getInits(v70);
  v18 = v17;
  v19 = (*(InterfaceFor + 72))(InterfaceFor, this);
  if (!v18)
  {
LABEL_15:
    (*(InterfaceFor + 88))(&v74, InterfaceFor, this);
    if (v76 != 1 || (v25 = (*(InterfaceFor + 72))(InterfaceFor, this), v27 = v26, (*(InterfaceFor + 88))(&v74, InterfaceFor, this), !v27))
    {
LABEL_26:
      v36 = 1;
      return v36 & 1;
    }

    v28 = 0;
    v29 = 8 * v27;
    v30 = v74;
    while (1)
    {
      v31 = v74;
      if (!v28)
      {
        goto LABEL_24;
      }

      v32 = v74;
      v33 = v28;
      if (v74)
      {
        v34 = *(v74 + 8) & 7;
        v32 = v74;
        v33 = v28;
        if (v34 != 6)
        {
          v35 = (5 - v34);
          v31 = v30;
          v33 = v28 - v35;
          if (v28 <= v35)
          {
            goto LABEL_24;
          }

          v32 = v74 - 16 * v35;
        }
      }

      v31 = v32 - 24 * v33;
LABEL_24:
      if ((*(v31 + 8) ^ *(*(v25 + 8 * v28) + 8)) >= 8)
      {
        std::to_string(&v66, 0);
        v69 = 260;
        v68[0] = &v66;
        mlir::Operation::emitOpError(&v74, this, v68);
        if (v74)
        {
          mlir::Diagnostic::operator<<<25ul>(&v75, "-th region iter_arg and ");
          if (v74)
          {
            LODWORD(v71) = 2;
            v72 = 0;
            v56 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v77, &v71, 1);
            v57 = v77 + 24 * v78;
            v58 = *v56;
            *(v57 + 16) = *(v56 + 16);
            *v57 = v58;
            ++v78;
            if (v74)
            {
              mlir::Diagnostic::operator<<<38ul>(&v75, "-th loop result have different type: ");
              v71 = *(*(v25 + 8 * v28) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (v74)
              {
                mlir::Diagnostic::operator<<<mlir::Type>(&v75, &v71);
                if (v74)
                {
                  mlir::Diagnostic::operator<<<5ul>(&v75, " != ");
                  __val = *(v31 + 8) & 0xFFFFFFFFFFFFFFF8;
                  if (v74)
                  {
                    mlir::Diagnostic::operator<<<mlir::Type>(&v75, &__val);
                  }
                }
              }
            }
          }
        }

        v36 = v79 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        return v36 & 1;
      }

      ++v28;
      v30 -= 16;
      v29 -= 8;
      if (!v29)
      {
        goto LABEL_26;
      }
    }
  }

  v20 = v19;
  v21 = 0;
  v22 = (Inits + 24);
  while (1)
  {
    v23 = *v22;
    __val = v21;
    v24 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v24 != (*(*(v20 + 8 * v21) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      break;
    }

    if (v15 && v24 != (*(mlir::ValueRange::dereference_iterator(v73, v21) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      std::to_string(&v66, __val);
      v69 = 260;
      v68[0] = &v66;
      mlir::Operation::emitOpError(&v74, this, v68);
      if (v74)
      {
        mlir::Diagnostic::operator<<<25ul>(&v75, "-th region iter_arg and ");
      }

      v54 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v74, &__val);
      v48 = v54;
      if (*v54)
      {
        mlir::Diagnostic::operator<<<40ul>((v54 + 1), "-th yielded value have different type: ");
        v55 = *v48;
        v65 = *(*(v20 + 8 * v21) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v55)
        {
          mlir::Diagnostic::operator<<<mlir::Type>((v48 + 1), &v65);
          if (*v48)
          {
            mlir::Diagnostic::operator<<<5ul>((v48 + 1), " != ");
          }
        }
      }

      else
      {
        v65 = *(*(v20 + 8 * v21) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      v59 = mlir::ValueRange::dereference_iterator(v73, __val);
      if (*v48)
      {
        v60 = *(v59 + 8) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v71) = 4;
        v72 = v60;
        v61 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v48 + 3), &v71, 1);
        v62 = v48[3] + 24 * *(v48 + 8);
        v63 = *v61;
        *(v62 + 16) = *(v61 + 16);
        *v62 = v63;
        ++*(v48 + 8);
      }

      goto LABEL_64;
    }

    ++v21;
    v22 += 4;
    if (v18 == v21)
    {
      goto LABEL_15;
    }
  }

  std::to_string(&v66, v21);
  v69 = 260;
  v68[0] = &v66;
  mlir::Operation::emitOpError(&v74, this, v68);
  if (v74)
  {
    mlir::Diagnostic::operator<<<14ul>(&v75, "-th init and ");
  }

  v47 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v74, &__val);
  v48 = v47;
  if (*v47)
  {
    mlir::Diagnostic::operator<<<42ul>((v47 + 1), "-th region iter_arg have different type: ");
    if (*v48)
    {
      v49 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v71) = 4;
      v72 = v49;
      v50 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v48 + 3), &v71, 1);
      v51 = v48[3] + 24 * *(v48 + 8);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 16);
      *v51 = v52;
      ++*(v48 + 8);
      if (*v48)
      {
        mlir::Diagnostic::operator<<<5ul>((v48 + 1), " != ");
        v53 = *v48;
        v71 = *(*(v20 + 8 * v21) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v53)
        {
          mlir::Diagnostic::operator<<<mlir::Type>((v48 + 1), &v71);
        }
      }
    }
  }

LABEL_64:
  v64 = *(v48 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v36 = v64 ^ 1;
  return v36 & 1;
}

uint64_t mlir::LoopLikeOpInterface::getInits(mlir::LoopLikeOpInterface *this)
{
  v2 = (*(*(this + 1) + 64))();
  if (v3)
  {
    v4 = *(v2 + 16);
    if ((*(v4 + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 0;
    }

    v6 = v2 - v5;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(*this + 72);
    }

    else
    {
      v7 = 0;
    }

    return v7 + (v6 & 0x1FFFFFFFE0);
  }

  else
  {
    v9 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v10 = *(v9 + 72);
      v11 = *(v9 + 68);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    return v10 + 32 * v11;
  }
}

unint64_t mlir::LoopLikeOpInterface::getYieldedValues(mlir::LoopLikeOpInterface *this, uint64_t a2)
{
  (*(a2 + 80))(v6, a2, this);
  if (v7 != 1 || !v6[1])
  {
    return 0;
  }

  v2 = v6[0];
  v3 = *(v6[0] + 16);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
    v2 = v6[0] - v4;
  }

  else
  {
    v4 = 0;
  }

  return (v4 + (v2 & 0x1FFFFFFFE0)) & 0xFFFFFFFFFFFFFFF9 | 2;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(uint64_t *a1, int *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = *(a1 + 2) + 1;
    *(a1 + 2) = v5;
  }

  return v4 + 4 * v5 - 4;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }
}

uint64_t mlir::isOpTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = 0;
  }

  if (!v2)
  {
    return mlir::wouldOpBeTriviallyDead(this, a2);
  }

  v4 = 0;
  for (i = this - 16; ; i -= 16)
  {
    v6 = v3;
    if (!v4)
    {
      goto LABEL_11;
    }

    v7 = *(this - 1) & 7;
    v8 = this - 16;
    v9 = v4;
    if (v7 != 6)
    {
      v10 = (5 - v7);
      v6 = i;
      v9 = v4 - v10;
      if (v4 <= v10)
      {
        goto LABEL_11;
      }

      v8 = this - 16 * v10 - 16;
    }

    v6 = &v8[-24 * v9];
LABEL_11:
    if (*v6)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return mlir::wouldOpBeTriviallyDead(this, a2);
    }
  }

  return 0;
}

uint64_t mlir::wouldOpBeTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(this + 48) & 1) != 0 || (mlir::SymbolOpInterface::classof(this, v3))
  {
    return 0;
  }

  v6 = *(this + 1);
  v53 = v55;
  v55[0] = this;
  v55[1] = v6;
  v54 = 0x100000001;
  v7 = 1;
  while (2)
  {
    v8 = v53;
    while (1)
    {
      v9 = v53 + 16 * v7;
      v10 = *(v9 - 2);
      if (v10 != *(v9 - 1))
      {
        break;
      }

      LODWORD(v54) = --v7;
      if (!v7)
      {
        v4 = 1;
        goto LABEL_89;
      }
    }

    *(v9 - 2) = *(v10 + 8);
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v10 + 48) + 32))(*(v10 + 48), v11))
    {
      v12 = *(v10 + 44);
      if ((v12 & 0x7FFFFF) != 0)
      {
        v13 = v10 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 32 * *(v10 + 40) + 64;
        v14 = v13 + 24 * (v12 & 0x7FFFFF);
        do
        {
          v15 = *(v13 + 8);
          if (v15 != v13)
          {
            v16 = v54;
            do
            {
              if (v15)
              {
                v17 = v15 - 8;
              }

              else
              {
                v17 = 0;
              }

              v18 = *(v17 + 40);
              if (v16 >= HIDWORD(v54))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v16 + 1, 16);
                v16 = v54;
              }

              v19 = v53 + 16 * v16;
              *v19 = v18;
              v19[1] = v17 + 32;
              v16 = v54 + 1;
              LODWORD(v54) = v54 + 1;
              v15 = *(v15 + 8);
            }

            while (v15 != v13);
          }

          v13 += 24;
        }

        while (v13 != v14);
      }

      v20 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10);
      if (!v20)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v20 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10);
      if (!v20)
      {
        break;
      }
    }

    v50 = v52;
    v51 = 0x100000000;
    (*v21)(v21, v20, &v50);
    v46[0] = &v49;
    v46[1] = 4;
    v47 = 0;
    v22 = 1;
    v48 = 1;
    if (!v51)
    {
      goto LABEL_82;
    }

    v23 = 40 * v51;
    v24 = v50 + 16;
    do
    {
      v25 = **(v24 - 2);
      if (v25 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID())
      {
        v26 = *v24 & 6;
        if (*v24 >= 8uLL && v26 != 0)
        {
          v28 = v26 != 2;
          v29 = *v24 & 0xFFFFFFFFFFFFFFF8;
          if (!v29)
          {
            v28 = 1;
          }

          if (v28)
          {
            if (v26 == 4)
            {
              v30 = *v24 & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              v31 = v30;
            }

            else
            {
              v31 = *v24 & 0xFFFFFFFFFFFFFFF8;
            }

            if (!v31)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v31 = *(v29 + 24);
            if (!v31)
            {
              goto LABEL_33;
            }
          }

          v32 = 0;
          if ((*(v31 + 8) & 7) != 7)
          {
            v33 = *(v31 + 8) & 7;
            if (v33 == 6)
            {
              v32 = v31 + 24 * *(v31 + 16) + 120;
            }

            else
            {
              v32 = v31 + 16 * v33 + 16;
            }
          }

          if (v32 == v10)
          {
            if (v28)
            {
              if (v26 == 4)
              {
                v34 = *v24 & 0xFFFFFFFFFFFFFFF8;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v35 = v34;
              }

              else
              {
                v35 = (*v24 & 0xFFFFFFFFFFFFFFF8);
              }
            }

            else
            {
              v35 = *(v29 + 24);
            }

            llvm::SmallPtrSetImpl<mlir::Value>::insert(v46, v35, v45);
          }
        }
      }

LABEL_33:
      v24 += 5;
      v23 -= 40;
    }

    while (v23);
    if (v51)
    {
      v36 = 40 * v51;
      v37 = (v50 + 16);
      while (1)
      {
        v38 = *v37;
        if (*v37 >= 8 && (v39 = *v37 & 6, (v38 & 6) != 0))
        {
          v40 = v38 & 0xFFFFFFFFFFFFFFF8;
          if (v39 != 2 || v40 == 0)
          {
            v42 = v39 == 4 ? v40 : 0;
            v44 = (v42 ? v42 : v40);
          }

          else
          {
            v44 = *(v40 + 24);
          }
        }

        else
        {
          v44 = 0;
        }

        if (!llvm::SmallPtrSetImplBase::contains_imp(v46, v44))
        {
          v43 = **(v37 - 2);
          if (v43 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID())
          {
            break;
          }
        }

        v37 += 5;
        v36 -= 40;
        if (!v36)
        {
          goto LABEL_80;
        }
      }

      v22 = 0;
    }

    else
    {
LABEL_80:
      v22 = 1;
    }

LABEL_82:
    if ((v48 & 1) == 0)
    {
      free(v46[0]);
    }

    if (v50 != v52)
    {
      free(v50);
    }

    if (v22)
    {
LABEL_87:
      v7 = v54;
      if (!v54)
      {
        v4 = 1;
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  v4 = 0;
LABEL_92:
  v8 = v53;
LABEL_89:
  if (v8 != v55)
  {
    free(v8);
  }

  return v4;
}

BOOL mlir::isMemoryEffectFree(mlir *this, mlir::Operation *a2)
{
  v15 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(this);
  v16 = v3;
  if (v15)
  {
    result = mlir::MemoryEffectOpInterface::hasNoEffect(&v15);
    if (!result)
    {
      return result;
    }

    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
    if (((*(**(this + 6) + 32))(*(this + 6), v5) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
    if (((*(**(this + 6) + 32))(*(this + 6), v7) & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 11);
  if ((v8 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v9 = (((this + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v10 = &v9[3 * (v8 & 0x7FFFFF)];
  while (1)
  {
    if (*v9 != v9)
    {
      for (i = v9[1]; i != v9; i = i[1])
      {
        v12 = i - 1;
        if (!i)
        {
          v12 = 0;
        }

        if (v12[4] != v12 + 4)
        {
          break;
        }
      }

      if (i != v9)
      {
        v13 = i - 1;
        if (!i)
        {
          v13 = 0;
        }

        v14 = v13[5];
        v15 = v9;
        v16 = i;
        v17 = v14;
        if (v14)
        {
          break;
        }
      }
    }

LABEL_21:
    v9 += 3;
    if (v9 == v10)
    {
      return 1;
    }
  }

  while ((mlir::isMemoryEffectFree(v14, v6) & 1) != 0)
  {
    mlir::Region::OpIterator::operator++(&v15);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  return 0;
}

BOOL mlir::MemoryEffectOpInterface::hasNoEffect(mlir::MemoryEffectOpInterface *this)
{
  v5[20] = *MEMORY[0x277D85DE8];
  v3 = v5;
  v4 = 0x400000000;
  (**(this + 1))(*(this + 1), *this, &v3);
  v1 = v4;
  if (v3 != v5)
  {
    free(v3);
  }

  return v1 == 0;
}

void mlir::getEffectsRecursively(mlir *this@<X0>, uint64_t a2@<X8>)
{
  v25[5] = *MEMORY[0x277D85DE8];
  __src = v25;
  v24 = 0x100000000;
  v19 = v22;
  v21 = 6;
  v22[0] = this;
  v3 = 1;
  do
  {
    v4 = *(v19 + v3 - 1);
    v20 = v3 - 1;
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
    if (!(*(**(v4 + 48) + 32))(*(v4 + 48), v5))
    {
      v15 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4);
      if (!v15)
      {
        *a2 = 0;
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    v6 = *(v4 + 44);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((v4 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
      v8 = v7 + 24 * (v6 & 0x7FFFFF);
      do
      {
        for (i = *(v7 + 8); i != v7; i = *(i + 8))
        {
          v10 = i - 8;
          if (!i)
          {
            v10 = 0;
          }

          v11 = v10 + 32;
          for (j = *(v10 + 40); j != v11; j = *(j + 8))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v19, j);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
    }

    v13 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(v4);
    if (v13)
    {
      v15 = v13;
LABEL_17:
      (*v14)(v14, v15, &__src);
    }

    v3 = v20;
  }

  while (v20);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x100000000;
  v16 = v24;
  LOBYTE(v15) = 1;
  if (v24 && &__src != a2)
  {
    if (__src != v25)
    {
      *a2 = __src;
      v17 = HIDWORD(v24);
      *(a2 + 8) = v16;
      *(a2 + 12) = v17;
      __src = v25;
      HIDWORD(v24) = 0;
      goto LABEL_30;
    }

    if (v24 < 2)
    {
      v18 = 1;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v24, 40);
      v18 = v24;
      if (!v24)
      {
        goto LABEL_29;
      }
    }

    memcpy(*a2, __src, 40 * v18);
LABEL_29:
    *(a2 + 8) = v16;
LABEL_30:
    LODWORD(v24) = 0;
    LOBYTE(v15) = 1;
  }

LABEL_31:
  *(a2 + 56) = v15;
  if (v19 != v22)
  {
    free(v19);
  }

  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::isSpeculatable(mlir *this, mlir::Operation *a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ConditionallySpeculatable,mlir::Operation *,llvm::CastInfo<mlir::ConditionallySpeculatable,mlir::Operation *,void>>::doCastIfPossible(this);
  if (result)
  {
    result = (*v4)(v4, result);
    if (result >= 2)
    {
      v6 = *(this + 11);
      if ((v6 & 0x7FFFFF) != 0)
      {
        v7 = (((this + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
        v8 = &v7[3 * (v6 & 0x7FFFFF)];
        while (1)
        {
          if (*v7 != v7)
          {
            for (i = v7[1]; i != v7; i = i[1])
            {
              v10 = i - 1;
              if (!i)
              {
                v10 = 0;
              }

              if (v10[4] != v10 + 4)
              {
                break;
              }
            }

            if (i != v7)
            {
              v11 = i - 1;
              if (!i)
              {
                v11 = 0;
              }

              v12 = v11[5];
              v13[0] = v7;
              v13[1] = i;
              v14 = v12;
              if (v12)
              {
                break;
              }
            }
          }

LABEL_18:
          v7 += 3;
          result = 1;
          if (v7 == v8)
          {
            return result;
          }
        }

        while (1)
        {
          result = mlir::isSpeculatable(v12, v5);
          if (!result)
          {
            break;
          }

          mlir::Region::OpIterator::operator++(v13);
          v12 = v14;
          if (!v14)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation *,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ConditionallySpeculatable,mlir::Operation *,llvm::CastInfo<mlir::ConditionallySpeculatable,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemoryEffects::Allocate>();
      mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[315];
}

uint64_t llvm::getTypeName<mlir::MemoryEffects::Allocate>()
{
  {
    llvm::getTypeName<mlir::MemoryEffects::Allocate>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Allocate>();
    unk_27FC189F0 = v1;
  }

  return llvm::getTypeName<mlir::MemoryEffects::Allocate>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Allocate>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffects::Allocate]";
  v6 = 91;
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

uint64_t mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemoryEffects::Read>();
      mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[320];
}

uint64_t llvm::getTypeName<mlir::MemoryEffects::Read>()
{
  {
    llvm::getTypeName<mlir::MemoryEffects::Read>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Read>();
    *algn_27FC18A18 = v1;
  }

  return llvm::getTypeName<mlir::MemoryEffects::Read>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Read>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffects::Read]";
  v6 = 87;
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

uint64_t mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemoryEffects::Write>();
      mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[325];
}

uint64_t llvm::getTypeName<mlir::MemoryEffects::Write>()
{
  {
    llvm::getTypeName<mlir::MemoryEffects::Write>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Write>();
    unk_27FC18A40 = v1;
  }

  return llvm::getTypeName<mlir::MemoryEffects::Write>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemoryEffects::Write>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffects::Write]";
  v6 = 88;
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

BOOL mlir::verifyListOfOperandsOrIntegers(void ***a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t *a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v28[26] = *MEMORY[0x277D85DE8];
  v24 = a4;
  if (a6 != a4)
  {
    v22[0] = "expected ";
    v23 = 259;
    mlir::Operation::emitError(v28, a1, v22);
    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v28, &v24);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<2ul>((v15 + 1), " ");
      if (*v16)
      {
        v27 = 261;
        v25 = a2;
        v26 = a3;
        mlir::Diagnostic::operator<<((v16 + 1), &v25);
        if (*v16)
        {
          mlir::Diagnostic::operator<<<14ul>((v16 + 1), " values, got ");
        }
      }
    }

    v25 = a6;
    v17 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v16, &v25) + 200);
    goto LABEL_19;
  }

  v11 = 0;
  if (a6)
  {
    v12 = 8 * a6;
    do
    {
      v13 = *a5++;
      if (v13 == 0x8000000000000000)
      {
        ++v11;
      }

      v12 -= 8;
    }

    while (v12);
  }

  v21 = v11;
  if (a8 != v11)
  {
    v22[0] = "expected ";
    v23 = 259;
    mlir::Operation::emitError(v28, a1, v22);
    v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v28, &v21);
    v19 = v18;
    if (*v18)
    {
      mlir::Diagnostic::operator<<<10ul>((v18 + 1), " dynamic ");
      if (*v19)
      {
        v27 = 261;
        v25 = a2;
        v26 = a3;
        mlir::Diagnostic::operator<<((v19 + 1), &v25);
        if (*v19)
        {
          mlir::Diagnostic::operator<<<8ul>((v19 + 1), " values");
        }
      }
    }

    v17 = *(v19 + 200);
LABEL_19:
    v14 = (v17 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    return v14;
  }

  return 1;
}

uint64_t mlir::detail::verifyOffsetSizeAndStrideOp(void ***a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 8))(a2, a1);
  v6 = v5;
  (*(a2 + 64))(&v46, a2, a1);
  if (v47 == 1 && v4 == 1)
  {
    v9 = 0;
  }

  else
  {
    (*(a2 + 64))(&v52, a2, a1);
    v8 = v53;
    (*(a2 + 72))(&v49, a2, a1);
    v9 = v8 != v50;
    if (v49 != v51)
    {
      free(v49);
    }

    if (v52 != v54)
    {
      free(v52);
    }
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v9)
  {
    v44[0] = "expected mixed offsets rank to match mixed sizes rank (";
    v45 = 259;
    mlir::Operation::emitError(&v46, a1, v44);
    (*(a2 + 64))(&v52, a2, a1);
    v43 = v53;
    v10 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v46, &v43);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<5ul>((v10 + 1), " vs ");
    }

    (*(a2 + 72))(&v49, a2, a1);
LABEL_36:
    v42 = v50;
    v37 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v11, &v42);
    v38 = v37;
    if (*v37)
    {
      mlir::Diagnostic::operator<<<49ul>((v37 + 1), ") so the rank of the result type is well-formed.");
    }

    v39 = *(v38 + 200);
    if (v49 != v51)
    {
      free(v49);
    }

    v35 = v39 ^ 1;
    if (v52 != v54)
    {
      free(v52);
    }

    goto LABEL_42;
  }

  (*(a2 + 72))(&v46, a2, a1);
  v12 = v47;
  (*(a2 + 80))(&v52, a2, a1);
  v13 = v53;
  if (v52 != v54)
  {
    free(v52);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v12 != v13)
  {
    v44[0] = "expected mixed sizes rank to match mixed strides rank (";
    v45 = 259;
    mlir::Operation::emitError(&v46, a1, v44);
    (*(a2 + 72))(&v52, a2, a1);
    v43 = v53;
    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v46, &v43);
    v11 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<5ul>((v36 + 1), " vs ");
    }

    (*(a2 + 80))(&v49, a2, a1);
    goto LABEL_36;
  }

  v14 = (*(a2 + 40))(a2, a1);
  v16 = v15;
  v17 = (*(a2 + 16))(a2, a1);
  if (!mlir::verifyListOfOperandsOrIntegers(a1, "offset", 6, v4, v14, v16, v17 & 0xFFFFFFFFFFFFFFF9 | 2, v18) || (v19 = (*(a2 + 48))(a2, a1), v21 = v20, v22 = (*(a2 + 24))(a2, a1), !mlir::verifyListOfOperandsOrIntegers(a1, "size", 4, HIDWORD(v4), v19, v21, v22 & 0xFFFFFFFFFFFFFFF9 | 2, v23)) || (v24 = (*(a2 + 56))(a2, a1), v26 = v25, v27 = (*(a2 + 32))(a2, a1), !mlir::verifyListOfOperandsOrIntegers(a1, "stride", 6, v6, v24, v26, v27 & 0xFFFFFFFFFFFFFFF9 | 2, v28)))
  {
    v35 = 0;
    return v35 & 1;
  }

  v29 = (*(a2 + 40))(a2, a1);
  if (v30)
  {
    v31 = 8 * v30;
    while (1)
    {
      v49 = *v29;
      if (v49 > 0x8000000000000000)
      {
        break;
      }

      ++v29;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_28;
      }
    }

    v41 = "expected offsets to be non-negative, but got ";
  }

  else
  {
LABEL_28:
    v32 = (*(a2 + 48))(a2, a1);
    if (!v33)
    {
      v35 = 1;
      return v35 & 1;
    }

    v34 = 8 * v33;
    v35 = 1;
    while (1)
    {
      v49 = *v32;
      if (v49 > 0x8000000000000000)
      {
        break;
      }

      ++v32;
      v34 -= 8;
      if (!v34)
      {
        return v35 & 1;
      }
    }

    v41 = "expected sizes to be non-negative, but got ";
  }

  v52 = v41;
  v54[8] = 259;
  mlir::Operation::emitError(&v46, a1, &v52);
  v35 = *(mlir::InFlightDiagnostic::operator<<<long long &>(&v46, &v49) + 200) ^ 1;
LABEL_42:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  return v35 & 1;
}

llvm::raw_ostream *mlir::printDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v29[0] = a3;
  v29[1] = a4;
  v28[0] = a7;
  v28[1] = a8;
  v31[0] = a9;
  v31[1] = a10;
  v14 = 8 * a11 - 8;
  v15 = 0x7B3C5B28u >> v14;
  v16 = 0x7D3E5D29u >> v14;
  v17 = (*(*a1 + 16))(a1, a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, v15);
    if (a6)
    {
LABEL_3:
      v27 = 0;
      v30[0] = v28;
      v30[1] = &v27;
      v30[2] = a1;
      v30[3] = v29;
      v30[4] = &v27 + 4;
      v30[5] = v31;
      mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v30, *a5);
      if (a6 != 1)
      {
        v19 = 8 * a6;
        v20 = a5 + 1;
        v21 = v19 - 8;
        do
        {
          v22 = (*(*a1 + 16))(a1);
          v23 = *(v22 + 4);
          if (*(v22 + 3) - v23 > 1uLL)
          {
            *v23 = 8236;
            *(v22 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v22, ", ", 2uLL);
          }

          v24 = *v20++;
          mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v30, v24);
          v21 -= 8;
        }

        while (v21);
      }

      result = (*(*a1 + 16))(a1);
      v26 = *(result + 4);
      if (v26 >= *(result + 3))
      {
        return llvm::raw_ostream::write(result, v16);
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = v15;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a1 + 16))(a1);
  v26 = *(result + 4);
  if (v26 < *(result + 3))
  {
LABEL_13:
    *(result + 4) = v26 + 1;
    *v26 = v16;
    return result;
  }

  return llvm::raw_ostream::write(result, v16);
}

BOOL mlir::parseDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v25 = v27;
  v26 = 0x400000000;
  v20 = xmmword_25D0A0580;
  v14 = a1;
  v15 = &v19;
  v16 = a2;
  v17 = &v25;
  v18 = &v22;
  v19 = &v21;
  if ((*(*a1 + 392))())
  {
    v8 = (*(*a1 + 32))(a1);
    *a3 = mlir::detail::DenseArrayAttrImpl<long long>::get(*v8, v25, v26);
    v9 = (*(*a1 + 32))(a1);
    *a4 = mlir::detail::DenseArrayAttrImpl<BOOL>::get(*v9, v19, v20);
    v10 = 1;
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    v13[16] = 257;
    (*(*a1 + 24))(&v23, a1, v11, v13);
    if (v23)
    {
      mlir::Diagnostic::operator<<<30ul>(v24, "expected SSA value or integer");
    }

    v10 = (v24[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  }

  if (v19 != &v21)
  {
    free(v19);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v10;
}

uint64_t mlir::detail::sameOffsetsSizesAndStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v49[4] = *MEMORY[0x277D85DE8];
  (*(a2 + 40))(a2, a1);
  v12 = v11;
  (*(a4 + 40))(a4, a3);
  if (v12 != v13)
  {
    return 0;
  }

  (*(a2 + 48))(a2, a1);
  v15 = v14;
  (*(a4 + 48))(a4, a3);
  if (v15 != v16)
  {
    return 0;
  }

  (*(a2 + 56))(a2, a1);
  v18 = v17;
  (*(a4 + 56))(a4, a3);
  if (v18 != v19)
  {
    return 0;
  }

  (*(a2 + 64))(v42, a2, a1);
  (*(a4 + 64))(v40, a4, a3);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj4EEES7_EEC2B8nn200100IJLm0ELm1EEJS7_S7_EJEJEJS7_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(&v44, v42, v40);
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  v20 = v47;
  v21 = 1;
  if (v45 && v48)
  {
    v22 = v44;
    v23 = 8 * v48 - 8;
    v24 = 8 * v45 - 8;
    do
    {
      v21 = a5(a6, *v22, *v20);
      if (!v21)
      {
        break;
      }

      if (!v24)
      {
        break;
      }

      ++v22;
      ++v20;
      v25 = v23;
      v23 -= 8;
      v24 -= 8;
    }

    while (v25);
    v20 = v47;
  }

  if (v20 != v49)
  {
    free(v20);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (!v21)
  {
    return 0;
  }

  (*(a2 + 72))(v42, a2, a1);
  (*(a4 + 72))(v40, a4, a3);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj4EEES7_EEC2B8nn200100IJLm0ELm1EEJS7_S7_EJEJEJS7_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(&v44, v42, v40);
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  v26 = v47;
  v27 = 1;
  if (v45 && v48)
  {
    v28 = v44;
    v29 = 8 * v48 - 8;
    v30 = 8 * v45 - 8;
    do
    {
      v27 = a5(a6, *v28, *v26);
      if (!v27)
      {
        break;
      }

      if (!v30)
      {
        break;
      }

      ++v28;
      ++v26;
      v31 = v29;
      v29 -= 8;
      v30 -= 8;
    }

    while (v31);
    v26 = v47;
  }

  if (v26 != v49)
  {
    free(v26);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (!v27)
  {
    return 0;
  }

  (*(a2 + 80))(v42, a2, a1);
  (*(a4 + 80))(v40, a4, a3);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj4EEES7_EEC2B8nn200100IJLm0ELm1EEJS7_S7_EJEJEJS7_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(&v44, v42, v40);
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  v32 = v47;
  v33 = 1;
  if (v45 && v48)
  {
    v34 = v44;
    v35 = 8 * v45 - 8;
    v36 = 8 * v48 - 8;
    do
    {
      v33 = a5(a6, *v34, *v32);
      if (!v33)
      {
        break;
      }

      if (!v35)
      {
        break;
      }

      ++v34;
      ++v32;
      v35 -= 8;
      v37 = v36;
      v36 -= 8;
    }

    while (v37);
    v32 = v47;
  }

  if (v32 != v49)
  {
    free(v32);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v33;
}

llvm::raw_ostream *mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(uint64_t a1, int64_t a2)
{
  if (*(*a1 + 8) && *(**a1 + **(a1 + 8)) == 1)
  {
    v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      llvm::raw_ostream::write(v4, "[", 1uLL);
    }

    else
    {
      *v5 = 91;
      ++*(v4 + 4);
    }
  }

  v6 = *(a1 + 16);
  if (a2 == 0x8000000000000000)
  {
    result = (*(*v6 + 160))(v6, *(**(a1 + 24) + 32 * **(a1 + 32) + 24));
    if (*(*(a1 + 40) + 8))
    {
      v8 = *(a1 + 16);
      v9 = (*(*v8 + 16))(v8);
      v10 = *(v9 + 4);
      if ((*(v9 + 3) - v10) > 2)
      {
        *(v10 + 2) = 32;
        *v10 = 14880;
        *(v9 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v9, " : ", 3uLL);
      }

      v12 = mlir::TypeRange::dereference_iterator(**(a1 + 40), **(a1 + 32));
      result = (*(*v8 + 32))(v8, v12);
    }

    ++**(a1 + 32);
  }

  else
  {
    v11 = (*(*v6 + 16))(v6);
    result = llvm::write_integer(v11, a2, 0, 0);
  }

  if (*(*a1 + 8) && *(**a1 + **(a1 + 8)) == 1)
  {
    result = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v13 = *(result + 4);
    if (*(result + 3) == v13)
    {
      result = llvm::raw_ostream::write(result, "]", 1uLL);
    }

    else
    {
      *v13 = 93;
      ++*(result + 4);
    }
  }

  ++**(a1 + 8);
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::parseDynamicIndexList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<long long> &,mlir::detail::DenseArrayAttrImpl<BOOL> &,llvm::SmallVectorImpl<mlir::Type> *,mlir::AsmParser::Delimiter)::$_0>(uint64_t *a1)
{
  memset(v14, 0, 24);
  v2 = (*(**a1 + 712))(*a1, v14, 1);
  v3 = a1[1];
  v4 = (*(**a1 + 320))();
  llvm::SmallVectorTemplateBase<BOOL,true>::push_back(v3, v4 & 1);
  if (v2 & 0x100) != 0 && (v2)
  {
    v5 = a1[2];
    v6 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v5, v14, 1);
    v7 = (*v5 + 32 * *(v5 + 8));
    v8 = v6[1];
    *v7 = *v6;
    v7[1] = v8;
    ++*(v5 + 8);
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1[3], 0x8000000000000000);
    v9 = *a1[4];
    if (v9)
    {
      v10 = *a1;
      v11 = llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(v9);
      if (((*(*v10 + 576))(v10, v11) & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = 0;
    if ((mlir::AsmParser::parseInteger<long long>(*a1, &v13) & 1) == 0)
    {
      return 0;
    }

    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1[3], v13);
  }

  return *(*a1[1] + *(a1[1] + 8) - 1) != 1 || ((*(**a1 + 336))(*a1) & 1) != 0;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj4EEES7_EEC2B8nn200100IJLm0ELm1EEJS7_S7_EJEJEJS7_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, a2);
  }

  a1[6] = a1 + 8;
  a1[7] = 0x400000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=((a1 + 6), a3);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::OpFoldResult>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::detail::DenseSetImpl<llvm::StringRef,llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::insert<std::string const*>(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (a2 != a3)
  {
    v12[5] = v4;
    v12[6] = v5;
    v7 = a2;
    v8 = result;
    do
    {
      v9 = *(v7 + 23);
      v10 = *v7;
      if (v9 >= 0)
      {
        v10 = v7;
      }

      if (v9 < 0)
      {
        v9 = v7[1];
      }

      *&v11 = v10;
      *(&v11 + 1) = v9;
      v12[0] = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v8, &v11, v12, a4);
      if ((result & 1) == 0)
      {
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(v8, &v11, v12[0]);
        *result = v11;
      }

      v7 += 3;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 4), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
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
    llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  return v5 + 1;
}

void std::vector<mlir::RewritePattern *>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
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
      std::vector<mlir::RewritePattern *>::__throw_length_error[abi:nn200100]();
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

      std::__throw_bad_array_new_length[abi:nn200100]();
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

const void **std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](const void **result, uint64_t *a2)
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
      std::vector<std::unique_ptr<mlir::RewritePattern>>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::RewritePattern>>>(result, v13);
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
    result = std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::~__split_buffer(v18);
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

const void **mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_0::operator()(uint64_t a1, uint64_t *a2, unsigned int (*a3)(uint64_t), uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = **a1;
  v10 = *(*a1 + 8);
  if (v9 == v10)
  {
    if (*(*(*(*a2 + 24) & 0xFFFFFFFFFFFFFFF8) + 240))
    {
      operator new();
    }

    v12 = *a1;
    if (v9)
    {
      v7[1] = v9;
      operator delete(v9);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v12 = *a1;
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v9 = *v12;
    v10 = v12[1];
  }

  while (v9 != v10)
  {
    v17 = *v9;
    if (a3(a4))
    {
      v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::operator[](*v8, &v17);
      v16 = *a2;
      std::vector<mlir::RewritePattern *>::push_back[abi:nn200100](v13, &v16);
    }

    ++v9;
  }

  v14 = (*v8 + 3);

  return std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](v14, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = v4 - 1;
  v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v9 = v6 + 16 * v8;
  if ((llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8)) & 1) == 0)
  {
    v10 = 1;
    while (*v9 != -1)
    {
      v11 = v10 + 1;
      v8 = (v8 + v10) & v7;
      v9 = v6 + 16 * v8;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8));
      v10 = v11;
      if (isEqual)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

double mlir::Region::getOps<mlir::pdl::PatternOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::PatternOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<convertPDLToPDLInterp(mlir::ModuleOp,llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>> &)::$_0>(int a1, mlir *this)
{
  if (mlir::isOpTriviallyDead(this, this))
  {
    if (*(this + 2))
    {
      *(this + 2) = 0;
      v4 = *this;
      v3 = *(this + 1);
      *v3 = *this;
      *(v4 + 8) = v3;
      *this = 0;
      *(this + 1) = 0;
    }

    mlir::Operation::destroy(this);
  }
}

char **llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(char **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 2);
    if (v6 >= v5)
    {
      v9 = *a1;
      if (v5)
      {
        v10 = 8 * v5;
        do
        {
          v11 = *v4;
          *v4 = 0;
          v4 += 8;
          std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v9, v11);
          v9 += 8;
          v10 -= 8;
        }

        while (v10);
        v12 = *a1;
        v6 = *(a1 + 2);
      }

      else
      {
        v12 = *a1;
      }

      for (i = &v12[8 * v6]; i != v9; std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](i, 0))
      {
        --i;
      }

      *(a1 + 2) = v5;
      v26 = *(a2 + 8);
      if (v26)
      {
        v27 = -8 * v26;
        v28 = (*a2 + 8 * v26 - 8);
        do
        {
          std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v28--, 0);
          v27 += 8;
        }

        while (v27);
      }

      goto LABEL_33;
    }

    if (*(a1 + 3) >= v5)
    {
      if (v6)
      {
        v13 = *a1;
        v14 = 8 * v6;
        do
        {
          v15 = *v4;
          *v4 = 0;
          v4 += 8;
          std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v13, v15);
          v13 += 8;
          v14 -= 8;
        }

        while (v14);
        goto LABEL_19;
      }
    }

    else
    {
      if (v6)
      {
        v7 = -8 * v6;
        v8 = &(*a1)[8 * v6 - 8];
        do
        {
          std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v8--, 0);
          v7 += 8;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::grow(a1, v5);
    }

    v6 = 0;
LABEL_19:
    v16 = *a2;
    v17 = *(a2 + 8);
    if (v6 != v17)
    {
      v18 = &(*a1)[8 * v6];
      v19 = &v16[8 * v6];
      v20 = 8 * v17 - 8 * v6;
      do
      {
        v21 = *v19;
        *v19 = 0;
        v19 += 8;
        *v18 = v21;
        v18 += 8;
        v20 -= 8;
      }

      while (v20);
    }

    *(a1 + 2) = v5;
    v22 = *(a2 + 8);
    if (v22)
    {
      v23 = -8 * v22;
      v24 = &v16[8 * v22 - 8];
      do
      {
        std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v24--, 0);
        v23 += 8;
      }

      while (v23);
    }

LABEL_33:
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = -8 * v5;
    v7 = &v4[8 * v5 - 8];
    do
    {
      std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](v7--, 0);
      v6 += 8;
    }

    while (v6);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

char ***std::unique_ptr<mlir::PDLPatternConfigSet>::reset[abi:nn200100](char ****a1, char ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfig>,6u>::~SmallVector(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

llvm::StringMapImpl *llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v18 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        v9 = *(*a2 + 8 * v7);
        if (v9)
        {
          v10 = v9 + 1 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(*this + 8 * v7) = v9;
        }

        else
        {
          v11 = *v9;
          buffer = llvm::allocate_buffer((*v9 + 41), 8uLL);
          v13 = buffer;
          v14 = buffer + 5;
          if (v11)
          {
            memcpy(buffer + 5, v9 + 5, v11);
          }

          *(v14 + v11) = 0;
          *v13 = v11;
          v15 = v13 + 1;
          v16 = v9[4];
          if (v16)
          {
            if (v16 == v9 + 1)
            {
              v13[4] = v15;
              (*(*v16 + 24))(v16);
            }

            else
            {
              v13[4] = (*(*v16 + 16))(v16, v15);
            }
          }

          else
          {
            v13[4] = 0;
          }

          *(*this + 8 * v7) = v13;
          *(v18 + 4 * v7) = *(v8 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E81630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

uint64_t std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet::Impl>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<mlir::detail::PDLByteCode>::reset[abi:nn200100]((a1 + 96), 0);
  v8 = (a1 + 72);
  std::vector<std::unique_ptr<mlir::RewritePattern>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (a1 + 48);
  std::vector<std::unique_ptr<mlir::RewritePattern>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = (v3 + 16);
    v5 = 32 * v2;
    do
    {
      if ((*(v4 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          *v4 = v6;
          operator delete(v6);
        }
      }

      v4 += 4;
      v5 -= 32;
    }

    while (v5);
    v3 = *(a1 + 24);
  }

  return MEMORY[0x25F891030](v3, 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::LookupBucketFor<mlir::OperationName>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
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
      v16 = result + 4;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
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
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>,mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = *v19;
          v31[2] = 0;
          v21[3] = 0;
          *v21 = v22;
          v21[1] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v19 + 8) = 0;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x7FFFFFFFFFFFFFFLL;
    v26 = v25 & 0x7FFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x7FFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 4;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 4) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::detail::PDLByteCode>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v11 = (v2 + 3760);
    std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__destroy_vector::operator()[abi:nn200100](&v11);
    v11 = (v2 + 3736);
    std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__destroy_vector::operator()[abi:nn200100](&v11);
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    if (v4)
    {
      v5 = v3 + 104 * v4 - 80;
      v6 = -104 * v4;
      do
      {
        v7 = *(v5 + 48);
        if ((v5 + 64) != v7)
        {
          free(v7);
        }

        if (v5 + 16 != *v5)
        {
          free(*v5);
        }

        v5 -= 104;
        v6 += 104;
      }

      while (v6);
      v3 = *(v2 + 392);
    }

    if (v3 != (v2 + 408))
    {
      free(v3);
    }

    v8 = *(v2 + 240);
    if (v8 != (v2 + 264))
    {
      free(v8);
    }

    v9 = *(v2 + 88);
    if (v9 != (v2 + 112))
    {
      free(v9);
    }

    v10 = *(v2 + 64);
    if (v10)
    {
      *(v2 + 72) = v10;
      operator delete(v10);
    }

    llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfigSet>,6u>::~SmallVector(v2);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t mlir::PatternApplicator::PatternApplicator(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 0x100000000;
  *(a1 + 56) = 0;
  if (*(*a2 + 72))
  {
    operator new();
  }

  return a1;
}

void mlir::PatternApplicator::~PatternApplicator(mlir::detail::PDLByteCodeMutableState **this)
{
  std::unique_ptr<mlir::detail::PDLByteCodeMutableState>::reset[abi:nn200100](this + 7, 0);
  v2 = this[4];
  if (v2 != this + 6)
  {
    free(v2);
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::destroyAll((this + 1));
  MEMORY[0x25F891030](this[1], 8);
}

void mlir::PatternApplicator::applyCostModel(uint64_t **a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v80[0] = a2;
  v80[1] = a3;
  v4 = *(**a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 400);
    if (v5)
    {
      v8 = 0;
      v9 = *(v4 + 392);
      v10 = 104 * v5;
      do
      {
        v11 = a1[7];
        *(v11[21] + v8) = a2(a3, v9);
        v9 += 104;
        v8 += 2;
        v10 -= 104;
      }

      while (v10);
    }
  }

  v12 = *(a1 + 4);
  if (!v12 && !*(a1 + 5))
  {
    goto LABEL_32;
  }

  v13 = *(a1 + 6);
  if (v13 > 4 * v12 && v13 >= 0x41)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::destroyAll((a1 + 1));
    v14 = 1 << (33 - __clz(v12 - 1));
    if (v14 <= 64)
    {
      v14 = 64;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == *(a1 + 6))
    {
      a1[2] = 0;
      if (v15)
      {
        v16 = 0;
        v17 = a1[1];
        v18 = (40 * v15 - 40) / 0x28;
        v19 = vdupq_n_s64(v18);
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v16), xmmword_25D0A0500)));
          if (v20.i8[0])
          {
            *v17 = -4096;
          }

          if (v20.i8[4])
          {
            v17[5] = -4096;
          }

          v16 += 2;
          v17 += 10;
        }

        while (((v18 + 2) & 0xFFFFFFFFFFFFFFELL) != v16);
      }
    }

    else
    {
      MEMORY[0x25F891030](a1[1], 8);
      if (v15)
      {
        v69 = (4 * v15 / 3 + 1) | ((4 * v15 / 3 + 1) >> 1);
        v70 = v69 | (v69 >> 2) | ((v69 | (v69 >> 2)) >> 4);
        LODWORD(v70) = (((v70 | (v70 >> 8)) >> 16) | v70 | (v70 >> 8)) + 1;
        *(a1 + 6) = v70;
        buffer = llvm::allocate_buffer((40 * v70), 8uLL);
        a1[1] = buffer;
        a1[2] = 0;
        v72 = *(a1 + 6);
        if (v72)
        {
          v73 = 0;
          v74 = 40 * v72 - 40;
          v75 = vdupq_n_s64(v74 / 0x28);
          do
          {
            v76 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(vdupq_n_s64(v73), xmmword_25D0A0500)));
            if (v76.i8[0])
            {
              *buffer = -4096;
            }

            if (v76.i8[4])
            {
              buffer[5] = -4096;
            }

            v73 += 2;
            buffer += 10;
          }

          while (((v74 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v73);
        }
      }

      else
      {
        a1[1] = 0;
        a1[2] = 0;
        *(a1 + 6) = 0;
      }
    }

    goto LABEL_32;
  }

  if (v13)
  {
    v21 = a1[1] + 3;
    v22 = 40 * v13;
    while (1)
    {
      v23 = *(v21 - 3);
      if (v23 == -8192)
      {
        goto LABEL_29;
      }

      if (v23 != -4096)
      {
        break;
      }

LABEL_30:
      v21 += 5;
      v22 -= 40;
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    v24 = *(v21 - 2);
    if (v21 != v24)
    {
      free(v24);
    }

LABEL_29:
    *(v21 - 3) = -4096;
    goto LABEL_30;
  }

LABEL_31:
  a1[2] = 0;
LABEL_32:
  v25 = **a1;
  if (*(v25 + 8))
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = 32 * v26;
      v28 = *v25;
      while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v28 += 4;
        v27 -= 32;
        if (!v27)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v28 = *v25;
    }

    v29 = *v25 + 32 * v26;
    if (v28 != v29)
    {
      while (1)
      {
        v30 = v28[1];
        v31 = v28[2];
        while (v30 != v31)
        {
          v32 = *v30;
          if (*(*v30 + 20) == -1)
          {
            goto LABEL_50;
          }

          v81 = 0;
          v33 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::LookupBucketFor<mlir::OperationName>(a1[1], *(a1 + 6), *v28, &v81);
          v34 = v81;
          if ((v33 & 1) == 0)
          {
            v79[0] = v81;
            v35 = *(a1 + 4);
            v36 = *(a1 + 6);
            if (4 * v35 + 4 >= (3 * v36))
            {
              v37 = 2 * v36;
            }

            else
            {
              v37 = *(a1 + 6);
              if (v36 + ~v35 - *(a1 + 5) > v36 >> 3)
              {
LABEL_46:
                *(a1 + 4) = v35 + 1;
                if (*v34 != -4096)
                {
                  --*(a1 + 5);
                }

                *v34 = *v28;
                v34[1] = (v34 + 3);
                v34[2] = 0x200000000;
                goto LABEL_49;
              }
            }

            v78 = a1[1];
            v38 = (v37 - 1) | ((v37 - 1) >> 1);
            v39 = v38 | (v38 >> 2) | ((v38 | (v38 >> 2)) >> 4);
            v40 = ((v39 | (v39 >> 8)) >> 16) | v39 | (v39 >> 8);
            if ((v40 + 1) > 0x40)
            {
              v41 = v40 + 1;
            }

            else
            {
              v41 = 64;
            }

            *(a1 + 6) = v41;
            v42 = llvm::allocate_buffer((40 * v41), 8uLL);
            a1[1] = v42;
            if (v78)
            {
              a1[2] = 0;
              v43 = *(a1 + 6);
              if (v43)
              {
                v44 = 0;
                v45 = (40 * v43 - 40) / 0x28;
                v46 = vdupq_n_s64(v45);
                do
                {
                  v47 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(vdupq_n_s64(v44), xmmword_25D0A0500)));
                  if (v47.i8[0])
                  {
                    *v42 = -4096;
                  }

                  if (v47.i8[4])
                  {
                    v42[5] = -4096;
                  }

                  v44 += 2;
                  v42 += 10;
                }

                while (((v45 + 2) & 0xFFFFFFFFFFFFFFELL) != v44);
              }

              if (v36)
              {
                v48 = 40 * v36;
                v49 = v78;
                while (1)
                {
                  v50 = *v49;
                  if ((*v49 | 0x1000) != 0xFFFFFFFFFFFFF000)
                  {
                    break;
                  }

LABEL_79:
                  v49 += 5;
                  v48 -= 40;
                  if (!v48)
                  {
                    goto LABEL_80;
                  }
                }

                v82 = 0;
                llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::LookupBucketFor<mlir::OperationName>(a1[1], *(a1 + 6), v50, &v82);
                v51 = v82;
                *v82 = *v49;
                v52 = (v51 + 24);
                *(v51 + 8) = v51 + 24;
                *(v51 + 16) = 0x200000000;
                v53 = v49[1];
                if (v49 != v51)
                {
                  v54 = *(v49 + 4);
                  if (v54)
                  {
                    if (v49 + 3 != v53)
                    {
                      *(v51 + 8) = v53;
                      *(v51 + 16) = v54;
                      *(v51 + 20) = *(v49 + 5);
                      v49[1] = (v49 + 3);
                      *(v49 + 5) = 0;
                      v53 = v49 + 3;
                      goto LABEL_76;
                    }

                    v77 = *(v49 + 4);
                    if (v54 < 3)
                    {
                      v55 = *(v49 + 4);
LABEL_74:
                      memcpy(v52, v53, 8 * v55);
                      v53 = v49[1];
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v51 + 8, (v51 + 24), v54, 8);
                      v55 = *(v49 + 4);
                      v53 = v49[1];
                      if (v55)
                      {
                        v52 = *(v51 + 8);
                        goto LABEL_74;
                      }
                    }

                    *(v51 + 16) = v77;
LABEL_76:
                    *(v49 + 4) = 0;
                  }
                }

                ++*(a1 + 4);
                if (v49 + 3 != v53)
                {
                  free(v53);
                }

                goto LABEL_79;
              }

LABEL_80:
              MEMORY[0x25F891030](v78, 8);
              v42 = a1[1];
              v56 = *(a1 + 6);
            }

            else
            {
              a1[2] = 0;
              v56 = *(a1 + 6);
              if (v56)
              {
                v57 = 0;
                v58 = (40 * v56 - 40) / 0x28;
                v59 = (v58 + 2) & 0xFFFFFFFFFFFFFFELL;
                v60 = vdupq_n_s64(v58);
                v61 = v42;
                do
                {
                  v62 = vmovn_s64(vcgeq_u64(v60, vorrq_s8(vdupq_n_s64(v57), xmmword_25D0A0500)));
                  if (v62.i8[0])
                  {
                    *v61 = -4096;
                  }

                  if (v62.i8[4])
                  {
                    v61[5] = -4096;
                  }

                  v57 += 2;
                  v61 += 10;
                }

                while (v59 != v57);
              }
            }

            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::LookupBucketFor<mlir::OperationName>(v42, v56, *v28, v79);
            v35 = *(a1 + 4);
            v34 = v79[0];
            goto LABEL_46;
          }

LABEL_49:
          llvm::SmallVectorTemplateBase<mlir::RewritePattern const*,true>::push_back((v34 + 1), v32);
LABEL_50:
          ++v30;
        }

        do
        {
          v28 += 4;
          if (v28 == v29)
          {
            goto LABEL_92;
          }
        }

        while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v28 == v29)
        {
LABEL_92:
          v25 = **a1;
          break;
        }
      }
    }
  }

LABEL_93:
  *(a1 + 10) = 0;
  v63 = *(v25 + 48);
  v64 = *(v25 + 56);
  while (v63 != v64)
  {
    if (*(*v63 + 20) != -1)
    {
      llvm::SmallVectorTemplateBase<mlir::RewritePattern const*,true>::push_back((a1 + 4), *v63);
    }

    ++v63;
  }

  v82 = 1;
  v83 = -4096;
  v84 = -4096;
  v85 = -4096;
  v86 = -4096;
  v81 = &v82;
  v79[0] = v80;
  v79[1] = &v82;
  v79[2] = &v81;
  if (*(a1 + 4))
  {
    v65 = *(a1 + 6);
    if (v65)
    {
      v66 = 40 * v65;
      v67 = a1[1];
      while ((*v67 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v67 += 5;
        v66 -= 40;
        if (!v66)
        {
          goto LABEL_103;
        }
      }
    }

    else
    {
      v67 = a1[1];
    }

    v68 = &a1[1][5 * v65];
LABEL_108:
    if (v67 != v68)
    {
      mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v79, (v67 + 1));
      while (1)
      {
        v67 += 5;
        if (v67 == v68)
        {
          break;
        }

        if ((*v67 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_108;
        }
      }
    }
  }

LABEL_103:
  mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v79, (a1 + 4));
  if ((v82 & 1) == 0)
  {
    MEMORY[0x25F891030](v83, 8);
  }
}

void llvm::SmallVectorTemplateBase<mlir::RewritePattern const*,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    if ((**a1)(*(*a1 + 8), **a2 + 8) == 0xFFFF)
    {
      *(a2 + 8) = 0;
    }

    return;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  if (*v4 > 1u || *(v4 + 4))
  {
    if (v5)
    {
      v17 = v4 + 8;
      v18 = v4 + 72;
    }

    else
    {
      v6 = *(v4 + 16);
      if (v6 > 2 * v5 && v6 >= 0x41)
      {
        v7 = __clz((v5 >> 1) - 1);
        if (v7 - 28 >= 3)
        {
          v8 = 1 << (33 - v7);
        }

        else
        {
          v8 = 64;
        }

        if (v5 >= 2)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == v6)
        {
          v10 = 0;
          *v4 = 0;
          v11 = v6 + 0xFFFFFFFFFFFFFFFLL;
          v12 = v11 & 0xFFFFFFFFFFFFFFFLL;
          v13 = (v11 & 0xFFFFFFFFFFFFFFFLL) - (v11 & 1) + 2;
          v14 = vdupq_n_s64(v12);
          v15 = (*(v4 + 8) + 16);
          do
          {
            v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
            if (v16.i8[0])
            {
              *(v15 - 2) = -4096;
            }

            if (v16.i8[4])
            {
              *v15 = -4096;
            }

            v10 += 2;
            v15 += 4;
          }

          while (v13 != v10);
          goto LABEL_34;
        }

        v45 = (v4 + 8);
        MEMORY[0x25F891030](*(v4 + 8), 8);
        if (v9 <= 4)
        {
          *v4 = 1;
        }

        else
        {
          *v4 &= ~1u;
          buffer = llvm::allocate_buffer((16 * v9), 8uLL);
          *(v4 + 8) = buffer;
          *(v4 + 16) = v9;
          v47 = *v4;
          *v4 = *v4 & 1;
          if ((v47 & 1) == 0)
          {
            v48 = &buffer[2 * v9];
            v45 = buffer;
            goto LABEL_67;
          }
        }

        v48 = (v4 + 72);
LABEL_67:
        v49 = 0;
        v50 = (v48 - v45 - 16) >> 4;
        v51 = (v50 + 2) & 0x1FFFFFFFFFFFFFFELL;
        v52 = vdupq_n_s64(v50);
        v53 = v45 + 2;
        do
        {
          v54 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(vdupq_n_s64(v49), xmmword_25D0A0500)));
          if (v54.i8[0])
          {
            *(v53 - 2) = -4096;
          }

          if (v54.i8[4])
          {
            *v53 = -4096;
          }

          v49 += 2;
          v53 += 4;
        }

        while (v51 != v49);
        goto LABEL_34;
      }

      if (!v6)
      {
        v24 = 0;
LABEL_33:
        *v4 = v24;
        *(v4 + 4) = 0;
        goto LABEL_34;
      }

      v17 = *(v4 + 8);
      v18 = v17 + 16 * v6;
    }

    v19 = 0;
    v20 = (v18 - v17 - 16) >> 4;
    v21 = vdupq_n_s64(v20);
    v22 = (v17 + 16);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v19), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *(v22 - 2) = -4096;
      }

      if (v23.i8[4])
      {
        *v22 = -4096;
      }

      v19 += 2;
      v22 += 4;
    }

    while (((v20 + 2) & 0x1FFFFFFFFFFFFFFELL) != v19);
    v24 = *v4 & 1;
    goto LABEL_33;
  }

LABEL_34:
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v26)
  {
    v27 = 8 * v26;
    do
    {
      if (*v25)
      {
        v28 = *v25 + 8;
      }

      else
      {
        v28 = 0;
      }

      v55 = v28;
      v29 = *(a1 + 8);
      v30 = (**a1)(*(*a1 + 8), v28);
      v56 = 0;
      if ((llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v29, v28, &v56) & 1) == 0)
      {
        v31 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::InsertIntoBucketImpl<mlir::Pattern const*>(v29, &v55, v56);
        *v31 = v28;
        *(v31 + 4) = v30;
      }

      ++v25;
      v27 -= 8;
    }

    while (v27);
    v32 = *a2;
    v33 = *(a2 + 8);
    v25 = (*a2 + 8 * v33);
    v56 = **(a1 + 16);
    if (v33 >= 0x81)
    {
      v34 = MEMORY[0x277D826F0];
      v35 = v33;
      while (1)
      {
        v36 = operator new(8 * v35, v34);
        if (v36)
        {
          break;
        }

        v37 = v35 >> 1;
        v38 = v35 > 1;
        v35 >>= 1;
        if (!v38)
        {
          goto LABEL_49;
        }
      }

      v44 = v36;
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v32, v25, &v56, v33, v36, v35);
      operator delete(v44);
      goto LABEL_50;
    }

    v37 = 0;
  }

  else
  {
    v33 = 0;
    v37 = 0;
    v56 = **(a1 + 16);
    v32 = v25;
  }

LABEL_49:
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v32, v25, &v56, v33, 0, v37);
LABEL_50:
  for (i = *(a2 + 8); i; *(a2 + 8) = i)
  {
    v40 = *(a1 + 8);
    v41 = *(*a2 + 8 * i - 8);
    if (v41)
    {
      v42 = v41 + 8;
    }

    else
    {
      v42 = 0;
    }

    v55 = v42;
    v56 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v40, v42, &v56))
    {
      if (*(v56 + 4) != -1)
      {
        return;
      }
    }

    else
    {
      v43 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::InsertIntoBucketImpl<mlir::Pattern const*>(v40, &v55, v56);
      *v43 = v42;
      *(v43 + 4) = -1;
    }

    i = *(a2 + 8) - 1;
  }
}

uint64_t **mlir::PatternApplicator::walkAllPatterns(uint64_t **result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = **result;
  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 32 * v7;
      v9 = *v6;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 4;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v9 = *v6;
    }

    v10 = *v6 + 32 * v7;
    if (v9 != v10)
    {
LABEL_9:
      v11 = v9[1];
      v12 = v9[2];
      while (v11 != v12)
      {
        v13 = *v11++;
        result = a2(a3, v13 + 8);
      }

      while (1)
      {
        v9 += 4;
        if (v9 == v10)
        {
          break;
        }

        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v9 != v10)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v6 = **v5;
    }
  }

LABEL_16:
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      result = a2(a3, v16 + 8);
    }

    while (v14 != v15);
    v6 = **v5;
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = *(v17 + 400);
    if (v18)
    {
      v19 = *(v17 + 392);
      v20 = 104 * v18;
      do
      {
        result = a2(a3, v19);
        v19 += 104;
        v20 -= 104;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t mlir::PatternApplicator::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59[60] = *MEMORY[0x277D85DE8];
  v54[0] = a6;
  v54[1] = a7;
  v53[0] = a9;
  v53[1] = a10;
  v52 = a2;
  v57 = v59;
  v58 = 0x400000000;
  v15 = *(**a1 + 72);
  v51 = v15;
  if (v15)
  {
    mlir::detail::PDLByteCode::match(v15, a2, a3, &v57, *(a1 + 56));
  }

  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *(a2 + 48);
  v18 = *(a1 + 8);
  v19 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
  v20 = (v18 + 40 * v19);
  v21 = *v20;
  if (*v20 != v17)
  {
    v24 = 1;
    while (v21 != -4096)
    {
      v25 = v19 + v24++;
      v19 = v25 & (v16 - 1);
      v20 = (v18 + 40 * v19);
      v21 = *v20;
      if (*v20 == v17)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_11;
  }

LABEL_5:
  if (v20 == (v18 + 40 * v16))
  {
LABEL_11:
    v23 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v22 = v20[1];
  v23 = *(v20 + 4);
LABEL_12:
  v26 = 0;
  v50 = 0;
  v27 = *(a1 + 40);
  v49 = 0;
  v28 = v58;
  v55 = 0;
  while (1)
  {
    v48 = 0;
    if (v26 >= v23)
    {
      v31 = v50;
      if (v50 >= v27)
      {
        v35 = v49;
        if (v49 >= v28)
        {
          break;
        }

        v36 = v57;
        goto LABEL_35;
      }

      v32 = *(a1 + 32);
LABEL_23:
      v33 = *(v32 + 8 * v31);
LABEL_24:
      if (v33)
      {
        v30 = v33 + 8;
      }

      else
      {
        v30 = 0;
      }

      v48 = v30;
      v34 = &v50;
      goto LABEL_29;
    }

    v29 = *(v22 + 8 * v26);
    v30 = v29 ? v29 + 8 : 0;
    v48 = v30;
    v31 = v50;
    if (v50 >= v27)
    {
      v34 = &v50 + 1;
    }

    else
    {
      v32 = *(a1 + 32);
      if (!v29)
      {
        goto LABEL_23;
      }

      v33 = *(v32 + 8 * v50);
      if (*(v29 + 20) < *(v33 + 20))
      {
        goto LABEL_24;
      }

      v34 = &v50 + 1;
      v30 = v29 + 8;
    }

LABEL_29:
    v47 = 0;
    v35 = v49;
    if (v49 >= v28)
    {
      goto LABEL_36;
    }

    v36 = v57;
    if (v30 && *(v30 + 12) >= *(v57 + 60 * v49 + 56))
    {
      goto LABEL_37;
    }

LABEL_35:
    v47 = &v36[120 * v35];
    v30 = *(v47 + 13);
    v48 = v30;
    v34 = &v49;
LABEL_36:
    if (!v30)
    {
      break;
    }

LABEL_37:
    ++*v34;
    if (!a4 || a4(a5))
    {
      v46 = 0;
      v37 = *(***(v52 + 24) + 32);
      v45[0] = a3;
      v45[1] = &v52;
      v45[2] = &v47;
      v45[3] = &v55;
      v45[4] = &v51;
      v45[5] = a1;
      v45[6] = &v48;
      v45[7] = v53;
      v45[8] = &v46;
      v45[9] = v54;
      v56 = v52 & 0xFFFFFFFFFFFFFFF9;
      if (*(*v37 + 24))
      {
        mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(v37, llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>, v45, &v56, 1, v48);
      }

      else
      {
        llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(v45);
      }

      if (v46)
      {
        break;
      }
    }

    v26 = HIDWORD(v50);
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    std::vector<llvm::OwningArrayRef<mlir::Type>>::clear[abi:nn200100]((v38 + 72));
    std::vector<llvm::OwningArrayRef<mlir::Value>>::clear[abi:nn200100]((v38 + 120));
  }

  v39 = v57;
  if (v58)
  {
    v40 = v57 + 120 * v58 - 48;
    v41 = -120 * v58;
    do
    {
      v42 = *(v40 + 2);
      if (v40 + 32 != v42)
      {
        free(v42);
      }

      if (v40 + 16 != *v40)
      {
        free(*v40);
      }

      v43 = *(v40 - 8);
      if (v40 - 48 != v43)
      {
        free(v43);
      }

      v40 -= 120;
      v41 += 120;
    }

    while (v41);
    v39 = v57;
  }

  if (v39 != v59)
  {
    free(v39);
  }

  return v55;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::InsertIntoBucketImpl<mlir::Pattern const*>(unsigned int *a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(a1, *a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
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
    if (a2 > 4)
    {
      v13 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 4) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 18;
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
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
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
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 4) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(uint64_t *result, uint64_t *a2, unsigned int **a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      if (*result)
      {
        v11 = *result + 8;
      }

      else
      {
        v11 = 0;
      }

      v44 = v11;
      v45 = v10;
      v12 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v45);
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
      if (*result < *v12)
      {
        v13 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v13;
      }
    }

    else if (a4 > 128)
    {
      v31 = a5;
      v32 = a4 >> 1;
      v33 = &result[a4 >> 1];
      v34 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, v33, a3, v34, a5);
        v35 = &v31[v32];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v35);
        v36 = &v31[a4];
        v37 = v35;
        while (v37 != v36)
        {
          if (*v37)
          {
            v38 = *v37 + 8;
          }

          else
          {
            v38 = 0;
          }

          if (*v31)
          {
            v39 = *v31 + 8;
          }

          else
          {
            v39 = 0;
          }

          v44 = v39;
          v45 = v38;
          v40 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v45);
          result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
          if (*result >= *v40)
          {
            v41 = v31;
          }

          else
          {
            v41 = v37;
          }

          v31 += *result >= *v40;
          v37 += *result < *v40;
          *v8 = *v41;
          v8 += 8;
          if (v31 == v35)
          {
            while (v37 != v36)
            {
              v43 = *v37++;
              *v8 = v43;
              v8 += 8;
            }

            return result;
          }
        }

        while (v31 != v35)
        {
          v42 = *v31++;
          *v8 = v42;
          v8 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, v33, a3, v34, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v31, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v31, a6);
      }
    }

    else if (result != a2)
    {
      v15 = result + 1;
      if (result + 1 != a2)
      {
        v16 = 0;
        v17 = result;
        do
        {
          v19 = *v17;
          v18 = v17[1];
          v17 = v15;
          v20 = v18 + 8;
          if (!v18)
          {
            v20 = 0;
          }

          v21 = v19 + 8;
          if (!v19)
          {
            v21 = 0;
          }

          v44 = v21;
          v45 = v20;
          v22 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v45);
          result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
          if (*result < *v22)
          {
            v23 = *v17;
            if (*v17)
            {
              v24 = *v17 + 8;
            }

            else
            {
              v24 = 0;
            }

            v25 = v16;
            while (1)
            {
              *&v8[v25 + 8] = *&v8[v25];
              if (!v25)
              {
                break;
              }

              v26 = *&v8[v25 - 8];
              if (v26)
              {
                v27 = v26 + 8;
              }

              else
              {
                v27 = 0;
              }

              v44 = v27;
              v45 = v24;
              v28 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v45);
              result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
              v25 -= 8;
              if (*result >= *v28)
              {
                v29 = &v8[v25 + 8];
                goto LABEL_32;
              }
            }

            v29 = v8;
LABEL_32:
            *v29 = v23;
          }

          v15 = v17 + 1;
          v16 += 8;
        }

        while (v17 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(uint64_t *result, uint64_t *a2, unsigned int **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_16:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v11 = a2 - 1;
      v10 = *(a2 - 1);
      if (v10)
      {
        v12 = v10 + 8;
      }

      else
      {
        v12 = 0;
      }

      if (*result)
      {
        v13 = *result + 8;
      }

      else
      {
        v13 = 0;
      }

      v43 = v13;
      v44 = v12;
      v14 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v43);
      v15 = *result;
      v16 = *v14;
      v17 = v15 >= v16;
      if (v15 >= v16)
      {
        v18 = v7;
      }

      else
      {
        v18 = v11;
      }

      *v5++ = *v18;
      if (v17)
      {
        v7 = v11;
      }

      goto LABEL_16;
    }

    if (a4 > 8)
    {
      v35 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, v35, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v36 = &v7[a4 >> 1];
      while (v36 != a2)
      {
        if (*v36)
        {
          v37 = *v36 + 8;
        }

        else
        {
          v37 = 0;
        }

        if (*v7)
        {
          v38 = *v7 + 8;
        }

        else
        {
          v38 = 0;
        }

        v43 = v38;
        v44 = v37;
        v39 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
        result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v43);
        if (*result >= *v39)
        {
          v40 = v7;
        }

        else
        {
          v40 = v36;
        }

        v36 += *result < *v39;
        v7 += *result >= *v39;
        *v5++ = *v40;
        if (v7 == v35)
        {
          while (v36 != a2)
          {
            v42 = *v36++;
            *v5++ = v42;
          }

          return result;
        }
      }

      while (v7 != v35)
      {
        v41 = *v7++;
        *v5++ = v41;
      }
    }

    else if (result != a2)
    {
      v19 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v20 = 0;
        v21 = a5;
        do
        {
          v22 = v21;
          v24 = *v21++;
          v23 = v24;
          if (*v19)
          {
            v25 = *v19 + 8;
          }

          else
          {
            v25 = 0;
          }

          if (v23)
          {
            v26 = v23 + 8;
          }

          else
          {
            v26 = 0;
          }

          v43 = v26;
          v44 = v25;
          v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
          result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v43);
          v28 = v21;
          if (*result < *v27)
          {
            v22[1] = *v22;
            v28 = v5;
            if (v22 != v5)
            {
              v29 = v20;
              while (1)
              {
                v28 = (v5 + v29);
                v30 = *v19 ? *v19 + 8 : 0;
                v31 = *(v28 - 1);
                v32 = v31 ? v31 + 8 : 0;
                v43 = v32;
                v44 = v30;
                v33 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v44);
                result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v43);
                if (*result >= *v33)
                {
                  break;
                }

                *v28 = *(v28 - 1);
                v29 -= 8;
                if (!v29)
                {
                  v28 = v5;
                  break;
                }
              }
            }
          }

          v34 = *v19++;
          *v28 = v34;
          v20 += 8;
        }

        while (v19 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *result, char *a2, char *a3, unsigned int **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a6;
  if (a6)
  {
    v13 = result;
    while (a5 > a8 && v111 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *a2 ? *a2 + 8 : 0;
        v17 = *&v13[8 * v15];
        v18 = v17 ? v17 + 8 : 0;
        v113 = v18;
        v114 = v16;
        v19 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v114);
        result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v113);
        if (*result < *v19)
        {
          break;
        }

        ++v15;
        v14 -= 8;
        if (a5 == v15)
        {
          return result;
        }
      }

      v20 = a5;
      v21 = a5 - v15;
      v22 = &v13[-v14];
      v23 = v111;
      v110 = a3;
      if (a5 - v15 >= v111)
      {
        if (a5 - 1 == v15)
        {
          v101 = *&v13[8 * v15];
          *&v13[8 * v15] = *a2;
          *a2 = v101;
          return result;
        }

        v109 = v21 / 2;
        v37 = &v13[8 * (v21 / 2)];
        if (a3 == a2)
        {
          v49 = a3;
          v50 = a3;
          v25 = a2;
        }

        else
        {
          v106 = v22;
          v108 = a8;
          v38 = *a4;
          v39 = (a3 - a2) >> 3;
          v104 = a2;
          v25 = a2;
          do
          {
            v40 = &v25[8 * (v39 >> 1)];
            v42 = *v40;
            v41 = v40 + 8;
            v43 = v42 + 8;
            v44 = *&v37[8 * v15];
            if (!v42)
            {
              v43 = 0;
            }

            if (v44)
            {
              v45 = v44 + 8;
            }

            else
            {
              v45 = 0;
            }

            v113 = v45;
            v114 = v43;
            v46 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v114);
            v47 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v113);
            v48 = *v46;
            if (v47 >= v48)
            {
              v39 >>= 1;
            }

            else
            {
              v39 += ~(v39 >> 1);
            }

            if (v47 < v48)
            {
              v25 = v41;
            }
          }

          while (v39);
          v49 = v25;
          a2 = v104;
          v22 = v106;
          v50 = v104;
          a8 = v108;
          v20 = a5;
          v23 = v111;
        }

        v27 = &v37[-v14];
        v24 = (v49 - v50) >> 3;
      }

      else
      {
        v24 = v111 / 2;
        v25 = &a2[8 * (v111 / 2)];
        if (v22 == a2)
        {
          v35 = a2;
          v36 = a2;
          v27 = &v13[-v14];
        }

        else
        {
          v105 = &v13[-v14];
          v107 = a8;
          v26 = (a2 - v13 + v14) >> 3;
          v27 = &v13[-v14];
          do
          {
            v28 = &v27[8 * (v26 >> 1)];
            if (*v25)
            {
              v29 = *v25 + 8;
            }

            else
            {
              v29 = 0;
            }

            v31 = *v28;
            v30 = v28 + 8;
            v32 = v31 + 8;
            if (v31)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v113 = v33;
            v114 = v29;
            v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v114);
            if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v113) < *v34)
            {
              v26 >>= 1;
            }

            else
            {
              v27 = v30;
              v26 += ~(v26 >> 1);
            }
          }

          while (v26);
          v35 = v27;
          v22 = v105;
          a8 = v107;
          v36 = v105;
          v24 = v111 / 2;
          v20 = a5;
          v23 = v111;
        }

        v109 = (v35 - v36) >> 3;
      }

      v51 = v25;
      if (v27 != a2)
      {
        v51 = v27;
        if (a2 != v25)
        {
          v52 = v27 + 8;
          if (v27 + 8 == a2)
          {
            v59 = v22;
            v60 = *v27;
            v61 = v25 - a2;
            v62 = v24;
            memmove(v27, v52, v61);
            v24 = v62;
            v23 = v111;
            v20 = a5;
            v51 = &v27[v61];
            *&v27[v61] = v60;
            v22 = v59;
          }

          else
          {
            v53 = a2 + 8;
            if (a2 + 8 == v25)
            {
              v63 = v22;
              v64 = *(v25 - 1);
              v51 = v27 + 8;
              if (v25 - 8 != v27)
              {
                v65 = v24;
                memmove(v27 + 8, v27, v25 - 8 - v27);
                v24 = v65;
                v23 = v111;
                v20 = a5;
              }

              *v27 = v64;
              v22 = v63;
            }

            else
            {
              v54 = (a2 - v27);
              v55 = (a2 - v27) >> 3;
              v56 = v25 - a2;
              if (v55 == (v25 - a2) >> 3)
              {
                do
                {
                  v57 = *(v52 - 1);
                  *(v52 - 1) = *(v53 - 1);
                  *(v53 - 1) = v57;
                  if (v52 == a2)
                  {
                    break;
                  }

                  v52 += 8;
                  v58 = v53 == v25;
                  v53 += 8;
                }

                while (!v58);
                v51 = a2;
              }

              else
              {
                v66 = v56 >> 3;
                v67 = (a2 - v27) >> 3;
                do
                {
                  v68 = v67;
                  v67 = v66;
                  v66 = v68 % v66;
                }

                while (v66);
                v69 = &v27[8 * v67];
                do
                {
                  v71 = *(v69 - 1);
                  v69 -= 8;
                  v70 = v71;
                  v72 = &v54[v69];
                  v73 = v69;
                  do
                  {
                    v74 = v73;
                    v73 = v72;
                    *v74 = *v72;
                    v75 = __OFSUB__(v55, (v25 - v72) >> 3);
                    v77 = v55 - ((v25 - v72) >> 3);
                    v76 = (v77 < 0) ^ v75;
                    v72 = &v27[8 * v77];
                    if (v76)
                    {
                      v72 = &v54[v73];
                    }
                  }

                  while (v72 != v69);
                  *v73 = v70;
                }

                while (v69 != v27);
                v51 = &v27[v56];
              }
            }
          }
        }
      }

      v78 = v20 - v109 - v15;
      v79 = v23 - v24;
      if (v109 + v24 >= v23 + v20 - (v109 + v24) - v15)
      {
        v80 = v24;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v51, v25, v110, a4, v20 - v109 - v15, v23 - v24, a7, a8);
        v25 = v27;
        v79 = v80;
        v78 = v109;
        v110 = v51;
      }

      else
      {
        result = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v22, v27, v51, a4, v109, v24, a7, a8);
        v22 = v51;
      }

      a5 = v78;
      v111 = v79;
      v13 = v22;
      a2 = v25;
      a3 = v110;
      if (!v79)
      {
        return result;
      }
    }

    if (a5 <= v111)
    {
      if (v13 != a2)
      {
        v93 = -a7;
        v94 = a7;
        v95 = v13;
        do
        {
          v96 = *v95;
          v95 += 8;
          *v94++ = v96;
          v93 -= 8;
        }

        while (v95 != a2);
        while (a2 != a3)
        {
          if (*a2)
          {
            v97 = *a2 + 8;
          }

          else
          {
            v97 = 0;
          }

          if (*a7)
          {
            v98 = *a7 + 8;
          }

          else
          {
            v98 = 0;
          }

          v113 = v98;
          v114 = v97;
          v99 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v114);
          result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v113);
          if (*result >= *v99)
          {
            v100 = a7;
          }

          else
          {
            v100 = a2;
          }

          a7 += 8 * (*result >= *v99);
          a2 += 8 * (*result < *v99);
          *v13 = *v100;
          v13 += 8;
          if (v94 == a7)
          {
            return result;
          }
        }

        return memmove(v13, a7, -(a7 + v93));
      }
    }

    else if (a2 != a3)
    {
      v81 = 0;
      do
      {
        *(a7 + v81) = *&a2[v81];
        v81 += 8;
      }

      while (&a2[v81] != a3);
      v82 = (a7 + v81);
      while (a2 != v13)
      {
        v83 = *(v82 - 1);
        if (v83)
        {
          v84 = v83 + 8;
        }

        else
        {
          v84 = 0;
        }

        v85 = a2;
        v86 = *(a2 - 1);
        if (v86)
        {
          v87 = v86 + 8;
        }

        else
        {
          v87 = 0;
        }

        v113 = v87;
        v114 = v84;
        v88 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v114);
        result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v113);
        v89 = *result;
        v90 = *v88;
        v91 = v89 >= v90;
        if (v89 >= v90)
        {
          v92 = v82;
        }

        else
        {
          v92 = a2;
        }

        if (!v91)
        {
          v85 = a2 - 8;
        }

        a2 = v85;
        if (v91)
        {
          v82 -= 8;
        }

        *(a3 - 1) = *(v92 - 1);
        a3 -= 8;
        if (v82 == a7)
        {
          return result;
        }
      }

      if (v82 != a7)
      {
        v102 = -8;
        do
        {
          v103 = *(v82 - 1);
          v82 -= 8;
          *&a3[v102] = v103;
          v102 -= 8;
        }

        while (v82 != a7);
      }
    }
  }

  return result;
}