uint64_t *llvm::detail::UniqueFunctionBase<void,mlir::Operation *>::CallImpl<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_1>(uint64_t **a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (*v4)++;
  v18 = v5;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3, &v19, &v18, v17);
  v6 = *(v19 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((v19 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v19 + 40);
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

        v11 = (v10 + 32);
        for (j = *(v10 + 40); j != v11; j = *(j + 1))
        {
          ZinIrHalH13g::~ZinIrHalH13g(j);
          (*(a1[2][3] & 0xFFFFFFFFFFFFFFF8))();
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  v13 = a1[3];
  v14 = a1[1];
  v15 = (*v14)++;
  v18 = v15;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v13, &v19, &v18, v17);
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2>(uint64_t a1, uint64_t a2)
{
  Liveness = mlir::Liveness::getLiveness(*a1, a2);
  v4 = *(a1 + 24);
  v27[0] = *(a1 + 8);
  v27[1] = v4;
  v28 = *(a1 + 40);
  p_Liveness = &Liveness;
  v5 = Liveness[2];
  v6 = 16;
  if (v5 == Liveness[1])
  {
    v6 = 20;
  }

  v7 = *(Liveness + v6 + 8);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = Liveness[2];
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = Liveness[2];
  }

  v22 = (v5 + 8 * v7);
LABEL_23:
  if (v9 != v22)
  {
    v26 = *v9;
    ParentRegion = mlir::Value::getParentRegion(&v26);
    if (ParentRegion == mlir::Block::getParent(a2))
    {
      v24 = v26;
      ZinIrHalH13g::~ZinIrHalH13g(*(a2 + 40));
    }

    while (++v9 != v22)
    {
      if (*v9 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_7:
  if (mlir::Block::isEntryBlock(a2))
  {
    v10 = *(a2 + 48);
    v11 = *(a2 + 56);
    while (v10 != v11)
    {
      v12 = *v10++;
      ZinIrHalH13g::~ZinIrHalH13g(*(a2 + 40));
    }
  }

  v14 = (a2 + 32);
  for (i = *(a2 + 40); i != v14; i = *(i + 1))
  {
    ZinIrHalH13g::~ZinIrHalH13g(i);
    v17 = *(v16 + 36);
    if (v17)
    {
      v18 = v16 - 16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v16;
      for (j = 0; j != v17; ++j)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, j);
      }
    }
  }
}

void anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2::operator() const(mlir::Block *)::{lambda(mlir::Value,mlir::Operation *)#1}::operator()(void *result, unint64_t a2, mlir::Block **a3)
{
  v29 = a3;
  if (**result != a2)
  {
    v5 = result[1];
    v6 = *(v5 + 16);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *v5 + 40 * v9;
    v11 = *v10;
    if (*v10 != a2)
    {
      v12 = 0;
      v13 = 1;
      while (v11 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v11 == -8192;
        }

        if (v14)
        {
          v12 = v10;
        }

        v15 = v9 + v13++;
        v9 = v15 & (v6 - 1);
        v10 = *v5 + 40 * v9;
        v11 = *v10;
        if (*v10 == a2)
        {
          goto LABEL_19;
        }
      }

      if (v12)
      {
        v10 = v12;
      }

LABEL_14:
      v30 = v10;
      v16 = *(v5 + 8);
      if (4 * v16 + 4 >= 3 * v6)
      {
        v6 *= 2;
      }

      else if (v6 + ~v16 - *(v5 + 12) > v6 >> 3)
      {
        *(v5 + 8) = v16 + 1;
        if (*v10 == -4096)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v10 = v30;
      ++*(v5 + 8);
      if (*v10 == -4096)
      {
LABEL_18:
        *v10 = a2;
        operator new();
      }

LABEL_17:
      --*(v5 + 12);
      goto LABEL_18;
    }

LABEL_19:
    v17 = *(v10 + 8);
    v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](result[3], &v29);
    v19 = result[4];
    mlir::LivenessBlockInfo::getEndOperation(*result[5], a2, v29);
    v30 = v20;
    v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v19, &v30);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(v17, v18, *v21, 0);
    v22 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v22 = 0;
    }

    v30 = v22;
    if (v22)
    {
      v23 = *(*mlir::AffineMapAttr::getValue(&v30) + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v25 = *(v10 + 20);
        v24 = (v10 + 20);
        v26 = v24 - 4;
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else if (v23 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v27 = *(v10 + 28);
        v24 = (v10 + 28);
        v26 = v24 - 4;
        if (v27)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v23 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          return;
        }

        v28 = *(v10 + 36);
        v24 = (v10 + 36);
        v26 = v24 - 4;
        if (v28)
        {
LABEL_30:
          *v26 = 0;
          return;
        }
      }

      *v24 = 1;
      goto LABEL_30;
    }
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15[8] = *MEMORY[0x1E69E9840];
  if (*(a1 + 272) || (v6 = *(a1 + 276), v6 == 16))
  {
    v12 = a1;
    v13 = v15;
    v14 = 0x400000000;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(&v12, a2);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insert(&v12, a2, a3, v4);
    if (v13 != v15)
    {
      free(v13);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 0;
      v9 = (a1 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v11 = a2;
          v8 = *(a1 + 276);
          goto LABEL_13;
        }
      }

      v11 = a2;
    }

    else
    {
      v11 = a2;
      v8 = 0;
    }

LABEL_13:
    LODWORD(v12) = v8;
    *(a1 + 276) = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(a1, &v12, v6, v11, a3, v4);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 40 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 40 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 40 * v10 - 40;
    if (v11 >= 0x28)
    {
      v16 = v11 / 0x28 + 1;
      v12 = &result[5 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[5] = -4096;
        v17 += 10;
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
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v22 >> 47) ^ v22);
              LODWORD(v22) = -348639895 * ((v23 >> 47) ^ v23);
              v24 = *(a1 + 16) - 1;
              v25 = v24 & v22;
              v26 = *a1 + 40 * v25;
              v27 = *v26;
              if (*v26 != v21)
              {
                v31 = 0;
                v32 = 1;
                while (v27 != -4096)
                {
                  if (v31)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v27 == -8192;
                  }

                  if (v33)
                  {
                    v31 = v26;
                  }

                  v34 = v25 + v32++;
                  v25 = v34 & v24;
                  v26 = *a1 + 40 * (v34 & v24);
                  v27 = *v26;
                  if (*v26 == v21)
                  {
                    goto LABEL_22;
                  }
                }

                if (v31)
                {
                  v26 = v31;
                }
              }

LABEL_22:
              v28 = *(v20 + 1);
              *(v20 + 1) = 0;
              *v26 = v21;
              *(v26 + 8) = v28;
              v29 = *(v20 + 1);
              *(v26 + 29) = *(v20 + 29);
              *(v26 + 16) = v29;
              ++*(a1 + 8);
              v30 = *(v20 + 1);
              *(v20 + 1) = 0;
              if (v30)
              {
                if (*(v30 + 272))
                {
                  llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::visitNodes(v30, llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::deleteNode, 0);
                  *(v30 + 272) = 0;
                  *(v30 + 240) = 0u;
                  *(v30 + 256) = 0u;
                  *(v30 + 208) = 0u;
                  *(v30 + 224) = 0u;
                  *(v30 + 176) = 0u;
                  *(v30 + 192) = 0u;
                  *(v30 + 144) = 0u;
                  *(v30 + 160) = 0u;
                  *(v30 + 112) = 0u;
                  *(v30 + 128) = 0u;
                  *(v30 + 80) = 0u;
                  *(v30 + 96) = 0u;
                  *(v30 + 48) = 0u;
                  *(v30 + 64) = 0u;
                  *(v30 + 16) = 0u;
                  *(v30 + 32) = 0u;
                  *v30 = 0u;
                }

                *(v30 + 276) = 0;
                MEMORY[0x1AC55A070](v30, 0x1020C4078626902);
              }
            }

            v20 = (v20 + 40);
          }

          while (v20 != (v4 + 40 * v3));
        }

        llvm::deallocate_buffer(v4, (40 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = -4096;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 40 * v13 - 40;
    if (v14 < 0x28)
    {
      v15 = result;
LABEL_43:
      v38 = &result[5 * v13];
      do
      {
        *v15 = -4096;
        v15 += 5;
      }

      while (v15 != v38);
      return result;
    }

    v35 = v14 / 0x28 + 1;
    v15 = &result[5 * (v35 & 0xFFFFFFFFFFFFFFELL)];
    v36 = result;
    v37 = v35 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v36 = -4096;
      v36[5] = -4096;
      v36 += 10;
      v37 -= 2;
    }

    while (v37);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_43;
    }
  }

  return result;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::visitNodes(uint64_t a1, void (*a2)(void *, void, uint64_t), uint64_t a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 272);
  if (v3)
  {
    v33 = v35;
    v34 = 0x400000000;
    v30 = v32;
    v31 = 0x400000000;
    if (*(a1 + 276))
    {
      v5 = 0;
      v6 = 0;
      v7 = a1 + 8;
      do
      {
        v8 = *(v7 + 8 * v6);
        if (v5 >= HIDWORD(v34))
        {
          v9 = a1;
          v10 = a3;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v5 + 1, 8);
          a3 = v10;
          a1 = v9;
          v5 = v34;
        }

        *(v33 + v5) = v8;
        v5 = v34 + 1;
        LODWORD(v34) = v34 + 1;
        ++v6;
      }

      while (v6 != *(a1 + 276));
      v3 = *(a1 + 272);
    }

    v29 = a3;
    v11 = (a1 + (a3 >> 1));
    v12 = (v3 - 1);
    if (v3 != 1)
    {
      if (a3)
      {
        do
        {
          v19 = v34;
          if (v34)
          {
            v20 = 0;
            do
            {
              v21 = 0;
              v22 = v31;
              v23 = 8 * (*(v33 + v20) & 0x3FLL) + 8;
              do
              {
                v24 = *((*(v33 + v20) & 0xFFFFFFFFFFFFFFC0) + v21);
                if (v22 >= HIDWORD(v31))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v22 + 1, 8);
                  v22 = v31;
                }

                *(v30 + v22) = v24;
                v22 = v31 + 1;
                LODWORD(v31) = v31 + 1;
                v21 += 8;
              }

              while (v23 != v21);
              (*(*v11 + a2))(v11, *(v33 + v20++), v12);
            }

            while (v20 != v19);
          }

          LODWORD(v34) = 0;
          llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(&v33, &v30);
          v12 = (v12 - 1);
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v34;
          if (v34)
          {
            v14 = 0;
            do
            {
              v15 = 0;
              v16 = v31;
              v17 = 8 * (*(v33 + v14) & 0x3FLL) + 8;
              do
              {
                v18 = *((*(v33 + v14) & 0xFFFFFFFFFFFFFFC0) + v15);
                if (v16 >= HIDWORD(v31))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v16 + 1, 8);
                  v16 = v31;
                }

                *(v30 + v16) = v18;
                v16 = v31 + 1;
                LODWORD(v31) = v31 + 1;
                v15 += 8;
              }

              while (v17 != v15);
              a2(v11, *(v33 + v14++), v12);
            }

            while (v14 != v13);
          }

          LODWORD(v34) = 0;
          llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(&v33, &v30);
          v12 = (v12 - 1);
        }

        while (v12);
      }
    }

    if (v34)
    {
      if (v29)
      {
        v27 = 0;
        v28 = 8 * v34;
        do
        {
          (*(*v11 + a2))(v11, *(v33 + v27), 0);
          v27 += 8;
        }

        while (v28 != v27);
      }

      else
      {
        v25 = 0;
        v26 = 8 * v34;
        do
        {
          a2(v11, *(v33 + v25), 0);
          v25 += 8;
        }

        while (v26 != v25);
      }
    }

    if (v30 != v32)
    {
      free(v30);
    }

    if (v33 != v35)
    {
      free(v33);
    }
  }
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::deleteNode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 280);
  *(a2 & 0xFFFFFFFFFFFFFFC0) = *v2;
  *v2 = a2 & 0xFFFFFFFFFFFFFFC0;
  return result;
}

void llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(unsigned int *result, unsigned int *a2)
{
  if (result == a2)
  {
    return;
  }

  v4 = *result;
  if (*result != result + 4 && *a2 != a2 + 4)
  {
    *result = *a2;
    *a2 = v4;
    v5 = result[2];
    result[2] = a2[2];
    a2[2] = v5;
    v6 = result[3];
    result[3] = a2[3];
    a2[3] = v6;
    return;
  }

  v7 = a2[2];
  if (result[3] < v7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v7, 8);
    v8 = result[2];
    if (a2[3] >= v8)
    {
LABEL_7:
      v9 = a2[2];
      if (v8 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = result[2];
    if (a2[3] >= v8)
    {
      goto LABEL_7;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v8, 8);
  LODWORD(v8) = result[2];
  v9 = a2[2];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
LABEL_11:
    v11 = v8;
    v12 = v9;
    v13 = v8 - v9;
    if (v8 > v9)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = 0;
  do
  {
    v15 = *a2;
    v16 = *(*result + v14);
    *(*result + v14) = *(*a2 + v14);
    *(v15 + v14) = v16;
    v14 += 8;
  }

  while (8 * v10 != v14);
  LODWORD(v8) = result[2];
  v9 = a2[2];
  v11 = v8;
  v12 = v9;
  v13 = v8 - v9;
  if (v8 > v9)
  {
LABEL_12:
    if (v10 != v8)
    {
      memcpy((*a2 + 8 * v12), (*result + 8 * v10), 8 * (v11 - v10));
      v9 = a2[2];
    }

    a2[2] = v13 + v9;
    result[2] = v10;
    return;
  }

LABEL_23:
  v17 = v9 - v8;
  if (v9 > v8)
  {
    if (v10 != v9)
    {
      memcpy((*result + 8 * v11), (*a2 + 8 * v10), 8 * (v12 - v10));
      LODWORD(v8) = result[2];
    }

    result[2] = v17 + v8;
    a2[2] = v10;
  }
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insert(unsigned int *a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v4 = *a1;
  if (*(*a1 + 272))
  {

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(a1, a2, a3, a4);
  }

  v6 = a1;
  v7 = a1 + 2;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*a1, (*(a1 + 1) + 16 * a1[4] - 4), *(v4 + 276), a2, a3, a4);
  if (result > 0x10)
  {
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::branchRoot(v4, *(*(v6 + 1) + 16 * v6[4] - 4), v11, v12, v13, v14, v15, v16);
    llvm::IntervalMapImpl::Path::replaceRoot(v7, v4 + 8, *(v4 + 276), v17);
    a1 = v6;
    a2 = v8;
    a3 = v9;
    a4 = v10;

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(a1, a2, a3, a4);
  }

  *(v4 + 276) = result;
  *(*v7 + 8) = result;
  return result;
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = *a2;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (v7 - 1);
  v9 = a1 + 256;
  if (*(a1 + 256 + v8) != a6 || (v10 = a1 + 16 * v8, v12 = *(v10 + 8), v11 = (v10 + 8), v12 + 1 != a4))
  {
    if (v7 == 16)
    {
      return 17;
    }

LABEL_13:
    v17 = a3 - v7;
    if (a3 == v7)
    {
      v18 = (a1 + 16 * a3);
      *v18 = a4;
      v18[1] = a5;
      *(a1 + a3 + 256) = a6;
      return (a3 + 1);
    }

    v19 = a1 + 256;
    if (*(a1 + 256 + v7) == a6)
    {
      v20 = (a1 + 16 * v7);
      if (a5 + 1 == *v20)
      {
        *v20 = a4;
        return a3;
      }
    }

    if (a3 == 16)
    {
      return 17;
    }

    v21 = (~v7 + a3);
    if (v21 >= 3 && v7 + 1 <= a3)
    {
      v25 = (a3 - 1);
      if (v21 <= v25)
      {
        v26 = (16 * a3) | 8;
        v27 = a1 + v26;
        v28 = 16 * v21;
        if (a1 + v26 - 16 * v21 <= (a1 + v26))
        {
          v29 = 16 * a3;
          if (a1 + v29 - v28 <= (a1 + v29))
          {
            v30 = (16 * (a3 - 1)) | 8;
            v31 = a1 + v30;
            if (a1 + v30 - v28 <= (a1 + v30))
            {
              v32 = 16 * (a3 - 1);
              v33 = a1 + v32;
              if (a1 + v32 - v28 <= (a1 + v32) && a1 + a3 + 256 - v21 <= a1 + a3 + 256)
              {
                v34 = a1 + v25;
                if (a1 + v25 + 256 - v21 <= (a1 + v25 + 256))
                {
                  v35 = a1 + v29 - v28;
                  v36 = a1 + v26 - v28;
                  v37 = a1 + v29 + 16;
                  v38 = a1 + v32 - v28;
                  v39 = a1 + v30 - v28;
                  v40 = v33 + 16;
                  v41 = a3 - v21 + a1 + 256;
                  v42 = a1 + a3 + 257;
                  v43 = v25 - v21 + a1 + 256;
                  v44 = v34 + 257;
                  v45 = v35 >= v31 || v38 >= v27;
                  v46 = !v45;
                  v166 = v46;
                  v47 = v35 >= v40 || v39 >= v27;
                  v48 = !v47;
                  v49 = v35 >= v42 || v41 >= v27;
                  v50 = !v49;
                  v51 = v35 >= v44 || v43 >= v27;
                  v52 = !v51;
                  v53 = v36 >= v31 || v38 >= v37;
                  v54 = !v53;
                  v55 = v36 >= v40 || v39 >= v37;
                  v56 = !v55;
                  v57 = v36 >= v42 || v41 >= v37;
                  v58 = !v57;
                  v59 = v36 >= v44 || v43 >= v37;
                  v60 = !v59;
                  v61 = v38 >= v42 || v41 >= v31;
                  v62 = !v61;
                  v63 = v39 >= v42 || v41 >= v40;
                  v64 = !v63;
                  v65 = v41 >= v44 || v43 >= v42;
                  v66 = !v65;
                  v67 = v36 >= v27 || v35 >= v37;
                  if (v67 && !v166 && !v48 && !v50 && !v52 && !v54 && !v56 && !v58 && !v60 && !v62 && !v64 && !v66)
                  {
                    v68 = v21 + 1;
                    if (v21 < 0xF)
                    {
                      v69 = 0;
                      goto LABEL_123;
                    }

                    v69 = v68 & 0x1FFFFFFF0;
                    v70 = v68 & 0x1FFFFFFF0;
                    v71 = a3;
                    do
                    {
                      v72 = (a1 - 240 + 16 * (v71 - 1));
                      v74 = *v72;
                      v73 = v72[1];
                      v76 = v72[2];
                      v75 = v72[3];
                      v78 = v72[4];
                      v77 = v72[5];
                      v80 = v72[6];
                      v79 = v72[7];
                      v82 = v72[8];
                      v81 = v72[9];
                      v84 = v72[10];
                      v83 = v72[11];
                      v86 = v72[12];
                      v85 = v72[13];
                      v88 = v72[14];
                      v87 = *(a1 + 16 * (v71 - 1));
                      v89 = a1 - 248 + 16 * v71;
                      *(v89 + 232) = v88;
                      *(v89 + 248) = v87;
                      *(v89 + 200) = v86;
                      *(v89 + 216) = v85;
                      *(v89 + 168) = v84;
                      *(v89 + 184) = v83;
                      *(v89 + 136) = v82;
                      *(v89 + 152) = v81;
                      *(v89 + 104) = v80;
                      *(v89 + 120) = v79;
                      *(v89 + 72) = v78;
                      *(v89 + 88) = v77;
                      *(v89 + 40) = v76;
                      *(v89 + 56) = v75;
                      *(v89 + 8) = v74;
                      *(v89 + 24) = v73;
                      *(a1 + 241 + v71) = *(a1 + 241 + v71 - 1);
                      v71 -= 16;
                      v70 -= 16;
                    }

                    while (v70);
                    if (v68 == v69)
                    {
                      goto LABEL_24;
                    }

                    if ((v68 & 0xC) != 0)
                    {
LABEL_123:
                      v17 -= v68 & 0xFFFFFFFC;
                      v90 = a3 - v69;
                      v91 = v69 - (v68 & 0x1FFFFFFFCLL);
                      do
                      {
                        v92 = (a1 - 48 + 16 * (v90 - 1));
                        v93 = *v92;
                        v94 = v92[1];
                        v95 = v92[2];
                        v96 = a1 - 56 + 16 * v90;
                        *(v96 + 56) = *(a1 + 16 * (v90 - 1));
                        *(v96 + 40) = v95;
                        *(v96 + 24) = v94;
                        *(v96 + 8) = v93;
                        *(a1 + 253 + v90) = *(a1 + 253 + v90 - 1);
                        v90 -= 4;
                        v91 += 4;
                      }

                      while (v91);
                      if (v68 == (v68 & 0x1FFFFFFFCLL))
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_22;
                    }

                    v17 -= v69;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    v22 = v7 + v17;
    do
    {
      *(a1 + 16 * v22) = *(a1 + 16 * (v22 - 1));
      *(v19 + v22) = *(v19 + v22 - 1);
      --v22;
      --v17;
    }

    while (v17);
LABEL_24:
    v23 = (a1 + 16 * v7);
    *v23 = a4;
    v23[1] = a5;
    *(v19 + v7) = a6;
    return (a3 + 1);
  }

  *a2 = v8;
  if (a3 == v7 || *(v9 + v7) != a6 || (v13 = 16 * v7, a5 + 1 != *(a1 + 16 * v7)))
  {
    *v11 = a5;
    return a3;
  }

  *v11 = *(a1 + 16 * v7 + 8);
  v14 = (v7 + 1);
  if (v14 == a3)
  {
    return (a3 - 1);
  }

  v15 = ~v7 + a3;
  if (v15 < 4)
  {
    v16 = v7;
    goto LABEL_10;
  }

  v97 = (a3 - 2 - v7);
  if (a3 - 2 < v7)
  {
    v16 = v7;
  }

  else if (a3 - 1 < v14)
  {
    v16 = v7;
  }

  else
  {
    v98 = a1 + v13;
    v99 = a1 + v13 + 8;
    v100 = 16 * (a3 - 2 - v7);
    if (v99 + v100 < v99)
    {
      v16 = v7;
    }

    else if (v98 + v100 < v98)
    {
      v16 = v7;
    }

    else
    {
      v101 = 16 * (v7 + 1);
      v102 = a1 + v101;
      v103 = a1 + v101 + 8;
      if (v103 + v100 < v103)
      {
        v16 = v7;
      }

      else if (v102 + v100 < v102)
      {
        v16 = v7;
      }

      else
      {
        v104 = a1 + v13 + v100;
        v105 = v104 + 8;
        v106 = v104 + 16;
        v107 = a1 + v7 + 256;
        v108 = a1 + v7 + v97 + 257;
        v109 = a1 + v100 + v101;
        v110 = v109 + 8;
        v111 = v109 + 16;
        v112 = a1 + v14 + 256;
        v113 = a1 + v14 + v97 + 257;
        v115 = v98 < v108 && v107 < v105;
        v117 = v98 < v110 && v102 < v105;
        v119 = v98 < v111 && v103 < v105;
        v121 = v98 < v113 && v112 < v105;
        v123 = v99 < v108 && v107 < v106;
        v125 = v99 < v110 && v102 < v106;
        v127 = v99 < v111 && v103 < v106;
        v129 = v99 < v113 && v112 < v106;
        v131 = v107 < v110 && v102 < v108;
        v133 = v107 < v111 && v103 < v108;
        v135 = v107 < v113 && v112 < v108;
        if (v99 < v105 && v98 < v106)
        {
          v16 = v7;
          goto LABEL_10;
        }

        if (v115)
        {
          v16 = v7;
        }

        else if (v117)
        {
          v16 = v7;
        }

        else if (v119)
        {
          v16 = v7;
        }

        else if (v121)
        {
          v16 = v7;
        }

        else if (v123)
        {
          v16 = v7;
        }

        else if (v125)
        {
          v16 = v7;
        }

        else if (v127)
        {
          v16 = v7;
        }

        else if (v129)
        {
          v16 = v7;
        }

        else if (v131)
        {
          v16 = v7;
        }

        else if (v133)
        {
          v16 = v7;
        }

        else if (v135)
        {
          v16 = v7;
        }

        else
        {
          if (v15 < 0x10)
          {
            v137 = 0;
            goto LABEL_224;
          }

          v137 = v15 & 0xFFFFFFF0;
          v138 = v7;
          v139 = v15 & 0xFFFFFFF0;
          do
          {
            v140 = (a1 + 16 * (v138 + 1));
            v142 = *v140;
            v141 = v140[1];
            v144 = v140[2];
            v143 = v140[3];
            v146 = v140[4];
            v145 = v140[5];
            v148 = v140[6];
            v147 = v140[7];
            v150 = v140[8];
            v149 = v140[9];
            v152 = v140[10];
            v151 = v140[11];
            v154 = v140[12];
            v153 = v140[13];
            v156 = v140[14];
            v155 = v140[15];
            v157 = (a1 + 16 * v138);
            v157[14] = v156;
            v157[15] = v155;
            v157[12] = v154;
            v157[13] = v153;
            v157[10] = v152;
            v157[11] = v151;
            v157[8] = v150;
            v157[9] = v149;
            v157[6] = v148;
            v157[7] = v147;
            v157[4] = v146;
            v157[5] = v145;
            v157[2] = v144;
            v157[3] = v143;
            *v157 = v142;
            v157[1] = v141;
            *(v9 + v138) = *(v9 + v138 + 1);
            v138 += 16;
            v139 -= 16;
          }

          while (v139);
          if (v15 == v137)
          {
            return (a3 - 1);
          }

          if ((v15 & 0xC) != 0)
          {
LABEL_224:
            LODWORD(v14) = v14 + (v15 & 0xFFFFFFFC);
            v16 = v7 + (v15 & 0xFFFFFFFC);
            v158 = v137 - (v15 & 0xFFFFFFFC);
            v159 = v137 + v7;
            do
            {
              v160 = (a1 + 16 * (v159 + 1));
              v161 = *v160;
              v162 = v160[1];
              v163 = v160[2];
              v164 = v160[3];
              v165 = (a1 + 16 * v159);
              v165[2] = v163;
              v165[3] = v164;
              *v165 = v161;
              v165[1] = v162;
              *(v9 + v159) = *(v9 + v159 + 1);
              v159 += 4;
              v158 += 4;
            }

            while (v158);
            if (v15 == (v15 & 0xFFFFFFFC))
            {
              return (a3 - 1);
            }

            goto LABEL_10;
          }

          v16 = v7 + v137;
          LODWORD(v14) = v14 + v137;
        }
      }
    }
  }

  do
  {
LABEL_10:
    *(a1 + 16 * v16) = *(a1 + 16 * v14);
    *(v9 + v16) = *(v9 + v14);
    LODWORD(v14) = v14 + 1;
    ++v16;
  }

  while (a3 != v14);
  return (a3 - 1);
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 276);
  if (!*(*result + 272))
  {
    if (v3)
    {
      v9 = 0;
      v10 = (v2 + 8);
      while (1)
      {
        v11 = *v10;
        v10 += 2;
        if (v11 >= a2)
        {
          break;
        }

        v9 = (v9 + 1);
        if (v3 == v9)
        {
          v9 = *(*result + 276);
          break;
        }
      }

      v12 = v9 << 32;
      *(result + 4) = 0;
      if (*(result + 5))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 0;
      *(result + 4) = 0;
      if (*(result + 5))
      {
LABEL_20:
        v13 = 0;
LABEL_21:
        v14 = (result[1] + 16 * v13);
        *v14 = v2;
        v14[1] = v12 | v3;
        ++*(result + 4);
        return result;
      }
    }

    v17 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 1), result + 3, 1uLL, 16);
    result = v17;
    v13 = *(v17 + 16);
    goto LABEL_21;
  }

  if (v3)
  {
    v4 = 0;
    while (*(v2 + 136 + 8 * v4) < a2)
    {
      if (v3 == ++v4)
      {
        v4 = *(*result + 276);
        break;
      }
    }

    v5 = v4 << 32;
    *(result + 4) = 0;
    v6 = v2 + 8;
    if (*(result + 5))
    {
      goto LABEL_8;
    }

LABEL_24:
    v15 = result;
    v16 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 1), result + 3, 1uLL, 16);
    a2 = v16;
    result = v15;
    v7 = *(v15 + 16);
    goto LABEL_9;
  }

  v5 = 0;
  *(result + 4) = 0;
  v6 = v2 + 8;
  if (!*(result + 5))
  {
    goto LABEL_24;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = (result[1] + 16 * v7);
  *v8 = v6;
  v8[1] = v5 | v3;
  LODWORD(v8) = *(result + 4);
  *(result + 4) = v8 + 1;
  if (v8 != -1 && *(result[1] + 12) < *(result[1] + 8))
  {

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
  }

  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(uint64_t result, unint64_t a2)
{
  v2 = result + 8;
  v3 = *(result + 16);
  v4 = *(result + 8) + 16 * (v3 - 1);
  v5 = *(*result + 272);
  v6 = *(*v4 + 8 * *(v4 + 12));
  v7 = v5 - v3;
  if (v5 != v3)
  {
    do
    {
      v10 = 0;
      v11 = v6 & 0xFFFFFFFFFFFFFFC0;
      do
      {
        v12 = v10;
        v13 = *((v6 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v10++);
      }

      while (v13 < a2);
      if (v3 >= *(result + 20))
      {
        v8 = a2;
        v9 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (result + 24), v3 + 1, 16);
        a2 = v8;
        result = v9;
        v3 = *(v9 + 16);
      }

      v14 = (*(result + 8) + 16 * v3);
      *v14 = v11;
      v14[1] = (v6 & 0x3F | (v12 << 32)) + 1;
      v3 = *(result + 16) + 1;
      *(result + 16) = v3;
      v6 = *(v11 + 8 * v12);
      --v7;
    }

    while (v7);
  }

  v15 = 0;
  do
  {
    v16 = v15;
    v17 = *((v6 & 0xFFFFFFFFFFFFFFC0) + 16 * v15++ + 8);
  }

  while (v17 < a2);
  v18 = v16;
  if (v3 >= *(result + 20))
  {
    v20 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (result + 24), v3 + 1, 16);
    result = v20;
    v3 = *(v20 + 16);
  }

  v19 = (*(result + 8) + 16 * v3);
  *v19 = v6 & 0xFFFFFFFFFFFFFFC0;
  v19[1] = (v6 & 0x3F | (v18 << 32)) + 1;
  ++*(result + 16);
  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(unsigned int *a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v8 = a1[4];
  if (!v8 || (v9 = *(a1 + 1), *(v9 + 12) >= *(v9 + 8)))
  {
    v10 = *(*a1 + 272);
    llvm::IntervalMapImpl::Path::moveLeft(a1 + 2, *(*a1 + 272));
    v9 = *(a1 + 1);
    ++*(v9 + 16 * v10 + 12);
    v8 = a1[4];
  }

  v11 = v9 + 16 * v8;
  if (!*(v11 - 4) && **(v11 - 16) > a2)
  {
    LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((a1 + 2), v8 - 1);
    if (LeftSibling)
    {
      if (*(LeftSibling + 176) == a4)
      {
        v13 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
        v14 = LeftSibling & 0x3F;
        v15 = ((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8);
        if (*((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8) + 1 == a2)
        {
          v16 = a1[4];
          v17 = *(*(a1 + 1) + 16 * v16 - 16);
          result = llvm::IntervalMapImpl::Path::moveLeft(a1 + 2, v16 - 1);
          if (*v17 > a3 && (*(v17 + 176) != a4 || a3 + 1 != *v17))
          {
            v20 = a1[4];
            *v15 = a3;
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v22 = *(a1 + 1);
              v23 = 16 * v21;
              while (1)
              {
                v24 = v23 - 16;
                if (v23 == 16)
                {
                  break;
                }

                v25 = v22 + v23;
                v26 = *(v25 - 16);
                v28 = v25 - 8;
                LODWORD(v25) = *(v25 - 8);
                v27 = *(v28 + 4);
                *(v26 + 8 * v27 + 96) = a3;
                LODWORD(v26) = v25 - 1;
                v23 = v24;
                if (v27 != v26)
                {
                  return result;
                }
              }

LABEL_31:
              *(*v22 + 8 * *(v22 + 12) + 128) = a3;
              return result;
            }

            return result;
          }

          a2 = *(v13 + 16 * v14);
          llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(a1, 0);
        }
      }
    }

    else
    {
      **a1 = a2;
    }
  }

  v29 = (*(a1 + 1) + 16 * a1[4]);
  v30 = *--v29;
  v31 = *(v29 - 1);
  v32 = v30 == v31;
  result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v29 - 3), v29, v31, a2, a3, a4);
  if (result >= 0xC)
  {
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(a1, a1[4] - 1);
    v33 = (*(a1 + 1) + 16 * a1[4]);
    v34 = *--v33;
    v35 = *(v33 - 1);
    v32 = v34 == v35;
    result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v33 - 3), v33, v35, a2, a3, a4);
  }

  v36 = a1[4];
  v37 = *(a1 + 1);
  *(v37 + 16 * (v36 - 1) + 8) = result;
  if (v36 != 1)
  {
    v38 = v37 + 16 * (v36 - 2);
    *(*v38 + 8 * *(v38 + 12)) = *(*v38 + 8 * *(v38 + 12)) & 0xFFFFFFFFFFFFFFC0 | (result - 1);
  }

  if (v32)
  {
    v39 = a1[4];
    v40 = v39 - 1;
    if (v39 != 1)
    {
      v22 = *(a1 + 1);
      v41 = 16 * v40;
      while (1)
      {
        v42 = v41 - 16;
        if (v41 == 16)
        {
          break;
        }

        v43 = v22 + v41;
        v44 = *(v43 - 16);
        v46 = v43 - 8;
        LODWORD(v43) = *(v43 - 8);
        v45 = *(v46 + 4);
        *(v44 + 8 * v45 + 96) = a3;
        LODWORD(v44) = v43 - 1;
        v41 = v42;
        if (v45 != v44)
        {
          return result;
        }
      }

      goto LABEL_31;
    }
  }

  return result;
}

double llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::branchRoot(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  v35 = *MEMORY[0x1E69E9840];
  llvm::IntervalMapImpl::distribute(2, *(a1 + 276), 0xBu, 0, &v33, a2, 1);
  v9 = *(a1 + 280);
  v10 = v9 + 1;
  Slow = *v9;
  if (*v9)
  {
    *v9 = *Slow;
  }

  else
  {
    v9[11] += 192;
    v12 = v9[1];
    v13 = v9[2];
    Slow = (v12 + 63) & 0xFFFFFFFFFFFFFFC0;
    v14 = Slow + 192;
    if (v12)
    {
      v15 = v14 > v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v10, 192, 192, 6);
    }

    else
    {
      *v10 = v14;
    }
  }

  *(Slow + 160) = 0u;
  *(Slow + 176) = 0u;
  *(Slow + 128) = 0u;
  *(Slow + 144) = 0u;
  *(Slow + 96) = 0u;
  *(Slow + 112) = 0u;
  *(Slow + 64) = 0u;
  *(Slow + 80) = 0u;
  *(Slow + 32) = 0u;
  *(Slow + 48) = 0u;
  *Slow = 0u;
  *(Slow + 16) = 0u;
  v16 = v33;
  if (v33)
  {
    v17 = 0;
    do
    {
      *(Slow + 16 * v17) = *(a1 + 16 * v17);
      *(Slow + v17 + 176) = *(a1 + v17 + 256);
      ++v17;
    }

    while (v16 != v17);
    v18 = v33;
    v19 = *(a1 + 280);
    v21 = v19 + 1;
    v20 = *v19;
    if (*v19)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    v19 = *(a1 + 280);
    v21 = v19 + 1;
    v20 = *v19;
    if (*v19)
    {
LABEL_12:
      *v19 = *v20;
      goto LABEL_19;
    }
  }

  v19[11] += 192;
  v22 = v19[1];
  v23 = v19[2];
  v20 = (v22 + 63) & 0xFFFFFFFFFFFFFFC0;
  v24 = v20 + 192;
  if (v22)
  {
    v25 = v24 > v23;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v21, 192, 192, 6);
  }

  else
  {
    *v21 = v24;
  }

LABEL_19:
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v26 = v34;
  if (v34)
  {
    v27 = (v20 + 176);
    v28 = v20;
    v29 = v18;
    do
    {
      *v28++ = *(a1 + 16 * v29);
      *v27++ = *(a1 + 256 + v29++);
      --v26;
    }

    while (v26);
    v30 = (v34 - 1);
  }

  else
  {
    v30 = 0xFFFFFFFFLL;
  }

  v31 = v20 & 0xFFFFFFFFFFFFFFC0 | v30;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0uLL;
  *(a1 + 240) = 0uLL;
  *(a1 + 192) = 0uLL;
  *(a1 + 208) = 0uLL;
  *(a1 + 160) = 0uLL;
  *(a1 + 176) = 0uLL;
  *(a1 + 128) = 0uLL;
  *(a1 + 144) = 0uLL;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 64) = 0uLL;
  *(a1 + 80) = 0uLL;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = 0uLL;
  *a1 = 0uLL;
  *(a1 + 16) = 0uLL;
  *(a1 + 136) = *((Slow & 0xFFFFFFFFFFFFFFC0 | (v18 - 1) & 0xFFFFFFC0) + 16 * (v33 - 1) + 8);
  *(a1 + 8) = Slow & 0xFFFFFFFFFFFFFFC0 | (v18 - 1);
  *(a1 + 144) = *((v31 & 0xFFFFFFFFFFFFFFC0) + 16 * v30 + 8);
  *(a1 + 16) = v31;
  *a1 = *(Slow & 0xFFFFFFFFFFFFFFC0 | (v18 - 1) & 0xFFFFFFC0);
  *&result = 0x200000001;
  *(a1 + 272) = 0x200000001;
  return result;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(uint64_t *this, int a2)
{
  v4 = this + 1;
  v3 = this[1];
  v5 = *this;
  v6 = *(this + 4);
  v7 = v3 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9 == 1)
  {
    v10 = *(v5 + 280);
    *v8 = *v10;
    *v10 = v8;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(this, *(v5 + 272));
    if (a2)
    {
      if (*(v5 + 272))
      {
        v12 = *(this + 4);
        if (v12)
        {
          v13 = *v4;
          if (*(*v4 + 12) < *(*v4 + 8))
          {
            v14 = (v13 + 12);
            v15 = *(this + 4);
            while (1)
            {
              v16 = *v14;
              v14 += 4;
              if (v16)
              {
                break;
              }

              if (!--v15)
              {
                v17 = *(v13 + 16 * v12 - 16);
                goto LABEL_46;
              }
            }
          }
        }
      }
    }

    return;
  }

  v18 = *(v7 - 4);
  v19 = (v18 + 1);
  if (v19 != v9)
  {
    v20 = v8 + 22;
    v21 = v9 + ~v18;
    if (v21 < 4)
    {
      v22 = v18;
      goto LABEL_30;
    }

    v23 = (v9 - 2 - v18);
    v24 = &v8[2 * v18];
    v25 = (v24 + 1);
    v26 = 2 * v23;
    v27 = 2 * (v18 + 1);
    v28 = &v8[v27];
    v29 = &v8[v27 + 1];
    if (v9 - 2 < v18 || v9 - 1 < v19 || &v24[v26 + 1] < v25 || &v24[v26] < v24 || v29 + v26 * 8 < v29 || &v8[v27 + v26] < v28)
    {
      v22 = v18;
      goto LABEL_30;
    }

    v49 = &v8[2 * v18 + v26];
    v50 = (v49 + 1);
    v51 = (v49 + 2);
    v52 = v8 + v18 + 176;
    v53 = v8 + v18 + v23 + 177;
    v54 = &v8[v26 + v27];
    v55 = (v54 + 1);
    v56 = (v54 + 2);
    v57 = v8 + v19 + 176;
    v58 = v8 + v19 + v23 + 177;
    v60 = v24 < v53 && v52 < v50;
    v111 = v60;
    v62 = v24 < v55 && v28 < v50;
    v64 = v24 < v56 && v29 < v50;
    v66 = v24 < v58 && v57 < v50;
    v68 = v25 < v53 && v52 < v51;
    v70 = v25 < v55 && v28 < v51;
    v72 = v25 < v56 && v29 < v51;
    v74 = v25 < v58 && v57 < v51;
    v76 = v52 < v55 && v28 < v53;
    v78 = v52 < v56 && v29 < v53;
    v80 = v52 < v58 && v57 < v53;
    if (v25 < v50 && v24 < v51)
    {
      v22 = v18;
      goto LABEL_30;
    }

    if (v111)
    {
      v22 = v18;
    }

    else if (v62)
    {
      v22 = v18;
    }

    else if (v64)
    {
      v22 = v18;
    }

    else if (v66)
    {
      v22 = v18;
    }

    else if (v68)
    {
      v22 = v18;
    }

    else if (v70)
    {
      v22 = v18;
    }

    else if (v72)
    {
      v22 = v18;
    }

    else if (v74)
    {
      v22 = v18;
    }

    else if (v76)
    {
      v22 = v18;
    }

    else if (v78)
    {
      v22 = v18;
    }

    else if (v80)
    {
      v22 = v18;
    }

    else
    {
      if (v21 < 0x10)
      {
        v82 = 0;
        goto LABEL_141;
      }

      v82 = v21 & 0xFFFFFFF0;
      v83 = v18;
      v84 = v21 & 0xFFFFFFF0;
      do
      {
        v85 = &v8[2 * v83 + 2];
        v87 = *v85;
        v86 = v85[1];
        v89 = v85[2];
        v88 = v85[3];
        v91 = v85[4];
        v90 = v85[5];
        v93 = v85[6];
        v92 = v85[7];
        v95 = v85[8];
        v94 = v85[9];
        v97 = v85[10];
        v96 = v85[11];
        v99 = v85[12];
        v98 = v85[13];
        v101 = v85[14];
        v100 = v85[15];
        v102 = &v8[2 * v83];
        v102[14] = v101;
        v102[15] = v100;
        v102[12] = v99;
        v102[13] = v98;
        v102[10] = v97;
        v102[11] = v96;
        v102[8] = v95;
        v102[9] = v94;
        v102[6] = v93;
        v102[7] = v92;
        v102[4] = v91;
        v102[5] = v90;
        v102[2] = v89;
        v102[3] = v88;
        *v102 = v87;
        v102[1] = v86;
        *(v20 + v83) = *(v20 + v83 + 1);
        v83 += 16;
        v84 -= 16;
      }

      while (v84);
      if (v21 == v82)
      {
        goto LABEL_31;
      }

      if ((v21 & 0xC) != 0)
      {
LABEL_141:
        LODWORD(v19) = v19 + (v21 & 0xFFFFFFFC);
        v22 = v18 + (v21 & 0xFFFFFFFC);
        v103 = v82 - (v21 & 0xFFFFFFFC);
        v104 = v82 + v18;
        do
        {
          v105 = &v8[2 * v104 + 2];
          v106 = *v105;
          v107 = v105[1];
          v108 = v105[2];
          v109 = v105[3];
          v110 = &v8[2 * v104];
          v110[2] = v108;
          v110[3] = v109;
          *v110 = v106;
          v110[1] = v107;
          *(v20 + v104) = *(v20 + v104 + 1);
          v104 += 4;
          v103 += 4;
        }

        while (v103);
        if (v21 == (v21 & 0xFFFFFFFC))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v22 = v18 + v82;
      LODWORD(v19) = v19 + v82;
    }

    do
    {
LABEL_30:
      *&v8[2 * v22] = *&v8[2 * v19];
      *(v20 + v22) = *(v20 + v19);
      LODWORD(v19) = v19 + 1;
      ++v22;
    }

    while (v9 != v19);
LABEL_31:
    v3 = this[1];
    v6 = *(this + 4);
    v9 = *(v3 + 16 * v6 - 8);
  }

  v35 = *(v5 + 272);
  *(v3 + 16 * v35 + 8) = v9 - 1;
  if (v35)
  {
    v36 = v3 + 16 * (v35 - 1);
    *(*v36 + 8 * *(v36 + 12)) = *(*v36 + 8 * *(v36 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
    v3 = this[1];
    v6 = *(this + 4);
  }

  v37 = v3 + 16 * v6;
  if (*(v37 - 4) == v9 - 1)
  {
    v38 = *(v5 + 272);
    if (v38)
    {
      v39 = v8[2 * (v9 - 2) + 1];
      v40 = 16 * v38;
      while (1)
      {
        v41 = v40 - 16;
        if (v40 == 16)
        {
          break;
        }

        v42 = v3 + v40;
        v43 = *(v42 - 16);
        v45 = v42 - 8;
        LODWORD(v42) = *(v42 - 8);
        v44 = *(v45 + 4);
        *(v43 + 8 * v44 + 96) = v39;
        LODWORD(v43) = v42 - 1;
        v40 = v41;
        if (v44 != v43)
        {
          goto LABEL_49;
        }
      }

      *(*v3 + 8 * *(v3 + 12) + 128) = v39;
    }

LABEL_49:
    v48 = this + 1;

    llvm::IntervalMapImpl::Path::moveRight(v48, v38);
  }

  else if (a2)
  {
    if (v6)
    {
      v46 = (v3 + 12);
      while (1)
      {
        v47 = *v46;
        v46 += 4;
        if (v47)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      v17 = *(v37 - 16);
LABEL_46:
      *v5 = *v17;
    }
  }
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = *a2;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (v7 - 1);
  v9 = a1 + 176;
  if (*(a1 + 176 + v8) != a6 || (v10 = a1 + 16 * v8, v12 = *(v10 + 8), v11 = (v10 + 8), v12 + 1 != a4))
  {
    if (v7 == 11)
    {
      return 12;
    }

LABEL_13:
    v17 = a3 - v7;
    if (a3 == v7)
    {
      v18 = (a1 + 16 * a3);
      *v18 = a4;
      v18[1] = a5;
      *(a1 + a3 + 176) = a6;
      return (a3 + 1);
    }

    v19 = a1 + 176;
    if (*(a1 + 176 + v7) == a6)
    {
      v20 = (a1 + 16 * v7);
      if (a5 + 1 == *v20)
      {
        *v20 = a4;
        return a3;
      }
    }

    if (a3 == 11)
    {
      return 12;
    }

    v21 = (~v7 + a3);
    if (v21 >= 3 && v7 + 1 <= a3)
    {
      v25 = (a3 - 1);
      if (v21 <= v25)
      {
        v26 = (16 * a3) | 8;
        v27 = a1 + v26;
        v28 = 16 * v21;
        if (a1 + v26 - 16 * v21 <= (a1 + v26))
        {
          v29 = 16 * a3;
          if (a1 + v29 - v28 <= (a1 + v29))
          {
            v30 = (16 * (a3 - 1)) | 8;
            v31 = a1 + v30;
            if (a1 + v30 - v28 <= (a1 + v30))
            {
              v32 = 16 * (a3 - 1);
              v33 = a1 + v32;
              if (a1 + v32 - v28 <= (a1 + v32) && a1 + a3 + 176 - v21 <= a1 + a3 + 176)
              {
                v34 = a1 + v25;
                if (a1 + v25 + 176 - v21 <= (a1 + v25 + 176))
                {
                  v35 = a1 + v29 - v28;
                  v36 = a1 + v26 - v28;
                  v37 = a1 + v29 + 16;
                  v38 = a1 + v32 - v28;
                  v39 = a1 + v30 - v28;
                  v40 = v33 + 16;
                  v41 = a3 - v21 + a1 + 176;
                  v42 = a1 + a3 + 177;
                  v43 = v25 - v21 + a1 + 176;
                  v44 = v34 + 177;
                  v45 = v35 >= v31 || v38 >= v27;
                  v46 = !v45;
                  v166 = v46;
                  v47 = v35 >= v40 || v39 >= v27;
                  v48 = !v47;
                  v49 = v35 >= v42 || v41 >= v27;
                  v50 = !v49;
                  v51 = v35 >= v44 || v43 >= v27;
                  v52 = !v51;
                  v53 = v36 >= v31 || v38 >= v37;
                  v54 = !v53;
                  v55 = v36 >= v40 || v39 >= v37;
                  v56 = !v55;
                  v57 = v36 >= v42 || v41 >= v37;
                  v58 = !v57;
                  v59 = v36 >= v44 || v43 >= v37;
                  v60 = !v59;
                  v61 = v38 >= v42 || v41 >= v31;
                  v62 = !v61;
                  v63 = v39 >= v42 || v41 >= v40;
                  v64 = !v63;
                  v65 = v41 >= v44 || v43 >= v42;
                  v66 = !v65;
                  v67 = v36 >= v27 || v35 >= v37;
                  if (v67 && !v166 && !v48 && !v50 && !v52 && !v54 && !v56 && !v58 && !v60 && !v62 && !v64 && !v66)
                  {
                    v68 = v21 + 1;
                    if (v21 < 0xF)
                    {
                      v69 = 0;
                      goto LABEL_123;
                    }

                    v69 = v68 & 0x1FFFFFFF0;
                    v70 = v68 & 0x1FFFFFFF0;
                    v71 = a3;
                    do
                    {
                      v72 = (a1 - 240 + 16 * (v71 - 1));
                      v74 = *v72;
                      v73 = v72[1];
                      v76 = v72[2];
                      v75 = v72[3];
                      v78 = v72[4];
                      v77 = v72[5];
                      v80 = v72[6];
                      v79 = v72[7];
                      v82 = v72[8];
                      v81 = v72[9];
                      v84 = v72[10];
                      v83 = v72[11];
                      v86 = v72[12];
                      v85 = v72[13];
                      v88 = v72[14];
                      v87 = *(a1 + 16 * (v71 - 1));
                      v89 = a1 - 248 + 16 * v71;
                      *(v89 + 232) = v88;
                      *(v89 + 248) = v87;
                      *(v89 + 200) = v86;
                      *(v89 + 216) = v85;
                      *(v89 + 168) = v84;
                      *(v89 + 184) = v83;
                      *(v89 + 136) = v82;
                      *(v89 + 152) = v81;
                      *(v89 + 104) = v80;
                      *(v89 + 120) = v79;
                      *(v89 + 72) = v78;
                      *(v89 + 88) = v77;
                      *(v89 + 40) = v76;
                      *(v89 + 56) = v75;
                      *(v89 + 8) = v74;
                      *(v89 + 24) = v73;
                      *(a1 + 161 + v71) = *(a1 + 161 + v71 - 1);
                      v71 -= 16;
                      v70 -= 16;
                    }

                    while (v70);
                    if (v68 == v69)
                    {
                      goto LABEL_24;
                    }

                    if ((v68 & 0xC) != 0)
                    {
LABEL_123:
                      v17 -= v68 & 0xFFFFFFFC;
                      v90 = a3 - v69;
                      v91 = v69 - (v68 & 0x1FFFFFFFCLL);
                      do
                      {
                        v92 = (a1 - 48 + 16 * (v90 - 1));
                        v93 = *v92;
                        v94 = v92[1];
                        v95 = v92[2];
                        v96 = a1 - 56 + 16 * v90;
                        *(v96 + 56) = *(a1 + 16 * (v90 - 1));
                        *(v96 + 40) = v95;
                        *(v96 + 24) = v94;
                        *(v96 + 8) = v93;
                        *(a1 + 173 + v90) = *(a1 + 173 + v90 - 1);
                        v90 -= 4;
                        v91 += 4;
                      }

                      while (v91);
                      if (v68 == (v68 & 0x1FFFFFFFCLL))
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_22;
                    }

                    v17 -= v69;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    v22 = v7 + v17;
    do
    {
      *(a1 + 16 * v22) = *(a1 + 16 * (v22 - 1));
      *(v19 + v22) = *(v19 + v22 - 1);
      --v22;
      --v17;
    }

    while (v17);
LABEL_24:
    v23 = (a1 + 16 * v7);
    *v23 = a4;
    v23[1] = a5;
    *(v19 + v7) = a6;
    return (a3 + 1);
  }

  *a2 = v8;
  if (a3 == v7 || *(v9 + v7) != a6 || (v13 = 16 * v7, a5 + 1 != *(a1 + 16 * v7)))
  {
    *v11 = a5;
    return a3;
  }

  *v11 = *(a1 + 16 * v7 + 8);
  v14 = (v7 + 1);
  if (v14 == a3)
  {
    return (a3 - 1);
  }

  v15 = ~v7 + a3;
  if (v15 < 4)
  {
    v16 = v7;
    goto LABEL_10;
  }

  v97 = (a3 - 2 - v7);
  if (a3 - 2 < v7)
  {
    v16 = v7;
  }

  else if (a3 - 1 < v14)
  {
    v16 = v7;
  }

  else
  {
    v98 = a1 + v13;
    v99 = a1 + v13 + 8;
    v100 = 16 * (a3 - 2 - v7);
    if (v99 + v100 < v99)
    {
      v16 = v7;
    }

    else if (v98 + v100 < v98)
    {
      v16 = v7;
    }

    else
    {
      v101 = 16 * (v7 + 1);
      v102 = a1 + v101;
      v103 = a1 + v101 + 8;
      if (v103 + v100 < v103)
      {
        v16 = v7;
      }

      else if (v102 + v100 < v102)
      {
        v16 = v7;
      }

      else
      {
        v104 = a1 + v13 + v100;
        v105 = v104 + 8;
        v106 = v104 + 16;
        v107 = a1 + v7 + 176;
        v108 = a1 + v7 + v97 + 177;
        v109 = a1 + v100 + v101;
        v110 = v109 + 8;
        v111 = v109 + 16;
        v112 = a1 + v14 + 176;
        v113 = a1 + v14 + v97 + 177;
        v115 = v98 < v108 && v107 < v105;
        v117 = v98 < v110 && v102 < v105;
        v119 = v98 < v111 && v103 < v105;
        v121 = v98 < v113 && v112 < v105;
        v123 = v99 < v108 && v107 < v106;
        v125 = v99 < v110 && v102 < v106;
        v127 = v99 < v111 && v103 < v106;
        v129 = v99 < v113 && v112 < v106;
        v131 = v107 < v110 && v102 < v108;
        v133 = v107 < v111 && v103 < v108;
        v135 = v107 < v113 && v112 < v108;
        if (v99 < v105 && v98 < v106)
        {
          v16 = v7;
          goto LABEL_10;
        }

        if (v115)
        {
          v16 = v7;
        }

        else if (v117)
        {
          v16 = v7;
        }

        else if (v119)
        {
          v16 = v7;
        }

        else if (v121)
        {
          v16 = v7;
        }

        else if (v123)
        {
          v16 = v7;
        }

        else if (v125)
        {
          v16 = v7;
        }

        else if (v127)
        {
          v16 = v7;
        }

        else if (v129)
        {
          v16 = v7;
        }

        else if (v131)
        {
          v16 = v7;
        }

        else if (v133)
        {
          v16 = v7;
        }

        else if (v135)
        {
          v16 = v7;
        }

        else
        {
          if (v15 < 0x10)
          {
            v137 = 0;
            goto LABEL_224;
          }

          v137 = v15 & 0xFFFFFFF0;
          v138 = v7;
          v139 = v15 & 0xFFFFFFF0;
          do
          {
            v140 = (a1 + 16 * (v138 + 1));
            v142 = *v140;
            v141 = v140[1];
            v144 = v140[2];
            v143 = v140[3];
            v146 = v140[4];
            v145 = v140[5];
            v148 = v140[6];
            v147 = v140[7];
            v150 = v140[8];
            v149 = v140[9];
            v152 = v140[10];
            v151 = v140[11];
            v154 = v140[12];
            v153 = v140[13];
            v156 = v140[14];
            v155 = v140[15];
            v157 = (a1 + 16 * v138);
            v157[14] = v156;
            v157[15] = v155;
            v157[12] = v154;
            v157[13] = v153;
            v157[10] = v152;
            v157[11] = v151;
            v157[8] = v150;
            v157[9] = v149;
            v157[6] = v148;
            v157[7] = v147;
            v157[4] = v146;
            v157[5] = v145;
            v157[2] = v144;
            v157[3] = v143;
            *v157 = v142;
            v157[1] = v141;
            *(v9 + v138) = *(v9 + v138 + 1);
            v138 += 16;
            v139 -= 16;
          }

          while (v139);
          if (v15 == v137)
          {
            return (a3 - 1);
          }

          if ((v15 & 0xC) != 0)
          {
LABEL_224:
            LODWORD(v14) = v14 + (v15 & 0xFFFFFFFC);
            v16 = v7 + (v15 & 0xFFFFFFFC);
            v158 = v137 - (v15 & 0xFFFFFFFC);
            v159 = v137 + v7;
            do
            {
              v160 = (a1 + 16 * (v159 + 1));
              v161 = *v160;
              v162 = v160[1];
              v163 = v160[2];
              v164 = v160[3];
              v165 = (a1 + 16 * v159);
              v165[2] = v163;
              v165[3] = v164;
              *v165 = v161;
              v165[1] = v162;
              *(v9 + v159) = *(v9 + v159 + 1);
              v159 += 4;
              v158 += 4;
            }

            while (v158);
            if (v15 == (v15 & 0xFFFFFFFC))
            {
              return (a3 - 1);
            }

            goto LABEL_10;
          }

          v16 = v7 + v137;
          LODWORD(v14) = v14 + v137;
        }
      }
    }
  }

  do
  {
LABEL_10:
    *(a1 + 16 * v16) = *(a1 + 16 * v14);
    *(v9 + v16) = *(v9 + v14);
    LODWORD(v14) = v14 + 1;
    ++v16;
  }

  while (a3 != v14);
  return (a3 - 1);
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(llvm::IntervalMapImpl::Path *this, uint64_t a2)
{
  v2 = a2;
  v129 = *MEMORY[0x1E69E9840];
  v4 = (this + 8);
  v3 = *(this + 1);
  v126 = 0u;
  v127 = 0u;
  v5 = a2;
  v6 = *(v3 + 16 * a2 + 12);
  LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((this + 8), a2);
  v8 = LeftSibling;
  if (LeftSibling)
  {
    v9 = (LeftSibling & 0x3F) + 1;
    v128[0] = v9;
    v6 = (v9 + v6);
    *&v126 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *v4 + 16 * v5;
  v12 = *(v11 + 8);
  v128[v10] = v12;
  v13 = v12 + v9;
  v14 = v10 + 1;
  *(&v126 | (8 * v10)) = *v11;
  RightSibling = llvm::IntervalMapImpl::Path::getRightSibling(v4, v2);
  if (RightSibling)
  {
    v16 = (RightSibling & 0x3F) + 1;
    v128[v14] = v16;
    v13 += v16;
    *(&v126 + v14) = RightSibling & 0xFFFFFFFFFFFFFFC0;
    v14 = v10 | 2;
  }

  if (v13 + 1 <= (11 * v14))
  {
    v17 = 0;
  }

  else
  {
    if (v14 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 - 1;
    }

    v128[v14] = v128[v17];
    *(&v126 + v14) = *(&v126 + v17);
    v128[v17] = 0;
    v18 = *(*this + 280);
    v20 = v18 + 1;
    Slow = *v18;
    if (*v18)
    {
      *v18 = *Slow;
    }

    else
    {
      v18[11] += 192;
      v21 = v18[1];
      if (v21 && (Slow = (v21 + 63) & 0xFFFFFFFFFFFFFFC0, Slow + 192 <= v18[2]))
      {
        *v20 = Slow + 192;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v20, 192, 192, 6);
      }
    }

    *Slow = 0u;
    *(Slow + 16) = 0u;
    *(Slow + 160) = 0u;
    *(Slow + 176) = 0u;
    *(Slow + 128) = 0u;
    *(Slow + 144) = 0u;
    *(Slow + 96) = 0u;
    *(Slow + 112) = 0u;
    *(Slow + 64) = 0u;
    *(Slow + 80) = 0u;
    v14 = (v14 + 1);
    *(Slow + 32) = 0u;
    *(Slow + 48) = 0u;
    *(&v126 + v17) = Slow;
  }

  v22 = llvm::IntervalMapImpl::distribute(v14, v13, 0xBu, v128, &v122, v6, 1);
  llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(&v126, v14, v128, &v122);
  if (v8)
  {
    llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
  }

  if (!v17)
  {
    v33 = v2 - 1;
    v34 = v122 - 1;
    v35 = *(v126 + 16 * v34 + 8);
    v36 = *v4;
    *(*v4 + 16 * v5 + 8) = v122;
    if (v2)
    {
      *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) = *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v34;
      v37 = *v4;
      v38 = 16 * v5;
      while (1)
      {
        v39 = v38 - 16;
        if (v38 == 16)
        {
          break;
        }

        v40 = v37 + v38;
        v41 = *(v40 - 16);
        v43 = v40 - 8;
        LODWORD(v40) = *(v40 - 8);
        v42 = *(v43 + 4);
        *(v41 + 8 * v42 + 96) = v35;
        LODWORD(v41) = v40 - 1;
        v38 = v39;
        if (v42 != v41)
        {
          goto LABEL_30;
        }
      }

      *(*v37 + 8 * *(v37 + 12) + 128) = v35;
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_30:
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v75 = (v123 - 1);
    v76 = *(*(&v126 + 1) + 16 * v75 + 8);
    v77 = *v4;
    *(*v4 + 16 * v5 + 8) = v123;
    if (v2)
    {
      *(*(v77 + 16 * v33) + 8 * *(v77 + 16 * v33 + 12)) = *(*(v77 + 16 * v33) + 8 * *(v77 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v75;
      v78 = *v4;
      v79 = 16 * v5;
      while (1)
      {
        v80 = v79 - 16;
        if (v79 == 16)
        {
          break;
        }

        v81 = v78 + v79;
        v82 = *(v81 - 16);
        v84 = v81 - 8;
        LODWORD(v81) = *(v81 - 8);
        v83 = *(v84 + 4);
        *(v82 + 8 * v83 + 96) = v76;
        LODWORD(v82) = v81 - 1;
        v79 = v80;
        if (v83 != v82)
        {
          goto LABEL_55;
        }
      }

      *(*v78 + 8 * *(v78 + 12) + 128) = v76;
      if (v14 != 2)
      {
LABEL_64:
        llvm::IntervalMapImpl::Path::moveRight(v4, v2);
        v93 = (v124 - 1);
        v94 = *(v127 + 16 * v93 + 8);
        v95 = *v4;
        *(*v4 + 16 * v5 + 8) = v124;
        if (v2)
        {
          *(*(v95 + 16 * v33) + 8 * *(v95 + 16 * v33 + 12)) = *(*(v95 + 16 * v33) + 8 * *(v95 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v93;
          v96 = *v4;
          v97 = 16 * v5;
          while (1)
          {
            v98 = v97 - 16;
            if (v97 == 16)
            {
              break;
            }

            v99 = v96 + v97;
            v100 = *(v99 - 16);
            v102 = v99 - 8;
            LODWORD(v99) = *(v99 - 8);
            v101 = *(v102 + 4);
            *(v100 + 8 * v101 + 96) = v94;
            LODWORD(v100) = v99 - 1;
            v97 = v98;
            if (v101 != v100)
            {
              goto LABEL_68;
            }
          }

          *(*v96 + 8 * *(v96 + 12) + 128) = v94;
          if (v14 != 3)
          {
LABEL_78:
            llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            v111 = (v125 - 1);
            v112 = *(*(&v127 + 1) + 16 * v111 + 8);
            v113 = *v4;
            *(*v4 + 16 * v5 + 8) = v125;
            if (v2)
            {
              *(*(v113 + 16 * v33) + 8 * *(v113 + 16 * v33 + 12)) = *(*(v113 + 16 * v33) + 8 * *(v113 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v111;
              v114 = *v4;
              v115 = 16 * v5;
              while (1)
              {
                v116 = v115 - 16;
                if (v115 == 16)
                {
                  break;
                }

                v117 = v114 + v115;
                v118 = *(v117 - 16);
                v120 = v117 - 8;
                LODWORD(v117) = *(v117 - 8);
                v119 = *(v120 + 4);
                *(v118 + 8 * v119 + 96) = v112;
                LODWORD(v118) = v117 - 1;
                v115 = v116;
                if (v119 != v118)
                {
                  goto LABEL_86;
                }
              }

              *(*v114 + 8 * *(v114 + 12) + 128) = v112;
            }

LABEL_86:
            if (v14 == 4)
            {
              inserted = 0;
LABEL_90:
              v51 = 3;
              goto LABEL_47;
            }

LABEL_92:
            result = llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_68:
          if (v14 != 3)
          {
            goto LABEL_78;
          }
        }

        inserted = 0;
        v51 = 2;
        goto LABEL_47;
      }
    }

    else
    {
LABEL_55:
      if (v14 != 2)
      {
        goto LABEL_64;
      }
    }

    inserted = 0;
    v51 = 1;
    goto LABEL_47;
  }

  v23 = v122 - 1;
  v24 = *(v126 + 16 * v23 + 8);
  v25 = *v4;
  *(*v4 + 16 * v2 + 8) = v122;
  if (!v2)
  {
LABEL_24:
    if (v14 != 1)
    {
      goto LABEL_33;
    }

LABEL_46:
    v51 = 0;
    inserted = 0;
    goto LABEL_47;
  }

  *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) = *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v23;
  v26 = *v4;
  v27 = 16 * v5;
  while (1)
  {
    v28 = v27 - 16;
    if (v27 == 16)
    {
      break;
    }

    v29 = v26 + v27;
    v30 = *(v29 - 16);
    v32 = v29 - 8;
    LODWORD(v29) = *(v29 - 8);
    v31 = *(v32 + 4);
    *(v30 + 8 * v31 + 96) = v24;
    LODWORD(v30) = v29 - 1;
    v27 = v28;
    if (v31 != v30)
    {
      goto LABEL_24;
    }
  }

  *(*v26 + 8 * *(v26 + 12) + 128) = v24;
  if (v14 == 1)
  {
    goto LABEL_46;
  }

LABEL_33:
  llvm::IntervalMapImpl::Path::moveRight(v4, v2);
  v48 = (v123 - 1);
  v49 = *(*(&v126 + 1) + 16 * v48 + 8);
  if (v17 != 1)
  {
    v52 = *v4;
    *(*v4 + 16 * v2 + 8) = v123;
    if (v2)
    {
      *(*(v52 + 16 * (v2 - 1)) + 8 * *(v52 + 16 * (v2 - 1) + 12)) = *(*(v52 + 16 * (v2 - 1)) + 8 * *(v52 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v48;
      v53 = *v4;
      v54 = 16 * v2;
      while (1)
      {
        v55 = v54 - 16;
        if (v54 == 16)
        {
          break;
        }

        v56 = v53 + v54;
        v57 = *(v56 - 16);
        v59 = v56 - 8;
        LODWORD(v56) = *(v56 - 8);
        v58 = *(v59 + 4);
        *(v57 + 8 * v58 + 96) = v49;
        LODWORD(v57) = v56 - 1;
        v54 = v55;
        if (v58 != v57)
        {
          goto LABEL_40;
        }
      }

      inserted = 0;
      *(*v53 + 8 * *(v53 + 12) + 128) = v49;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_40:
      inserted = 0;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v64 = (v124 - 1);
    v65 = *(v127 + 16 * v64 + 8);
    if (v17 == 2)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, v127 & 0xFFFFFFFFFFFFFFC0 | v64, v65, v60, v61, v62, v63);
      v2 += inserted;
      if (v14 != 3)
      {
        goto LABEL_43;
      }

LABEL_62:
      v51 = 2;
      goto LABEL_47;
    }

    v85 = *v4;
    *(*v4 + 16 * v2 + 8) = v124;
    if (v2)
    {
      *(*(v85 + 16 * (v2 - 1)) + 8 * *(v85 + 16 * (v2 - 1) + 12)) = *(*(v85 + 16 * (v2 - 1)) + 8 * *(v85 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v64;
      v86 = *v4;
      v87 = 16 * v2;
      while (1)
      {
        v88 = v87 - 16;
        if (v87 == 16)
        {
          break;
        }

        v89 = v86 + v87;
        v90 = *(v89 - 16);
        v92 = v89 - 8;
        LODWORD(v89) = *(v89 - 8);
        v91 = *(v92 + 4);
        *(v90 + 8 * v91 + 96) = v65;
        LODWORD(v90) = v89 - 1;
        v87 = v88;
        if (v91 != v90)
        {
          goto LABEL_61;
        }
      }

      *(*v86 + 8 * *(v86 + 12) + 128) = v65;
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_61:
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v70 = (v125 - 1);
    v71 = *(*(&v127 + 1) + 16 * v70 + 8);
    if (v17 == 3)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v127 + 1) & 0xFFFFFFFFFFFFFFC0 | v70, v71, v66, v67, v68, v69);
      v2 += inserted;
    }

    else
    {
      v103 = *v4;
      *(*v4 + 16 * v2 + 8) = v125;
      if (v2)
      {
        *(*(v103 + 16 * (v2 - 1)) + 8 * *(v103 + 16 * (v2 - 1) + 12)) = *(*(v103 + 16 * (v2 - 1)) + 8 * *(v103 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v70;
        v104 = *v4;
        v105 = 16 * v2;
        while (1)
        {
          v106 = v105 - 16;
          if (v105 == 16)
          {
            break;
          }

          v107 = v104 + v105;
          v108 = *(v107 - 16);
          v110 = v107 - 8;
          LODWORD(v107) = *(v107 - 8);
          v109 = *(v110 + 4);
          *(v108 + 8 * v109 + 96) = v71;
          LODWORD(v108) = v107 - 1;
          v105 = v106;
          if (v109 != v108)
          {
            goto LABEL_89;
          }
        }

        *(*v104 + 8 * *(v104 + 12) + 128) = v71;
      }
    }

LABEL_89:
    if (v14 == 4)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v126 + 1) & 0xFFFFFFFFFFFFFFC0 | v48, v49, v44, v45, v46, v47);
  v2 += inserted;
  if (v14 != 2)
  {
    goto LABEL_41;
  }

LABEL_35:
  v51 = 1;
LABEL_47:
  v72 = v22 - v51;
  if (v22 != v51)
  {
    do
    {
      llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
    }

    while (!__CFADD__(v72++, 1));
  }

  *(*v4 + 16 * v2 + 12) = HIDWORD(v22);
  return inserted;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(void *result, unsigned int a2)
{
  v4 = *result;
  v6 = result + 1;
  v5 = result[1];
  v7 = a2 - 1;
  if (a2 != 1)
  {
    v8 = v5 + 16 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v10 == 1)
    {
      v11 = *(v4 + 280);
      *v9 = *v11;
      *v11 = v9;
      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(result, a2 - 1);
      goto LABEL_61;
    }

    v19 = *(v5 + 16 * v7 + 12);
    v20 = v19 + 1;
    if (v19 + 1 == v10)
    {
LABEL_54:
      v47 = v10 - 1;
      *(v5 + 16 * v7 + 8) = v10 - 1;
      v48 = (v10 - 2);
      *(*(v5 + 16 * (a2 - 2)) + 8 * *(v5 + 16 * (a2 - 2) + 12)) = *(*(v5 + 16 * (a2 - 2)) + 8 * *(v5 + 16 * (a2 - 2) + 12)) & 0xFFFFFFFFFFFFFFC0 | v48;
      v49 = *v6;
      if (*(*v6 + 16 * v7 + 12) == v47)
      {
        v50 = v9[v48 + 12];
        v51 = (v49 + 16 * v7 - 8);
        v52 = a2 - 1;
        while (--v52)
        {
          v53 = *(v51 - 1);
          v55 = *v51;
          v54 = v51[1];
          v51 -= 4;
          *(v53 + 8 * v54 + 96) = v50;
          if (v54 != v55 - 1)
          {
            goto LABEL_60;
          }
        }

        *(*v49 + 8 * *(v49 + 12) + 128) = v50;
LABEL_60:
        llvm::IntervalMapImpl::Path::moveRight(v6, a2 - 1);
      }

      goto LABEL_61;
    }

    v21 = v9 + 12;
    v22 = v10 + ~v19;
    if (v22 >= 0x12)
    {
      if (v10 - 2 >= v19 && v10 - 1 >= v20)
      {
        v30 = 8 * (v19 + 1);
        v31 = 8 * v19 - v30;
        if (v31 >= 0x10 && (v30 - 8 * v19 + 96) >= 0x10 && v31 + 96 >= 0x10)
        {
          v20 += v22 & 0xFFFFFFFE;
          v23 = v19 + (v22 & 0xFFFFFFFE);
          v44 = v22 & 0xFFFFFFFE;
          do
          {
            v45 = (v19 + 1);
            v46 = v19;
            *&v9[v46] = *&v9[v45];
            *&v21[v46] = *&v21[v45];
            LODWORD(v19) = v19 + 2;
            v44 -= 2;
          }

          while (v44);
          if (v22 == (v22 & 0xFFFFFFFE))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v23 = v19;
        }
      }

      else
      {
        v23 = v19;
      }
    }

    else
    {
      v23 = v19;
    }

    do
    {
      v9[v23] = v9[v20];
      v21[v23++] = v21[v20++];
    }

    while (v10 != v20);
LABEL_53:
    v5 = *v6;
    v10 = *(*v6 + 16 * v7 + 8);
    goto LABEL_54;
  }

  v12 = *(v5 + 12);
  v13 = *(v4 + 276);
  v14 = v12 + 1;
  if (v12 + 1 != v13)
  {
    v15 = v4 + 8;
    v16 = v4 + 136;
    v17 = v13 + ~v12;
    if (v17 >= 0x12)
    {
      if (v13 - 2 >= v12 && v13 - 1 >= v14)
      {
        v26 = 8 * (v12 + 1);
        v27 = 8 * v12 - v26;
        if (v27 >= 0x10 && (v26 - 8 * v12 + 128) >= 0x10 && v27 + 128 >= 0x10)
        {
          v14 += v17 & 0xFFFFFFFE;
          v18 = v12 + (v17 & 0xFFFFFFFE);
          v34 = v17 & 0xFFFFFFFE;
          do
          {
            v35 = 8 * (v12 + 1);
            v36 = 8 * v12;
            *(v15 + v36) = *(v15 + v35);
            *(v16 + v36) = *(v16 + v35);
            LODWORD(v12) = v12 + 2;
            v34 -= 2;
          }

          while (v34);
          if (v17 == (v17 & 0xFFFFFFFE))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v18 = v12;
        }
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = v12;
    }

    do
    {
      *(v15 + 8 * v18) = *(v15 + 8 * v14);
      *(v16 + 8 * v18++) = *(v16 + 8 * v14++);
    }

    while (v13 != v14);
LABEL_40:
    v13 = *(v4 + 276);
    v5 = *v6;
  }

  v37 = v13 - 1;
  *(v4 + 276) = v37;
  *(v5 + 8) = v37;
  if (!v37)
  {
    *(v4 + 272) = 0;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    v38 = *result;
    if (*(*result + 272))
    {
      v39 = v38 + 8;
      v40 = *(v38 + 276);
      *(result + 4) = 0;
      v41 = result + 2;
      if (*(result + 5))
      {
        v42 = 0;
LABEL_47:
        v43 = (*v6 + 16 * v42);
        *v43 = v39;
        v43[1] = v40;
        ++*v41;
        return;
      }

      v60 = v38 + 8;
    }

    else
    {
      v40 = *(v38 + 276);
      *(result + 4) = 0;
      v41 = result + 2;
      if (*(result + 5))
      {
        v42 = 0;
        v39 = v38;
        goto LABEL_47;
      }

      v60 = v38;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(v6, result + 3, 1uLL, 16);
    v42 = *(result + 4);
    v39 = v60;
    goto LABEL_47;
  }

LABEL_61:
  if (*(result + 4))
  {
    v56 = *v6;
    if (*(*v6 + 12) < *(*v6 + 8))
    {
      v57 = *(*(v56 + 16 * v7) + 8 * *(v56 + 16 * v7 + 12));
      v58 = 16 * a2;
      v59 = v56 + v58;
      *v59 = v57 & 0xFFFFFFFFFFFFFFC0;
      *(v59 + 8) = (v57 & 0x3F) + 1;
      *(*v6 + v58 + 12) = 0;
    }
  }
}

uint64_t llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v347 = a2 - 1;
  if (a2 != 1)
  {
    v4 = v347;
    v348 = a4;
    v349 = result;
    while (1)
    {
      v5 = *(a3 + 4 * v4);
      v6 = *(a4 + 4 * v4);
      if (v5 != v6)
      {
        break;
      }

LABEL_3:
      if (!--v4)
      {
        if (a2 < 2)
        {
          return result;
        }

        v177 = 0;
        while (1)
        {
          v178 = *(a3 + 4 * v177);
          v179 = *(a4 + 4 * v177);
          if (v178 != v179)
          {
            break;
          }

LABEL_250:
          if (++v177 == v347)
          {
            return result;
          }
        }

        v180 = v177;
        while (2)
        {
          if (++v180 == a2)
          {
            goto LABEL_250;
          }

          v182 = *(result + 8 * v180);
          v183 = *(a3 + 4 * v180);
          v184 = *(result + 8 * v177);
          v181 = v178 - v179;
          if (v181 >= 1)
          {
            if (v178 < v181)
            {
              v181 = v178;
            }

            if (11 - v183 < v181)
            {
              v181 = 11 - v183;
            }

            if (v183)
            {
              v185 = v182 + 176;
              if (v183 < 4)
              {
                goto LABEL_380;
              }

              v186 = (v183 - 1);
              v187 = (v186 + v181);
              if (__CFADD__(v186, v181))
              {
                goto LABEL_380;
              }

              v188 = v182 + 8;
              v189 = 16 * (v186 + v181);
              v190 = &v182[v189 + 8];
              v191 = 16 * (v183 - 1);
              v192 = &v182[v191 + 8];
              v193 = &v190[-v191] > v190 || &v182[v189 - v191] > &v182[v189];
              v194 = v193 || v188 > v192;
              v195 = v194 || v182 > &v182[v191];
              v196 = v195 || &v185[v187 - v186] > &v185[v187];
              if (v196 || v185 > &v185[v186])
              {
                goto LABEL_380;
              }

              v198 = &v182[v189 - v191];
              v199 = &v188[v189 - v191];
              v200 = &v182[v189 + 16];
              v201 = &v182[v191 + 16];
              v202 = &v185[v187 - v186];
              v203 = &v182[v187 + 177];
              v204 = &v182[v186 + 177];
              v206 = v198 < v192 && v182 < v190;
              v208 = v198 < v201 && v188 < v190;
              v210 = v198 < v203 && v202 < v190;
              v212 = v198 < v204 && v185 < v190;
              v214 = v199 < v192 && v182 < v200;
              v216 = v199 < v201 && v188 < v200;
              v218 = v199 < v203 && v202 < v200;
              v220 = v199 < v204 && v185 < v200;
              v222 = v182 < v203 && v202 < v192;
              v224 = v188 < v203 && v202 < v201;
              v226 = v202 < v204 && v185 < v203;
              if (v199 < v190 && v198 < v200)
              {
                v346 = *(a3 + 4 * v180);
                a4 = v348;
                result = v349;
                goto LABEL_381;
              }

              a4 = v348;
              result = v349;
              if (v206 || v208 || v210 || v212 || v214 || v216 || v218 || v220 || v222 || v224 || v226)
              {
LABEL_380:
                v346 = *(a3 + 4 * v180);
                goto LABEL_381;
              }

              if (v183 >= 0x10)
              {
                v228 = v183 & 0xFFFFFFF0;
                v288 = v183 - 1;
                v289 = v228;
                do
                {
                  v290 = &v182[16 * v288 - 240];
                  v292 = *v290;
                  v291 = v290[1];
                  v294 = v290[2];
                  v293 = v290[3];
                  v296 = v290[4];
                  v295 = v290[5];
                  v298 = v290[6];
                  v297 = v290[7];
                  v300 = v290[8];
                  v299 = v290[9];
                  v302 = v290[10];
                  v301 = v290[11];
                  v304 = v290[12];
                  v303 = v290[13];
                  v306 = v290[14];
                  v305 = *&v182[16 * v288];
                  v307 = &v182[16 * v187 - 248];
                  *(v307 + 232) = v306;
                  *(v307 + 248) = v305;
                  *(v307 + 200) = v304;
                  *(v307 + 216) = v303;
                  *(v307 + 168) = v302;
                  *(v307 + 184) = v301;
                  *(v307 + 136) = v300;
                  *(v307 + 152) = v299;
                  *(v307 + 104) = v298;
                  *(v307 + 120) = v297;
                  *(v307 + 72) = v296;
                  *(v307 + 88) = v295;
                  *(v307 + 40) = v294;
                  *(v307 + 56) = v293;
                  *(v307 + 8) = v292;
                  *(v307 + 24) = v291;
                  *&v182[v187 + 161] = *&v182[v288 + 161];
                  LODWORD(v187) = v187 - 16;
                  v288 -= 16;
                  v289 -= 16;
                }

                while (v289);
                if (v228 != v183)
                {
                  if ((v183 & 0xC) == 0)
                  {
                    v346 = v183 & 0xF;
                    goto LABEL_381;
                  }

                  goto LABEL_479;
                }
              }

              else
              {
                v228 = 0;
LABEL_479:
                v346 = v183 & 3;
                v308 = ~v228 + v183 + v181;
                v309 = ~v228 + v183;
                v310 = v228 - (v183 & 0xFFFFFFFC);
                do
                {
                  v311 = &v182[16 * v309 - 48];
                  v312 = *v311;
                  v313 = v311[1];
                  v314 = v311[2];
                  v315 = &v182[16 * v308 - 56];
                  *(v315 + 56) = *&v182[16 * v309];
                  *(v315 + 40) = v314;
                  *(v315 + 24) = v313;
                  *(v315 + 8) = v312;
                  *&v182[v308 + 173] = *&v182[v309 + 173];
                  v308 -= 4;
                  v309 -= 4;
                  v310 += 4;
                }

                while (v310);
                if ((v183 & 0xFFFFFFFC) != v183)
                {
LABEL_381:
                  v242 = (v346 - 1);
                  v243 = &v182[v242 + 176];
                  v244 = &v182[16 * v242];
                  v245 = -v346;
                  v246 = v242 + v181;
                  do
                  {
                    v247 = *v244--;
                    *&v182[16 * v246] = v247;
                    LOBYTE(v247) = *v243--;
                    v185[v246--] = v247;
                    v47 = __CFADD__(v245++, 1);
                  }

                  while (!v47);
                }
              }
            }

            if (v181)
            {
              v248 = v178 - v181;
              v249 = v182 + 176;
              v250 = v181;
              do
              {
                *v182 = *(v184 + 16 * v248);
                v182 += 16;
                *v249++ = *(v184 + 176 + v248++);
                --v250;
              }

              while (v250);
            }

LABEL_254:
            *(a3 + 4 * v180) += v181;
            v178 = *(a3 + 4 * v177) - v181;
            *(a3 + 4 * v177) = v178;
            v179 = *(a4 + 4 * v177);
            if (v178 >= v179)
            {
              goto LABEL_250;
            }

            continue;
          }

          break;
        }

        v229 = 11 - v178;
        if (-v181 < v183)
        {
          v230 = -v181;
        }

        else
        {
          v230 = *(a3 + 4 * v180);
        }

        if (v229 >= v230)
        {
          v231 = v230;
        }

        else
        {
          v231 = v229;
        }

        if (v231)
        {
          v232 = v182 + 176;
          v233 = *(result + 8 * v180);
          v234 = v231;
          do
          {
            v235 = *v233++;
            *(v184 + 16 * v178) = v235;
            LOBYTE(v235) = *v232++;
            *(v184 + 176 + v178++) = v235;
            --v234;
          }

          while (v234);
        }

        if (v231 != v183)
        {
          v236 = v182 + 176;
          v237 = (v183 + ~v231);
          if (v237 < 3)
          {
            v238 = 0;
            goto LABEL_376;
          }

          v238 = 0;
          if (v183 - 1 < v231)
          {
            goto LABEL_376;
          }

          v251 = v182 + 8;
          v252 = 16 * v231;
          v253 = &v182[v252 + 8];
          v254 = 16 * (v183 - 1 - v231);
          if (&v253[v254] < v253)
          {
            goto LABEL_376;
          }

          v255 = &v182[v252];
          if (&v182[v252 + v254] < &v182[v252])
          {
            goto LABEL_376;
          }

          v238 = 0;
          v256 = &v251[16 * v237];
          v257 = &v182[16 * v237 + 16];
          v258 = &v182[v237 + 177];
          v259 = v252 + 16 * v237;
          v260 = &v251[v259];
          v261 = &v182[v259 + 16];
          v262 = &v236[v231];
          v263 = v258 + v231;
          v265 = v182 < v258 && v236 < v256;
          v267 = v182 < v260 && v255 < v256;
          v269 = v182 < v261 && v253 < v256;
          v271 = v182 < v263 && v262 < v256;
          v273 = v251 < v258 && v236 < v257;
          v275 = v251 < v260 && v255 < v257;
          v277 = v251 < v261 && v253 < v257;
          v279 = v251 < v263 && v262 < v257;
          v281 = v236 < v260 && v255 < v258;
          v283 = v236 < v261 && v253 < v258;
          v285 = v236 < v263 && v262 < v258;
          if (v251 < v256 && v182 < v257)
          {
            v239 = v231;
            result = v349;
            goto LABEL_377;
          }

          result = v349;
          if (v265 || v267 || v269 || v271 || v273 || v275 || v277 || v279 || v281 || v283 || v285)
          {
LABEL_376:
            v239 = v231;
            goto LABEL_377;
          }

          v287 = v237 + 1;
          if (v237 < 0xF)
          {
            v238 = 0;
            goto LABEL_487;
          }

          v238 = v287 & 0x1FFFFFFF0;
          v316 = v231;
          v317 = v287 & 0x1FFFFFFF0;
          v318 = v182 + 176;
          v319 = v182;
          do
          {
            v320 = &v182[16 * v316];
            v322 = *v320;
            v321 = v320[1];
            v324 = v320[2];
            v323 = v320[3];
            v326 = v320[4];
            v325 = v320[5];
            v328 = v320[6];
            v327 = v320[7];
            v330 = v320[8];
            v329 = v320[9];
            v332 = v320[10];
            v331 = v320[11];
            v334 = v320[12];
            v333 = v320[13];
            v335 = v320[15];
            *(v319 + 14) = v320[14];
            *(v319 + 15) = v335;
            *(v319 + 12) = v334;
            *(v319 + 13) = v333;
            *(v319 + 10) = v332;
            *(v319 + 11) = v331;
            *(v319 + 8) = v330;
            *(v319 + 9) = v329;
            *(v319 + 6) = v328;
            *(v319 + 7) = v327;
            *(v319 + 4) = v326;
            *(v319 + 5) = v325;
            *(v319 + 2) = v324;
            *(v319 + 3) = v323;
            *v319 = v322;
            *(v319 + 1) = v321;
            v319 += 256;
            v336 = *&v236[v316];
            v316 += 16;
            *v318++ = v336;
            v317 -= 16;
          }

          while (v317);
          if (v287 != v238)
          {
            if ((v287 & 0xC) == 0)
            {
              v239 = v231 + v238;
              goto LABEL_377;
            }

LABEL_487:
            v337 = v238;
            v238 = v287 & 0x1FFFFFFFCLL;
            v239 = v231 + (v287 & 0xFFFFFFFC);
            v338 = &v182[16 * v337];
            v339 = &v182[v337 + 176];
            v340 = v337 - (v287 & 0x1FFFFFFFCLL);
            v341 = v231 + v337;
            do
            {
              v342 = &v182[16 * v341];
              v343 = *v342;
              v344 = v342[1];
              v345 = v342[3];
              *(v338 + 2) = v342[2];
              *(v338 + 3) = v345;
              *v338 = v343;
              *(v338 + 1) = v344;
              v338 += 64;
              *v339 = *&v236[v341];
              v339 += 4;
              v341 += 4;
              v340 += 4;
            }

            while (v340);
            if (v287 != v238)
            {
LABEL_377:
              v240 = &v182[v238 + 176];
              v241 = &v182[16 * v238];
              do
              {
                *v241 = *&v182[16 * v239];
                v241 += 16;
                *v240++ = v236[v239++];
              }

              while (v183 != v239);
            }
          }
        }

        v181 = -v231;
        goto LABEL_254;
      }
    }

    v7 = v4;
    while (1)
    {
      if (!v7)
      {
        goto LABEL_3;
      }

      --v7;
      v9 = *(result + 8 * v4);
      v10 = *(result + 8 * v7);
      v11 = *(a3 + 4 * v7);
      v8 = v6 - v5;
      if (v8 >= 1)
      {
        if (v11 < v8)
        {
          v8 = *(a3 + 4 * v7);
        }

        if (11 - v5 < v8)
        {
          v8 = 11 - v5;
        }

        if (!v5)
        {
          goto LABEL_138;
        }

        v12 = v9 + 176;
        v13 = v5;
        if (v5 < 4)
        {
          goto LABEL_16;
        }

        v28 = v5 - 1;
        v29 = (v28 + v8);
        if (__CFADD__(v28, v8))
        {
          goto LABEL_16;
        }

        v30 = v9 + 8;
        v31 = 16 * (v28 + v8);
        v32 = &v9[v31 + 8];
        v33 = 16 * (v5 - 1);
        v34 = &v9[v33 + 8];
        if (&v32[-v33] > v32 || &v9[v31 - v33] > &v9[v31] || v30 > v34 || v9 > &v9[v33] || &v12[v29 - v28] > &v12[v29] || v12 > &v12[v28])
        {
          v14 = v5;
          a4 = v348;
          result = v349;
          goto LABEL_135;
        }

        v40 = &v9[v31 - v33];
        v41 = &v30[v31 - v33];
        v42 = &v9[v31 + 16];
        v43 = &v9[v33 + 16];
        v44 = &v12[v29 - v28];
        v45 = &v9[v29 + 177];
        v46 = &v9[v28 + 177];
        v47 = v40 >= v34 || v9 >= v32;
        v48 = !v47;
        v50 = v40 < v43 && v30 < v32;
        v52 = v40 < v45 && v44 < v32;
        v54 = v40 < v46 && v12 < v32;
        v56 = v41 < v34 && v9 < v42;
        v58 = v41 < v43 && v30 < v42;
        v60 = v41 < v45 && v44 < v42;
        v62 = v41 < v46 && v12 < v42;
        v64 = v9 < v45 && v44 < v34;
        v66 = v30 < v45 && v44 < v43;
        v68 = v44 < v46 && v12 < v45;
        if (v41 < v32 && v40 < v42)
        {
          v14 = v5;
          a4 = v348;
          result = v349;
          goto LABEL_135;
        }

        v70 = v48;
        a4 = v348;
        result = v349;
        if ((v70 & 1) != 0 || v50 || v52 || v54 || v56 || v58 || v60 || v62 || v64 || v66 || v68)
        {
LABEL_16:
          v14 = v5;
        }

        else
        {
          if (v5 < 0x10)
          {
            v71 = 0;
            goto LABEL_233;
          }

          v71 = v5 & 0xFFFFFFF0;
          v118 = v5 - 1;
          v119 = v71;
          do
          {
            v120 = &v9[16 * v118 - 240];
            v122 = *v120;
            v121 = v120[1];
            v124 = v120[2];
            v123 = v120[3];
            v126 = v120[4];
            v125 = v120[5];
            v128 = v120[6];
            v127 = v120[7];
            v130 = v120[8];
            v129 = v120[9];
            v132 = v120[10];
            v131 = v120[11];
            v134 = v120[12];
            v133 = v120[13];
            v136 = v120[14];
            v135 = *&v9[16 * v118];
            v137 = &v9[16 * v29 - 248];
            *(v137 + 232) = v136;
            *(v137 + 248) = v135;
            *(v137 + 200) = v134;
            *(v137 + 216) = v133;
            *(v137 + 168) = v132;
            *(v137 + 184) = v131;
            *(v137 + 136) = v130;
            *(v137 + 152) = v129;
            *(v137 + 104) = v128;
            *(v137 + 120) = v127;
            *(v137 + 72) = v126;
            *(v137 + 88) = v125;
            *(v137 + 40) = v124;
            *(v137 + 56) = v123;
            *(v137 + 8) = v122;
            *(v137 + 24) = v121;
            *&v9[v29 + 161] = *&v9[v118 + 161];
            LODWORD(v29) = v29 - 16;
            v118 -= 16;
            v119 -= 16;
          }

          while (v119);
          if (v71 == v5)
          {
            goto LABEL_138;
          }

          if ((v5 & 0xC) == 0)
          {
            v14 = v5 & 0xF;
            goto LABEL_135;
          }

LABEL_233:
          v138 = v5 & 0xFFFFFFFC;
          v14 = v5 & 3;
          v139 = ~v71 + v5 + v8;
          v140 = ~v71 + v13;
          v141 = v71 - (v13 & 0xFFFFFFFC);
          do
          {
            v142 = &v9[16 * v140 - 48];
            v143 = *v142;
            v144 = v142[1];
            v145 = v142[2];
            v146 = &v9[16 * v139 - 56];
            *(v146 + 56) = *&v9[16 * v140];
            *(v146 + 40) = v145;
            *(v146 + 24) = v144;
            *(v146 + 8) = v143;
            *&v9[v139 + 173] = *&v9[v140 + 173];
            v139 -= 4;
            v140 -= 4;
            v141 += 4;
          }

          while (v141);
          if (v138 == v13)
          {
LABEL_138:
            if (v8)
            {
              v78 = v11 - v8;
              v79 = v9 + 176;
              v80 = v8;
              do
              {
                *v9 = *(v10 + 16 * v78);
                v9 += 16;
                *v79++ = *(v10 + 176 + v78++);
                --v80;
              }

              while (v80);
            }

            goto LABEL_7;
          }
        }

LABEL_135:
        v72 = (v14 - 1);
        v73 = &v9[v72 + 176];
        v74 = &v9[16 * v72];
        v75 = -v14;
        v76 = v72 + v8;
        do
        {
          v77 = *v74--;
          *&v9[16 * v76] = v77;
          LOBYTE(v77) = *v73--;
          v12[v76--] = v77;
          v47 = __CFADD__(v75++, 1);
        }

        while (!v47);
        goto LABEL_138;
      }

      v15 = 11 - v11;
      if (-v8 < v5)
      {
        v16 = -v8;
      }

      else
      {
        v16 = v5;
      }

      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = v9 + 176;
        v19 = *(result + 8 * v4);
        v20 = v17;
        do
        {
          v21 = *v19++;
          *(v10 + 16 * v11) = v21;
          LOBYTE(v21) = *v18++;
          *(v10 + 176 + v11++) = v21;
          --v20;
        }

        while (v20);
      }

      if (v17 != v5)
      {
        break;
      }

LABEL_6:
      v8 = -v17;
LABEL_7:
      *(a3 + 4 * v7) -= v8;
      v5 = *(a3 + 4 * v4) + v8;
      *(a3 + 4 * v4) = v5;
      v6 = *(a4 + 4 * v4);
      if (v5 >= v6)
      {
        goto LABEL_3;
      }
    }

    v22 = v9 + 176;
    v23 = v5 + ~v17;
    if (v23 < 3)
    {
      v24 = 0;
LABEL_29:
      v25 = v17;
      goto LABEL_30;
    }

    v24 = 0;
    if (v5 - 1 < v17)
    {
      goto LABEL_29;
    }

    v81 = v9 + 8;
    v82 = 16 * v17;
    v83 = &v9[v82 + 8];
    v84 = 16 * (v5 - 1 - v17);
    if (&v83[v84] < v83)
    {
      goto LABEL_29;
    }

    v85 = &v9[v82];
    if (&v9[v82 + v84] < &v9[v82])
    {
      goto LABEL_29;
    }

    v24 = 0;
    v86 = &v81[16 * v23];
    v87 = &v9[16 * v23 + 16];
    v88 = &v9[v23 + 177];
    v89 = v82 + 16 * v23;
    v90 = &v81[v89];
    v91 = &v9[v89 + 16];
    v92 = &v22[v17];
    v93 = v88 + v17;
    v95 = v9 < v88 && v22 < v86;
    v97 = v9 < v90 && v85 < v86;
    v99 = v9 < v91 && v83 < v86;
    v101 = v9 < v93 && v92 < v86;
    v103 = v81 < v88 && v22 < v87;
    v105 = v81 < v90 && v85 < v87;
    v107 = v81 < v91 && v83 < v87;
    v109 = v81 < v93 && v92 < v87;
    v111 = v22 < v90 && v85 < v88;
    v113 = v22 < v91 && v83 < v88;
    v115 = v22 < v93 && v92 < v88;
    if (v81 < v86 && v9 < v87)
    {
      v25 = v17;
      goto LABEL_30;
    }

    if (v95 || v97 || v99 || v101 || v103 || v105 || v107 || v109 || v111 || v113 || v115)
    {
      goto LABEL_29;
    }

    v117 = v23 + 1;
    if (v23 >= 0xF)
    {
      v24 = v117 & 0x1FFFFFFF0;
      v147 = v17;
      v148 = v117 & 0x1FFFFFFF0;
      v149 = v9 + 176;
      v150 = v9;
      do
      {
        v151 = &v9[16 * v147];
        v153 = *v151;
        v152 = v151[1];
        v155 = v151[2];
        v154 = v151[3];
        v157 = v151[4];
        v156 = v151[5];
        v159 = v151[6];
        v158 = v151[7];
        v161 = v151[8];
        v160 = v151[9];
        v163 = v151[10];
        v162 = v151[11];
        v165 = v151[12];
        v164 = v151[13];
        v166 = v151[15];
        *(v150 + 14) = v151[14];
        *(v150 + 15) = v166;
        *(v150 + 12) = v165;
        *(v150 + 13) = v164;
        *(v150 + 10) = v163;
        *(v150 + 11) = v162;
        *(v150 + 8) = v161;
        *(v150 + 9) = v160;
        *(v150 + 6) = v159;
        *(v150 + 7) = v158;
        *(v150 + 4) = v157;
        *(v150 + 5) = v156;
        *(v150 + 2) = v155;
        *(v150 + 3) = v154;
        *v150 = v153;
        *(v150 + 1) = v152;
        v150 += 256;
        v167 = *&v22[v147];
        v147 += 16;
        *v149++ = v167;
        v148 -= 16;
      }

      while (v148);
      if (v117 == v24)
      {
        goto LABEL_6;
      }

      if ((v117 & 0xC) == 0)
      {
        v25 = v17 + v24;
LABEL_30:
        v26 = &v9[v24 + 176];
        v27 = &v9[16 * v24];
        do
        {
          *v27 = *&v9[16 * v25];
          v27 += 16;
          *v26++ = v22[v25++];
        }

        while (v5 != v25);
        goto LABEL_6;
      }
    }

    else
    {
      v24 = 0;
    }

    v168 = v24;
    v24 = v117 & 0x1FFFFFFFCLL;
    v25 = v17 + (v117 & 0xFFFFFFFC);
    v169 = &v9[16 * v168];
    v170 = &v9[v168 + 176];
    v171 = v168 - (v117 & 0x1FFFFFFFCLL);
    v172 = v17 + v168;
    do
    {
      v173 = &v9[16 * v172];
      v174 = *v173;
      v175 = v173[1];
      v176 = v173[3];
      *(v169 + 2) = v173[2];
      *(v169 + 3) = v176;
      *v169 = v174;
      *(v169 + 1) = v175;
      v169 += 64;
      *v170 = *&v22[v172];
      v170 += 4;
      v172 += 4;
      v171 += 4;
    }

    while (v171);
    if (v117 == v24)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(llvm::IntervalMapImpl::Path *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  v11 = (a1 + 8);
  v12 = *a1;
  v13 = (a2 == 1);
  if (a2 == 1)
  {
    v14 = *(v12 + 276);
    if (v14 <= 0xF)
    {
      v15 = v12 + 8;
      v16 = *(*v11 + 12);
      if (v14 != v16)
      {
        v17 = v14 - v16;
        v18 = (v14 + ~v16);
        if (v18 < 0x33 || v16 + 1 > v14)
        {
          goto LABEL_24;
        }

        v19 = v12 + 8 * v14;
        v20 = v19 + 8;
        v21 = v19 + 8 - 8 * v18;
        v22 = v19 + 136;
        v23 = v19 + 136 - 8 * v18;
        v24 = 8 * (v14 - 1);
        v25 = v18 > v14 - 1 || v21 > v20;
        v26 = v25 || v23 > v22;
        v27 = v26 || v12 + v24 + 8 - 8 * v18 > (v12 + v24 + 8);
        if (v27 || v12 + v24 + 136 - 8 * v18 > (v12 + v24 + 136))
        {
          goto LABEL_24;
        }

        v29 = v24 - 8 * v14;
        if (v29 < 0x10)
        {
          goto LABEL_24;
        }

        if (v29 - 128 < 0x10)
        {
          goto LABEL_24;
        }

        v30 = v18 + 1;
        v17 -= v30 & 0xFFFFFFFE;
        v31 = v30 & 0x1FFFFFFFELL;
        do
        {
          v32 = 8 * (v14 - 1);
          v33 = 8 * v14;
          *(v12 + v33) = *(v12 + v32);
          *(v12 + 128 + v33) = *(v12 + 128 + v32);
          LODWORD(v14) = v14 - 2;
          v31 -= 2;
        }

        while (v31);
        if (v30 != (v30 & 0x1FFFFFFFELL))
        {
LABEL_24:
          v34 = v16 + v17;
          do
          {
            *(v15 + 8 * v34) = *(v15 + 8 * (v34 - 1));
            *(v12 + 136 + 8 * v34) = *(v12 + 136 + 8 * (v34 - 1));
            --v34;
            --v17;
          }

          while (v17);
        }
      }

      v35 = 8 * v16;
      *(v15 + v35) = a3;
      *(v12 + v35 + 136) = a4;
      v36 = *(v12 + 276) + 1;
      *(v12 + 276) = v36;
      v37 = *v11;
      *(v37 + 8) = v36;
      v38 = *(*v37 + 8 * *(v37 + 12));
      *(v37 + 16) = v38 & 0xFFFFFFFFFFFFFFC0;
      *(v37 + 24) = (v38 & 0x3F) + 1;
      return 0;
    }

    v40 = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::splitRoot(*a1, *(*v11 + 12), a3, a4, a5, a6, a7, a8);
    llvm::IntervalMapImpl::Path::replaceRoot(v11, v12 + 8, *(v12 + 276), v40);
    a2 = 2;
  }

  v41 = (a2 - 1);
  if (*(a1 + 4) && (v42 = *v11, *(*v11 + 12) < *(*v11 + 8)))
  {
    v43 = (a2 - 1);
    v44 = *(v42 + 16 * v41 + 8);
    if (v44 != 12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    llvm::IntervalMapImpl::Path::moveLeft(v11, a2 - 1);
    v42 = *v11;
    ++*(*v11 + 16 * v41 + 12);
    v43 = v41;
    v44 = *(v42 + 16 * v41 + 8);
    if (v44 != 12)
    {
LABEL_31:
      v45 = (v42 + 16 * v43);
      v46 = *v45;
      v47 = *(v45 + 3);
      if (v44 == v47)
      {
        goto LABEL_58;
      }

LABEL_35:
      v50 = v44 - v47;
      v51 = v44 + ~v47;
      if (v51 < 0x31 || v47 + 1 > v44)
      {
        goto LABEL_56;
      }

      v52 = 8 * v44;
      v53 = 8 * (v44 - 1);
      v54 = v51 > v44 - 1 || v46 + v52 - 8 * v51 > (v46 + v52);
      v55 = v54 || v46 + v52 + 96 - 8 * v51 > (v46 + v52 + 96);
      v56 = v55 || v46 + v53 - 8 * v51 > (v46 + v53);
      if (v56 || v46 + v53 + 96 - 8 * v51 > (v46 + v53 + 96))
      {
        goto LABEL_56;
      }

      if ((v53 - v52) < 0x10)
      {
        goto LABEL_56;
      }

      if ((v52 - v53 - 96) < 0x10)
      {
        goto LABEL_56;
      }

      if ((v53 - v52 - 96) < 0x10)
      {
        goto LABEL_56;
      }

      v58 = v51 + 1;
      v50 -= v58 & 0xFFFFFFFE;
      v59 = v58 & 0x1FFFFFFFELL;
      do
      {
        v60 = 8 * (v44 - 1);
        v61 = 8 * v44;
        *(v46 - 8 + v61) = *(v46 - 8 + v60);
        *(v46 + 88 + v61) = *(v46 + 88 + v60);
        v44 -= 2;
        v59 -= 2;
      }

      while (v59);
      if (v58 != (v58 & 0x1FFFFFFFELL))
      {
LABEL_56:
        v62 = v47 + v50;
        do
        {
          *(v46 + 8 * v62) = *(v46 + 8 * (v62 - 1));
          *(v46 + 96 + 8 * v62) = *(v46 + 96 + 8 * (v62 - 1));
          --v62;
          --v50;
        }

        while (v50);
      }

      goto LABEL_58;
    }
  }

  v13 = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(a1, v41);
  v43 = (v41 + v13);
  v48 = *(a1 + 1);
  v44 = *(v48 + 16 * v43 + 8);
  LODWORD(v41) = v41 + v13;
  v49 = (v48 + 16 * v43);
  v46 = *v49;
  v47 = *(v49 + 3);
  if (v44 != v47)
  {
    goto LABEL_35;
  }

LABEL_58:
  v63 = (v46 + 8 * v47);
  *v63 = a3;
  v63[12] = a4;
  v64 = *v11;
  v65 = *v11 + 16 * v43;
  v66 = *(v65 + 8);
  *(v65 + 8) = v66 + 1;
  if (v41)
  {
    *(*(v64 + 16 * (v41 - 1)) + 8 * *(v64 + 16 * (v41 - 1) + 12)) = *(*(v64 + 16 * (v41 - 1)) + 8 * *(v64 + 16 * (v41 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v66;
    v64 = *v11;
    v65 = *v11 + 16 * v43;
    v67 = *(v65 + 12);
    if (v67 == *(v65 + 8) - 1)
    {
      v68 = (v65 - 8);
      while (--v43)
      {
        v69 = *(v68 - 1);
        v71 = *v68;
        v70 = v68[1];
        v68 -= 4;
        *(v69 + 8 * v70 + 96) = a4;
        if (v70 != v71 - 1)
        {
          goto LABEL_66;
        }
      }

      *(*v64 + 8 * *(v64 + 12) + 128) = a4;
    }
  }

  else
  {
    v67 = *(v65 + 12);
  }

LABEL_66:
  v72 = *(*v65 + 8 * v67);
  v73 = v64 + 16 * (v41 + 1);
  *v73 = v72 & 0xFFFFFFFFFFFFFFC0;
  *(v73 + 8) = (v72 & 0x3F) + 1;
  return v13;
}

unint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::splitRoot(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  v55 = *MEMORY[0x1E69E9840];
  result = llvm::IntervalMapImpl::distribute(2, *(a1 + 276), 0xBu, 0, &v53, a2, 1);
  v10 = *(a1 + 280);
  v11 = v10 + 1;
  Slow = *v10;
  if (*v10)
  {
    *v10 = *Slow;
  }

  else
  {
    v10[11] += 192;
    v13 = v10[1];
    v14 = v10[2];
    Slow = (v13 + 63) & 0xFFFFFFFFFFFFFFC0;
    v15 = Slow + 192;
    if (v13)
    {
      v16 = v15 > v14;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v51 = result;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v11, 192, 192, 6);
      result = v51;
    }

    else
    {
      *v11 = v15;
    }
  }

  v17 = a1 + 8;
  v18 = a1 + 136;
  *(Slow + 160) = 0u;
  *(Slow + 176) = 0u;
  *(Slow + 128) = 0u;
  *(Slow + 144) = 0u;
  *(Slow + 96) = 0u;
  *(Slow + 112) = 0u;
  *(Slow + 64) = 0u;
  *(Slow + 80) = 0u;
  *(Slow + 32) = 0u;
  *(Slow + 48) = 0u;
  *Slow = 0u;
  *(Slow + 16) = 0u;
  v19 = v53;
  if (!v53)
  {
    v26 = 0;
    v27 = *(a1 + 280);
    v29 = v27 + 1;
    v28 = *v27;
    if (*v27)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v53 < 6 || Slow < a1 + 8 * v53 + 136 && v17 < 8 * v53 + Slow + 96)
  {
    v20 = 0;
LABEL_13:
    v21 = v19 - v20;
    v22 = 8 * v20;
    v23 = (8 * v20 + a1 + 136);
    v24 = (Slow + v22);
    do
    {
      *v24 = *(v23 - 16);
      v25 = *v23++;
      v24[12] = v25;
      ++v24;
      --v21;
    }

    while (v21);
    goto LABEL_15;
  }

  v20 = v53 & 0xFFFFFFFE;
  v40 = v20;
  v41 = Slow;
  v42 = (a1 + 136);
  do
  {
    *v41 = *(v42 - 8);
    v43 = *v42++;
    v41[6] = v43;
    ++v41;
    v40 -= 2;
  }

  while (v40);
  if (v20 != v19)
  {
    goto LABEL_13;
  }

LABEL_15:
  v26 = v53;
  v27 = *(a1 + 280);
  v29 = v27 + 1;
  v28 = *v27;
  if (*v27)
  {
LABEL_16:
    *v27 = *v28;
    goto LABEL_23;
  }

LABEL_18:
  v27[11] += 192;
  v30 = v27[1];
  v31 = v27[2];
  v28 = (v30 + 63) & 0xFFFFFFFFFFFFFFC0;
  v32 = v28 + 192;
  if (v30)
  {
    v33 = v32 > v31;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v52 = result;
    v28 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v29, 192, 192, 6);
    result = v52;
  }

  else
  {
    *v29 = v32;
  }

LABEL_23:
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 96) = 0u;
  *(v28 + 112) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  v34 = v54;
  if (v54)
  {
    v35 = 0;
    if (v54 < 0xC)
    {
      v36 = v26;
    }

    else
    {
      v36 = v26;
      if (v26 <= -v54)
      {
        v37 = 8 * (v54 - 1);
        v38 = a1 + 8 * v26;
        if (v28 >= v38 + v37 + 144 || v38 + 8 >= v37 + v28 + 104)
        {
          v35 = v54 & 0xFFFFFFFE;
          v36 = v26 + (v54 & 0xFFFFFFFE);
          v44 = v26;
          v45 = v35;
          v46 = v28;
          do
          {
            v47 = 8 * v44;
            *v46 = *(v17 + v47);
            v46[6] = *(v18 + v47);
            ++v46;
            v44 += 2;
            v45 -= 2;
          }

          while (v45);
          if (v35 == v34)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v35 = 0;
          v36 = v26;
        }
      }
    }

    v48 = v34 + v26;
    v49 = (v28 + 8 * v35);
    do
    {
      *v49 = *(v17 + 8 * v36);
      v49[12] = *(v18 + 8 * v36++);
      ++v49;
    }

    while (v48 != v36);
LABEL_40:
    v39 = v54 - 1;
    goto LABEL_41;
  }

  v39 = 0xFFFFFFFFLL;
LABEL_41:
  v50 = v28 & 0xFFFFFFFFFFFFFFC0 | v39;
  *(a1 + 136) = *((Slow & 0xFFFFFFFFFFFFFFC0 | (v26 - 1) & 0xFFFFFFC0) + 8 * (v53 - 1) + 0x60);
  *(a1 + 8) = Slow & 0xFFFFFFFFFFFFFFC0 | (v26 - 1);
  *(a1 + 144) = *((v50 & 0xFFFFFFFFFFFFFFC0) + 8 * v39 + 0x60);
  *(a1 + 16) = v50;
  *(a1 + 276) = 2;
  ++*(a1 + 272);
  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(llvm::IntervalMapImpl::Path *this, int a2)
{
  v2 = a2;
  v117 = *MEMORY[0x1E69E9840];
  v4 = (this + 8);
  v3 = *(this + 1);
  v114 = 0u;
  v115 = 0u;
  v5 = a2;
  v6 = *(v3 + 16 * a2 + 12);
  LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((this + 8), a2);
  v8 = LeftSibling;
  if (LeftSibling)
  {
    v9 = (LeftSibling & 0x3F) + 1;
    v116[0] = v9;
    v6 = (v9 + v6);
    *&v114 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *v4 + 16 * v5;
  v12 = *(v11 + 8);
  v116[v10] = v12;
  v13 = v12 + v9;
  v14 = v10 + 1;
  *(&v114 | (8 * v10)) = *v11;
  RightSibling = llvm::IntervalMapImpl::Path::getRightSibling(v4, v2);
  if (RightSibling)
  {
    v16 = (RightSibling & 0x3F) + 1;
    v116[v14] = v16;
    v13 += v16;
    *(&v114 + v14) = RightSibling & 0xFFFFFFFFFFFFFFC0;
    v14 = v10 | 2;
  }

  if (v13 + 1 <= (12 * v14))
  {
    v17 = 0;
  }

  else
  {
    if (v14 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 - 1;
    }

    v116[v14] = v116[v17];
    *(&v114 + v14) = *(&v114 + v17);
    v116[v17] = 0;
    v18 = *(*this + 280);
    v20 = v18 + 1;
    Slow = *v18;
    if (*v18)
    {
      *v18 = *Slow;
    }

    else
    {
      v18[11] += 192;
      v21 = v18[1];
      if (v21 && (Slow = (v21 + 63) & 0xFFFFFFFFFFFFFFC0, Slow + 192 <= v18[2]))
      {
        *v20 = Slow + 192;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v20, 192, 192, 6);
      }
    }

    *Slow = 0u;
    *(Slow + 16) = 0u;
    *(Slow + 160) = 0u;
    *(Slow + 176) = 0u;
    *(Slow + 128) = 0u;
    *(Slow + 144) = 0u;
    *(Slow + 96) = 0u;
    *(Slow + 112) = 0u;
    *(Slow + 64) = 0u;
    *(Slow + 80) = 0u;
    v14 = (v14 + 1);
    *(Slow + 32) = 0u;
    *(Slow + 48) = 0u;
    *(&v114 + v17) = Slow;
  }

  v22 = llvm::IntervalMapImpl::distribute(v14, v13, 0xCu, v116, &v110, v6, 1);
  llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(&v114, v14, v116, &v110);
  if (v8)
  {
    llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
  }

  if (!v17)
  {
    v33 = v2 - 1;
    v34 = v110 - 1;
    v35 = *(v114 + 8 * v34 + 96);
    v36 = *v4;
    *(*v4 + 16 * v5 + 8) = v110;
    if (v2)
    {
      *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) = *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v34;
      v37 = *v4;
      v38 = 16 * v5;
      while (1)
      {
        v39 = v38 - 16;
        if (v38 == 16)
        {
          break;
        }

        v40 = v37 + v38;
        v41 = *(v40 - 16);
        v43 = v40 - 8;
        LODWORD(v40) = *(v40 - 8);
        v42 = *(v43 + 4);
        *(v41 + 8 * v42 + 96) = v35;
        LODWORD(v41) = v40 - 1;
        v38 = v39;
        if (v42 != v41)
        {
          goto LABEL_30;
        }
      }

      *(*v37 + 8 * *(v37 + 12) + 128) = v35;
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_30:
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v63 = (v111 - 1);
    v64 = *(*(&v114 + 1) + 8 * v63 + 96);
    v65 = *v4;
    *(*v4 + 16 * v5 + 8) = v111;
    if (v2)
    {
      *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) = *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v63;
      v66 = *v4;
      v67 = 16 * v5;
      while (1)
      {
        v68 = v67 - 16;
        if (v67 == 16)
        {
          break;
        }

        v69 = v66 + v67;
        v70 = *(v69 - 16);
        v72 = v69 - 8;
        LODWORD(v69) = *(v69 - 8);
        v71 = *(v72 + 4);
        *(v70 + 8 * v71 + 96) = v64;
        LODWORD(v70) = v69 - 1;
        v67 = v68;
        if (v71 != v70)
        {
          goto LABEL_55;
        }
      }

      *(*v66 + 8 * *(v66 + 12) + 128) = v64;
      if (v14 != 2)
      {
LABEL_64:
        llvm::IntervalMapImpl::Path::moveRight(v4, v2);
        v81 = (v112 - 1);
        v82 = *(v115 + 8 * v81 + 96);
        v83 = *v4;
        *(*v4 + 16 * v5 + 8) = v112;
        if (v2)
        {
          *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) = *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v81;
          v84 = *v4;
          v85 = 16 * v5;
          while (1)
          {
            v86 = v85 - 16;
            if (v85 == 16)
            {
              break;
            }

            v87 = v84 + v85;
            v88 = *(v87 - 16);
            v90 = v87 - 8;
            LODWORD(v87) = *(v87 - 8);
            v89 = *(v90 + 4);
            *(v88 + 8 * v89 + 96) = v82;
            LODWORD(v88) = v87 - 1;
            v85 = v86;
            if (v89 != v88)
            {
              goto LABEL_68;
            }
          }

          *(*v84 + 8 * *(v84 + 12) + 128) = v82;
          if (v14 != 3)
          {
LABEL_78:
            llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            v99 = (v113 - 1);
            v100 = *(*(&v115 + 1) + 8 * v99 + 96);
            v101 = *v4;
            *(*v4 + 16 * v5 + 8) = v113;
            if (v2)
            {
              *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) = *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v99;
              v102 = *v4;
              v103 = 16 * v5;
              while (1)
              {
                v104 = v103 - 16;
                if (v103 == 16)
                {
                  break;
                }

                v105 = v102 + v103;
                v106 = *(v105 - 16);
                v108 = v105 - 8;
                LODWORD(v105) = *(v105 - 8);
                v107 = *(v108 + 4);
                *(v106 + 8 * v107 + 96) = v100;
                LODWORD(v106) = v105 - 1;
                v103 = v104;
                if (v107 != v106)
                {
                  goto LABEL_86;
                }
              }

              *(*v102 + 8 * *(v102 + 12) + 128) = v100;
            }

LABEL_86:
            if (v14 == 4)
            {
              inserted = 0;
LABEL_90:
              v47 = 3;
              goto LABEL_47;
            }

LABEL_92:
            result = llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_68:
          if (v14 != 3)
          {
            goto LABEL_78;
          }
        }

        inserted = 0;
        v47 = 2;
        goto LABEL_47;
      }
    }

    else
    {
LABEL_55:
      if (v14 != 2)
      {
        goto LABEL_64;
      }
    }

    inserted = 0;
    v47 = 1;
    goto LABEL_47;
  }

  v23 = v110 - 1;
  v24 = *(v114 + 8 * v23 + 96);
  v25 = *v4;
  *(*v4 + 16 * v2 + 8) = v110;
  if (!v2)
  {
LABEL_24:
    if (v14 != 1)
    {
      goto LABEL_33;
    }

LABEL_46:
    v47 = 0;
    inserted = 0;
    goto LABEL_47;
  }

  *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) = *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v23;
  v26 = *v4;
  v27 = 16 * v5;
  while (1)
  {
    v28 = v27 - 16;
    if (v27 == 16)
    {
      break;
    }

    v29 = v26 + v27;
    v30 = *(v29 - 16);
    v32 = v29 - 8;
    LODWORD(v29) = *(v29 - 8);
    v31 = *(v32 + 4);
    *(v30 + 8 * v31 + 96) = v24;
    LODWORD(v30) = v29 - 1;
    v27 = v28;
    if (v31 != v30)
    {
      goto LABEL_24;
    }
  }

  *(*v26 + 8 * *(v26 + 12) + 128) = v24;
  if (v14 == 1)
  {
    goto LABEL_46;
  }

LABEL_33:
  llvm::IntervalMapImpl::Path::moveRight(v4, v2);
  v44 = (v111 - 1);
  v45 = *(*(&v114 + 1) + 8 * v44 + 96);
  if (v17 != 1)
  {
    v48 = *v4;
    *(*v4 + 16 * v2 + 8) = v111;
    if (v2)
    {
      *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) = *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v44;
      v49 = *v4;
      v50 = 16 * v2;
      while (1)
      {
        v51 = v50 - 16;
        if (v50 == 16)
        {
          break;
        }

        v52 = v49 + v50;
        v53 = *(v52 - 16);
        v55 = v52 - 8;
        LODWORD(v52) = *(v52 - 8);
        v54 = *(v55 + 4);
        *(v53 + 8 * v54 + 96) = v45;
        LODWORD(v53) = v52 - 1;
        v50 = v51;
        if (v54 != v53)
        {
          goto LABEL_40;
        }
      }

      inserted = 0;
      *(*v49 + 8 * *(v49 + 12) + 128) = v45;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_40:
      inserted = 0;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v56 = (v112 - 1);
    v57 = *(v115 + 8 * v56 + 96);
    if (v17 == 2)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, v115 & 0xFFFFFFFFFFFFFFC0 | v56, v57);
      v2 += inserted;
      if (v14 != 3)
      {
        goto LABEL_43;
      }

LABEL_62:
      v47 = 2;
      goto LABEL_47;
    }

    v73 = *v4;
    *(*v4 + 16 * v2 + 8) = v112;
    if (v2)
    {
      *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) = *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v56;
      v74 = *v4;
      v75 = 16 * v2;
      while (1)
      {
        v76 = v75 - 16;
        if (v75 == 16)
        {
          break;
        }

        v77 = v74 + v75;
        v78 = *(v77 - 16);
        v80 = v77 - 8;
        LODWORD(v77) = *(v77 - 8);
        v79 = *(v80 + 4);
        *(v78 + 8 * v79 + 96) = v57;
        LODWORD(v78) = v77 - 1;
        v75 = v76;
        if (v79 != v78)
        {
          goto LABEL_61;
        }
      }

      *(*v74 + 8 * *(v74 + 12) + 128) = v57;
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_61:
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v58 = (v113 - 1);
    v59 = *(*(&v115 + 1) + 8 * v58 + 96);
    if (v17 == 3)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v115 + 1) & 0xFFFFFFFFFFFFFFC0 | v58, v59);
      v2 += inserted;
    }

    else
    {
      v91 = *v4;
      *(*v4 + 16 * v2 + 8) = v113;
      if (v2)
      {
        *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) = *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v58;
        v92 = *v4;
        v93 = 16 * v2;
        while (1)
        {
          v94 = v93 - 16;
          if (v93 == 16)
          {
            break;
          }

          v95 = v92 + v93;
          v96 = *(v95 - 16);
          v98 = v95 - 8;
          LODWORD(v95) = *(v95 - 8);
          v97 = *(v98 + 4);
          *(v96 + 8 * v97 + 96) = v59;
          LODWORD(v96) = v95 - 1;
          v93 = v94;
          if (v97 != v96)
          {
            goto LABEL_89;
          }
        }

        *(*v92 + 8 * *(v92 + 12) + 128) = v59;
      }
    }

LABEL_89:
    if (v14 == 4)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v114 + 1) & 0xFFFFFFFFFFFFFFC0 | v44, v45);
  v2 += inserted;
  if (v14 != 2)
  {
    goto LABEL_41;
  }

LABEL_35:
  v47 = 1;
LABEL_47:
  v60 = v22 - v47;
  if (v22 != v47)
  {
    do
    {
      llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
    }

    while (!__CFADD__(v60++, 1));
  }

  *(*v4 + 16 * v2 + 12) = HIDWORD(v22);
  return inserted;
}

uint64_t llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v5 = v4;
    while (1)
    {
      v6 = *(a3 + 4 * v5);
      v7 = *(a4 + 4 * v5);
      if (v6 != v7)
      {
        break;
      }

LABEL_3:
      if (!--v5)
      {
        if (a2 < 2)
        {
          return result;
        }

        v69 = 0;
        while (1)
        {
          v70 = *(a3 + 4 * v69);
          v71 = *(a4 + 4 * v69);
          if (v70 != v71)
          {
            break;
          }

LABEL_101:
          if (++v69 == v4)
          {
            return result;
          }
        }

        v72 = v69;
        while (2)
        {
          if (++v72 == a2)
          {
            goto LABEL_101;
          }

          v74 = *(result + 8 * v72);
          v75 = *(a3 + 4 * v72);
          v76 = *(result + 8 * v69);
          v77 = v70 - v71;
          if ((v70 - v71) >= 1)
          {
            LODWORD(v78) = 12 - v75;
            if (v70 >= v77)
            {
              v73 = v70 - v71;
            }

            else
            {
              v73 = v70;
            }

            if (v78 < v73)
            {
              v73 = 12 - v75;
            }

            if (v75)
            {
              v79 = v74 + 96;
              if (v75 < 0x26 || (v80 = v75 - 1 + v73, __CFADD__(v75 - 1, v73)) || ((v81 = 8 * (v75 - 1 + v73), v82 = 8 * (v75 - 1), v74 + v81 - v82 <= v74 + v81) ? (v83 = v79 + v81 - v82 > v79 + v81) : (v83 = 1), !v83 ? (v84 = v74 > v74 + v82) : (v84 = 1), !v84 ? (v85 = v79 > v79 + v82) : (v85 = 1), v85 || (v82 - v81) < 0x10 || (v81 - v82 - 96) < 0x10 || (v82 - v81 - 96) < 0x10))
              {
                v86 = *(a3 + 4 * v72);
              }

              else
              {
                v86 = *(a3 + 4 * v72) & 1;
                v87 = v75 - 1;
                v88 = v75 & 0xFFFFFFFE;
                do
                {
                  v89 = 8 * v87;
                  v90 = 8 * v80;
                  *(v74 - 8 + v90) = *(v74 - 8 + v89);
                  *(v74 + 88 + v90) = *(v74 + 88 + v89);
                  v80 -= 2;
                  v87 -= 2;
                  v88 -= 2;
                }

                while (v88);
                if ((v75 & 0xFFFFFFFE) == v75)
                {
                  goto LABEL_157;
                }
              }

              v102 = v86 - 1;
              v103 = (v74 + 8 * (v86 - 1));
              v104 = -v86;
              v105 = v102 + v73;
              do
              {
                *(v74 + 8 * v105) = *v103;
                *(v79 + 8 * v105) = v103[12];
                --v103;
                --v105;
                v26 = __CFADD__(v104++, 1);
              }

              while (!v26);
            }

LABEL_157:
            if (v73)
            {
              v106 = 0;
              v107 = v70 - v73;
              v108 = v76 + 96;
              if (v70 < v77)
              {
                v77 = v70;
              }

              if (v77 >= v78)
              {
                v78 = v78;
              }

              else
              {
                v78 = v77;
              }

              if (v78 < 6 || v70 - 1 < v107)
              {
LABEL_168:
                v111 = v70 - v73;
                goto LABEL_169;
              }

              v109 = 8 * (v73 - 1);
              v110 = v76 + 8 * v107;
              if (v74 < v110 + v109 + 104 && v110 < v74 + v109 + 104)
              {
                v106 = 0;
                goto LABEL_168;
              }

              v106 = v78 & 0x7FFFFFFE;
              v111 = v107 + (v78 & 0x7FFFFFFE);
              v125 = v106;
              v126 = v74;
              do
              {
                v127 = 8 * v107;
                *v126 = *(v76 + v127);
                v126[6] = *(v108 + v127);
                ++v126;
                v107 += 2;
                v125 -= 2;
              }

              while (v125);
              if (v106 != v78)
              {
LABEL_169:
                v112 = (v74 + 8 * v106);
                do
                {
                  *v112 = *(v76 + 8 * v111);
                  v112[12] = *(v108 + 8 * v111++);
                  ++v112;
                }

                while (v70 != v111);
              }
            }

LABEL_105:
            *(a3 + 4 * v72) += v73;
            v70 = *(a3 + 4 * v69) - v73;
            *(a3 + 4 * v69) = v70;
            v71 = *(a4 + 4 * v69);
            if (v70 >= v71)
            {
              goto LABEL_101;
            }

            continue;
          }

          break;
        }

        v91 = 12 - v70;
        if (v71 - v70 < v75)
        {
          LODWORD(v92) = v71 - v70;
        }

        else
        {
          LODWORD(v92) = *(a3 + 4 * v72);
        }

        if (v91 >= v92)
        {
          v92 = v92;
        }

        else
        {
          v92 = v91;
        }

        if (v92)
        {
          v93 = v76 + 96;
          v94 = v92 < 8 || v70 > -v92;
          if (v94 || ((v95 = 8 * v70, v74 < v93 + v95 + 8 * v92) ? (v96 = v76 + v95 >= v74 + 96 + 8 * v92) : (v96 = 1), !v96))
          {
            v97 = 0;
            v98 = v70;
            goto LABEL_173;
          }

          v97 = v92 & 0x7FFFFFFE;
          v98 = v70 + (v92 & 0x7FFFFFFE);
          v99 = v97;
          v100 = *(result + 8 * v72);
          do
          {
            v101 = 8 * v70;
            *(v76 + v101) = *v100;
            *(v93 + v101) = v100[6];
            ++v100;
            v70 += 2;
            v99 -= 2;
          }

          while (v99);
          if (v97 != v92)
          {
LABEL_173:
            v113 = v92 - v97;
            v114 = (v74 + 8 * v97);
            do
            {
              *(v76 + 8 * v98) = *v114;
              *(v93 + 8 * v98++) = v114[12];
              ++v114;
              --v113;
            }

            while (v113);
          }
        }

        if (v92 != v75)
        {
          v115 = 0;
          v116 = v74 + 96;
          v117 = (v75 + ~v92);
          if (v117 < 7 || v75 - 1 < v92 || (v115 = 0, -8 * v92 < 0x10) || 8 * v92 - 81 < 0x10)
          {
            v119 = v92;
            goto LABEL_185;
          }

          v118 = v117 + 1;
          v115 = (v117 + 1) & 0x1FFFFFFFELL;
          v119 = v92 + v115;
          v120 = v92;
          v121 = v115;
          v122 = v74;
          do
          {
            v123 = 8 * v120;
            *v122 = *(v74 + v123);
            v122[6] = *(v116 + v123);
            ++v122;
            v120 += 2;
            v121 -= 2;
          }

          while (v121);
          if (v118 != v115)
          {
LABEL_185:
            v124 = (v74 + 8 * v115);
            do
            {
              *v124 = *(v74 + 8 * v119);
              v124[12] = *(v116 + 8 * v119++);
              ++v124;
            }

            while (v75 != v119);
          }
        }

        v73 = -v92;
        goto LABEL_105;
      }
    }

    v8 = v5;
    while (1)
    {
      if (!v8)
      {
        goto LABEL_3;
      }

      --v8;
      v10 = *(result + 8 * v5);
      v11 = *(result + 8 * v8);
      v12 = *(a3 + 4 * v8);
      v13 = v7 - v6;
      if ((v7 - v6) < 1)
      {
        v40 = 12 - v12;
        if (v6 - v7 < v6)
        {
          LODWORD(v41) = v6 - v7;
        }

        else
        {
          LODWORD(v41) = v6;
        }

        if (v40 >= v41)
        {
          v41 = v41;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          v42 = v11 + 96;
          v43 = v41 < 8 || v12 > -v41;
          if (v43 || (v10 < v42 + 8 * v12 + 8 * v41 ? (v44 = v11 + 8 * v12 >= v10 + 96 + 8 * v41) : (v44 = 1), !v44))
          {
            v45 = 0;
            v46 = *(a3 + 4 * v8);
            goto LABEL_75;
          }

          v45 = v41 & 0x7FFFFFFE;
          v46 = v12 + (v41 & 0x7FFFFFFE);
          v47 = v45;
          v48 = *(result + 8 * v5);
          do
          {
            v49 = 8 * v12;
            *(v11 + v49) = *v48;
            *(v42 + v49) = v48[6];
            ++v48;
            LODWORD(v12) = v12 + 2;
            v47 -= 2;
          }

          while (v47);
          if (v45 != v41)
          {
LABEL_75:
            v50 = v41 - v45;
            v51 = (v10 + 8 * v45);
            do
            {
              *(v11 + 8 * v46) = *v51;
              *(v42 + 8 * v46++) = v51[12];
              ++v51;
              --v50;
            }

            while (v50);
          }
        }

        if (v41 != v6)
        {
          v52 = 0;
          v53 = v10 + 96;
          v54 = v6 + ~v41;
          if (v54 < 7 || v6 - 1 < v41 || (v52 = 0, -8 * v41 < 0x10) || 8 * v41 - 81 < 0x10)
          {
            v56 = v41;
            goto LABEL_87;
          }

          v55 = v54 + 1;
          v52 = (v54 + 1) & 0x1FFFFFFFELL;
          v56 = v41 + v52;
          v57 = v41;
          v58 = v52;
          v59 = v10;
          do
          {
            v60 = 8 * v57;
            *v59 = *(v10 + v60);
            v59[6] = *(v53 + v60);
            ++v59;
            v57 += 2;
            v58 -= 2;
          }

          while (v58);
          if (v55 != v52)
          {
LABEL_87:
            v61 = (v10 + 8 * v52);
            do
            {
              *v61 = *(v10 + 8 * v56);
              v61[12] = *(v53 + 8 * v56++);
              ++v61;
            }

            while (v6 != v56);
          }
        }

        v9 = -v41;
        goto LABEL_7;
      }

      LODWORD(v14) = 12 - v6;
      if (v12 >= v13)
      {
        v9 = v7 - v6;
      }

      else
      {
        v9 = *(a3 + 4 * v8);
      }

      if (v14 < v9)
      {
        v9 = 12 - v6;
      }

      if (v6)
      {
        v15 = v10 + 96;
        v16 = v6;
        if (v6 < 0x26 || (v17 = v6 - 1, v18 = v6 - 1 + v9, __CFADD__(v6 - 1, v9)) || ((v19 = 8 * (v6 - 1 + v9), v20 = 8 * v17, v10 + v19 - v20 <= v10 + v19) ? (v21 = v15 + v19 - v20 > v15 + v19) : (v21 = 1), !v21 ? (v22 = v10 > v10 + v20) : (v22 = 1), !v22 ? (v23 = v15 > v15 + v20) : (v23 = 1), v23 || ((v24 = v20 - v19, v25 = v19 - v20 - 96, v24 >= 0x10) ? (v26 = v25 >= 0x10) : (v26 = 0), v26 ? (v27 = v24 - 96 >= 0x10) : (v27 = 0), !v27)))
        {
          v28 = v16;
LABEL_36:
          v29 = v28 - 1;
          v30 = (v10 + 8 * (v28 - 1));
          v31 = -v28;
          v32 = v29 + v9;
          do
          {
            *(v10 + 8 * v32) = *v30;
            *(v15 + 8 * v32) = v30[12];
            --v30;
            --v32;
            v26 = __CFADD__(v31++, 1);
          }

          while (!v26);
          goto LABEL_39;
        }

        v28 = v16 & 1;
        v65 = v16 - 1;
        v66 = v16 & 0xFFFFFFFE;
        do
        {
          v67 = 8 * v65;
          v68 = 8 * v18;
          *(v10 - 8 + v68) = *(v10 - 8 + v67);
          *(v10 + 88 + v68) = *(v10 + 88 + v67);
          v18 -= 2;
          v65 -= 2;
          v66 -= 2;
        }

        while (v66);
        if ((v16 & 0xFFFFFFFE) != v16)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      if (v9)
      {
        v33 = 0;
        v34 = v12 - v9;
        v35 = v11 + 96;
        if (v12 < v13)
        {
          v13 = v12;
        }

        if (v13 >= v14)
        {
          v14 = v14;
        }

        else
        {
          v14 = v13;
        }

        if (v14 < 6 || v12 - 1 < v34)
        {
LABEL_50:
          v38 = v12 - v9;
        }

        else
        {
          v36 = 8 * (v9 - 1);
          v37 = v11 + 8 * v34;
          if (v10 < v37 + v36 + 104 && v37 < v10 + v36 + 104)
          {
            v33 = 0;
            goto LABEL_50;
          }

          v33 = v14 & 0x7FFFFFFE;
          v38 = v34 + (v14 & 0x7FFFFFFE);
          v62 = v33;
          v63 = v10;
          do
          {
            v64 = 8 * v34;
            *v63 = *(v11 + v64);
            v63[6] = *(v35 + v64);
            ++v63;
            v34 += 2;
            v62 -= 2;
          }

          while (v62);
          if (v33 == v14)
          {
            goto LABEL_7;
          }
        }

        v39 = (v10 + 8 * v33);
        do
        {
          *v39 = *(v11 + 8 * v38);
          v39[12] = *(v35 + 8 * v38++);
          ++v39;
        }

        while (v12 != v38);
      }

LABEL_7:
      *(a3 + 4 * v8) -= v9;
      v6 = *(a3 + 4 * v5) + v9;
      *(a3 + 4 * v5) = v6;
      v7 = *(a4 + 4 * v5);
      if (v6 >= v7)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t *llvm::IntervalMapOverlaps<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>,llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::advance(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = result[1];
    if (*(v2 + 12) < *(v2 + 8))
    {
      v3 = *(result + 26);
      if (v3)
      {
        v4 = result[12];
        if (*(v4 + 12) < *(v4 + 8))
        {
          v5 = v2 + 16 * v1;
          v6 = *(v5 - 16);
          v7 = *(v5 - 4);
          v8 = v4 + 16 * v3;
          v9 = *(v8 - 16);
          v10 = *(v8 - 4);
          v11 = *(v9 + 16 * v10);
          if (*(v6 + 16 * v7 + 8) >= v11)
          {
            v14 = *(v6 + 16 * v7);
            if (*(v9 + 16 * v10 + 8) < v14)
            {
              v15 = result[11];
              if (!*(v15 + 272))
              {
                v16 = *(v15 + 276);
                if (v10 == v16)
                {
                  goto LABEL_25;
                }

                do
                {
                  if (*(v15 + 16 * v10 + 8) >= v14)
                  {
                    goto LABEL_25;
                  }

                  LODWORD(v10) = v10 + 1;
                }

                while (v16 != v10);
LABEL_24:
                LODWORD(v10) = v16;
                goto LABEL_25;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v12 = *result;
            if (*(*result + 272))
            {
              v13 = result;
              llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result, v11);
              result = v13;
            }

            else
            {
              v17 = *(v12 + 276);
              if (v7 != v17)
              {
                while (*(v12 + 16 * v7 + 8) < v11)
                {
                  LODWORD(v7) = v7 + 1;
                  if (v17 == v7)
                  {
                    LODWORD(v7) = *(v12 + 276);
                    break;
                  }
                }
              }

              *(v5 - 4) = v7;
            }

            v18 = *(result + 4);
            if (v18)
            {
              v19 = result[1];
              if (*(v19 + 12) < *(v19 + 8))
              {
                v20 = result[12] + 16 * *(result + 26);
                v21 = *(v20 - 16);
                v22 = *(v20 - 4);
                if (*(v21 + 16 * v22 + 8) < *(*(v19 + 16 * v18 - 16) + 16 * *(v19 + 16 * v18 - 4)))
                {
                  v23 = *(v21 + 16 * v22);
                  do
                  {
                    if (!v18)
                    {
                      break;
                    }

                    if (*(v19 + 12) < *(v19 + 8))
                    {
                      v27 = *result;
                      if (*(*result + 272))
                      {
                        v28 = result;
                        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result, v23);
                        result = v28;
                      }

                      else
                      {
                        v29 = v19 + 16 * v18;
                        v30 = *(v29 - 4);
                        v31 = *(v27 + 276);
                        if (v30 != v31)
                        {
                          while (*(v27 + 16 * v30 + 8) < v23)
                          {
                            if (v31 == ++v30)
                            {
                              v30 = *(v27 + 276);
                              break;
                            }
                          }
                        }

                        *(v29 - 4) = v30;
                      }
                    }

                    v32 = *(result + 4);
                    if (!v32)
                    {
                      break;
                    }

                    v33 = result[1];
                    if (*(v33 + 12) >= *(v33 + 8))
                    {
                      break;
                    }

                    v34 = result[12];
                    v35 = *(result + 26);
                    v8 = v34 + 16 * v35;
                    v10 = *(v8 - 4);
                    v14 = *(*(v33 + 16 * v32 - 16) + 16 * *(v33 + 16 * v32 - 4));
                    if (*(*(v8 - 16) + 16 * v10 + 8) >= v14)
                    {
                      break;
                    }

                    if (v35 && *(v34 + 12) < *(v34 + 8))
                    {
                      v36 = result[11];
                      if (*(v36 + 272))
                      {
LABEL_23:
                        v24 = result;
                        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result + 11, v14);
                        result = v24;
                      }

                      else
                      {
                        v16 = *(v36 + 276);
                        if (v10 != v16)
                        {
                          while (*(v36 + 16 * v10 + 8) < v14)
                          {
                            LODWORD(v10) = v10 + 1;
                            if (v16 == v10)
                            {
                              goto LABEL_24;
                            }
                          }
                        }

LABEL_25:
                        *(v8 - 4) = v10;
                      }
                    }

                    v25 = *(result + 26);
                    if (!v25)
                    {
                      break;
                    }

                    v26 = result[12];
                    if (*(v26 + 12) >= *(v26 + 8))
                    {
                      break;
                    }

                    v19 = result[1];
                    v18 = *(result + 4);
                    v23 = *(*(v26 + 16 * v25 - 16) + 16 * *(v26 + 16 * v25 - 4));
                  }

                  while (*(*(v19 + 16 * v18 - 16) + 16 * *(v19 + 16 * v18 - 4) + 8) < v23);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(uint64_t *result, unint64_t a2)
{
  v3 = result + 1;
  v2 = result[1];
  v4 = *(result + 4);
  v5 = v2 + 16 * v4;
  v6 = *(v5 - 16);
  if (*(v6 + 16 * (*(v5 - 8) - 1) + 8) >= a2)
  {
    v17 = *(v5 - 4);
    do
    {
      v18 = *(v6 + 16 * v17++ + 8);
    }

    while (v18 < a2);
    *(v5 - 4) = v17 - 1;
    return result;
  }

  *(result + 4) = v4 - 1;
  v7 = v4 - 2;
  if (v4 == 2)
  {
    v19 = *result;
    v20 = *(v2 + 12);
    v21 = *(*result + 276);
    if (v20 != v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v4 != 3)
    {
      if (*(*(v2 + 16 * (v4 - 3)) + 8 * *(v2 + 16 * (v4 - 3) + 12) + 96) >= a2)
      {
LABEL_9:
        v10 = (v2 + 16 * v7);
        v11 = *v10;
        v14 = *(v10 + 3);
        v13 = v10 + 3;
        v12 = v14;
        v15 = v11 + 96;
        do
        {
          v16 = *(v15 + 8 * v12++);
        }

        while (v16 < a2);
        *v13 = v12 - 1;
LABEL_12:

        return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
      }

      v8 = v4 - 4;
      while (1)
      {
        *(result + 4) = v8 + 2;
        if (!v8)
        {
          break;
        }

        v9 = *(*(v2 + 16 * v8) + 8 * *(v2 + 16 * v8 + 12) + 96);
        --v8;
        if (v9 >= a2)
        {
          v7 = v8 + 2;
          goto LABEL_9;
        }
      }
    }

    v19 = *result;
    v20 = *(v2 + 12);
    if (*(*result + 8 * v20 + 136) >= a2)
    {
      v26 = *(v2 + 28);
      do
      {
        v27 = *(*(v2 + 16) + 96 + 8 * v26++);
      }

      while (v27 < a2);
      *(v2 + 28) = v26 - 1;

      return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
    }

    v21 = *(v19 + 276);
    if (v20 != v21)
    {
LABEL_22:
      while (*(v19 + 136 + 8 * v20) < a2)
      {
        v20 = (v20 + 1);
        if (v21 == v20)
        {
          v20 = v21;
          break;
        }
      }
    }
  }

  v22 = *(v19 + 272) != 0;
  *(result + 4) = 0;
  v23 = v19 + 8 * v22;
  if (*(result + 5))
  {
    v24 = 0;
  }

  else
  {
    v32 = a2;
    v30 = v20;
    v31 = result;
    v28 = v21;
    v29 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 1), result + 3, 1uLL, 16);
    v21 = v28;
    v23 = v29;
    v20 = v30;
    result = v31;
    a2 = v32;
    v24 = *(v31 + 16);
    v2 = *(v31 + 8);
  }

  v25 = (v2 + 16 * v24);
  *v25 = v23;
  v25[1] = v21 | (v20 << 32);
  LODWORD(v25) = *(result + 4);
  *(result + 4) = v25 + 1;
  if (v25 != -1 && *(*v3 + 12) < *(*v3 + 8))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::goToBegin(uint64_t *result)
{
  v2 = result + 1;
  v1 = *result;
  if (!*(*result + 272))
  {
    v4 = *(v1 + 276);
    *(result + 4) = 0;
    if (*(result + 5))
    {
      v5 = 0;
      v3 = v1;
      goto LABEL_6;
    }

    v3 = v1;
LABEL_13:
    v14 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 1), result + 3, 1uLL, 16);
    result = v14;
    v5 = *(v14 + 4);
    goto LABEL_6;
  }

  v3 = v1 + 8;
  v4 = *(v1 + 276);
  *(result + 4) = 0;
  if (!*(result + 5))
  {
    goto LABEL_13;
  }

  v5 = 0;
LABEL_6:
  v6 = (result[1] + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  ++*(result + 4);
  v7 = *(*result + 272);
  if (v7)
  {
    v8 = *(result + 4);
    for (i = v8 - 1; i < v7; *(result + 4) = i + 1)
    {
      v10 = result[1];
      v11 = *(*(v10 + 16 * i) + 8 * *(v10 + 16 * i + 12));
      if (v8 >= *(result + 5))
      {
        v13 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v2, result + 3, v8 + 1, 16);
        result = v13;
        v8 = *(v13 + 4);
        v10 = v13[1];
      }

      v12 = (v10 + 16 * v8);
      *v12 = v11 & 0xFFFFFFFFFFFFFFC0;
      v12[1] = (v11 & 0x3F) + 1;
      i = *(result + 4);
      v8 = i + 1;
    }
  }

  return result;
}

double mlir::Region::getOps<mlir::pdl_interp::FuncOp>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

void anonymous namespace::ByteCodeWriter::append(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = (a2 + 24);
    do
    {
      v12 = *v5;
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](result, &v12);
      v7 = *(*(result + 24) + 8);
      v8 = *(v6 + 2);
      if (v8 >= *(v6 + 3))
      {
        v11 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, v6 + 2, v8 + 1, 4);
        v6 = v11;
        v8 = *(v11 + 2);
      }

      *(*v6 + 4 * v8) = v7;
      ++*(v6 + 2);
      v9 = *(result + 24);
      v10 = v9[1];
      if (v9[2] < (v10 + 2))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(*(result + 24), v9 + 3, v10 + 2, 2);
        v10 = v9[1];
      }

      *(*v9 + 2 * v10) = 0;
      v9[1] += 2;
      v5 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 8;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 8;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[4] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void anonymous namespace::ByteCodeWriter::appendPDLValue(uint64_t a1, unint64_t a2)
{
  v2 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    v3 = 0;
    v4 = *(a1 + 24);
    v5 = v4[1];
    v6 = v5 + 1;
    if ((v5 + 1) <= v4[2])
    {
      goto LABEL_12;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    v3 = 1;
    v4 = *(a1 + 24);
    v5 = v4[1];
    v6 = v5 + 1;
    if ((v5 + 1) <= v4[2])
    {
      goto LABEL_12;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v17 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = a1;
    v12 = a2;
    Value = mlir::AffineMapAttr::getValue(&v17);
    a2 = v12;
    v14 = Value;
    a1 = v11;
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v3 = 3;
    }

    else
    {
      v3 = 5;
    }

    v4 = *(v11 + 24);
    v5 = v4[1];
    v6 = v5 + 1;
    if ((v5 + 1) <= v4[2])
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4 * (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    }

    v4 = *(a1 + 24);
    v5 = v4[1];
    v6 = v5 + 1;
    if ((v5 + 1) <= v4[2])
    {
      goto LABEL_12;
    }
  }

  v15 = a2;
  v16 = a1;
  llvm::SmallVectorBase<unsigned long long>::grow_pod(v4, v4 + 3, v6, 2);
  a1 = v16;
  a2 = v15;
  v5 = v4[1];
LABEL_12:
  *(*v4 + 2 * v5) = v3;
  ++v4[1];
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = a2;
  v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v7, &v17);
  v10 = v8[1];
  if ((v10 + 1) > v8[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v8, v8 + 3, v10 + 1, 2);
    v10 = v8[1];
  }

  *(*v8 + 2 * v10) = v9;
  ++v8[1];
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 40 * v4);
    v6 = *v5;
    if (*a2 == *v5)
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
      v5 = (*a1 + 40 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(v14, v13, &v15);
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
  v5[1] = v5 + 3;
  v5[2] = 0x400000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 40 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
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
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 40 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 40 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = (v17 + 3);
        v17[2] = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
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
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
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

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::grow(uint64_t a1, int a2)
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
        goto LABEL_41;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = *a1 + 16 * v25;
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = *a1 + 16 * (v30 & v16);
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 8) = *(v17 + 4);
          *(a1 + 8) = ++v15;
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
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,unsigned int,unsigned short,mlir::SuccessorRange>(uint64_t a1, __int16 a2, uint64_t a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 24);
  v13 = v12[1];
  if ((v13 + 1) > v12[2])
  {
    v22 = a2;
    v23 = a3;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v12 + 3, v13 + 1, 2);
    a2 = v22;
    a3 = v23;
    v13 = v12[1];
  }

  *(*v12 + 2 * v13) = a2;
  ++v12[1];
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v24 = a3;
  v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v14, &v24);
  v17 = v15[1];
  if ((v17 + 1) > v15[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v15, v15 + 3, v17 + 1, 2);
    v17 = v15[1];
  }

  *(*v15 + 2 * v17) = v16;
  ++v15[1];
  v18 = *(a1 + 24);
  v19 = v18[1];
  if (v18[2] < (v19 + 2))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v18 + 3, v19 + 2, 2);
    v19 = v18[1];
  }

  *(*v18 + 2 * v19) = a4;
  v18[1] += 2;
  v20 = *(a1 + 24);
  v21 = v20[1];
  if ((v21 + 1) > v20[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v20 + 3, v21 + 1, 2);
    v21 = v20[1];
  }

  *(*v20 + 2 * v21) = a5;
  ++v20[1];
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::RangeType>,mlir::ArrayAttr,mlir::SuccessorRange>(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  v11 = v10[1];
  if ((v11 + 1) > v10[2])
  {
    v16 = a2;
    v17 = a3;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v10 + 3, v11 + 1, 2);
    a2 = v16;
    a3 = v17;
    v11 = v10[1];
  }

  *(*v10 + 2 * v11) = a2;
  ++v10[1];
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v18 = a3;
  v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v12, &v18);
  v15 = v13[1];
  if ((v15 + 1) > v13[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v13, v13 + 3, v15 + 1, 2);
    v15 = v13[1];
  }

  *(*v13 + 2 * v15) = v14;
  ++v13[1];
}

void anonymous namespace::ByteCodeWriter::append<mlir::ArrayAttr,mlir::SuccessorRange>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v14 = a2;
  v11 = **(v8 + 216) + ((*(*(v8 + 184) + 8) - **(v8 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v8 + 120), &v14, &v11, &v12);
  if (v13 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(v8 + 184), &v14);
  }

  v9 = *(v12 + 8);
  v10 = v7[1];
  if ((v10 + 1) > v7[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v7, v7 + 3, v10 + 1, 2);
    v10 = v7[1];
  }

  *(*v7 + 2 * v10) = v9;
  ++v7[1];
}

void anonymous namespace::ByteCodeWriter::append<mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::detail::TypedValue<mlir::pdl::ValueType>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13 = a2;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v5, &v13);
  v8 = v6[1];
  if ((v8 + 1) > v6[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v6, v6 + 3, v8 + 1, 2);
    v8 = v6[1];
  }

  *(*v6 + 2 * v8) = v7;
  ++v6[1];
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v13 = a3;
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v9, &v13);
  v12 = v10[1];
  if ((v12 + 1) > v10[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v10, v10 + 3, v12 + 1, 2);
    v12 = v10[1];
  }

  *(*v10 + 2 * v12) = v11;
  ++v10[1];
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,unsigned int,mlir::detail::TypedValue<mlir::pdl::OperationType>>(uint64_t a1, __int16 a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = v7[1];
  if ((v8 + 1) > v7[2])
  {
    v15 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v7 + 3, v8 + 1, 2);
    a2 = v15;
    v8 = v7[1];
  }

  *(*v7 + 2 * v8) = a2;
  ++v7[1];
  v9 = *(a1 + 24);
  v10 = v9[1];
  if (v9[2] < (v10 + 2))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v9 + 3, v10 + 2, 2);
    v10 = v9[1];
  }

  *(*v9 + 2 * v10) = a3;
  v9[1] += 2;
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v16 = a4;
  v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v11, &v16);
  v14 = v12[1];
  if ((v14 + 1) > v12[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v12, v12 + 3, v14 + 1, 2);
    v14 = v12[1];
  }

  *(*v12 + 2 * v14) = v13;
  ++v12[1];
}

char *llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>(uint64_t a1, __int128 *a2)
{
  v14 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v14);
  v6 = &v5[104 * *(a1 + 8)];
  v7 = *a2;
  *(v6 + 2) = *(a2 + 2);
  *v6 = v7;
  *(v6 + 3) = v6 + 40;
  *(v6 + 4) = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v6 + 24), a2 + 3);
  }

  v8 = *(a2 + 56);
  v9 = v6 + 88;
  *(v6 + 9) = v6 + 88;
  v10 = (v6 + 72);
  *(v10 - 16) = v8;
  *(v10 + 8) = 0;
  if (*(a2 + 20))
  {
    llvm::SmallVectorImpl<llvm::SMRange>::operator=(v10, a2 + 9);
  }

  *v9 = *(a2 + 88);
  llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::moveElementsForGrow(a1, v5);
  v11 = v14;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v5[104 * v12 - 104];
}

void llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *a1 + 104 * v2;
    do
    {
      v8 = v6 + v5;
      v9 = a2 + v5;
      v10 = *(v6 + v5);
      *(v9 + 16) = *(v6 + v5 + 16);
      *v9 = v10;
      *(a2 + v5 + 24) = a2 + v5 + 40;
      *(v9 + 32) = 0x200000000;
      if (*(v6 + v5 + 32))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a2 + v5 + 24, (v8 + 24));
      }

      v11 = *(v8 + 56);
      v12 = (v9 + 88);
      *(v9 + 72) = v9 + 88;
      v13 = v9 + 72;
      *(v13 - 16) = v11;
      *(v13 + 8) = 0;
      if (*(v8 + 80))
      {
        llvm::SmallVectorImpl<llvm::SMRange>::operator=(v13, (v6 + v5 + 72));
      }

      *v12 = *(v8 + 88);
      v5 += 104;
    }

    while (v8 + 104 != v7);
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = *a1 + 104 * v14 - 80;
      v16 = -104 * v14;
      do
      {
        v17 = *(v15 + 48);
        if ((v15 + 64) != v17)
        {
          free(v17);
        }

        if (v15 + 16 != *v15)
        {
          free(*v15);
        }

        v15 -= 104;
        v16 += 104;
      }

      while (v16);
    }
  }
}

void anonymous namespace::ByteCodeWriter::append<anonymous namespace::OpCode,mlir::detail::TypedValue<mlir::pdl::OperationType>,mlir::DenseIntElementsAttr,mlir::SuccessorRange>(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  v11 = v10[1];
  if ((v11 + 1) > v10[2])
  {
    v20 = a2;
    v21 = a3;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(a1 + 24), v10 + 3, v11 + 1, 2);
    a2 = v20;
    a3 = v21;
    v11 = v10[1];
  }

  *(*v10 + 2 * v11) = a2;
  ++v10[1];
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v23[0] = a3;
  v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v12, v23);
  v15 = v13[1];
  if ((v15 + 1) > v13[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v13, v13 + 3, v15 + 1, 2);
    v15 = v13[1];
  }

  *(*v13 + 2 * v15) = v14;
  ++v13[1];
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v25 = a4;
  v22 = **(v17 + 216) + ((*(*(v17 + 184) + 8) - **(v17 + 184)) >> 3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>((v17 + 120), &v25, &v22, v23);
  if (v24 == 1)
  {
    std::vector<void const*>::push_back[abi:nn200100](*(v17 + 184), &v25);
  }

  v18 = *(v23[0] + 8);
  v19 = v16[1];
  if ((v19 + 1) > v16[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v16, v16 + 3, v19 + 1, 2);
    v19 = v16[1];
  }

  *(*v16 + 2 * v19) = v18;
  ++v16[1];
}

void llvm::ReversePostOrderTraversal<mlir::Region *,llvm::GraphTraits<mlir::Region *>>::Initialize(uint64_t a1, uint64_t a2)
{
  v15[40] = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v12, v4);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9[0] = 0;
  memset(v8, 0, sizeof(v8));
  v5 = v8 + 8;
  v6 = v8 + 8;
  v7 = 8;
  v9[1] = v10 + 8;
  DWORD1(v10[0]) = 8;
  std::copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v12, &v5, a1);
  if (v9[1] != v10 + 8)
  {
    free(v9[1]);
  }

  if (v6 != v5)
  {
    free(v6);
  }

  if (v14 != v15)
  {
    free(v14);
  }

  if (v13 != v12)
  {
    free(v13);
  }
}

uint64_t std::copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(const void **a1, uint64_t a2, uint64_t a3)
{
  v28[41] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v20, &v22, a1);
  v23 = v25;
  v24 = 0x800000000;
  if (&v20 != a1)
  {
    v6 = *(a1 + 26);
    if (v6)
    {
      if (v6 < 9)
      {
        v8 = v25;
        v7 = *(a1 + 26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, *(a1 + 26), 40);
        v7 = *(a1 + 26);
        if (!v7)
        {
LABEL_8:
          LODWORD(v24) = v6;
          goto LABEL_9;
        }

        v8 = v23;
      }

      memcpy(v8, a1[12], 40 * v7);
      goto LABEL_8;
    }
  }

LABEL_9:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, a2);
  v17 = v19;
  v18 = 0x800000000;
  if (&v14 != a2)
  {
    v9 = *(a2 + 104);
    if (v9)
    {
      if (v9 < 9)
      {
        v11 = v19;
        v10 = *(a2 + 104);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, *(a2 + 104), 40);
        v10 = *(a2 + 104);
        if (!v10)
        {
LABEL_16:
          LODWORD(v18) = v9;
          goto LABEL_17;
        }

        v11 = v17;
      }

      memcpy(v11, *(a2 + 96), 40 * v10);
      goto LABEL_16;
    }
  }

LABEL_17:
  std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v20, &v14, a3);
  v12 = v28[40];
  if (v27 != v28)
  {
    free(v27);
  }

  if (v26 != v25[40])
  {
    free(v26);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (v21 != v20)
  {
    free(v21);
  }

  return v12;
}

void std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v11, &v13, 8, a1);
  v14[0] = v15;
  v14[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v14, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, 8, a2);
  v9[0] = v10;
  v9[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v9, (a2 + 96));
  }

  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(&v11, &v6, a3);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v10 = v9;
  v67[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v52, &v54, v3);
  v55 = v57;
  v56 = 0x800000000;
  if (&v52 != v8)
  {
    v11 = *(v8 + 26);
    if (v11)
    {
      if (v11 < 9)
      {
        v13 = v57;
        v12 = *(v8 + 26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, *(v8 + 26), 40);
        v12 = *(v8 + 26);
        if (!v12)
        {
LABEL_8:
          LODWORD(v56) = v11;
          goto LABEL_9;
        }

        v13 = v55;
      }

      memcpy(v13, *(v8 + 12), 40 * v12);
      goto LABEL_8;
    }
  }

LABEL_9:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v47, &v49, 8, v7);
  v50[0] = v51;
  v50[1] = 0x800000000;
  if (*(v7 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v50, (v7 + 96));
  }

  std::__unwrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v52, &v47, &v58);
  if (v50[0] != v51)
  {
    free(v50[0]);
  }

  if (v48 != v47)
  {
    free(v48);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  if (v53 != v52)
  {
    free(v53);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v37, &v39, 8, &v58);
  v40[0] = v41;
  v40[1] = 0x800000000;
  if (v61)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v40, &v60);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v32, &v34, 8, &v63);
  v35[0] = v36;
  v35[1] = 0x800000000;
  if (v66)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v35, &v65);
  }

  std::__copy_impl::operator()[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v42, &v37, &v32, v5);
  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v33 != v32)
  {
    free(v33);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (v38 != v37)
  {
    free(v38);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v22, &v24, 8, v8);
  v25[0] = v26;
  v25[1] = 0x800000000;
  if (*(v8 + 26))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v25, v8 + 12);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v17, &v19, 8, &v42);
  v20[0] = v21;
  v20[1] = 0x800000000;
  if (v45)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v20, &v44);
  }

  std::__rewrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v22, &v17, &v27);
  v14 = v46[40];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v10, (v10 + 32), 8, &v27);
  *(v15 + 96) = v10 + 112;
  v16 = v15 + 96;
  *(v16 + 8) = 0x800000000;
  if (v30)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v16, &v29);
  }

  *(v10 + 432) = v14;
  if (v29 != &v31)
  {
    free(v29);
  }

  if (v28 != v27)
  {
    free(v28);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v23 != v22)
  {
    free(v23);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (v43 != v42)
  {
    free(v43);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v64 != v63)
  {
    free(v64);
  }

  if (v60 != &v62)
  {
    free(v60);
  }

  if (v59 != v58)
  {
    free(v59);
  }
}

void std::__unwrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, &v20, 8, a1);
  v21[0] = v22;
  v21[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v21, (a1 + 96));
  }

  std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(&v23, &v18);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11[0] = v12;
  v11[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v11, (a2 + 96));
  }

  std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(&v13, &v8);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v23);
  *(v6 + 96) = a3 + 112;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v26)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v25);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 432, (a3 + 464), 8, &v13);
  *(a3 + 528) = a3 + 544;
  *(a3 + 536) = 0x800000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a3 + 528), &v15);
  }

  if (v15 != &v17)
  {
    free(v15);
  }

  if (v14 != v13)
  {
    free(v14);
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v24 != v23)
  {
    free(v24);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v19 != v18)
  {
    free(v19);
  }
}

void **std::__copy_impl::operator()[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::SmallPtrSetImplBase *this@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  while (1)
  {
    v8 = *(this + 26);
    v9 = *(this + 12);
    if (v8 != *(a3 + 104))
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      break;
    }

    v10 = *(a3 + 96);
    v11 = *(this + 12);
    while (1)
    {
      v12 = *v11 == *v10 && v11[2] == v10[2];
      if (!v12 || v11[4] != v10[4])
      {
        break;
      }

      v11 += 5;
      v10 += 5;
      if (v11 == (v9 + 40 * v8))
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v13 = *(v9 + 40 * v8 - 40);
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
      v14 = *(a4 + 8);
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    v15 = *(this + 26) - 1;
    *(this + 26) = v15;
    if (v15)
    {
      llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(this);
    }
  }

LABEL_16:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 4, 8, this);
  *(v16 + 96) = a1 + 14;
  result = (v16 + 96);
  result[1] = 0x800000000;
  if (*(this + 26))
  {
    result = llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(result, this + 12);
  }

  a1[54] = a4;
  return result;
}

void std::__rewrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v11, &v13, 8, a1);
  v14[0] = v15;
  v14[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v14, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, 8, a2);
  v9[0] = v10;
  v9[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v9, (a2 + 96));
  }

  std::__rewrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>>(&v11, &v6, a3);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

void std::__unwrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>,0>(uint64_t *__return_ptr a1@<X8>, const void **a2@<X0>)
{
  v13[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (&v8 != a2)
  {
    v4 = *(a2 + 26);
    if (v4)
    {
      if (v4 < 9)
      {
        v6 = v13;
        v5 = *(a2 + 26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v11, v13, *(a2 + 26), 40);
        v5 = *(a2 + 26);
        if (!v5)
        {
LABEL_8:
          LODWORD(v12) = v4;
          goto LABEL_9;
        }

        v6 = v11;
      }

      memcpy(v6, a2[12], 40 * v5);
      goto LABEL_8;
    }
  }

LABEL_9:
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a1, a1 + 4, 8, &v8);
  a1[12] = (a1 + 14);
  v7 = a1 + 12;
  v7[1] = 0x800000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v11);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }
}

void std::__rewrap_iter[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::__unwrap_iter_impl<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,false>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v13, &v15, 8, a1);
  v16[0] = v17;
  v16[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v16, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v7, &v9, 8, a2);
  v10 = v12;
  v11 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v10, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v7);
  *(a3 + 96) = a3 + 112;
  v6 = a3 + 96;
  *(v6 + 8) = 0x800000000;
  if (v11)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v6, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  if (v8 != v7)
  {
    free(v8);
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  if (v14 != v13)
  {
    free(v14);
  }
}

unsigned __int16 **anonymous namespace::ByteCodeExecutor::readList<mlir::PDLValue,mlir::PDLValue>(unsigned __int16 **result, uint64_t a2)
{
  *(a2 + 8) = 0;
  v2 = *(*result)++;
  if (v2)
  {
    v3 = 0;
    v4 = result + 9;
    do
    {
      v5 = *result;
      v6 = **result;
      *result += 2;
      v7 = v5[1];
      if (v6 > 2)
      {
        if (v6 == 4)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }

        if (v6 == 3)
        {
          v6 = 3;
        }

        else
        {
          v6 = v9;
        }

        v8 = v4;
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v8 = v4;
        }

        else
        {
          v12 = result[10];
          if (v12 <= v7)
          {
            v13 = 21;
          }

          else
          {
            v13 = 9;
          }

          v8 = &result[v13];
          if (v12 > v7)
          {
            v12 = 0;
          }

          v7 -= v12;
          v6 = 2;
        }
      }

      else
      {
        v6 = 0;
        v10 = result[10];
        if (v10 <= v7)
        {
          v11 = 21;
        }

        else
        {
          v11 = 9;
        }

        v8 = &result[v11];
        if (v10 > v7)
        {
          v10 = 0;
        }

        v7 -= v10;
      }

      v14 = *&(*v8)[4 * v7];
      if (v3 >= *(a2 + 12))
      {
        v16 = a2;
        v17 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v3 + 1, 16);
        result = v17;
        a2 = v16;
        v3 = *(v16 + 8);
      }

      v15 = (*a2 + 16 * v3);
      *v15 = v14;
      v15[1] = v6;
      v3 = *(a2 + 8) + 1;
      *(a2 + 8) = v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

_OWORD *anonymous namespace::ByteCodeExecutor::processNativeFunResults(_OWORD *result, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = result;
  if (a3)
  {
    for (i = 0; 16 * a3 != i; i += 16)
    {
      v14 = *result;
      v12 = (*result + 2);
      *result = v12;
      if ((*a4 & 1) == 0)
      {
        v29 = 2;
        if (((*v14 - 3) & 0xFFFD) == 0)
        {
          v29 = 3;
        }

        *result = &v14[v29];
        return result;
      }

      v15 = *a2 + i;
      v11 = *v15;
      v16 = *(v15 + 8);
      v13 = (v14 + 2);
      if (v16 == 5)
      {
        v7 = *(result + 16);
        v8 = 16 * *v12;
        v9 = *v11;
        *result = v13;
        *(v7 + v8) = v9;
        v10 = *(result + 16);
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_5;
        }

        v17 = *(result + 13);
        v8 = 16 * *v12;
        v18 = *v11;
        *result = v13;
        *(v17 + v8) = v18;
        v10 = *(result + 13);
      }

      v11 = (v10 + v8);
      v12 = *result;
      v13 = *result + 2;
LABEL_5:
      *result = v13;
      *(*(result + 9) + 8 * *v12) = v11;
    }
  }

  v19 = *(a2 + 200);
  if (v19)
  {
    v20 = *(a2 + 192);
    v21 = 16 * v19;
    do
    {
      while (1)
      {
        v22 = *(v5 + 15);
        v23 = *(v22 + 8);
        if (v23 < *(v22 + 16))
        {
          break;
        }

        result = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(*(v5 + 15), v20);
        *(v22 + 8) = result;
        v20 += 16;
        v21 -= 16;
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      *v23 = 0;
      v23[1] = 0;
      *v23 = *v20;
      *v20 = 0;
      *(v20 + 8) = 0;
      v20 += 16;
      result = v23 + 2;
      *(v22 + 8) = v23 + 2;
      v21 -= 16;
    }

    while (v21);
  }

LABEL_15:
  v24 = *(a2 + 264);
  if (v24)
  {
    v25 = *(a2 + 256);
    v26 = 16 * v24;
    do
    {
      while (1)
      {
        v27 = *(v5 + 18);
        v28 = *(v27 + 8);
        if (v28 < *(v27 + 16))
        {
          break;
        }

        result = std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(*(v5 + 18), v25);
        *(v27 + 8) = result;
        v25 += 16;
        v26 -= 16;
        if (!v26)
        {
          return result;
        }
      }

      *v28 = 0;
      v28[1] = 0;
      *v28 = *v25;
      *v25 = 0;
      *(v25 + 8) = 0;
      v25 += 16;
      result = v28 + 2;
      *(v27 + 8) = v28 + 2;
      v26 -= 16;
    }

    while (v26);
  }

  return result;
}

_OWORD *std::vector<llvm::OwningArrayRef<mlir::Type>>::__emplace_back_slow_path<llvm::OwningArrayRef<mlir::Type>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = (16 * v2);
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13++ = *v12;
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
    }

    while (v12 != v10);
    do
    {
      if (*v9)
      {
        MEMORY[0x1AC55A040](*v9, 0x20C8093837F09);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void mlir::PDLResultList::~PDLResultList(mlir::PDLResultList *this)
{
  v2 = *(this + 32);
  v3 = *(this + 66);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 - 16;
    do
    {
      v6 = *&v5[v4];
      if (v6)
      {
        MEMORY[0x1AC55A040](v6, 0x20C8093837F09);
      }

      v4 -= 16;
    }

    while (v4);
    v2 = *(this + 32);
  }

  if (v2 != this + 272)
  {
    free(v2);
  }

  v7 = *(this + 24);
  v8 = *(this + 50);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = v7 - 16;
    do
    {
      v11 = *&v10[v9];
      if (v11)
      {
        MEMORY[0x1AC55A040](v11, 0x20C8093837F09);
      }

      v9 -= 16;
    }

    while (v9);
    v7 = *(this + 24);
  }

  if (v7 != this + 208)
  {
    free(v7);
  }

  v12 = *(this + 16);
  if (v12 != this + 144)
  {
    free(v12);
  }

  v13 = *(this + 8);
  if (v13 != this + 80)
  {
    free(v13);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

void anonymous namespace::ByteCodeExecutor::readList(unsigned __int16 **result, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*result)++;
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      while (1)
      {
        v6 = *result;
        v7 = **result;
        *result += 2;
        v8 = *&result[9][4 * *(v6 + 2)];
        if (v7 != 4)
        {
          break;
        }

        v9 = *(a2 + 2);
        if (v9 >= *(a2 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v9 + 1, 8);
          v9 = *(a2 + 2);
        }

        *(*a2 + 8 * v9) = v8;
        ++*(a2 + 2);
        if (++i == v2)
        {
          return;
        }
      }

      v11 = *v8;
      v10 = v8[1];
      v12 = *(a2 + 2);
      if (v10 + v12 > *(a2 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v10 + v12, 8);
        v12 = *(a2 + 2);
      }

      v13 = *a2;
      v16 = v11;
      v17 = 0;
      if (v10)
      {
        v14 = 0;
        v15 = (v13 + 8 * v12);
        do
        {
          *v15++ = mlir::ValueRange::dereference_iterator(&v16, v14);
          v14 = v17 + 1;
          v17 = v14;
        }

        while (v14 != v10);
        LODWORD(v12) = *(a2 + 2);
      }

      *(a2 + 2) = v12 + v10;
    }
  }
}

const char *llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AttrSizedResultSegments<Empty>]";
  v6 = 95;
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

char *llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::growAndEmplaceBack<mlir::Location &,mlir::detail::PDLByteCodePattern const&,mlir::PatternBenefit &>(uint64_t a1, void *a2, uint64_t a3, __int16 *a4)
{
  v15 = 0;
  v8 = a1 + 16;
  v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 120, &v15);
  v10 = &v9[120 * *(a1 + 8)];
  v11 = *a4;
  *v10 = *a2;
  *(v10 + 1) = v10 + 24;
  *(v10 + 13) = a3;
  *(v10 + 11) = v10 + 104;
  *(v10 + 2) = 0x600000000;
  *(v10 + 9) = v10 + 88;
  *(v10 + 10) = 0;
  *(v10 + 12) = 0;
  *(v10 + 56) = v11;
  llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::moveElementsForGrow(a1, v9);
  v12 = v15;
  if (*a1 != v8)
  {
    free(*a1);
  }

  *a1 = v9;
  v13 = *(a1 + 8) + 1;
  *(a1 + 8) = v13;
  *(a1 + 12) = v12;
  return &v9[120 * v13 - 120];
}

void llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *a1 + 120 * v2;
    do
    {
      v9 = v6 + v5;
      v10 = (a2 + v5);
      *v10 = *(v6 + v5);
      *(a2 + v5 + 8) = a2 + v5 + 24;
      v10[2] = 0x600000000;
      if (*(v6 + v5 + 16))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a2 + v5 + 8, (v9 + 8));
      }

      v11 = v10 + 11;
      v10[9] = v10 + 11;
      v10[10] = 0;
      v12 = (v10 + 9);
      if (*(v9 + 80))
      {
        llvm::SmallVectorImpl<llvm::SMRange>::operator=(v12, (v6 + v5 + 72));
      }

      v13 = (a2 + v5 + 104);
      *v11 = v13;
      *(a2 + v5 + 96) = 0;
      if (*(v9 + 96))
      {
        llvm::SmallVectorImpl<llvm::SMRange>::operator=(v11, (v6 + v5 + 88));
      }

      v8 = *(v9 + 104);
      *(a2 + v5 + 112) = *(v9 + 112);
      *v13 = v8;
      v5 += 120;
    }

    while (v9 + 120 != v7);
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = *a1 + 120 * v14 - 48;
      v16 = -120 * v14;
      do
      {
        v17 = *(v15 + 16);
        if ((v15 + 32) != v17)
        {
          free(v17);
        }

        if (v15 + 16 != *v15)
        {
          free(*v15);
        }

        v18 = *(v15 - 64);
        if ((v15 - 48) != v18)
        {
          free(v18);
        }

        v15 -= 120;
        v16 += 120;
      }

      while (v16);
    }
  }
}

double llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(char ***a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[v5];
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *v7;
        v10 = *(v7 + 2);
        if (v10)
        {
          v11 = 8 * v10;
          v12 = v9 - 8;
          do
          {
            v13 = *&v12[v11];
            *&v12[v11] = 0;
            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            v11 -= 8;
          }

          while (v11);
          v9 = *v7;
        }

        if (v9 != (v7 + 2))
        {
          free(v9);
        }

        MEMORY[0x1AC55A070](v7, 0x1080C407559D7D1);
      }
    }

    while (v6 != v4);
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

uint64_t std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__emplace_back_slow_path<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void std::vector<llvm::OwningArrayRef<mlir::Operation *>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v11 = (v4 - *a1) >> 4;
    v12 = (16 * v6);
    v13 = 16 * a2;
    bzero(v12, 16 * a2);
    v14 = &v12[v13];
    v15 = &v12[-16 * v11];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = *v16;
        v17 += 16;
        *v16 = 0;
        v16[1] = 0;
        v16 += 2;
      }

      while (v16 != v4);
      do
      {
        if (*v5)
        {
          MEMORY[0x1AC55A040](*v5, 0x20C8093837F09);
        }

        v5 += 2;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<mlir::TypeRange>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &end[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (end + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      end = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *end++ = v11;
        }

        while (end != v10);
      }

      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v18 = 4 * v6;
    v19 = (4 * v6 + 4 * __n);
    v20 = *__x;
    v21 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v18 - v28);
    memcpy((v18 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v19;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}