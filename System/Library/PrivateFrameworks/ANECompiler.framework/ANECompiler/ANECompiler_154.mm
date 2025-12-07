BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a2 - 1);
      if (v14 < *a1)
      {
        if (v15 >= v14)
        {
          *a1 = v14;
          a1[1] = v13;
          v29 = *(a2 - 1);
          if (v29 >= v13)
          {
            return 1;
          }

          a1[1] = v29;
          *(a2 - 1) = v13;
          return 1;
        }

        else
        {
          *a1 = v15;
          *(a2 - 1) = v13;
          return 1;
        }
      }

      if (v15 >= v14)
      {
        return 1;
      }

      a1[1] = v15;
      *(a2 - 1) = v14;
      v27 = *a1;
      v26 = a1[1];
      if (v26 >= *a1)
      {
        return 1;
      }

LABEL_78:
      *a1 = v26;
      a1[1] = v27;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 < v5)
        {
          *v4 = v6;
          *v7 = v5;
          if (v6 >= v8)
          {
            v10 = v8;
LABEL_55:
            v8 = v6;
            v6 = v5;
            v36 = a1[3];
            if (v36 >= v6)
            {
              goto LABEL_73;
            }

LABEL_58:
            a1[2] = v36;
            a1[3] = v6;
            if (v36 < v8)
            {
              *v4 = v36;
              *v7 = v8;
              if (v36 < v10)
              {
                *a1 = v36;
                a1[1] = v10;
              }
            }

LABEL_74:
            v41 = *(a2 - 1);
            if (v41 >= v6)
            {
              return 1;
            }

            a1[3] = v41;
            *(a2 - 1) = v6;
            v42 = a1[2];
            v26 = a1[3];
            if (v26 >= v42)
            {
              return 1;
            }

            a1[2] = v26;
            a1[3] = v42;
            v43 = a1[1];
            if (v26 >= v43)
            {
              return 1;
            }

            a1[1] = v26;
            a1[2] = v43;
            v27 = *a1;
            if (v26 >= *a1)
            {
              return 1;
            }

            goto LABEL_78;
          }

          *a1 = v6;
          v9 = a1 + 1;
          v10 = v6;
          v6 = v8;
LABEL_54:
          *v9 = v8;
          goto LABEL_55;
        }

        v10 = *a1;
        v8 = a1[1];
        v36 = a1[3];
        if (v36 < v6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v6 < v5)
        {
          *a1 = v6;
          v9 = a1 + 2;
          v10 = v6;
          v6 = v5;
LABEL_53:
          v5 = v8;
          goto LABEL_54;
        }

        *a1 = v5;
        a1[1] = v8;
        if (v6 < v8)
        {
          *v4 = v6;
          v9 = a1 + 2;
          v10 = v5;
          goto LABEL_53;
        }

        v10 = v5;
        v36 = a1[3];
        if (v36 < v6)
        {
          goto LABEL_58;
        }
      }

LABEL_73:
      v6 = v36;
      goto LABEL_74;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    if (v22 >= *a1)
    {
      if (v24 >= v22)
      {
        goto LABEL_66;
      }

      *v21 = v24;
      *v23 = v22;
      if (v24 >= v25)
      {
        goto LABEL_65;
      }

      *a1 = v24;
      v28 = a1 + 1;
    }

    else
    {
      if (v24 >= v22)
      {
        *a1 = v22;
        a1[1] = v25;
        if (v24 >= v25)
        {
          goto LABEL_66;
        }

        *v21 = v24;
      }

      else
      {
        *a1 = v24;
      }

      v28 = a1 + 2;
      v22 = v25;
    }

    *v28 = v25;
LABEL_65:
    v24 = v22;
LABEL_66:
    v37 = *(a2 - 1);
    if (v37 >= v24)
    {
      return 1;
    }

    *v23 = v37;
    *(a2 - 1) = v24;
    v38 = *v23;
    v39 = *v21;
    if (v38 >= v39)
    {
      return 1;
    }

    a1[1] = v38;
    a1[2] = v39;
    v40 = *a1;
    if (v38 >= *a1)
    {
      return 1;
    }

    *a1 = v38;
    a1[1] = v40;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v16 = a1 + 2;
    v17 = a1[2];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = *a1;
    if (v19 >= *a1)
    {
      if (v17 >= v19)
      {
        goto LABEL_40;
      }

      *v18 = v17;
      *v16 = v19;
      if (v17 >= v20)
      {
        goto LABEL_40;
      }

      *a1 = v17;
    }

    else
    {
      if (v17 >= v19)
      {
        *a1 = v19;
        a1[1] = v20;
        if (v17 >= v20)
        {
LABEL_40:
          v30 = a1 + 3;
          if (a1 + 3 == a2)
          {
            return 1;
          }

          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v30;
            v34 = *v16;
            if (*v30 < v34)
            {
              break;
            }

LABEL_49:
            v16 = v30;
            v31 += 8;
            if (++v30 == a2)
            {
              return 1;
            }
          }

          v35 = v31;
          do
          {
            *(a1 + v35 + 24) = v34;
            if (v35 == -16)
            {
              *a1 = v33;
              if (++v32 != 8)
              {
                goto LABEL_49;
              }

              return v30 + 1 == a2;
            }

            v34 = *(a1 + v35 + 8);
            v35 -= 8;
          }

          while (v33 < v34);
          *(a1 + v35 + 24) = v33;
          if (++v32 != 8)
          {
            goto LABEL_49;
          }

          return v30 + 1 == a2;
        }

        *v18 = v17;
      }

      else
      {
        *a1 = v17;
      }

      v18 = a1 + 2;
    }

    *v18 = v20;
    goto LABEL_40;
  }

  v11 = *(a2 - 1);
  v12 = *a1;
  if (v11 >= *a1)
  {
    return 1;
  }

  *a1 = v11;
  *(a2 - 1) = v12;
  return 1;
}

unint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,mlir::Value*>(char *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[8 * v7];
        v9 = *v8;
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && v9 < v8[1])
        {
          v9 = v8[1];
          ++v8;
          v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v10 = &a1[8 * v5];
        v11 = *v10;
        if (v9 >= *v10)
        {
          v12 = *v8;
          while (1)
          {
            v13 = v8;
            *v10 = v12;
            if (v4 < v7)
            {
              break;
            }

            v14 = (2 * v7) | 1;
            v8 = &a1[8 * v14];
            v7 = 2 * v7 + 2;
            v12 = *v8;
            if (v7 < v3)
            {
              if (v12 >= v8[1])
              {
                v7 = v14;
              }

              else
              {
                v12 = v8[1];
                ++v8;
              }

              v10 = v13;
              if (v12 < v11)
              {
                break;
              }
            }

            else
            {
              v7 = v14;
              v10 = v13;
              if (v12 < v11)
              {
                break;
              }
            }
          }

          *v13 = v11;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i < v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_49;
    }

    v18 = (a1 + 16);
    for (i = a2; i != a3; ++i)
    {
      v19 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v19;
        v20 = *(a1 + 1);
        if (a2 - a1 == 16)
        {
          v21 = (a1 + 8);
          v22 = 1;
          if (v20 >= v19)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v23 = v20 >= *v18;
          if (v20 >= *v18)
          {
            v21 = (a1 + 8);
          }

          else
          {
            v20 = *v18;
            v21 = (a1 + 16);
          }

          if (v23)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 >= v19)
          {
LABEL_40:
            v24 = *v21;
            v25 = a1;
            while (1)
            {
              v26 = v21;
              *v25 = v24;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v27 = (2 * v22) | 1;
              v21 = &a1[8 * v27];
              v22 = 2 * v22 + 2;
              v24 = *v21;
              if (v22 < v3)
              {
                if (v24 >= v21[1])
                {
                  v22 = v27;
                }

                else
                {
                  v24 = v21[1];
                  ++v21;
                }

                v25 = v26;
                if (v24 < v19)
                {
                  break;
                }
              }

              else
              {
                v22 = v27;
                v25 = v26;
                if (v24 < v19)
                {
                  break;
                }
              }
            }

            *v26 = v19;
          }
        }
      }
    }
  }

LABEL_49:
  if (v3 >= 2)
  {
    do
    {
      v29 = 0;
      v30 = *a1;
      v31 = (v3 - 2) >> 1;
      v32 = a1;
      do
      {
        while (1)
        {
          v36 = &v32[8 * v29];
          v35 = (v36 + 8);
          v37 = (2 * v29) | 1;
          v29 = 2 * v29 + 2;
          if (v29 < v3)
          {
            break;
          }

          v29 = v37;
          *v32 = *v35;
          v32 = v36 + 8;
          if (v37 > v31)
          {
            goto LABEL_61;
          }
        }

        v34 = *(v36 + 2);
        v33 = (v36 + 16);
        if (*(v33 - 1) >= v34)
        {
          v29 = v37;
        }

        else
        {
          v35 = v33;
        }

        *v32 = *v35;
        v32 = v35;
      }

      while (v29 <= v31);
LABEL_61:
      if (v35 == --a2)
      {
        *v35 = v30;
      }

      else
      {
        *v35 = *a2;
        *a2 = v30;
        v38 = (v35 - a1 + 8) >> 3;
        v6 = v38 < 2;
        v39 = v38 - 2;
        if (!v6)
        {
          v40 = v39 >> 1;
          v41 = &a1[8 * v40];
          v42 = *v41;
          v43 = *v35;
          if (*v41 < *v35)
          {
            do
            {
              v44 = v41;
              *v35 = v42;
              if (!v40)
              {
                break;
              }

              v40 = (v40 - 1) >> 1;
              v41 = &a1[8 * v40];
              v42 = *v41;
              v35 = v44;
            }

            while (*v41 < v43);
            *v44 = v43;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = *(*a1 + 4);
  if (v4)
  {
    v5 = **a1;
    v6 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
    LODWORD(v6) = -348639895 * ((v7 >> 47) ^ v7);
    v8 = v4 - 1;
    v9 = (v4 - 1) & v6;
    v10 = *(v5 + 16 * v9);
    if (v10 == a2)
    {
      return *(v5 + 16 * v9 + 8) == a3;
    }

    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v9 + v11++;
      v9 = v12 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == a2)
      {
        return *(v5 + 16 * v9 + 8) == a3;
      }
    }
  }

  return a3 == 0;
}

uint64_t *llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = a2;
  v6 = a3;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v3, &v5, &v6, v7);
}

uint64_t mlir::Pattern::Pattern(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, __int16 a6, mlir::StringAttr *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a6;
  *(a1 + 16) = a7 & 0xFFFFFFFFFFFFFFFBLL;
  v8 = (a1 + 40);
  *(a1 + 24) = a1 + 40;
  v9 = a1 + 24;
  *(a1 + 32) = 0x200000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 0;
  if (a5)
  {
    if (a5 >= 3)
    {
      v12 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, v8, a5, 8);
      a5 = v12;
    }

    v13 = a4 + 16 * a5;
    do
    {
      mlir::OperationName::OperationName(&v17, *a4, *(a4 + 8), a7);
      v14 = v17;
      v15 = *(a1 + 32);
      if (v15 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v15 + 1, 8);
        v15 = *(a1 + 32);
      }

      *(*(a1 + 24) + 8 * v15) = v14;
      ++*(a1 + 32);
      a4 += 16;
    }

    while (a4 != v13);
  }

  return a1;
}

uint64_t *mlir::RewriterBase::replaceAllUsesWith(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = 0;
  v21 = a4;
  v22 = 0;
  if (a3 && a5)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v11 = mlir::ValueRange::dereference_iterator(&v19, v8);
      result = mlir::ValueRange::dereference_iterator(&v21, v22);
      v12 = *v11;
      if (*v11)
      {
        v13 = result;
        do
        {
          v14 = *v12;
          v15 = v12[2];
          (*(*v7 + 40))(v7, v15);
          v16 = v12[1];
          if (v16)
          {
            v17 = *v12;
            *v16 = *v12;
            if (v17)
            {
              v17[1] = v16;
            }
          }

          v12[3] = v13;
          v18 = *v13;
          *v12 = *v13;
          v12[1] = v13;
          if (v18)
          {
            *(v18 + 8) = v12;
          }

          *v13 = v12;
          result = (*(*v7 + 48))(v7, v15);
          v12 = v14;
        }

        while (v14);
      }

      v8 = v20 + 1;
      v9 = v22 + 1;
      v20 = v8;
      ++v22;
    }

    while (v8 != a3 && v9 != a5);
  }

  return result;
}

uint64_t *mlir::RewriterBase::replaceAllOpUsesWith(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  if (v5 && v5[2] == 1)
  {
    v6 = a2;
    (*(*v5 + 48))(v5, a2, a3);
    a2 = v6;
  }

  v7 = *(a2 + 9);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v13, v8, v7);
  v9 = *(a3 + 9);
  if (v9)
  {
    v10 = a3 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  return mlir::RewriterBase::replaceAllUsesWith(this, v13[0], v13[1], v12[0], v12[1]);
}

uint64_t mlir::RewriterBase::replaceOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v8 = a1[2];
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, a3, a4);
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v12, v10, v9);
  mlir::RewriterBase::replaceAllUsesWith(a1, v12[0], v12[1], a3, a4);
  return (*(*a1 + 16))(a1, a2);
}

uint64_t mlir::RewriterBase::replaceOp(mlir::RewriterBase *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(&v12, v5, *(a3 + 9));
  v6 = v12;
  v7 = v13;
  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 56))(v8, a2, v12, v13);
  }

  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v10, v9);
  mlir::RewriterBase::replaceAllUsesWith(this, v14[0], v14[1], v6, v7);
  return (*(*this + 16))(this, a2);
}

void mlir::RewriterBase::eraseOp(mlir::RewriterBase *this, mlir::Operation *a2)
{
  v2 = *(this + 2);
  if (v2 && *(v2 + 8) == 1)
  {
    operator new();
  }

  mlir::Operation::erase(a2, a2);
}

void mlir::RewriterBase::eraseBlock(mlir::RewriterBase *this, mlir::Block *a2)
{
  v5 = a2 + 32;
  v4 = *(a2 + 4);
  if (v4 != (a2 + 32))
  {
    do
    {
      v6 = *v4;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      (*(*this + 16))(this, v7);
      v4 = v6;
    }

    while (v6 != v5);
  }

  v8 = *(this + 2);
  if (v8 && v8[2] == 1)
  {
    (*(*v8 + 32))(v8, a2);
  }

  mlir::Block::erase(a2);
}

_DWORD *mlir::RewriterBase::finalizeOpModification(mlir::RewriterBase *this, mlir::Operation *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 40))(result, a2);
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceUsesWithIf(uint64_t result, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t *), uint64_t a5, char *a6)
{
  v7 = *a2;
  if (*a2)
  {
    v11 = result;
    v12 = 1;
    do
    {
      v13 = *v7;
      result = a4(a5, v7);
      v14 = result;
      if (result)
      {
        v15 = v7[2];
        (*(*v11 + 40))(v11, v15);
        v16 = v7[1];
        if (v16)
        {
          v17 = *v7;
          *v16 = *v7;
          if (v17)
          {
            *(v17 + 8) = v16;
          }
        }

        v7[3] = a3;
        v18 = *a3;
        *v7 = *a3;
        v7[1] = a3;
        if (v18)
        {
          *(v18 + 8) = v7;
        }

        *a3 = v7;
        result = (*(*v11 + 48))(v11, v15);
      }

      v12 &= v14;
      v7 = v13;
    }

    while (v13);
  }

  else
  {
    v12 = 1;
  }

  if (a6)
  {
    *a6 = v12;
  }

  return result;
}

uint64_t *mlir::RewriterBase::replaceUsesWithIf(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t *), uint64_t a7, char *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v26 = 0;
  v27 = a4;
  v28 = 0;
  if (a3)
  {
    v10 = result;
    v11 = 0;
    v12 = 1;
    do
    {
      v14 = mlir::ValueRange::dereference_iterator(&v25, v11);
      result = mlir::ValueRange::dereference_iterator(&v27, v28);
      v15 = *v14;
      if (v15)
      {
        v16 = result;
        v13 = 1;
        do
        {
          v17 = *v15;
          result = a6(a7, v15);
          v18 = result;
          if (result)
          {
            v19 = v15[2];
            (*(*v10 + 40))(v10, v19);
            v20 = v15[1];
            if (v20)
            {
              v21 = *v15;
              *v20 = *v15;
              if (v21)
              {
                *(v21 + 8) = v20;
              }
            }

            v15[3] = v16;
            v22 = *v16;
            *v15 = *v16;
            v15[1] = v16;
            if (v22)
            {
              *(v22 + 8) = v15;
            }

            *v16 = v15;
            result = (*(*v10 + 48))(v10, v19);
          }

          v13 &= v18;
          v15 = v17;
        }

        while (v17);
      }

      else
      {
        v13 = 1;
      }

      v12 &= v13;
      v11 = v26 + 1;
      v26 = v11;
      ++v28;
    }

    while (v11 != a3);
  }

  else
  {
    v12 = 1;
  }

  if (a8)
  {
    *a8 = v12;
  }

  return result;
}

uint64_t mlir::RewriterBase::inlineBlockBefore(void *a1, uint64_t a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v36 = v9;
  v37 = a5;
  v38 = 0;
  if (v9 != v10 && a6 != 0)
  {
    v20 = 0;
    do
    {
      v22 = mlir::ValueRange::dereference_iterator(&v37, v20);
      v23 = **v9;
      if (v23)
      {
        v24 = v22;
        do
        {
          v25 = *v23;
          v26 = v23[2];
          (*(*a1 + 40))(a1, v26);
          v27 = v23[1];
          if (v27)
          {
            v28 = *v23;
            *v27 = *v23;
            if (v28)
            {
              v28[1] = v27;
            }
          }

          v23[3] = v24;
          v29 = *v24;
          *v23 = *v24;
          v23[1] = v24;
          if (v29)
          {
            *(v29 + 8) = v23;
          }

          *v24 = v23;
          (*(*a1 + 48))(a1, v26);
          v23 = v25;
        }

        while (v25);
      }

      v9 = v36 + 1;
      v20 = v38 + 1;
      v36 = v9;
      ++v38;
    }

    while (v9 != v10 && v20 != a6);
  }

  v13 = (a2 + 32);
  v12 = *(a2 + 32);
  if (a1[2])
  {
    if (v12 != a2 + 32)
    {
      do
      {
        ZinIrHalH13g::~ZinIrHalH13g(*(a2 + 40));
        v15 = v14;
        v17 = v14[1];
        v16 = v14[2];
        mlir::Operation::moveBefore(v14, a3, a4);
        v18 = a1[2];
        if (v18)
        {
          (*(*v18 + 16))(v18, v15, v16, v17);
        }
      }

      while (*v13 != v13);
    }
  }

  else if (v12 != a2 + 32 && v13 != a4)
  {
    v30 = *(a2 + 40);
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(a3 + 32, a2 + 32, v30, a2 + 32);
    if (v30 != v13)
    {
      v31 = *v13;
      v32 = *v30;
      *(v32 + 8) = v13;
      *v13 = v32;
      v33 = *a4;
      *(v31 + 8) = a4;
      *v30 = v33;
      *(v33 + 8) = v30;
      *a4 = v31;
    }
  }

  return (*(*a1 + 24))(a1, a2, a3, a4, a5, a6);
}

uint64_t mlir::RewriterBase::moveOpBefore(uint64_t a1, uint64_t *a2, mlir::Block *this, uint64_t *a4)
{
  mlir::Operation::moveBefore(a2, this, a4);
  result = *(a1 + 16);
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

void mlir::RewriterBase::splitBlock(uint64_t a1, uint64_t **this, ZinIrHalH13g *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v3 = a1 + 24;
    Parent = mlir::Block::getParent(this);
    v6 = this[2];
    mlir::ValueRange::ValueRange(v7, 0, 0);
    mlir::OpBuilder::createBlock((v3 - 16), Parent, v6, v7[0], v7[1], 0, 0);
  }

  mlir::Block::splitBlock(this, a3);
}

void *mlir::RewriterBase::inlineRegionBefore(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result[2])
  {
    if (*a2 != a2)
    {
      v7 = result;
      do
      {
        v8 = a2[1];
        if (v8)
        {
          v9 = (v8 - 8);
        }

        else
        {
          v9 = 0;
        }

        Parent = mlir::Block::getParent(v9);
        v11 = *(v9 + 2);
        mlir::Block::moveBefore(v9, a3, a4);
        result = v7[2];
        if (result)
        {
          result = (*(*result + 24))(result, v9, Parent, v11);
        }
      }

      while (*a2 != a2);
    }
  }

  else if (*a2 != a2 && a2 != a4)
  {
    v12 = a2[1];
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(a3, a2, v12, a2);
    if (v12 != a2)
    {
      v13 = *a2;
      v14 = *v12;
      *(v14 + 8) = a2;
      *a2 = v14;
      v15 = *a4;
      v13[1] = a4;
      *v12 = v15;
      *(v15 + 8) = v12;
      *a4 = v13;
    }
  }

  return result;
}

void *mlir::RewriterBase::inlineRegionBefore(mlir::RewriterBase *this, mlir::Region *a2, mlir::Block *a3)
{
  Parent = mlir::Block::getParent(a3);

  return mlir::RewriterBase::inlineRegionBefore(this, a2, Parent, a3 + 1);
}

__n128 std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19FED98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::operator()(uint64_t a1, unsigned int **a2)
{
  v139[40] = *MEMORY[0x1E69E9840];
  v104 = *a2;
  v3 = (*a2)[11];
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = *(a1 + 16);
    v105 = ((&v104[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v104[10];
    v5 = (v105 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v107 = v5;
      v6 = *(v5 - 3);
      v5 -= 3;
      if (v6 != v5)
      {
        break;
      }

LABEL_3:
      if (v5 == v105)
      {
        goto LABEL_166;
      }
    }

    v106 = v5;
LABEL_7:
    v121 = v123;
    v122 = 0x600000000;
    v108 = v112;
    v109 = v112;
    v111 = 0;
    v110 = 0x100000004;
    v112[0] = 0;
    v7 = *(v107 - 2);
    v136 = &v108;
    __src = v139;
    v138 = 0x800000000;
    if (!v7)
    {
      v14 = 0;
      v128 = &v108;
      __dst = v131;
      v130 = 0x800000000;
      goto LABEL_34;
    }

    v8 = (v7 - 8);
    HIDWORD(v110) = 2;
    v112[1] = v7 - 8;
    mlir::SuccessorRange::SuccessorRange(&v132, (v7 - 8));
    v9 = v132;
    mlir::SuccessorRange::SuccessorRange(&v132, v8);
    v10 = v132;
    v11 = v133;
    v12 = v138;
    if (v138 >= HIDWORD(v138))
    {
      v132 = v8;
      v133 = v9;
LABEL_161:
      v134 = 0;
      v135[0] = v10;
      v135[1] = v11;
      if (__src <= &v132 && __src + 40 * v12 > &v132)
      {
        v95 = &v132 - __src;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v12 + 1, 40);
        v91 = __src;
        v90 = __src + v95;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v12 + 1, 40);
        v90 = &v132;
        v91 = __src;
      }

      v92 = &v91[40 * v138];
      v93 = *v90;
      v94 = *(v90 + 1);
      *(v92 + 4) = *(v90 + 4);
      *v92 = v93;
      *(v92 + 1) = v94;
    }

    else
    {
      v13 = __src + 40 * v138;
      *v13 = v8;
      v13[1] = v9;
LABEL_12:
      v13[2] = 0;
      v13[3] = v10;
      v13[4] = v11;
    }

    v14 = v138 + 1;
    LODWORD(v138) = v138 + 1;
    while (1)
    {
      while (1)
      {
        v15 = __src;
        v16 = __src + 40 * v14;
        v17 = *(v16 - 3);
        if (v17 == *(v16 - 1))
        {
          v128 = v136;
          __dst = v131;
          v130 = 0x800000000;
          if (v14)
          {
            v26 = v131;
            v27 = v14;
            if (v14 < 9)
            {
              goto LABEL_30;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v131, v14, 40);
            v27 = v138;
            if (v138)
            {
              v26 = __dst;
              v15 = __src;
LABEL_30:
              memcpy(v26, v15, 40 * v27);
            }

            LODWORD(v130) = v14;
            v15 = __src;
          }

          if (v15 != v139)
          {
            free(v15);
            v14 = v130;
          }

LABEL_34:
          v124 = &v108;
          v125 = v127;
          v126 = 0x800000000;
          v28 = v128;
          v136 = v128;
          __src = v139;
          v138 = 0x800000000;
          if (!v14)
          {
            v30 = 0;
            v132 = &v108;
            v133 = v135;
            v134 = 0x800000000;
            v113 = v128;
            v114 = v116;
            v115 = 0x800000000;
            goto LABEL_56;
          }

          v29 = __dst;
          if (__dst != v131)
          {
            __src = __dst;
            v138 = __PAIR64__(HIDWORD(v130), v14);
            __dst = v131;
            v130 = 0;
            v132 = &v108;
            v133 = v135;
            v134 = 0x800000000;
            goto LABEL_37;
          }

          v32 = v14;
          if (v14 < 9)
          {
            v33 = v139;
LABEL_48:
            memcpy(v33, v29, 40 * v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v14, 40);
            v32 = v130;
            if (v130)
            {
              v29 = __dst;
              v33 = __src;
              goto LABEL_48;
            }
          }

          LODWORD(v138) = v14;
          v30 = v126;
          LODWORD(v130) = 0;
          v132 = v124;
          v133 = v135;
          v134 = 0x800000000;
          if (!v126)
          {
            v28 = v136;
LABEL_37:
            v30 = 0;
            v113 = v28;
            v114 = v116;
            v115 = 0x800000000;
LABEL_38:
            v31 = __src;
            if (__src != v139)
            {
              v114 = __src;
              v115 = __PAIR64__(HIDWORD(v138), v14);
              __src = v139;
              HIDWORD(v138) = 0;
LABEL_55:
              LODWORD(v138) = 0;
              goto LABEL_56;
            }

            v34 = v14;
            if (v14 < 9)
            {
              v35 = v116;
LABEL_53:
              memcpy(v35, v31, 40 * v34);
            }

            else
            {
              LODWORD(v115) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, v14, 40);
              v34 = v138;
              if (v138)
              {
                v31 = __src;
                v35 = v114;
                goto LABEL_53;
              }
            }

            LODWORD(v115) = v14;
            v30 = v134;
            goto LABEL_55;
          }

          v36 = v125;
          if (v125 != v127)
          {
            v133 = v125;
            v134 = v126;
            v125 = v127;
            v126 = 0;
            v113 = v136;
            v114 = v116;
            v115 = 0x800000000;
            goto LABEL_38;
          }

          if (v126 < 9uLL)
          {
            v89 = v135;
            v88 = v126;
LABEL_157:
            memcpy(v89, v36, 40 * v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v126, 40);
            v88 = v126;
            if (v126)
            {
              v36 = v125;
              v89 = v133;
              goto LABEL_157;
            }
          }

          LODWORD(v134) = v30;
          v14 = v138;
          LODWORD(v126) = 0;
          v113 = v136;
          v114 = v116;
          v115 = 0x800000000;
          if (v138)
          {
            goto LABEL_38;
          }

LABEL_56:
          v37 = v133;
          v117 = v132;
          v118 = v120;
          v119 = 0x800000000;
          if (v30)
          {
            if (v133 != v135)
            {
              v118 = v133;
              v119 = __PAIR64__(HIDWORD(v134), v30);
              v133 = v135;
              HIDWORD(v134) = 0;
              v37 = v135;
              goto LABEL_64;
            }

            v38 = v120;
            v39 = v30;
            if (v30 < 9)
            {
LABEL_62:
              memcpy(v38, v37, 40 * v39);
              v37 = v133;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v118, v120, v30, 40);
              v39 = v134;
              v37 = v133;
              if (v134)
              {
                v38 = v118;
                goto LABEL_62;
              }
            }

            LODWORD(v119) = v30;
LABEL_64:
            LODWORD(v134) = 0;
          }

          if (v37 != v135)
          {
            free(v37);
          }

          if (__src != v139)
          {
            free(__src);
          }

          if (v125 != v127)
          {
            free(v125);
          }

          if (__dst != v131)
          {
            free(__dst);
          }

          v136 = v113;
          __src = v139;
          v138 = 0x800000000;
          v40 = v115;
          if (v115)
          {
            v41 = v139;
            v42 = v115;
            if (v115 < 9)
            {
              goto LABEL_77;
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v115, 40);
            v42 = v115;
            if (v115)
            {
              v41 = __src;
LABEL_77:
              memcpy(v41, v114, 40 * v42);
            }

            LODWORD(v138) = v40;
          }

          v132 = v117;
          v133 = v135;
          v134 = 0x800000000;
          v43 = v119;
          if (!v119)
          {
            goto LABEL_86;
          }

          v44 = v135;
          v45 = v119;
          if (v119 < 9)
          {
LABEL_83:
            memcpy(v44, v118, 40 * v45);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v119, 40);
            v45 = v119;
            if (v119)
            {
              v44 = v133;
              goto LABEL_83;
            }
          }

          LODWORD(v134) = v43;
          v40 = v138;
LABEL_86:
          while (2)
          {
            v46 = __src;
            if (v40 != v43)
            {
LABEL_97:
              v50 = *(__src + 5 * v40 - 5);
              v51 = *(v50 + 32);
              if (v51 != (v50 + 32))
              {
                do
                {
                  v52 = *v51;
                  ZinIrHalH13g::~ZinIrHalH13g(v51);
                  v53 = *(a1 + 8);
                  v128 = v54;
                  v55 = *(v53 + 24);
                  if (!v55)
                  {
                    std::__throw_bad_function_call[abi:nn200100]();
                  }

                  (*(*v55 + 48))(v55, &v128);
                  v51 = v52;
                }

                while (v52 != (v50 + 32));
              }

              v56 = v122;
              if (v122 >= HIDWORD(v122))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v122 + 1, 8);
                v56 = v122;
              }

              *(v121 + v56) = v50;
              LODWORD(v122) = v122 + 1;
              v40 = v138 - 1;
              LODWORD(v138) = v138 - 1;
              if (!v138)
              {
LABEL_85:
                v43 = v134;
                continue;
              }

              while (1)
              {
LABEL_105:
                v57 = __src + 40 * v40;
                v58 = *(v57 - 3);
                if (v58 == *(v57 - 1))
                {
                  goto LABEL_85;
                }

                v59 = *(v57 - 4);
                *(v57 - 3) = v58 + 1;
                v60 = *(v59 + 32 * v58 + 24);
                v61 = *v136;
                if (*(v136 + 1) != *v136)
                {
                  goto LABEL_107;
                }

                v63 = *(v136 + 5);
                if (!v63)
                {
                  break;
                }

                v64 = 8 * v63;
                v65 = *v136;
                while (*v65 != v60)
                {
                  ++v65;
                  v64 -= 8;
                  if (!v64)
                  {
                    goto LABEL_113;
                  }
                }
              }

LABEL_113:
              if (v63 >= *(v136 + 4))
              {
LABEL_107:
                llvm::SmallPtrSetImplBase::insert_imp_big(v136, v60);
                if ((v62 & 1) == 0)
                {
                  v40 = v138;
                  goto LABEL_105;
                }
              }

              else
              {
                *(v136 + 5) = v63 + 1;
                v61[v63] = v60;
              }

              mlir::SuccessorRange::SuccessorRange(&v128, v60);
              v66 = v128;
              mlir::SuccessorRange::SuccessorRange(&v128, v60);
              v67 = v128;
              v68 = __dst;
              if (v138 >= HIDWORD(v138))
              {
                v128 = v60;
                __dst = v66;
                v130 = 0;
                v131[0] = v67;
                v131[1] = v68;
                if (__src <= &v128 && __src + 40 * v138 > &v128)
                {
                  v75 = &v128 - __src;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v138 + 1, 40);
                  v71 = __src;
                  v70 = (__src + v75);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v139, v138 + 1, 40);
                  v70 = &v128;
                  v71 = __src;
                }

                v72 = &v71[40 * v138];
                v73 = *v70;
                v74 = *(v70 + 1);
                *(v72 + 4) = v70[4];
                *v72 = v73;
                *(v72 + 1) = v74;
              }

              else
              {
                v69 = (__src + 40 * v138);
                *v69 = v60;
                v69[1] = v66;
                v69[2] = 0;
                v69[3] = v67;
                v69[4] = v68;
              }

              v40 = v138 + 1;
              LODWORD(v138) = v138 + 1;
              goto LABEL_105;
            }

            break;
          }

          if (v43)
          {
            v47 = v133;
            v48 = __src;
            do
            {
              v49 = *v48 == *v47 && v48[2] == v47[2];
              if (!v49 || v48[4] != v47[4])
              {
                goto LABEL_97;
              }

              v48 += 5;
              v47 += 5;
            }

            while (v48 != (__src + 40 * v43));
          }

          if (v133 != v135)
          {
            free(v133);
            v46 = __src;
          }

          if (v46 != v139)
          {
            free(v46);
          }

          if (v118 != v120)
          {
            free(v118);
          }

          if (v114 != v116)
          {
            free(v114);
          }

          if (v122)
          {
            v76 = v121;
            v77 = v121 + 8 * v122;
            do
            {
              v78 = *v76;
              v79 = *(*v76 + 48);
              v80 = *(*v76 + 56);
              while (v79 != v80)
              {
                v81 = *v79;
                while (1)
                {
                  v82 = *v81;
                  if (!*v81)
                  {
                    break;
                  }

                  v83 = v82[1];
                  if (v83)
                  {
                    v84 = *v82;
                    *v83 = *v82;
                    if (v84)
                    {
                      *(v84 + 8) = v83;
                    }
                  }

                  *v82 = 0;
                  v82[1] = 0;
                  v82[3] = 0;
                }

                ++v79;
              }

              while (1)
              {
                v85 = *v78;
                if (!*v78)
                {
                  break;
                }

                v86 = v85[1];
                if (v86)
                {
                  v87 = *v85;
                  *v86 = *v85;
                  if (v87)
                  {
                    *(v87 + 8) = v86;
                  }
                }

                *v85 = 0;
                v85[1] = 0;
                v85[3] = 0;
              }

              (*(*v4 + 24))(v4);
              v76 += 8;
            }

            while (v76 != v77);
          }

          if (v109 != v108)
          {
            free(v109);
          }

          if (v121 != v123)
          {
            free(v121);
          }

          v5 = v106;
          if (*v106 == v106)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }

        v18 = *(v16 - 4);
        *(v16 - 3) = v17 + 1;
        v19 = *(v18 + 32 * v17 + 24);
        v20 = *v136;
        if (*(v136 + 1) == *v136)
        {
          break;
        }

LABEL_16:
        llvm::SmallPtrSetImplBase::insert_imp_big(v136, v19);
        if (v21)
        {
          goto LABEL_24;
        }

        v14 = v138;
      }

      v22 = *(v136 + 5);
      if (!v22)
      {
LABEL_22:
        if (v22 < *(v136 + 4))
        {
          *(v136 + 5) = v22 + 1;
          v20[v22] = v19;
LABEL_24:
          mlir::SuccessorRange::SuccessorRange(&v132, v19);
          v25 = v132;
          mlir::SuccessorRange::SuccessorRange(&v132, v19);
          v10 = v132;
          v11 = v133;
          v12 = v138;
          if (v138 < HIDWORD(v138))
          {
            v13 = __src + 40 * v138;
            *v13 = v19;
            v13[1] = v25;
            goto LABEL_12;
          }

          v132 = v19;
          v133 = v25;
          goto LABEL_161;
        }

        goto LABEL_16;
      }

      v23 = 8 * v22;
      v24 = *v136;
      while (*v24 != v19)
      {
        ++v24;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_166:
  (*(****(a1 + 24) + 64))(***(a1 + 24), v104);
  v97 = v104[9];
  if (v97)
  {
    v98 = (v104 - 4);
  }

  else
  {
    v98 = 0;
  }

  if (v97)
  {
    for (i = 0; i != v97; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v98, i);
      while (1)
      {
        v101 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v102 = v101[1];
        if (v102)
        {
          v103 = *v101;
          *v102 = *v101;
          if (v103)
          {
            *(v103 + 8) = v102;
          }
        }

        *v101 = 0;
        v101[1] = 0;
        v101[3] = 0;
      }
    }
  }

  mlir::Operation::erase(v104, v96);
}

uint64_t std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir12RewriterBase7eraseOpEPNS_9OperationEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::Region::Region(void *this, mlir::Operation *a2)
{
  *this = this;
  this[1] = this;
  this[2] = a2;
  return this;
}

uint64_t mlir::Region::dropAllReferences(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != this)
  {
    v2 = this;
    do
    {
      if (v1)
      {
        v3 = v1 - 8;
      }

      else
      {
        v3 = 0;
      }

      this = mlir::Block::dropAllReferences(v3);
      v1 = *(v1 + 8);
    }

    while (v1 != v2);
  }

  return this;
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = v2 - 8;
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    do
    {
      v4 = *(v2 + 1);
      if (v2)
      {
        v5 = (v2 - 8);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5[2];
      v5[3] &= 7uLL;
      v7 = v5[1];
      *v6 = v7;
      *(v7 + 8) = v6;
      v5[1] = 0;
      v5[2] = 0;
      mlir::Block::~Block(v2 - 1);
      MEMORY[0x1AC55A070]();
      v2 = v4;
    }

    while (v4 != this);
  }
}

uint64_t mlir::Region::getArgumentTypes(mlir::Region *this)
{
  if (*this == this)
  {
    return 0;
  }

  v1 = *(this + 1);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48);
}

mlir::Block *mlir::Region::getParentRegion(mlir::Region *this)
{
  result = *(*(this + 2) + 16);
  if (result)
  {
    return mlir::Block::getParent(result);
  }

  return result;
}

unint64_t mlir::Region::isProperAncestor(mlir::Region *this, mlir::Region *a2)
{
  if (this == a2)
  {
    return 0;
  }

  while (1)
  {
    result = *(*(a2 + 2) + 16);
    if (!result)
    {
      break;
    }

    result = mlir::Block::getParent(result);
    if (!result)
    {
      break;
    }

    a2 = result;
    if (result == this)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::Region::getRegionNumber(unint64_t this)
{
  v1 = *(this + 16);
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    return -1431655765 * ((this - (((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40))) >> 3);
  }

  else
  {
    return -1431655765 * (this >> 3);
  }
}

void mlir::Region::cloneInto(mlir::Operation::CloneOptions **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v96[6] = *MEMORY[0x1E69E9840];
  if (*a1 == a1)
  {
    return;
  }

  v5 = a1;
  v6 = a1[1];
  if (v6 != a1)
  {
    operator new();
  }

  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a4 + 10);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a4[3];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(v9 + 16 * v10);
  if (v11 != v7)
  {
    v83 = 1;
    while (v11 != -4096)
    {
      v84 = v10 + v83++;
      v10 = v84 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  if (v10 == v8)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = *(v9 + 16 * v10 + 8);
LABEL_12:
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v94) = mlir::Operation::CloneOptions::all(a1);
  v14 = mlir::Operation::CloneOptions::cloneRegions(&v94, 0);
  v15 = mlir::Operation::CloneOptions::cloneOperands(v14, 0);
  v16 = *(v5 + 1);
  if (v16 != v5 && v13 != a3)
  {
    v18 = *v15;
    v19 = v13;
    do
    {
      v21 = v16 - 8;
      v88 = v16;
      if (!v16)
      {
        v21 = 0;
      }

      v22 = (v21 + 32);
      v23 = *(v21 + 5);
      if (v23 != (v21 + 32))
      {
        v24 = v19 - 1;
        if (!v19)
        {
          v24 = 0;
        }

        v25 = v24 + 4;
        do
        {
          ZinIrHalH13g::~ZinIrHalH13g(v23);
          v27 = mlir::Operation::clone(v26, a4, v18);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v25, v27);
          ZinIrHalH13g::~ZinIrHalH13g(v27);
          v28 = *v25;
          *v29 = *v25;
          v29[1] = v25;
          *(v28 + 8) = v29;
          *v25 = v29;
          ZinIrHalH13g::~ZinIrHalH13g(v27);
          v23 = *(v23 + 1);
        }

        while (v23 != v22);
      }

      v19 = v19[1];
      v16 = *(v88 + 1);
      v5 = a1;
    }

    while (v16 != a1 && v19 != a3);
    v16 = a1[1];
  }

  v94 = v96;
  v95 = 0x600000000;
  if (v16 != v5 && v13 != a3)
  {
    while (1)
    {
      v31 = v16 - 8;
      v89 = v16;
      if (!v16)
      {
        v31 = 0;
      }

      v32 = v13 - 1;
      v85 = v13;
      if (!v13)
      {
        v32 = 0;
      }

      v33 = v32[5];
      v34 = *(v31 + 5);
      v90 = (v32 + 4);
      v91 = (v31 + 32);
      if (v34 != (v31 + 32) && v33 != (v32 + 4))
      {
        break;
      }

LABEL_36:
      v13 = v85[1];
      v16 = *(v89 + 1);
      if (v16 == a1 || v13 == a3)
      {
        if (v94 != v96)
        {
          free(v94);
        }

        return;
      }
    }

    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v34);
      v38 = v37;
      ZinIrHalH13g::~ZinIrHalH13g(v33);
      v40 = v39;
      v41 = *(v38 + 44);
      if ((v41 & 0x800000) != 0)
      {
        v42 = *(v38 + 68);
      }

      else
      {
        v42 = 0;
      }

      v43 = v95;
      if (v95 != v42)
      {
        if (v95 <= v42)
        {
          if (HIDWORD(v95) < v42)
          {
            v44 = v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v42, 8);
            v42 = v44;
            v43 = v95;
          }

          if (v42 != v43)
          {
            v45 = v42;
            bzero(v94 + 8 * v43, 8 * (v42 - v43));
            v42 = v45;
          }
        }

        LODWORD(v95) = v42;
        v41 = *(v38 + 44);
      }

      if ((v41 & 0x800000) != 0)
      {
        v46 = *(v38 + 68);
        v47 = v94;
        if (v46)
        {
          v48 = *(v38 + 72);
          v49 = *(a4 + 4);
          if (v49)
          {
            v50 = 0;
            v51 = *a4;
            v52 = v49 - 1;
            v53 = v94;
            do
            {
              v54 = *(v48 + 32 * v50 + 24);
              v55 = 0x9DDFEA08EB382D69 * ((8 * v54 - 0xAE502812AA7333) ^ HIDWORD(v54));
              v56 = 0x9DDFEA08EB382D69 * (HIDWORD(v54) ^ (v55 >> 47) ^ v55);
              v57 = (-348639895 * ((v56 >> 47) ^ v56)) & v52;
              v58 = *(v51 + 16 * v57);
              if (v58 == v54)
              {
LABEL_69:
                if (v57 != v49)
                {
                  v54 = *(v51 + 16 * v57 + 8);
                }
              }

              else
              {
                v59 = 1;
                while (v58 != -4096)
                {
                  v60 = v57 + v59++;
                  v57 = v60 & v52;
                  v58 = *(v51 + 16 * v57);
                  if (v58 == v54)
                  {
                    goto LABEL_69;
                  }
                }
              }

              *v53++ = v54;
              ++v50;
            }

            while (v50 != v46);
          }

          else
          {
            if (v46 >= 5 && (v94 >= v48 + 32 * v46 || v48 + 24 >= v94 + 8 * v46))
            {
              v63 = v46 & 3;
              if ((v46 & 3) == 0)
              {
                v63 = 4;
              }

              v61 = v46 - v63;
              v62 = v94 + 8 * (v46 - v63);
              v64 = (v48 + 88);
              v65 = (v94 + 16);
              v66 = v61;
              do
              {
                v67 = v64 - 8;
                v68 = vld4q_f64(v67);
                v69 = vld4q_f64(v64);
                *(v65 - 1) = v68;
                *v65 = v69;
                v64 += 16;
                v65 += 2;
                v66 -= 4;
              }

              while (v66);
            }

            else
            {
              v61 = 0;
              v62 = v94;
            }

            v70 = v46 - v61;
            v71 = (v48 + 32 * v61 + 24);
            do
            {
              v72 = *v71;
              v71 += 4;
              *v62++ = v72;
              --v70;
            }

            while (v70);
          }
        }
      }

      else
      {
        v47 = v94;
      }

      mlir::ValueRange::ValueRange(&v92, v47, v42);
      mlir::Operation::setOperands(v40, v92, v93);
      v73 = *(v38 + 44);
      v74 = v73 & 0x7FFFFF;
      if ((v73 & 0x7FFFFF) != 0)
      {
        v75 = (v38 + 16 * ((v73 >> 23) & 1) + ((v73 >> 21) & 0x7F8) + 32 * *(v38 + 40) + 64);
        v76 = *(v40 + 44);
        v77 = v76 & 0x7FFFFF;
        if ((v76 & 0x7FFFFF) != 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v75 = 0;
        v74 = 0;
        v76 = *(v40 + 44);
        v77 = v76 & 0x7FFFFF;
        if ((v76 & 0x7FFFFF) != 0)
        {
LABEL_89:
          if (v74)
          {
            v78 = (v40 + 16 * ((v76 >> 23) & 1) + ((v76 >> 21) & 0x7F8) + 32 * *(v40 + 40) + 64);
            v79 = 24 * v74 - 24;
            v80 = 24 * v77 - 24;
            v81 = v78;
            do
            {
              mlir::Region::cloneInto(v75, v81, v78, a4);
              if (!v79)
              {
                break;
              }

              v75 = (v75 + 24);
              v81 += 24;
              v79 -= 24;
              v78 += 3;
              v82 = v80;
              v80 -= 24;
            }

            while (v82);
          }
        }
      }

      v33 = *(v33 + 1);
      v34 = *(v34 + 1);
      if (v34 == v91 || v33 == v90)
      {
        goto LABEL_36;
      }
    }
  }
}

mlir::Block *mlir::Region::findAncestorBlockInRegion(mlir::Region *this, mlir::Block *a2)
{
  while (1)
  {
    if (mlir::Block::getParent(a2) == this)
    {
      return a2;
    }

    ParentOp = mlir::Block::getParentOp(a2);
    if (!ParentOp)
    {
      break;
    }

    a2 = *(ParentOp + 16);
    if (!a2)
    {
      return a2;
    }
  }

  return 0;
}

mlir::Operation *mlir::Region::findAncestorOpInRegion(mlir::Region *this, mlir::Operation *a2)
{
  while (1)
  {
    v4 = *(a2 + 2);
    if (!v4)
    {
      break;
    }

    Parent = mlir::Block::getParent(v4);
    if (!Parent)
    {
      break;
    }

    if (Parent != this)
    {
      a2 = *(Parent + 2);
      if (a2)
      {
        continue;
      }
    }

    return a2;
  }

  return 0;
}

uint64_t llvm::ilist_traits<mlir::Block>::transferNodesFromList(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    while (a3 != a4)
    {
      v4 = a3 - 8;
      if (!a3)
      {
        v4 = 0;
      }

      *(v4 + 24) = *(v4 + 24) & 7 | result;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void *mlir::Region::OpIterator::OpIterator(void *this, mlir::Region *a2, char a3)
{
  *this = a2;
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    v3 = *(a2 + 1);
  }

  this[1] = v3;
  this[2] = 0;
  if (*a2 != a2)
  {
    for (; v3 != a2; this[1] = v3)
    {
      v4 = (v3 - 8);
      if (!v3)
      {
        v4 = 0;
      }

      if (v4[4] != (v4 + 4))
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    if (v3 == a2)
    {
      v6 = 0;
    }

    else
    {
      if (v3)
      {
        v5 = v3 - 8;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v5 + 5);
    }

    this[2] = v6;
  }

  return this;
}

uint64_t *mlir::Region::OpIterator::operator++(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = v1 - 8;
  if (!v1)
  {
    v3 = 0;
  }

  v4 = v3 + 32;
  if (v2 == v4 || (v5 = *(v2 + 8), result[2] = v5, v5 == v4))
  {
    v6 = *(v1 + 8);
    result[1] = v6;
    for (i = *result; v6 != i; result[1] = v6)
    {
      v8 = v6 - 8;
      if (!v6)
      {
        v8 = 0;
      }

      if (*(v8 + 32) != v8 + 32)
      {
        break;
      }

      v6 = *(v6 + 8);
    }

    if (v6 == i)
    {
      result[2] = 0;
    }

    else
    {
      if (v6)
      {
        v9 = v6 - 8;
      }

      else
      {
        v9 = 0;
      }

      result[2] = *(v9 + 40);
    }
  }

  return result;
}

unint64_t mlir::RegionRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = v2 != 2 || v3 == 0;
  if (v4 && (v2 == 4 ? (v5 = v3 == 0) : (v5 = 1), v5))
  {
    return v3 + 24 * a2;
  }

  else
  {
    return *(v3 + 8 * a2);
  }
}

mlir::SymbolTable *mlir::SymbolTable::SymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  Context = mlir::Attribute::getContext((a2 + 24));
  v23 = 261;
  v22[0] = "sym_name";
  v22[1] = 8;
  v6 = mlir::StringAttr::get(Context, v22);
  v7 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v8 + 32);
  v10 = *(v8 + 40);
  if (v10 != (v8 + 32))
  {
    v11 = v6;
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v10);
      v13 = v12;
      v22[0] = v11;
      v14 = v11;
      if (*(v12 + 47))
      {
        AttrData = mlir::OpaqueAttr::getAttrData(v22);
        InherentAttr = mlir::Operation::getInherentAttr(v13, AttrData, v16);
        if (v18)
        {
          goto LABEL_11;
        }

        v14 = v22[0];
      }

      InherentAttr = mlir::DictionaryAttr::get(v13 + 56, v14);
LABEL_11:
      if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v20 = InherentAttr;
        v21 = v13;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(v4, &v20, &v21, v22);
      }

      v10 = *(v10 + 1);
    }

    while (v10 != v9);
  }

  return this;
}

std::string::size_type mlir::SymbolTable::insert(uint64_t a1, std::string::size_type a2, ZinIrHalH13g **a3)
{
  v59[16] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (!v6 || !mlir::Block::getParentOp(v6))
  {
    v7 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = (v8 + 32);
    v10 = (v8 + 32);
    if (!a3 || (v10 = a3, v9 == a3))
    {
      if (*v9 != v9)
      {
        ZinIrHalH13g::~ZinIrHalH13g(*v9);
        {
          v48 = v11;
          mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
          v11 = v48;
        }

        if ((*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v10 = *v9;
        }
      }
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v9, a2);
    ZinIrHalH13g::~ZinIrHalH13g(a2);
    v12 = *v10;
    *v13 = *v10;
    v13[1] = v10;
    *(v12 + 8) = v13;
    *v10 = v13;
    ZinIrHalH13g::~ZinIrHalH13g(a2);
    if (!*(a2 + 47))
    {
      goto LABEL_17;
    }

LABEL_16:
    InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8);
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a2 + 47))
  {
    goto LABEL_16;
  }

LABEL_17:
  InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
LABEL_18:
  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v16 = InherentAttr;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v49 = v16;
  v55.__r_.__value_.__r.__words[0] = v16;
  v55.__r_.__value_.__l.__size_ = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((a1 + 8), &v55, &v55.__r_.__value_.__l.__size_, &v57);
  if (BYTE8(v58))
  {
    return v16;
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = *(a1 + 8);
    v19 = v17 - 1;
    v20 = ((v16 >> 4) ^ (v16 >> 9)) & (v17 - 1);
    v21 = *(v18 + 16 * v20);
    if (v16 == v21)
    {
LABEL_26:
      if (*(v18 + 16 * v20 + 8) == a2)
      {
        return v16;
      }

      goto LABEL_33;
    }

    v22 = 1;
    while (v21 != -4096)
    {
      v23 = v20 + v22++;
      v20 = v23 & v19;
      v21 = *(v18 + 16 * v20);
      if (v16 == v21)
      {
        goto LABEL_26;
      }
    }
  }

  if (!a2)
  {
    return v16;
  }

LABEL_33:
  Context = mlir::Attribute::getContext((a2 + 24));
  AttrData = mlir::OpaqueAttr::getAttrData(&v49);
  v27 = v25;
  v57 = v59;
  v58 = xmmword_1A75DA7F0;
  if (v25 < 0x81)
  {
    v28 = 0;
    if (!v25)
    {
      goto LABEL_37;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v57, v59, v25, 1);
    v28 = v58;
  }

  memcpy(v57 + v28, AttrData, v27);
  v28 = v58;
LABEL_37:
  v29 = v28 + v27;
  v30 = v29;
  *&v58 = v29;
  do
  {
    v31 = v58;
    if (v58 != v30)
    {
      if (v58 <= v30)
      {
        if (*(&v58 + 1) < v30)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v57, v59, v30, 1);
          v31 = v58;
        }

        if (v30 != v31)
        {
          bzero(v57 + v31, v30 - v31);
        }
      }

      *&v58 = v30;
    }

    v32 = v30;
    if (v30 >= *(&v58 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v57, v59, v30 + 1, 1);
      v32 = v58;
    }

    *(v57 + v32) = 95;
    *&v58 = v58 + 1;
    v33 = *(a1 + 32);
    *(a1 + 32) = v33 + 1;
    std::to_string(&v55, v33);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v55;
    }

    else
    {
      v34 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    v36 = v58;
    if (*(&v58 + 1) < v58 + size)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v57, v59, v58 + size, 1);
      v36 = v58;
    }

    if (size)
    {
      memcpy(v57 + v36, v34, size);
      v36 = v58;
    }

    v37 = v36 + size;
    *&v58 = v37;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
      v37 = v58;
    }

    v56 = 261;
    v55.__r_.__value_.__r.__words[0] = v57;
    v55.__r_.__value_.__l.__size_ = v37;
    v50 = mlir::StringAttr::get(Context, &v55);
    v51 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((a1 + 8), &v50, &v51, v52);
  }

  while (v53 != 1);
  v38 = v57;
  v39 = v58;
  v40 = mlir::Attribute::getContext((a2 + 24));
  v54 = 261;
  v52[0] = v38;
  v52[1] = v39;
  v41 = mlir::StringAttr::get(v40, v52);
  v42 = mlir::Attribute::getContext((a2 + 24));
  v56 = 261;
  v55.__r_.__value_.__r.__words[0] = "sym_name";
  v55.__r_.__value_.__l.__size_ = 8;
  v43 = mlir::StringAttr::get(v42, &v55);
  mlir::Operation::setAttr(a2, v43, v41);
  if (!*(a2 + 47) || (v44 = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v45 & 1) == 0))
  {
    v44 = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (!v44)
  {
    v16 = 0;
    v46 = v57;
    if (v57 == v59)
    {
      return v16;
    }

    goto LABEL_68;
  }

  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v16 = v44;
  }

  else
  {
    v16 = 0;
  }

  v46 = v57;
  if (v57 != v59)
  {
LABEL_68:
    free(v46);
  }

  return v16;
}

uint64_t mlir::SymbolTable::getSymbolName(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolTable::replaceAllSymbolUses(mlir::Block **a1, uint64_t a2, unint64_t a3)
{
  v16[8] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v12 = mlir::SymbolRefAttr::get(a2);
  collectSymbolScopes(&v14, a1, a3);
  if (v15)
  {
    NewRefAttr = generateNewRefAttr(*v14, v12);
    v10 = 0;
    v8 = 0u;
    *v9 = 0u;
    *v6 = 0u;
    *__p = 0u;
    operator new();
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::SymbolTable::getSymbolVisibility(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (result = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    if (!v5)
    {
      return 0;
    }

    AttrData = mlir::OpaqueAttr::getAttrData(&v11);
    if (v7 != 6)
    {
      return v7 == 7 && *AttrData == 1986622064 && *(AttrData + 3) == 1702125942;
    }

    v10 = *AttrData == 1953719662 && *(AttrData + 4) == 25701;
    return (2 * v10);
  }

  return result;
}

void mlir::SymbolTable::setSymbolVisibility(uint64_t a1, int a2)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  if (a2)
  {
    v5 = "nested";
    if (a2 == 1)
    {
      v5 = "private";
    }

    v6 = 6;
    v12 = 261;
    if (a2 == 1)
    {
      v6 = 7;
    }

    v11[0] = v5;
    v11[1] = v6;
    v7 = mlir::StringAttr::get(Context, v11);
    v8 = mlir::Attribute::getContext((a1 + 24));
    v15 = 261;
    v13 = "sym_visibility";
    v14 = 14;
    v9 = mlir::StringAttr::get(v8, &v13);
    mlir::Operation::setAttr(a1, v9, v7);
  }

  else
  {
    v15 = 261;
    v13 = "sym_visibility";
    v14 = 14;
    v10 = mlir::StringAttr::get(Context, &v13);
    mlir::Operation::removeAttr(a1, v10);
  }
}

uint64_t mlir::Operation::removeAttr(uint64_t a1, uint64_t a2)
{
  v12[9] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (*(a1 + 47) && (AttrData = mlir::OpaqueAttr::getAttrData(&v10), InherentAttr = mlir::Operation::getInherentAttr(a1, AttrData, v4), (v6 & 1) != 0))
  {
    v7 = InherentAttr;
    mlir::Operation::setInherentAttr(a1, v10, 0);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v11, *(a1 + 56));
    v7 = mlir::NamedAttrList::erase(v11, v10);
    if (v7)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v11, Context);
    }

    if (v11[0] != v12)
    {
      free(v11[0]);
    }
  }

  return v7;
}

mlir::SymbolTable *mlir::SymbolTable::getNearestSymbolTable(mlir::SymbolTable *this, mlir::Operation *a2)
{
  v2 = this;
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    v3 = *(this + 6);
    if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v8 = *(v3 + 8);
      if (mlir::SparseElementsAttr::getValues(&v8))
      {
        goto LABEL_8;
      }
    }

    else if (*(v3 + 24))
    {
      goto LABEL_8;
    }

    return 0;
  }

  else
  {
    while (1)
    {
LABEL_8:
      {
        mlir::SymbolTable::getNearestSymbolTable();
      }

      if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v4 = *(v2 + 2);
      if (!v4)
      {
        return 0;
      }

      ParentOp = mlir::Block::getParentOp(v4);
      v2 = ParentOp;
      if (!ParentOp)
      {
        break;
      }

      if ((*(ParentOp + 44) & 0x7FFFFF) == 1)
      {
        v6 = *(ParentOp + 48);
        if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v8 = *(v6 + 8);
          if (!mlir::SparseElementsAttr::getValues(&v8))
          {
            return 0;
          }
        }

        else if (!*(v6 + 24))
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(unsigned int *a1, uint64_t a2)
{
  v2 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v2 != v2)
  {
    Context = mlir::Attribute::getContext((a1 + 6));
    v21 = 261;
    v20[0] = "sym_name";
    v20[1] = 8;
    v5 = mlir::StringAttr::get(Context, v20);
    v6 = v2[1];
    v7 = v6 ? v6 - 8 : 0;
    v8 = (v7 + 32);
    v9 = *(v7 + 40);
    if (v9 != (v7 + 32))
    {
      v10 = v5;
      do
      {
        ZinIrHalH13g::~ZinIrHalH13g(v9);
        v12 = v11;
        v20[0] = v10;
        v13 = v10;
        if (*(v11 + 47))
        {
          AttrData = mlir::OpaqueAttr::getAttrData(v20);
          InherentAttr = mlir::Operation::getInherentAttr(v12, AttrData, v15);
          if (v17)
          {
            goto LABEL_13;
          }

          v13 = v20[0];
        }

        InherentAttr = mlir::DictionaryAttr::get(v12 + 56, v13);
LABEL_13:
        if (InherentAttr)
        {
          if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v18 = InherentAttr;
          }

          else
          {
            v18 = 0;
          }

          if (v18 == a2)
          {
            return v12;
          }
        }

        else if (!a2)
        {
          return v12;
        }

        v9 = *(v9 + 1);
      }

      while (v9 != v8);
    }
  }

  return 0;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v5 = v7;
  v6 = 0x400000000;
  if (lookupSymbolInImpl(a1, a2, &v5, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTable::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v4))
  {
    v2 = *(v5 + v6 - 1);
    if (v5 == v7)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if (v5 != v7)
  {
LABEL_5:
    free(v5);
  }

  return v2;
}

uint64_t lookupSymbolInImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v27 = a2;
  Value = mlir::AffineMapAttr::getValue(&v27);
  result = a4(a5, a1, Value);
  if (result)
  {
    v11 = result;
    v12 = *(a3 + 8);
    if (v12 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a3 + 8);
    }

    *(*a3 + 8 * v12) = v11;
    ++*(a3 + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v27);
    if (v14)
    {
      v15 = AttrData;
      v16 = v14;
      {
        mlir::SymbolTable::getNearestSymbolTable();
      }

      result = (*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        if (&v15[v16 - 1] == v15)
        {
LABEL_19:
          LeafReference = mlir::SymbolRefAttr::getLeafReference(&v27);
          v22 = a4(a5, v11, LeafReference);
          v23 = *(a3 + 8);
          if (v23 >= *(a3 + 12))
          {
            v25 = v22;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v23 + 1, 8);
            v22 = v25;
            LODWORD(v23) = *(a3 + 8);
          }

          *(*a3 + 8 * v23) = v22;
          v24 = *(a3 + 8) + 1;
          *(a3 + 8) = v24;
          return *(*a3 + 8 * v24 - 8) != 0;
        }

        else
        {
          v17 = 8 * v16 - 8;
          while (1)
          {
            v26 = *v15;
            v18 = mlir::AffineMapAttr::getValue(&v26);
            v19 = a4(a5, v11, v18);
            if (!v19)
            {
              return 0;
            }

            v11 = v19;
            {
              mlir::SymbolTable::getNearestSymbolTable();
            }

            if (!(*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              return 0;
            }

            v20 = *(a3 + 8);
            if (v20 >= *(a3 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v20 + 1, 8);
              v20 = *(a3 + 8);
            }

            *(*a3 + 8 * v20) = v11;
            ++*(a3 + 8);
            ++v15;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unsigned int *mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  result = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (result)
  {

    return mlir::SymbolTable::lookupSymbolIn(result, a2);
  }

  return result;
}

uint64_t mlir::SymbolTable::lookupNearestSymbolFrom(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v7 = v9;
  v8 = 0x400000000;
  if (lookupSymbolInImpl(NearestSymbolTable, a2, &v7, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTable::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v6))
  {
    v4 = *(v7 + v8 - 1);
    if (v7 == v9)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (v7 != v9)
  {
LABEL_7:
    free(v7);
  }

  return v4;
}

BOOL mlir::detail::verifySymbolTable(mlir::detail *this, mlir::Operation *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) == 1)
  {
    v4 = ((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = *(v4 + 8);
    if (v5 != v4 && *(v5 + 8) == v4)
    {
      v55 = 0;
      v54[0] = 0;
      v54[1] = 0;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v31 = i - 8;
        if (!i)
        {
          v31 = 0;
        }

        v32 = (v31 + 32);
        for (j = *(v31 + 40); j != v32; j = *(j + 1))
        {
          ZinIrHalH13g::~ZinIrHalH13g(j);
          v35 = v34;
          if (!*(v34 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v34, "sym_name", 8), (v37 & 1) == 0))
          {
            InherentAttr = mlir::DictionaryAttr::get(v35 + 56, "sym_name", 8uLL);
          }

          if (InherentAttr)
          {
            v38 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
            v53 = v38;
            if (v38)
            {
              v61 = *(v35 + 24);
              llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(v54, &v53, &v61, &v51);
              if ((v52 & 1) == 0)
              {
                v57 = 257;
                mlir::Operation::emitError(v35, v56, &v61);
                v50[0] = mlir::OpaqueAttr::getAttrData(&v53);
                v50[1] = v39;
                if (v61)
                {
                  mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(&v62, "redefinition of symbol named '", v50, "'");
                }

                mlir::Diagnostic::attachNote(&v62, *(v51 + 8), 1);
              }
            }
          }
        }
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      v56[0] = &v61;
      v40 = *(this + 11);
      v41 = v40 & 0x7FFFFF;
      if ((v40 & 0x7FFFFF) != 0)
      {
        v42 = ((this + 16 * ((v40 >> 23) & 1) + ((v40 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }

      walkSymbolTable(v42, v41, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>, v56);
      v43 = v61;
      if (v63)
      {
        v44 = (v61 + 8);
        v45 = 16 * v63;
        do
        {
          if ((*(v44 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v46 = *v44;
            *v44 = 0;
            if (v46)
            {
              llvm::deallocate_buffer(*(v46 + 8), (16 * *(v46 + 24)));
            }
          }

          v44 += 2;
          v45 -= 16;
        }

        while (v45);
        v43 = v61;
        v47 = (16 * v63);
      }

      else
      {
        v47 = 0;
      }

      llvm::deallocate_buffer(v43, v47);
    }

    v57 = 257;
    mlir::Operation::emitOpError(this, v56, &v61);
    if (v61)
    {
      v58 = 3;
      v59 = "Operations with a 'SymbolTable' must have exactly one block";
      v60 = 59;
      v6 = &v58;
      v7 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v58 && v64 + 24 * v65 > &v58)
        {
          v49 = &v58 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v7 = v64;
          v6 = (v64 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v6 = &v58;
          v7 = v64;
        }
      }

      v8 = &v7[24 * v65];
      v9 = *v6;
      *(v8 + 2) = *(v6 + 2);
      *v8 = v9;
      ++v65;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v71;
        v13 = __p;
        if (v71 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v71 = v11;
        operator delete(v13);
      }

      v14 = v68;
      if (!v68)
      {
        goto LABEL_44;
      }

      v15 = v69;
      v16 = v68;
      if (v69 == v68)
      {
LABEL_43:
        v69 = v14;
        operator delete(v16);
LABEL_44:
        if (v64 != v67)
        {
          free(v64);
        }

        return v10;
      }

      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
        }
      }

      while (v15 != v14);
LABEL_42:
      v16 = v68;
      goto LABEL_43;
    }
  }

  else
  {
    v57 = 257;
    mlir::Operation::emitOpError(this, v56, &v61);
    if (v61)
    {
      v58 = 3;
      v59 = "Operations with a 'SymbolTable' must have exactly one region";
      v60 = 60;
      v19 = &v58;
      v20 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v58 && v64 + 24 * v65 > &v58)
        {
          v48 = &v58 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v20 = v64;
          v19 = (v64 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v19 = &v58;
          v20 = v64;
        }
      }

      v21 = &v20[24 * v65];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v65;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v71;
        v25 = __p;
        if (v71 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v71 = v23;
        operator delete(v25);
      }

      v14 = v68;
      if (!v68)
      {
        goto LABEL_44;
      }

      v26 = v69;
      v16 = v68;
      if (v69 == v68)
      {
        goto LABEL_43;
      }

      do
      {
        v28 = *--v26;
        v27 = v28;
        *v26 = 0;
        if (v28)
        {
          MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
        }
      }

      while (v26 != v14);
      goto LABEL_42;
    }
  }

  return v10;
}

uint64_t walkSymbolTable(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a1;
  v40[1] = *MEMORY[0x1E69E9840];
  v8 = a1 + 24 * a2;
  v38 = v40;
  v39 = 0x100000000;
  v9 = (24 * a2) >> 3;
  v10 = -1431655765 * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 < 2)
  {
    v11 = 0;
    if (a1 == v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v40, 0xAAAAAAAAAAAAAAABLL * v9, 8);
    v11 = v39;
    if (v7 == v8)
    {
      goto LABEL_10;
    }
  }

  v12 = (v38 + 8 * v11);
  v13 = 24 * a2 - 24;
  if (v13 < 0x48)
  {
    goto LABEL_35;
  }

  v14 = v13 / 0x18 + 1;
  v15 = v7;
  v12 += v14 & 0x1FFFFFFFFFFFFFFCLL;
  v7 += 24 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
  v16 = (v38 + 8 * v11 + 16);
  v17 = v14 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = vdupq_n_s64(v15);
    v16[-1] = vaddq_s64(v18, xmmword_1A75DA810);
    *v16 = vaddq_s64(v18, xmmword_1A75E28F0);
    v15 += 96;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
  {
LABEL_35:
    do
    {
      *v12++ = v7;
      v7 += 24;
    }

    while (v7 != v8);
  }

LABEL_10:
  v19 = v11 + v10;
  LODWORD(v39) = v19;
  if (v19)
  {
    v20 = 1;
    while (2)
    {
      v21 = *(v38 + v19 - 1);
      LODWORD(v39) = v19 - 1;
      mlir::Region::OpIterator::OpIterator(&v36, v21, 0);
      mlir::Region::OpIterator::OpIterator(v35, v21, 1);
      v22 = v37;
      v23 = v35[2];
      while (v22 != v23)
      {
        ZinIrHalH13g::~ZinIrHalH13g(v22);
        v25 = v24;
        v26 = a3(a4, v24);
        if ((v26 & 0x1FFFFFFFFLL) != 0x100000001)
        {
          v32 = v26 & 0xFF00000000;
          v20 = v26;
          v33 = v38;
          if (v38 != v40)
          {
            goto LABEL_29;
          }

          return v32 | v20;
        }

        {
          mlir::SymbolTable::getNearestSymbolTable();
        }

        if (((*(**(v25 + 48) + 32))(*(v25 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v27 = *(v25 + 44);
          v28 = v27 & 0x7FFFFF;
          if ((v27 & 0x7FFFFF) != 0)
          {
            v29 = v25 + 16 * ((v27 >> 23) & 1) + ((v27 >> 21) & 0x7F8) + 32 * *(v25 + 40) + 64;
            v30 = v39;
            v31 = 24 * v28;
            do
            {
              if (v30 >= HIDWORD(v39))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v40, v30 + 1, 8);
                v30 = v39;
              }

              *(v38 + v30) = v29;
              v30 = v39 + 1;
              LODWORD(v39) = v39 + 1;
              v29 += 24;
              v31 -= 24;
            }

            while (v31);
          }
        }

        mlir::Region::OpIterator::operator++(&v36);
        v22 = v37;
      }

      v19 = v39;
      if (v39)
      {
        continue;
      }

      break;
    }

    v32 = 0x100000000;
    v33 = v38;
    if (v38 != v40)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v32 = 0x100000000;
    v20 = 1;
    v33 = v38;
    if (v38 != v40)
    {
LABEL_29:
      free(v33);
    }
  }

  return v32 | v20;
}

uint64_t mlir::detail::verifySymbol(mlir::detail *this, mlir::Operation *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v70 = 257;
    mlir::Operation::emitOpError(this, v69, &v75);
    if (v75)
    {
      LODWORD(v71) = 3;
      v72 = "requires string attribute '";
      v73 = 27;
      v5 = &v71;
      v6 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v71 && v77 + 24 * v78 > &v71)
        {
          v62 = &v71 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v6 = v77;
          v5 = (v77 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v5 = &v71;
          v6 = v77;
        }
      }

      v7 = &v6[24 * v78];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v78;
      if (v75)
      {
        v74 = 261;
        v71 = "sym_name";
        v72 = 8;
        mlir::Diagnostic::operator<<(v76, &v71);
        if (v75)
        {
          LODWORD(v71) = 3;
          v72 = "'";
          v73 = 1;
          v9 = &v71;
          v10 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v71 && v77 + 24 * v78 > &v71)
            {
              v63 = &v71 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v10 = v77;
              v9 = (v77 + v63);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v9 = &v71;
              v10 = v77;
            }
          }

          v11 = &v10[24 * v78];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          ++v78;
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
    if (v75)
    {
      mlir::InFlightDiagnostic::report(&v75);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v84;
        v16 = __p;
        if (v84 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v84 = v14;
        operator delete(v16);
      }

      v17 = v81;
      if (!v81)
      {
        goto LABEL_94;
      }

      v18 = v82;
      v19 = v81;
      if (v82 == v81)
      {
LABEL_93:
        v82 = v17;
        operator delete(v19);
LABEL_94:
        if (v77 != v80)
        {
          free(v77);
        }

        return v13;
      }

      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
LABEL_92:
      v19 = v81;
      goto LABEL_93;
    }

    return v13;
  }

  if (!*(this + 47) || (v22 = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v23 & 1) == 0))
  {
    v22 = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (!v22)
  {
    return 1;
  }

  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v68 = v24;
  if (!v24)
  {
    v31 = v22;
    v70 = 257;
    mlir::Operation::emitOpError(this, v69, &v75);
    if (v75)
    {
      LODWORD(v71) = 3;
      v72 = "requires visibility attribute '";
      v73 = 31;
      v32 = &v71;
      v33 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v71 && v77 + 24 * v78 > &v71)
        {
          v65 = &v71 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v33 = v77;
          v32 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v32 = &v71;
          v33 = v77;
        }
      }

      v34 = &v33[24 * v78];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v78;
      if (v75)
      {
        v74 = 261;
        v71 = "sym_visibility";
        v72 = 14;
        mlir::Diagnostic::operator<<(v76, &v71);
        if (v75)
        {
          LODWORD(v71) = 3;
          v72 = "' to be a string attribute, but got ";
          v73 = 36;
          v36 = &v71;
          v37 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v71 && v77 + 24 * v78 > &v71)
            {
              v66 = &v71 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v37 = v77;
              v36 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v36 = &v71;
              v37 = v77;
            }
          }

          v38 = &v37[24 * v78];
          v39 = *v36;
          *(v38 + 2) = v36[2];
          *v38 = v39;
          ++v78;
          if (v75)
          {
            v40 = &v71;
            mlir::DiagnosticArgument::DiagnosticArgument(&v71, v31);
            v41 = v77;
            if (v78 >= v79)
            {
              if (v77 <= &v71 && v77 + 24 * v78 > &v71)
              {
                v67 = &v71 - v77;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
                v41 = v77;
                v40 = (v77 + v67);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
                v40 = &v71;
                v41 = v77;
              }
            }

            v42 = &v41[24 * v78];
            v43 = *v40;
            *(v42 + 2) = v40[2];
            *v42 = v43;
            ++v78;
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
    if (v75)
    {
      mlir::InFlightDiagnostic::report(&v75);
    }

    if (v86 == 1)
    {
      if (v85 != &v86)
      {
        free(v85);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v84;
        v46 = __p;
        if (v84 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v84 = v44;
        operator delete(v46);
      }

      v17 = v81;
      if (!v81)
      {
        goto LABEL_94;
      }

      v47 = v82;
      v19 = v81;
      if (v82 == v81)
      {
        goto LABEL_93;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
        }
      }

      while (v47 != v17);
      goto LABEL_92;
    }

    return v13;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v68);
  if (v26 != 7)
  {
    if (v26 != 6)
    {
      goto LABEL_72;
    }

    if (*AttrData != 1818391920 || *(AttrData + 4) != 25449)
    {
      v28 = *(AttrData + 4);
      v29 = *AttrData == 1953719662;
      v30 = 25701;
      goto LABEL_68;
    }

    return 1;
  }

  v28 = *(AttrData + 3);
  v29 = *AttrData == 1986622064;
  v30 = 1702125942;
LABEL_68:
  if (v29 && v28 == v30)
  {
    return 1;
  }

LABEL_72:
  v74 = 257;
  mlir::Operation::emitOpError(this, &v71, &v75);
  if (v75)
  {
    LODWORD(v69[0]) = 3;
    v69[1] = "visibility expected to be one of [public, private, nested], but got ";
    v69[2] = 74;
    v51 = v69;
    v52 = v77;
    if (v78 >= v79)
    {
      if (v77 <= v69 && v77 + 24 * v78 > v69)
      {
        v64 = v69 - v77;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v52 = v77;
        v51 = (v77 + v64);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
        v51 = v69;
        v52 = v77;
      }
    }

    v53 = &v52[24 * v78];
    v54 = *v51;
    *(v53 + 2) = v51[2];
    *v53 = v54;
    ++v78;
    if (v75)
    {
      mlir::Diagnostic::operator<<(v76, v68);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v84;
      v57 = __p;
      if (v84 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v84 = v55;
      operator delete(v57);
    }

    v17 = v81;
    if (!v81)
    {
      goto LABEL_94;
    }

    v58 = v82;
    v19 = v81;
    if (v82 == v81)
    {
      goto LABEL_93;
    }

    do
    {
      v60 = *--v58;
      v59 = v60;
      *v58 = 0;
      if (v60)
      {
        MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
      }
    }

    while (v58 != v17);
    goto LABEL_92;
  }

  return v13;
}

void mlir::SymbolTable::getSymbolUses(mlir::Block **this@<X0>, uint64_t a2@<X8>, unint64_t a3@<X1>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  collectSymbolScopes(&v15, this, a3);
  v4 = v15;
  if (v16)
  {
    v5 = 16 * v16;
    v6 = (v15 + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 2;
      v12[0] = v4;
      v12[1] = __p;
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 4) != 0 && v8)
      {
        v14[1] = v12;
        v13 = v14;
        if ((walkSymbolTable(v8, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v13) & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      {
LABEL_13:
        *a2 = 0;
        *(a2 + 24) = 0;
        if (v15 != v17)
        {
          free(v15);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return;
      }

      v4 += 16;
      v5 -= 16;
      if (!v5)
      {
        v4 = v15;
        break;
      }
    }
  }

  if (v4 != v17)
  {
    free(v4);
  }

  v9 = v11;
  *a2 = *__p;
  *(a2 + 16) = v9;
  *(a2 + 24) = 1;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::Block **this, mlir::Operation *a2, mlir::Operation *a3)
{
  v18[4] = *MEMORY[0x1E69E9840];
  collectSymbolScopes(&v16, this, a2);
  v3 = v16;
  if (!v17)
  {
    v6 = 1;
    if (v16 == v18)
    {
      return v6;
    }

    goto LABEL_15;
  }

  v4 = v16 + 16 * v17;
  do
  {
    while (1)
    {
      v13 = v3;
      v8 = *(v3 + 1);
      v9 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 4) == 0 || !v9)
      {
        break;
      }

      v15[0] = llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>;
      v15[1] = &v13;
      v14 = v15;
      v10 = walkSymbolTable(v9, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>, &v14);
      v6 = (v10 & 0x1FFFFFFFFLL) == 0x100000001;
      v3 += 16;
      if ((v10 & 0x1FFFFFFFFLL) != 0x100000001 || v3 == v4)
      {
        goto LABEL_14;
      }
    }

    v5 = walkSymbolUses(v9, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<BOOL symbolKnownUseEmptyImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v13);
    v6 = (v5 & 0x1FFFFFFFFLL) == 0x100000001;
    v3 += 16;
  }

  while ((v5 & 0x1FFFFFFFFLL) == 0x100000001 && v3 != v4);
LABEL_14:
  v3 = v16;
  if (v16 != v18)
  {
LABEL_15:
    free(v3);
  }

  return v6;
}

uint64_t mlir::SymbolTableCollection::getSymbolTable(mlir::SymbolTableCollection *this, mlir::Operation *a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>(this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

mlir::Operation *mlir::SymbolTableCollection::lookupNearestSymbolFrom(mlir::SymbolTableCollection *a1, mlir::SymbolTable *a2, uint64_t a3)
{
  result = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (result)
  {
    SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, result);
    v7 = *(SymbolTable + 24);
    if (v7)
    {
      v8 = *(SymbolTable + 8);
      v9 = v7 - 1;
      v10 = (v7 - 1) & ((a3 >> 4) ^ (a3 >> 9));
      v11 = *(v8 + 16 * v10);
      if (v11 == a3)
      {
        return *(v8 + 16 * v10 + 8);
      }

      v12 = 1;
      while (v11 != -4096)
      {
        v13 = v10 + v12++;
        v10 = v13 & v9;
        v11 = *(v8 + 16 * v10);
        if (v11 == a3)
        {
          return *(v8 + 16 * v10 + 8);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::SymbolTableCollection::lookupNearestSymbolFrom(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v8 = a1;
  v9 = v11;
  v10 = 0x400000000;
  if (lookupSymbolInImpl(NearestSymbolTable, a3, &v9, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v8))
  {
    v6 = *(v9 + v10 - 1);
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_7;
  }

  v6 = 0;
  if (v9 != v11)
  {
LABEL_7:
    free(v9);
  }

  return v6;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
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

uint64_t mlir::impl::parseOptionalVisibilityKeyword(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  v11[0] = xmmword_1E77C4D48;
  v11[1] = *&off_1E77C4D58;
  v12 = xmmword_1E77C4D68;
  if (((*(*a1 + 424))(a1, &v10, v11, 3) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  LOWORD(v12) = 261;
  v11[0] = v10;
  StringAttr = mlir::Builder::getStringAttr(v4, v11);
  v6 = (*(*a1 + 32))(a1);
  NamedAttr = mlir::Builder::getNamedAttr(v6, "sym_visibility", 0xEuLL, StringAttr);
  mlir::NamedAttrList::push_back(a2, NamedAttr, v8);
  return 1;
}

uint64_t mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v18 = v23;
  }

  v19 = *(v4 + 471);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>(void *a1, uint64_t a2)
{
  if (!mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 0x100000001;
  }

  InterfaceFor = mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  return (*InterfaceFor)(InterfaceFor, a2, *a1) & 1 | 0x100000000;
}

uint64_t mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v18 = v23;
  }

  v19 = *(v4 + 433);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t walkSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 44) & 0x7FFFFF) != 1)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 48);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v6 + 8);
    if (!mlir::SparseElementsAttr::getValues(&v8))
    {
      return 0;
    }

LABEL_4:
    walkSymbolRefs(a1, a2, a3);
  }

  if (*(v6 + 24))
  {
    goto LABEL_4;
  }

  return 0;
}

void walkSymbolRefs(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  v4 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8[0] = &unk_1F19FEE28;
  v8[1] = v5;
  v8[2] = &v4;
  v9 = v8;
  *(&v6[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v6, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  mlir::AttrTypeWalker::walkImpl(v6, AttrDictionary, 0);
  mlir::AttrTypeWalker::~AttrTypeWalker(v6);
}

uint64_t std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(void *a1, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19FEE28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EEclEOSG_(uint64_t a1, uint64_t a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 2 * ((**(a1 + 8))(*(*(a1 + 8) + 8), **(a1 + 16)) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS_9OperationEN4llvm12function_refIFNS_10WalkResultENS_11SymbolTable9SymbolUseEEEEE3$_0NS_13SymbolRefAttrENS_9AttributeES6_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<walkSymbolUses(llvm::MutableArrayRef<mlir::Region>,llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>)::$_0>(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) != 1)
  {
    goto LABEL_4;
  }

  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v2 + 8);
    v3 = a1;
    v4 = a2;
    Values = mlir::SparseElementsAttr::getValues(&v8);
    a2 = v4;
    v6 = Values;
    a1 = v3;
    if (!v6)
    {
      return 0;
    }

LABEL_4:
    walkSymbolRefs(a2, **a1, (*a1)[1]);
  }

  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  return 0;
}

void std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
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
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
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

BOOL isReferencePrefixOf(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  if (a2 == a1)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v19 = v4;
  if (v4)
  {
    mlir::OpaqueAttr::getAttrData(&v19);
    if (!v5)
    {
      return 0;
    }
  }

  Value = mlir::AffineMapAttr::getValue(&v17);
  if (Value != mlir::AffineMapAttr::getValue(&v18))
  {
    return 0;
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v17);
  v9 = v8;
  v10 = mlir::OpaqueAttr::getAttrData(&v18);
  if (v11 >= v9)
  {
    return 0;
  }

  if (v11)
  {
    v12 = 8 * v11 - 8;
    do
    {
      v14 = *AttrData++;
      v13 = v14;
      v15 = *v10++;
      v16 = v15 == v13;
      v2 = v15 == v13;
      v16 = !v16 || v12 == 0;
      v12 -= 8;
    }

    while (!v16);
    return v2;
  }

  return 1;
}

void collectSymbolScopes(mlir::Operation *a1, mlir::Block **a2, unint64_t a3)
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v7 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get((a2 + 7), "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v8 = InherentAttr;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v73 = v77;
  v74 = v77;
  v75 = 4;
  v76 = 0;
  v78 = v80;
  v79 = 0x400000000;
  ParentOp = a3;
  while (ParentOp != a2)
  {
    if (v74 != v73)
    {
      goto LABEL_12;
    }

    v13 = HIDWORD(v75);
    if (HIDWORD(v75))
    {
      v14 = 8 * HIDWORD(v75);
      v15 = v73;
      while (*v15 != ParentOp)
      {
        ++v15;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    }

LABEL_22:
    if (HIDWORD(v75) < v75)
    {
      ++HIDWORD(v75);
      v73[v13] = ParentOp;
      v11 = v79;
      if (v79 >= HIDWORD(v79))
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_12:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v73, ParentOp);
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = v79;
      if (v79 >= HIDWORD(v79))
      {
LABEL_24:
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v11 + 1, 8);
        v11 = v79;
      }
    }

    *(v78 + v11) = ParentOp;
    LODWORD(v79) = v79 + 1;
LABEL_15:
    v12 = ParentOp[2];
    if (v12)
    {
      ParentOp = mlir::Block::getParentOp(v12);
      if (ParentOp)
      {
        continue;
      }
    }

    v67 = a3;
    v16 = a2[2];
    if (v16)
    {
      v17 = mlir::Block::getParentOp(v16);
    }

    else
    {
      v17 = 0;
    }

    while (1)
    {
      v22 = v73;
      v23 = v74;
      if (v74 != v73)
      {
        break;
      }

      v26 = HIDWORD(v75);
      if (!HIDWORD(v75))
      {
LABEL_46:
        v24 = &v74[HIDWORD(v75)];
        v25 = v74;
LABEL_47:
        if (v25 == v23)
        {
          v30 = v26;
        }

        else
        {
          v30 = v75;
        }

        if (v24 != &v25[v30])
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      v29 = 8 * HIDWORD(v75);
      while (*v22 != v17)
      {
        v22 += 8;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_46;
        }
      }

      if (v22 != &v74[HIDWORD(v75)])
      {
        goto LABEL_57;
      }

LABEL_51:
      v31 = *(v17 + 16);
      if (!v31)
      {
        v17 = 0;
LABEL_57:
        v70 = v72;
        v71 = 0x200000001;
        Context = mlir::Attribute::getContext((a2 + 3));
        v33 = mlir::SymbolRefAttr::get(v8);
        v72[0] = v33;
        v34 = a2[2];
        if (v34)
        {
          v35 = mlir::Block::getParentOp(v34);
          if (v35 != v17)
          {
            goto LABEL_59;
          }

LABEL_91:
          v57 = a3;
          if (v17 != a3)
          {
            goto LABEL_92;
          }

          goto LABEL_93;
        }

        v35 = 0;
        if (!v17)
        {
          goto LABEL_91;
        }

LABEL_59:
        v81 = v83;
        v83[0] = v33;
        v82 = 0x100000001;
        v69 = 261;
        v68[0] = "sym_name";
        v68[1] = 8;
        v36 = mlir::StringAttr::get(Context, v68);
        {
          goto LABEL_62;
        }

        while (2)
        {
          mlir::SymbolTable::getNearestSymbolTable();
LABEL_62:
          if (!(*(**(v35 + 48) + 32))(*(v35 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
LABEL_85:
            v55 = 0;
            v56 = v81;
            if (v81 == v83)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          v68[0] = v36;
          v37 = v36;
          if (*(v35 + 47))
          {
            AttrData = mlir::OpaqueAttr::getAttrData(v68);
            v40 = mlir::Operation::getInherentAttr(v35, AttrData, v39);
            if ((v41 & 1) == 0)
            {
              v37 = v68[0];
              goto LABEL_66;
            }
          }

          else
          {
LABEL_66:
            v40 = mlir::DictionaryAttr::get(v35 + 56, v37);
          }

          v42 = v40;
          if (!v40 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            goto LABEL_85;
          }

          v43 = mlir::SymbolRefAttr::get(v40, v81, v82);
          v44 = v71;
          if (v71 >= HIDWORD(v71))
          {
            v54 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 8);
            v43 = v54;
            v44 = v71;
          }

          *(v70 + v44) = v43;
          LODWORD(v71) = v71 + 1;
          v45 = *(v35 + 16);
          if (v45)
          {
            v35 = mlir::Block::getParentOp(v45);
            if (v35 == v17)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v35 = 0;
            if (!v17)
            {
LABEL_111:
              v55 = 1;
              v56 = v81;
              if (v81 == v83)
              {
LABEL_87:
                v57 = v67;
                if (v17 != v67)
                {
                  if ((v55 & 1) == 0)
                  {
                    *a1 = a1 + 16;
                    *(a1 + 1) = 0x200000000;
                    goto LABEL_102;
                  }

LABEL_92:
                  *(a1 + 2) = *(v70 + v71 - 1);
                  *a1 = a1 + 16;
                  *(a1 + 3) = v57 & 0xFFFFFFFFFFFFFFFBLL;
                  *(a1 + 1) = 0x200000001;
LABEL_102:
                  if (v70 != v72)
                  {
                    free(v70);
                  }

                  v21 = v78;
                  if (v78 != v80)
                  {
LABEL_105:
                    free(v21);
                  }

                  goto LABEL_106;
                }

LABEL_93:
                *a1 = a1 + 16;
                *(a1 + 1) = 0x200000000;
                v58 = a2[2];
                if (v58)
                {
                  v58 = mlir::Block::getParentOp(v58);
                }

                if (v71)
                {
                  v59 = 0;
                  v60 = 8 * v71;
                  do
                  {
                    v61 = *(v70 + v59);
                    v62 = *(v58 + 40);
                    v63 = *(v58 + 44);
                    v64 = *(a1 + 2);
                    if (v64 >= *(a1 + 3))
                    {
                      v66 = v58;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v64 + 1, 16);
                      v58 = v66;
                      v64 = *(a1 + 2);
                    }

                    v65 = (*a1 + 16 * v64);
                    *v65 = v61;
                    v65[1] = (((v58 + 16 * ((v63 >> 23) & 1) + ((v63 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v62) | 4;
                    ++*(a1 + 2);
                    v58 = *(v58 + 16);
                    if (v58)
                    {
                      v58 = mlir::Block::getParentOp(v58);
                    }

                    v59 += 8;
                  }

                  while (v60 != v59);
                }

                goto LABEL_102;
              }

LABEL_86:
              free(v56);
              goto LABEL_87;
            }
          }

          v46 = v81;
          v47 = mlir::SymbolRefAttr::get(v42);
          v48 = v81;
          v49 = v82;
          if (&v81[2 * v82] == v46)
          {
            if (v82 >= HIDWORD(v82))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v82 + 1, 8);
              v49 = v82;
              v48 = v81;
            }

            *&v48[8 * v49] = v47;
            LODWORD(v82) = v82 + 1;
            {
              continue;
            }
          }

          else
          {
            if (v82 >= HIDWORD(v82))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v82 + 1, 8);
              v50 = v81;
              v49 = v82;
            }

            else
            {
              v50 = v81;
            }

            v51 = (v50 + v46 - v48);
            *&v50[2 * v49] = *&v50[2 * v49 - 2];
            v52 = v82;
            v53 = &v81[2 * v82 - 2];
            if (v53 != v51)
            {
              memmove(v51 + 1, v51, v53 - v51);
              v52 = v82;
            }

            LODWORD(v82) = v52 + 1;
            *v51 = v47;
            {
              continue;
            }
          }

          goto LABEL_62;
        }
      }

      v17 = mlir::Block::getParentOp(v31);
      if (!v17)
      {
        goto LABEL_57;
      }
    }

    v24 = llvm::SmallPtrSetImplBase::doFind(&v73, v17);
    v23 = v73;
    v25 = v74;
    v26 = HIDWORD(v75);
    if (!v24)
    {
      v27 = v75;
      if (v74 == v73)
      {
        v27 = HIDWORD(v75);
        v28 = HIDWORD(v75);
      }

      else
      {
        v28 = v75;
      }

      if (&v74[v27] != &v74[v28])
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    v18 = mlir::Block::getParentOp(v18);
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v18, v7);
  v20 = a2[2];
  if (v20)
  {
    v20 = mlir::Block::getParentOp(v20);
  }

  if (NearestSymbolTable == v20)
  {
    *(a1 + 2) = mlir::SymbolRefAttr::get(v8);
    *a1 = a1 + 16;
    *(a1 + 3) = a3 & 0xFFFFFFFFFFFFFFFBLL;
    *(a1 + 1) = 0x200000001;
    v21 = v78;
    if (v78 != v80)
    {
      goto LABEL_105;
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
    v21 = v78;
    if (v78 != v80)
    {
      goto LABEL_105;
    }
  }

LABEL_106:
  if (v74 != v73)
  {
    free(v74);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (isReferencePrefixOf(**a1, a3))
  {
    std::vector<mlir::SymbolTable::SymbolUse>::push_back[abi:nn200100](*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t generateNewRefAttr(void *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v14 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v15 = v3;
  if (v3)
  {
    mlir::OpaqueAttr::getAttrData(&v15);
    if (!v4)
    {
      return a2;
    }
  }

  AttrData = mlir::OpaqueAttr::getAttrData(&v14);
  v7 = v5;
  v15 = v17;
  v16 = 0x200000000;
  if (v5 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v5, 8);
    v8 = v16;
    v9 = v15;
LABEL_10:
    memcpy(&v9[v8], AttrData, 8 * v7);
    v10 = v16;
    v11 = v15;
    goto LABEL_11;
  }

  if (v5)
  {
    v8 = 0;
    v9 = v17;
    goto LABEL_10;
  }

  v10 = 0;
  v11 = v17;
LABEL_11:
  LODWORD(v16) = v10 + v7;
  v11[(v10 + v7) - 1] = a2;
  Value = mlir::AffineMapAttr::getValue(&v14);
  a2 = mlir::SymbolRefAttr::get(Value, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  return a2;
}

uint64_t walkSymbolTable(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a2(a3, a1);
  if ((v6 & 0x1FFFFFFFFLL) == 0x100000001)
  {
    {
      walkSymbolTable();
    }

    if (((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v7 = *(a1 + 44);
      v8 = v7 & 0x7FFFFF;
      if ((v7 & 0x7FFFFF) != 0)
      {
        v9 = ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v6 = walkSymbolTable(v9, v8, a2, a3);
    }
  }

  return v6 & 0xFFFFFFFFFFLL;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE7__cloneEPNS0_6__baseIS10_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19FEEC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EEclEOSJ_(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v18 = *a2;
    if (*a1[1] == v3)
    {
      v3 = *a1[2];
    }

    else
    {
      v6 = a3;
      v7 = isReferencePrefixOf(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::OpaqueAttr::getAttrData(a1[1]);
        v9 = v8;
        AttrData = mlir::OpaqueAttr::getAttrData(&v18);
        v12 = v10;
        if (!v9)
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], AttrData, v10);
LABEL_15:
          a3 = v6;
          goto LABEL_16;
        }

        v19 = v21;
        v20 = 0x400000000;
        if (v10 < 5)
        {
          if (!v10)
          {
            v15 = 0;
            v16 = v21;
LABEL_13:
            LODWORD(v20) = v15 + v12;
            v16[v9 - 1] = *a1[4];
            Value = mlir::AffineMapAttr::getValue(&v18);
            v3 = mlir::SymbolRefAttr::get(Value, v19, v20);
            if (v19 != v21)
            {
              free(v19);
            }

            goto LABEL_15;
          }

          v13 = 0;
          v14 = v21;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v10, 8);
          v13 = v20;
          v14 = v19;
        }

        memcpy(&v14[v13], AttrData, 8 * v12);
        v15 = v20;
        v16 = v19;
        goto LABEL_13;
      }
    }

LABEL_16:
    *a3 = v3;
    *(a3 + 8) = 2;
    v4 = 1;
    goto LABEL_17;
  }

  v4 = 0;
  *a3 = 0;
LABEL_17:
  *(a3 + 16) = v4;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS_9OperationES6_EN4llvm13LogicalResultET_NS_10StringAttrEPT0_EUlNS_13SymbolRefAttrEE_SE_NS_9AttributeENSt3__14pairISG_NS_10WalkResultEEEEENSH_9enable_ifIXoontsr3stdE9is_same_vISC_T1_Entsr3stdE16is_convertible_vIT2_NSH_8optionalINSI_ISM_SJ_EEEEEEvE4typeEOSA_EUlSG_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>(mlir::SymbolTableCollection **a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(*a1, a2);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::grow(uint64_t a1, int a2)
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
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = -4096;
        *v16 = -4096;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = &v5[2 * v8];
      v10 = v5 + 2;
      v11 = v8;
      do
      {
        *(v10 - 2) = -4096;
        *v10 = -4096;
        v10 += 4;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[2 * v4];
    do
    {
      *v9 = -4096;
      v9 += 2;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v13 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v14 = *(result + 16) - 1;
        v15 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v16 = (*result + 16 * v15);
        v17 = *v16;
        if (v13 != *v16)
        {
          v20 = 0;
          v21 = 1;
          while (v17 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v17 == -8192;
            }

            if (v22)
            {
              v20 = v16;
            }

            v23 = v15 + v21++;
            v15 = v23 & v14;
            v16 = (*result + 16 * (v23 & v14));
            v17 = *v16;
            if (v13 == *v16)
            {
              goto LABEL_15;
            }
          }

          if (v20)
          {
            v16 = v20;
          }
        }

LABEL_15:
        v18 = v3[1];
        v3[1] = 0;
        *v16 = v13;
        v16[1] = v18;
        ++*(result + 8);
        v19 = v3[1];
        v3[1] = 0;
        if (v19)
        {
          llvm::deallocate_buffer(*(v19 + 8), (16 * *(v19 + 24)));
        }
      }

      v3 += 2;
    }

    while (v3 != a3);
  }

  return result;
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
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ElementsAttr::isSplat(v4);
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
    FunctionType = mlir::FunctionOpInterface::getFunctionType(v6);
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(FunctionType);
    v4 = result;
    v7[0] = result;
    v7[1] = v5;
    if (result)
    {
      result = mlir::ElementsAttr::isSplat(v7);
    }

    if (!v4)
    {
      return FunctionType;
    }
  }

  return result;
}

void *mlir::getElementTypeOrSelf(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ElementsAttr::isSplat(v4);
  }

  else
  {
    return v1;
  }
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
  v17[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v17[1] = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  v16[0] = v4;
  v16[1] = v5;
  if (v17[0])
  {
    if (v4)
    {
      if (!mlir::ElementsAttr::getShapedType(v17) || !mlir::ElementsAttr::getShapedType(v16))
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

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
  v80[16] = *MEMORY[0x1E69E9840];
  v78 = v80;
  v79 = 0x800000000;
  if (a2 < 9)
  {
    if (!a2)
    {
      LODWORD(v79) = 0;
LABEL_11:
      v15 = 1;
      goto LABEL_111;
    }

    v4 = 0;
    v5 = v80;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, a2, 16);
    v4 = v79;
    v5 = v78;
  }

  v6 = 0;
  v7 = &v5[2 * v4];
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    *v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
    v7[1] = v9;
    v7 += 2;
    ++v6;
  }

  while (a2 != v6);
  v10 = v78;
  v11 = (v79 + a2);
  LODWORD(v79) = v79 + a2;
  if (!v79)
  {
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 16 * v11;
  v14 = v78 + 16 * v11;
  while (!*(v78 + v12))
  {
    v12 += 16;
    if (v13 == v12)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
  do
  {
    if (!*(v78 + v16))
    {
LABEL_27:
      v15 = 0;
      goto LABEL_111;
    }

    v16 += 16;
  }

  while (v13 != v16);
  if (!a2)
  {
    goto LABEL_30;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    v20 = mlir::TypeRange::dereference_iterator(a1, v19);
    if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v75 = v21;
    if (!v21 || (RawStringData = mlir::DenseElementsAttr::getRawStringData(&v75), v24 = v23, v25 = 1, (v26 = memchr(RawStringData, 1, v23)) == 0) || v26 == &RawStringData[v24])
    {
      v18 = 1;
      v25 = v17;
    }

    if (v25 & 1) != 0 && (v18)
    {
      goto LABEL_27;
    }

    ++v19;
    v17 = v25;
  }

  while (a2 != v19);
  v10 = v78;
  v14 = v78 + 16 * v79;
  if (v79)
  {
LABEL_30:
    while (1)
    {
      *v73 = *v10;
      if (mlir::ElementsAttr::getShapedType(v73))
      {
        break;
      }

      if (++v10 == v14)
      {
        v10 = v14;
        break;
      }
    }

    v27 = v10;
    v10 = v78;
    v28 = v79;
  }

  else
  {
    v28 = 0;
    v27 = v78;
  }

  v29 = &v10[v28];
  v75 = v77;
  v76 = 0x800000000;
  if (v27 == v29)
  {
    v32 = 0;
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = 0;
    v31 = v27;
    do
    {
      do
      {
        if (++v31 == v14)
        {
          break;
        }

        *v73 = *v31;
      }

      while ((mlir::ElementsAttr::getShapedType(v73) & 1) == 0);
      ++v30;
    }

    while (v31 != v29);
    v32 = v76;
    v33 = v30 + v76;
    if (v33 > HIDWORD(v76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v33, 16);
      v32 = v76;
    }
  }

  if (v27 != v29)
  {
    v34 = (v75 + 16 * v32);
    do
    {
      *v34 = *v27;
      do
      {
        if (++v27 == v14)
        {
          break;
        }

        *v73 = *v27;
      }

      while ((mlir::ElementsAttr::getShapedType(v73) & 1) == 0);
      ++v34;
    }

    while (v27 != v29);
    v32 = v76;
  }

  LODWORD(v76) = v32 + v30;
  if (!(v32 + v30))
  {
    goto LABEL_104;
  }

  mlir::ShapedType::getShape(v75);
  v36 = v35;
  if (!v76)
  {
LABEL_55:
    if (v36 >= 1)
    {
      v40 = 0;
      v41 = 0;
      while (1)
      {
        v42 = v75;
        v43 = (v75 + 16 * v76);
        if (!v76)
        {
          break;
        }

        v44 = 16 * v76;
        while (1)
        {
          v72 = *v42;
          mlir::ShapedType::getShape(&v72);
          if (v45 >= v40)
          {
            break;
          }

          v42 = (v42 + 16);
          v44 -= 16;
          if (!v44)
          {
            v42 = v43;
            break;
          }
        }

        v46 = v42;
        v42 = (v75 + 16 * v76);
        v73[0] = v74;
        v73[1] = 0x800000000;
        if (v46 == v42)
        {
          goto LABEL_101;
        }

        v47 = 0;
        v48 = v46;
        do
        {
          do
          {
            v48 = (v48 + 16);
            if (v48 == v43)
            {
              break;
            }

            v72 = *v48;
            mlir::ShapedType::getShape(&v72);
          }

          while (v49 < v40);
          ++v47;
        }

        while (v48 != v42);
        v50 = v73[1];
        v51 = v47 + LODWORD(v73[1]);
        if (v51 > HIDWORD(v73[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v73, v74, v51, 8);
          v50 = v73[1];
        }

LABEL_70:
        v52 = v73[0];
        if (v46 != v42)
        {
          v53 = v73[0] + 8 * v50;
          do
          {
            v54 = *v46;
            v46 = (v46 + 16);
            v72 = v54;
            for (*v53 = *(mlir::ShapedType::getShape(&v72) + 8 * v40); v46 != v43; v46 = (v46 + 16))
            {
              v72 = *v46;
              mlir::ShapedType::getShape(&v72);
              if (v55 >= v40)
              {
                break;
              }
            }

            ++v53;
          }

          while (v46 != v42);
          v50 = v73[1];
          v52 = v73[0];
        }

        v56 = v50 + v47;
        LODWORD(v73[1]) = v50 + v47;
        if (v50 + v47)
        {
          v57 = *v52;
          v58 = 8 * v56;
          v59 = v58;
          v60 = v52;
          do
          {
            v62 = *v60++;
            v61 = v62;
            if (v62 != 0x8000000000000000)
            {
              v57 = v61;
            }

            v59 -= 8;
          }

          while (v59);
          v63 = v58 - 8;
          v64 = v52;
          do
          {
            v66 = *v64++;
            v65 = v66;
            v68 = v66 == 0x8000000000000000 || v57 == v65;
            v69 = !v68 || v63 == 0;
            v63 -= 8;
          }

          while (!v69);
          v70 = !v68;
          if (v52 != v74)
          {
LABEL_96:
            free(v52);
          }
        }

        else
        {
          v70 = 0;
          if (v52 != v74)
          {
            goto LABEL_96;
          }
        }

        if (v70)
        {
          v15 = 0;
          goto LABEL_109;
        }

        v40 = ++v41;
        if (v36 <= v41)
        {
          v15 = 1;
          goto LABEL_109;
        }
      }

      v46 = v75;
      v73[0] = v74;
      v73[1] = 0x800000000;
LABEL_101:
      v50 = 0;
      LODWORD(v47) = 0;
      goto LABEL_70;
    }

LABEL_104:
    v15 = 1;
    goto LABEL_109;
  }

  v37 = v75;
  v38 = 16 * v76;
  while (1)
  {
    *v73 = *v37;
    mlir::ShapedType::getShape(v73);
    if (v39 != v36)
    {
      break;
    }

    v37 = (v37 + 16);
    v38 -= 16;
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  v15 = 0;
LABEL_109:
  if (v75 != v77)
  {
    free(v75);
  }

LABEL_111:
  if (v78 != v80)
  {
    free(v78);
  }

  return v15;
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

void mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(void *a1, int *a2, unint64_t a3)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x600000000;
  if (!a3)
  {
    v9 = v18[0];
    *a1 = v18[0];
    *v9 = 0;
    v9[1] = a1;
    v10 = v18;
    v7 = v18;
    goto LABEL_15;
  }

  if (a3 < 7)
  {
    v6 = 0;
    v7 = v18;
    v8 = a3;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, a3, 8);
  v6 = v17;
  v7 = v16;
  v8 = a3 - v17;
  if (a3 != v17)
  {
LABEL_7:
    bzero(&v7[v6], 8 * v8);
  }

  LODWORD(v17) = a3;
  v11 = a3;
  v12 = a1;
  do
  {
    v12 = *v12;
    v13 = *a2++;
    v7[v13] = v12;
    --v11;
  }

  while (v11);
  v9 = *v7;
  *a1 = *v7;
  *v9 = 0;
  v9[1] = a1;
  if (a3 == 1)
  {
    goto LABEL_11;
  }

  v10 = &v7[a3];
LABEL_15:
  v14 = v7 + 1;
  v15 = v9;
  do
  {
    v9 = *v14;
    *v15 = *v14;
    if (v9)
    {
      v9[1] = v15;
    }

    ++v14;
    v15 = v9;
  }

  while (v14 != v10);
LABEL_11:
  *v9 = 0;
  if (v7 != v18)
  {
    free(v7);
  }
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

__n128 mlir::ValueRange::getTypes@<Q0>(__n128 *__return_ptr a1@<X8>, __n128 *this@<X0>)
{
  a1->n128_u64[1] = 0;
  result = *this;
  a1->n128_u64[0] = this->n128_u64[0];
  a1[1] = result;
  return result;
}

uint64_t anonymous namespace::OperationVerifier::verifyOpAndDominance(_anonymous_namespace_::OperationVerifier *this, mlir::Operation *a2)
{
  v278 = *MEMORY[0x1E69E9840];
  v250 = v252;
  v252[0] = a2;
  v2 = 1;
  v251 = 0x600000001;
  while (1)
  {
    while (1)
    {
      v3 = v250 + 8 * v2;
      v4 = *(v3 - 1);
      *(v3 - 1) = v4 | 2;
      v5 = v4 & 0xFFFFFFFFFFFFFFF8;
      if ((v4 & 2) == 0)
      {
        break;
      }

      if ((v4 & 4) == 0)
      {
        DiscardableAttrDictionary = &v255;
        v254 = 0x600000000;
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

                v17 = (v16 + 32);
                for (j = *(v16 + 40); j != v17; j = *(j + 1))
                {
                  ZinIrHalH13g::~ZinIrHalH13g(j);
                  if ((*(v19 + 44) & 0x7FFFFF) != 0)
                  {
                    v20 = v19;
                    {
                    }

                    if ((*(**(v20 + 48) + 32))(*(v20 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v21 = v254;
                      if (v254 >= HIDWORD(v254))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&DiscardableAttrDictionary, &v255, v254 + 1, 8);
                        v21 = v254;
                      }

                      *(DiscardableAttrDictionary + v21) = v20;
                      LODWORD(v254) = v254 + 1;
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
        v51 = DiscardableAttrDictionary;
        v52 = v254;
        v242 = this;
        v243 = DiscardableAttrDictionary;
        v247 = v254;
        if (v254)
        {
          v53 = Context;
          if (mlir::MLIRContext::isMultithreadingEnabled(Context) && v247 > 1)
          {
            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(&v238, v53);
          }

          v83 = &v51[8 * v52];
          v84 = v243;
          if (v243 != v83)
          {
            {
              v84 = v243 + 8;
              v243 = v84;
              if (v84 == v83)
              {
                goto LABEL_148;
              }
            }

            v43 = 0;
LABEL_150:
            v86 = DiscardableAttrDictionary;
            if (DiscardableAttrDictionary == &v255)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }
        }

LABEL_148:
        v85 = *(v5 + 48);
        if (*(v85 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v43 = (*(*v85 + 72))(v85, v5);
          goto LABEL_150;
        }

        *&v266 = *(v85 + 8);
        Values = mlir::SparseElementsAttr::getValues(&v266);
        if (Values)
        {
          if ((*(Values + 40) & 1) == 0)
          {
            v88 = Values;
            v238 = "unregistered operation '";
            v241 = 259;
            mlir::Operation::emitError(v5, &v238, &v266);
            if (v266)
            {
              mlir::Diagnostic::operator<<(&v266 + 8, *(v5 + 48));
              if (v266)
              {
                LODWORD(v243) = 3;
                v244 = "' found in dialect ('";
                v245 = 21;
                v89 = v268;
                if (v269 >= HIDWORD(v269))
                {
                  if (v268 <= &v243 && v268 + 24 * v269 > &v243)
                  {
                    v170 = &v243 - v268;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                    v89 = v268;
                    v90 = (v268 + v170);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                    v90 = &v243;
                    v89 = v268;
                  }
                }

                else
                {
                  v90 = &v243;
                }

                v91 = &v89[24 * v269];
                v92 = *v90;
                *(v91 + 2) = v90[2];
                *v91 = v92;
                LODWORD(v269) = v269 + 1;
                if (v266)
                {
                  v93 = *(v88 + 8);
                  v94 = *(v88 + 16);
                  v246 = 261;
                  v243 = v93;
                  v244 = v94;
                  mlir::Diagnostic::operator<<(&v266 + 8, &v243);
                  if (v266)
                  {
                    LODWORD(v243) = 3;
                    v244 = "') that does not allow unknown operations";
                    v245 = 41;
                    v95 = v268;
                    if (v269 >= HIDWORD(v269))
                    {
                      if (v268 <= &v243 && v268 + 24 * v269 > &v243)
                      {
                        v173 = &v243 - v268;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                        v95 = v268;
                        v96 = (v268 + v173);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                        v96 = &v243;
                        v95 = v268;
                      }
                    }

                    else
                    {
                      v96 = &v243;
                    }

                    v97 = &v95[24 * v269];
                    v98 = *v96;
                    *(v97 + 2) = v96[2];
                    *v97 = v98;
                    LODWORD(v269) = v269 + 1;
                  }
                }
              }
            }

            v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
            if (v266)
            {
              mlir::InFlightDiagnostic::report(&v266);
            }

            if (v277[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v277)
            {
              free(__dst);
            }

            v99 = __p;
            if (__p)
            {
              v100 = *(&__p + 1);
              v101 = __p;
              if (*(&__p + 1) != __p)
              {
                do
                {
                  v100 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v100 - 1);
                }

                while (v100 != v99);
                v101 = __p;
              }

              *(&__p + 1) = v99;
              operator delete(v101);
            }

            v102 = v271;
            if (v271)
            {
              v103 = *(&v271 + 1);
              v104 = v271;
              if (*(&v271 + 1) == v271)
              {
                goto LABEL_299;
              }

              do
              {
                v106 = *--v103;
                v105 = v106;
                *v103 = 0;
                if (v106)
                {
                  MEMORY[0x1AC55A040](v105, 0x1000C8077774924);
                }
              }

              while (v103 != v102);
LABEL_298:
              v104 = v271;
              goto LABEL_299;
            }

            goto LABEL_300;
          }
        }

        else
        {
          v144 = mlir::Attribute::getContext((v5 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v144) & 1) == 0)
          {
            v246 = 257;
            mlir::Operation::emitOpError(v5, &v243, &v266);
            if (v266)
            {
              LODWORD(v238) = 3;
              v239 = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v240 = 178;
              v145 = v268;
              if (v269 >= HIDWORD(v269))
              {
                if (v268 <= &v238 && v268 + 24 * v269 > &v238)
                {
                  v171 = &v238 - v268;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                  v145 = v268;
                  v146 = (v268 + v171);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                  v146 = &v238;
                  v145 = v268;
                }
              }

              else
              {
                v146 = &v238;
              }

              v147 = &v145[24 * v269];
              v148 = *v146;
              *(v147 + 2) = v146[2];
              *v147 = v148;
              LODWORD(v269) = v269 + 1;
            }

            v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
            if (v266)
            {
              mlir::InFlightDiagnostic::report(&v266);
            }

            if (v277[0] != 1)
            {
              goto LABEL_150;
            }

            if (__dst != v277)
            {
              free(__dst);
            }

            v149 = __p;
            if (__p)
            {
              v150 = *(&__p + 1);
              v151 = __p;
              if (*(&__p + 1) != __p)
              {
                do
                {
                  v150 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v150 - 1);
                }

                while (v150 != v149);
                v151 = __p;
              }

              *(&__p + 1) = v149;
              operator delete(v151);
            }

            v102 = v271;
            if (v271)
            {
              v152 = *(&v271 + 1);
              v104 = v271;
              if (*(&v271 + 1) != v271)
              {
                do
                {
                  v154 = *--v152;
                  v153 = v154;
                  *v152 = 0;
                  if (v154)
                  {
                    MEMORY[0x1AC55A040](v153, 0x1000C8077774924);
                  }
                }

                while (v152 != v102);
                goto LABEL_298;
              }

LABEL_299:
              *(&v271 + 1) = v102;
              operator delete(v104);
            }

LABEL_300:
            if (v268 != v270)
            {
              free(v268);
            }

            goto LABEL_150;
          }
        }

        v43 = 1;
        goto LABEL_150;
      }

      mlir::SuccessorRange::SuccessorRange(&v266, (v4 & 0xFFFFFFFFFFFFFFF8));
      v36 = *(&v266 + 1);
      if (*(&v266 + 1))
      {
        v37 = (v266 + 24);
        while (1)
        {
          Parent = mlir::Block::getParent(*v37);
          if (Parent != mlir::Block::getParent(v5))
          {
            break;
          }

          v37 += 4;
          if (!--v36)
          {
            goto LABEL_62;
          }
        }

        ZinIrHalH13g::~ZinIrHalH13g(*(v5 + 32));
        DiscardableAttrDictionary = "branching to block of a different region";
        LOWORD(v257) = 259;
        mlir::Operation::emitOpError(v70, &DiscardableAttrDictionary, &v266);
        v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
        if (v266)
        {
          mlir::InFlightDiagnostic::report(&v266);
        }

        if (v277[0])
        {
          if (__dst != v277)
          {
            free(__dst);
          }

          v71 = __p;
          if (__p)
          {
            v72 = *(&__p + 1);
            v73 = __p;
            if (*(&__p + 1) != __p)
            {
              do
              {
                v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
              }

              while (v72 != v71);
              v73 = __p;
            }

            *(&__p + 1) = v71;
            operator delete(v73);
          }

          v47 = v271;
          if (v271)
          {
            v74 = *(&v271 + 1);
            v49 = v271;
            if (*(&v271 + 1) != v271)
            {
              do
              {
                v76 = *--v74;
                v75 = v76;
                *v74 = 0;
                if (v76)
                {
                  MEMORY[0x1AC55A040](v75, 0x1000C8077774924);
                }
              }

              while (v74 != v47);
              goto LABEL_274;
            }

LABEL_275:
            *(&v271 + 1) = v47;
            operator delete(v49);
          }

          goto LABEL_276;
        }

        goto LABEL_152;
      }

LABEL_62:
      if ((mayBeValidWithoutTerminator(v5) & 1) == 0)
      {
        ZinIrHalH13g::~ZinIrHalH13g(*(v5 + 32));
        v40 = v39;
        {
          v41 = *(v39 + 48);
          if (v41[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v41 = *(v40 + 48);
          if (v41[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_153;
          }
        }

        if (((*(*v41 + 4))(v41, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          ZinIrHalH13g::~ZinIrHalH13g(*(v5 + 32));
          DiscardableAttrDictionary = "block with no terminator, has ";
          LOWORD(v257) = 259;
          mlir::Operation::emitError(v42, &DiscardableAttrDictionary, &v266);
          if (v266)
          {
            mlir::Diagnostic::operator<<((&v266 + 8), v40);
          }

          v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
          if (v266)
          {
            mlir::InFlightDiagnostic::report(&v266);
          }

          if (v277[0] != 1)
          {
            goto LABEL_152;
          }

          if (__dst != v277)
          {
            free(__dst);
          }

          v44 = __p;
          if (__p)
          {
            v45 = *(&__p + 1);
            v46 = __p;
            if (*(&__p + 1) != __p)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = __p;
            }

            *(&__p + 1) = v44;
            operator delete(v46);
          }

          v47 = v271;
          if (v271)
          {
            v48 = *(&v271 + 1);
            v49 = v271;
            if (*(&v271 + 1) == v271)
            {
              goto LABEL_275;
            }

            do
            {
              v55 = *--v48;
              v54 = v55;
              *v48 = 0;
              if (v55)
              {
                MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
              }
            }

            while (v48 != v47);
LABEL_274:
            v49 = v271;
            goto LABEL_275;
          }

LABEL_276:
          v86 = v268;
          if (v268 == v270)
          {
LABEL_152:
            if ((v43 & 1) == 0)
            {
              goto LABEL_351;
            }

            goto LABEL_153;
          }

LABEL_151:
          free(v86);
          goto LABEL_152;
        }
      }

LABEL_153:
      v2 = v251 - 1;
      LODWORD(v251) = v2;
      if (!v2)
      {
        goto LABEL_384;
      }
    }

    if ((v4 & 4) == 0)
    {
      break;
    }

    v22 = *(v5 + 48);
    v23 = *(v5 + 56);
    if (v22 != v23)
    {
      while (*(*v22 + 16) == v5)
      {
        v22 += 8;
        if (v22 == v23)
        {
          goto LABEL_39;
        }
      }

      v63 = *(*v22 + 32);
      DiscardableAttrDictionary = "block argument not owned by block";
      LOWORD(v257) = 259;
      mlir::emitError(v63, &DiscardableAttrDictionary, &v266);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
      if (v266)
      {
        mlir::InFlightDiagnostic::report(&v266);
      }

      if (v277[0])
      {
        if (__dst != v277)
        {
          free(__dst);
        }

        v64 = __p;
        if (__p)
        {
          v65 = *(&__p + 1);
          v66 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
            }

            while (v65 != v64);
            v66 = __p;
          }

          *(&__p + 1) = v64;
          operator delete(v66);
        }

        v33 = v271;
        if (v271)
        {
          v67 = *(&v271 + 1);
          v35 = v271;
          if (*(&v271 + 1) == v271)
          {
            goto LABEL_200;
          }

          do
          {
            v69 = *--v67;
            v68 = v69;
            *v67 = 0;
            if (v69)
            {
              MEMORY[0x1AC55A040](v68, 0x1000C8077774924);
            }
          }

          while (v67 != v33);
          goto LABEL_199;
        }

        goto LABEL_201;
      }

      goto LABEL_203;
    }

LABEL_39:
    v24 = (v5 + 32);
    if (*(v5 + 32) != v5 + 32)
    {
      for (k = *(v5 + 40); ; k = k[1])
      {
        if (k == v24)
        {
          goto LABEL_204;
        }

        ZinIrHalH13g::~ZinIrHalH13g(k);
        if (*(v26 + 40))
        {
          v27 = v26;
          ZinIrHalH13g::~ZinIrHalH13g(*v24);
          if (v27 != v28)
          {
            break;
          }
        }
      }

      DiscardableAttrDictionary = "operation with block successors must terminate its parent block";
      LOWORD(v257) = 259;
      mlir::Operation::emitError(v27, &DiscardableAttrDictionary, &v266);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
      if (v266)
      {
        mlir::InFlightDiagnostic::report(&v266);
      }

      if (v277[0] == 1)
      {
        if (__dst != v277)
        {
          free(__dst);
        }

        v30 = __p;
        if (__p)
        {
          v31 = *(&__p + 1);
          v32 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
            }

            while (v31 != v30);
            v32 = __p;
          }

          *(&__p + 1) = v30;
          operator delete(v32);
        }

        v33 = v271;
        if (v271)
        {
          v34 = *(&v271 + 1);
          v35 = v271;
          if (*(&v271 + 1) == v271)
          {
            goto LABEL_200;
          }

          do
          {
            v57 = *--v34;
            v56 = v57;
            *v34 = 0;
            if (v57)
            {
              MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
            }
          }

          while (v34 != v33);
          goto LABEL_199;
        }

        goto LABEL_201;
      }

      goto LABEL_203;
    }

    if ((mayBeValidWithoutTerminator((v4 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
    {
      v107 = mlir::Block::getParent((v4 & 0xFFFFFFFFFFFFFFF8));
      Loc = mlir::Region::getLoc(v107);
      DiscardableAttrDictionary = "empty block: expect at least a terminator";
      LOWORD(v257) = 259;
      mlir::emitError(Loc, &DiscardableAttrDictionary, &v266);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
      if (v266)
      {
        mlir::InFlightDiagnostic::report(&v266);
      }

      if (v277[0] == 1)
      {
        if (__dst != v277)
        {
          free(__dst);
        }

        v109 = __p;
        if (__p)
        {
          v110 = *(&__p + 1);
          v111 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
            }

            while (v110 != v109);
            v111 = __p;
          }

          *(&__p + 1) = v109;
          operator delete(v111);
        }

        v33 = v271;
        if (v271)
        {
          v112 = *(&v271 + 1);
          v35 = v271;
          if (*(&v271 + 1) == v271)
          {
LABEL_200:
            *(&v271 + 1) = v33;
            operator delete(v35);
            goto LABEL_201;
          }

          do
          {
            v114 = *--v112;
            v113 = v114;
            *v112 = 0;
            if (v114)
            {
              MEMORY[0x1AC55A040](v113, 0x1000C8077774924);
            }
          }

          while (v112 != v33);
LABEL_199:
          v35 = v271;
          goto LABEL_200;
        }

LABEL_201:
        v115 = v268;
        if (v268 != v270)
        {
LABEL_202:
          free(v115);
        }
      }

LABEL_203:
      if (!v29)
      {
        goto LABEL_351;
      }
    }

LABEL_204:
    if ((v4 & 4) != 0)
    {
      v125 = *(v5 + 32);
      v123 = (v5 + 32);
      for (m = v125; m != v123; m = *m)
      {
        ZinIrHalH13g::~ZinIrHalH13g(m);
        v128 = v127;
        if ((*(v127 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_220;
        }

        {
        }

        if (((*(**(v128 + 48) + 32))(*(v128 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_220:
          v126 = v251;
          if (v251 >= HIDWORD(v251))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v250, v252, v251 + 1, 8);
            v126 = v251;
          }

          *(v250 + v126) = v128;
          LODWORD(v251) = v251 + 1;
        }
      }
    }

    else if (*this == 1)
    {
      v116 = *(v5 + 44);
      if ((v116 & 0x7FFFFF) != 0)
      {
        v117 = ((v5 + 16 * ((v116 >> 23) & 1) + ((v116 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
        v118 = (v117 + 24 * (v116 & 0x7FFFFF));
        do
        {
          v120 = *(v118 - 3);
          v118 -= 3;
          v119 = v120;
          if (v120 != v118)
          {
            v121 = v251;
            do
            {
              if (v119)
              {
                v122 = (v119 - 1);
              }

              else
              {
                v122 = 0;
              }

              if (v121 >= HIDWORD(v251))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v250, v252, v121 + 1, 8);
                *(v250 + v251) = v122 | 4;
              }

              else
              {
                *(v250 + v121) = v122 | 4;
              }

              v121 = v251 + 1;
              LODWORD(v251) = v251 + 1;
              v119 = *v119;
            }

            while (v119 != v118);
          }
        }

        while (v118 != v117);
      }
    }

    v2 = v251;
    if (!v251)
    {
LABEL_384:
      v175 = 1;
      v176 = v250;
      if (v250 == v252)
      {
        goto LABEL_353;
      }

LABEL_352:
      free(v176);
      goto LABEL_353;
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
      LOWORD(v257) = 259;
      mlir::Operation::emitError((v4 & 0xFFFFFFFFFFFFFFF8), &DiscardableAttrDictionary, &v266);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
      if (v266)
      {
        mlir::InFlightDiagnostic::report(&v266);
      }

      if (v277[0])
      {
        if (__dst != v277)
        {
          free(__dst);
        }

        v77 = __p;
        if (__p)
        {
          v78 = *(&__p + 1);
          v79 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
            }

            while (v78 != v77);
            v79 = __p;
          }

          *(&__p + 1) = v77;
          operator delete(v79);
        }

        v33 = v271;
        if (v271)
        {
          v80 = *(&v271 + 1);
          v35 = v271;
          if (*(&v271 + 1) == v271)
          {
            goto LABEL_200;
          }

          do
          {
            v82 = *--v80;
            v81 = v82;
            *v80 = 0;
            if (v82)
            {
              MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
            }
          }

          while (v80 != v33);
          goto LABEL_199;
        }

        goto LABEL_201;
      }

      goto LABEL_203;
    }
  }

LABEL_10:
  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary((v4 & 0xFFFFFFFFFFFFFFF8));
  Value = mlir::AffineMapAttr::getValue(&DiscardableAttrDictionary);
  v9 = mlir::DictionaryAttr::end(&DiscardableAttrDictionary);
  if (Value == v9)
  {
LABEL_92:
    v58 = *(v5 + 48);
    if (v58[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v58 + 8))(v58, v4 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_351;
    }

    v59 = *(v5 + 44);
    v60 = *&v59 & 0x7FFFFFLL;
    if ((v59 & 0x7FFFFF) == 0)
    {
      goto LABEL_204;
    }

    InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v4 & 0xFFFFFFFFFFFFFFF8);
      v62 = (v4 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v62 = 0;
    }

    v235 = v62;
    v236 = InterfaceFor;
    DiscardableAttrDictionary = &v255;
    v254 = 0x600000000;
    v129 = *(v5 + 44);
    if ((v129 & 0x7FFFFF) != 0)
    {
      v130 = (v5 + 16 * ((v129 >> 23) & 1) + ((v129 >> 21) & 0x7F8) + 32 * *(v5 + 40) + 64);
      if (!v62)
      {
        goto LABEL_251;
      }

LABEL_235:
      v131 = 0;
      while (2)
      {
        if (v235)
        {
          RegionKind = mlir::RegionKindInterface::getRegionKind(&v235, v131);
          v133 = *v130;
          if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
          {
            goto LABEL_247;
          }

          if (v130 != v133)
          {
            if (v130 != *(v130[1] + 8))
            {
              v243 = "expects graph region #";
              v246 = 259;
              mlir::Operation::emitOpError((v4 & 0xFFFFFFFFFFFFFFF8), &v243, &v266);
              if (v266)
              {
                LODWORD(v238) = 5;
                v239 = v131;
                v155 = v268;
                if (v269 >= HIDWORD(v269))
                {
                  if (v268 <= &v238 && v268 + 24 * v269 > &v238)
                  {
                    v172 = &v238 - v268;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                    v155 = v268;
                    v156 = (v268 + v172);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v269 + 1, 24);
                    v156 = &v238;
                    v155 = v268;
                  }
                }

                else
                {
                  v156 = &v238;
                }

                v157 = &v155[24 * v269];
                v158 = *v156;
                *(v157 + 2) = v156[2];
                *v157 = v158;
                v159 = (v269 + 1);
                LODWORD(v269) = v269 + 1;
                if (v266)
                {
                  LODWORD(v238) = 3;
                  v239 = " to have 0 or 1 blocks";
                  v240 = 22;
                  v160 = v268;
                  if (v159 >= HIDWORD(v269))
                  {
                    if (v268 <= &v238 && v268 + 24 * v159 > &v238)
                    {
                      v174 = &v238 - v268;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v159 + 1, 24);
                      v160 = v268;
                      v161 = (v268 + v174);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v159 + 1, 24);
                      v161 = &v238;
                      v160 = v268;
                    }
                  }

                  else
                  {
                    v161 = &v238;
                  }

                  v162 = &v160[24 * v269];
                  v163 = *v161;
                  *(v162 + 2) = v161[2];
                  *v162 = v163;
                  LODWORD(v269) = v269 + 1;
                }
              }

              v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
              if (v266)
              {
                mlir::InFlightDiagnostic::report(&v266);
              }

              if (v277[0] == 1)
              {
                if (__dst != v277)
                {
                  free(__dst);
                }

                v164 = __p;
                if (__p)
                {
                  v165 = *(&__p + 1);
                  v166 = __p;
                  if (*(&__p + 1) != __p)
                  {
                    do
                    {
                      v165 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v165 - 1);
                    }

                    while (v165 != v164);
                    v166 = __p;
                  }

                  *(&__p + 1) = v164;
                  operator delete(v166);
                }

                v139 = v271;
                if (v271)
                {
                  v167 = *(&v271 + 1);
                  v141 = v271;
                  if (*(&v271 + 1) == v271)
                  {
LABEL_326:
                    *(&v271 + 1) = v139;
                    operator delete(v141);
                    goto LABEL_327;
                  }

                  do
                  {
                    v169 = *--v167;
                    v168 = v169;
                    *v167 = 0;
                    if (v169)
                    {
                      MEMORY[0x1AC55A040](v168, 0x1000C8077774924);
                    }
                  }

                  while (v167 != v139);
LABEL_325:
                  v141 = v271;
                  goto LABEL_326;
                }

                goto LABEL_327;
              }

              goto LABEL_270;
            }

LABEL_247:
            if (v130 != v133 && *(v130[1] - 8))
            {
              goto LABEL_253;
            }
          }

          ++v131;
          v130 += 3;
          if (v60 == v131)
          {
            goto LABEL_269;
          }

          continue;
        }

        break;
      }

      v133 = *v130;
      goto LABEL_247;
    }

    v130 = 0;
    if (v62)
    {
      goto LABEL_235;
    }

LABEL_251:
    while (v130 == *v130 || !*(v130[1] - 8))
    {
      v130 += 3;
      if (!--v60)
      {
LABEL_269:
        v29 = 1;
        goto LABEL_270;
      }
    }

LABEL_253:
    v135 = *(v5 + 24);
    v243 = "entry block of region may not have predecessors";
    v246 = 259;
    mlir::emitError(v135, &v243, &v266);
    v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v266);
    if (v266)
    {
      mlir::InFlightDiagnostic::report(&v266);
    }

    if (v277[0] == 1)
    {
      if (__dst != v277)
      {
        free(__dst);
      }

      v136 = __p;
      if (__p)
      {
        v137 = *(&__p + 1);
        v138 = __p;
        if (*(&__p + 1) != __p)
        {
          do
          {
            v137 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v137 - 1);
          }

          while (v137 != v136);
          v138 = __p;
        }

        *(&__p + 1) = v136;
        operator delete(v138);
      }

      v139 = v271;
      if (v271)
      {
        v140 = *(&v271 + 1);
        v141 = v271;
        if (*(&v271 + 1) == v271)
        {
          goto LABEL_326;
        }

        do
        {
          v143 = *--v140;
          v142 = v143;
          *v140 = 0;
          if (v143)
          {
            MEMORY[0x1AC55A040](v142, 0x1000C8077774924);
          }
        }

        while (v140 != v139);
        goto LABEL_325;
      }

LABEL_327:
      if (v268 != v270)
      {
        free(v268);
      }
    }

LABEL_270:
    v115 = DiscardableAttrDictionary;
    if (DiscardableAttrDictionary != &v255)
    {
      goto LABEL_202;
    }

    goto LABEL_203;
  }

  v10 = v9;
  while (1)
  {
    v266 = *Value;
    NameDialect = mlir::NamedAttribute::getNameDialect(&v266);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v4 & 0xFFFFFFFFFFFFFFF8, v266, *(&v266 + 1)) & 1) == 0)
      {
        break;
      }
    }

    if (++Value == v10)
    {
      goto LABEL_92;
    }
  }

LABEL_351:
  v175 = 0;
  v176 = v250;
  if (v250 != v252)
  {
    goto LABEL_352;
  }

LABEL_353:
  if (!v175)
  {
    return 0;
  }

  if ((*(a2 + 11) & 0x7FFFFF) != 0)
  {
    v235 = 0;
    v236 = 0;
    v237 = 0;
    v250 = v252;
    HIDWORD(v251) = 8;
    v252[0] = a2;
    v177 = 1;
    while (1)
    {
      v178 = *(v250 + --v177);
      LODWORD(v251) = v177;
      v179 = *(v178 + 44);
      if ((v179 & 0x7FFFFF) != 0)
      {
        v180 = ((v178 + 16 * ((v179 >> 23) & 1) + ((v179 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v178 + 40);
        v230 = v180 + 24 * (v179 & 0x7FFFFF);
        do
        {
          v181 = *(v180 + 8);
          for (n = v180; v181 != n; v180 = n)
          {
            if (v181)
            {
              v182 = (v181 - 8);
            }

            else
            {
              v182 = 0;
            }

            isReachableFromEntry = mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(&v235, v182);
            v183 = (v182 + 32);
            for (ii = *(v182 + 5); ii != v183; ii = *(ii + 1))
            {
              ZinIrHalH13g::~ZinIrHalH13g(ii);
              v186 = v185;
              if (isReachableFromEntry && (*(v185 + 46) & 0x80) != 0)
              {
                v187 = *(v185 + 68);
                if (v187)
                {
                  v188 = 0;
                  v189 = *(v185 + 72);
                  v190 = 24;
                  while ((mlir::DominanceInfo::properlyDominates(&v235, *(v189 + v190), v186) & 1) != 0)
                  {
                    ++v188;
                    v190 += 32;
                    if (v187 == v188)
                    {
                      goto LABEL_372;
                    }
                  }

                  v243 = "operand #";
                  v246 = 259;
                  mlir::Operation::emitError(v186, &v243, &DiscardableAttrDictionary);
                  if (DiscardableAttrDictionary)
                  {
                    LODWORD(v238) = 5;
                    v239 = v188;
                    v192 = &v238;
                    v193 = __src;
                    if (v257 >= HIDWORD(v257))
                    {
                      if (__src <= &v238 && __src + 24 * v257 > &v238)
                      {
                        v228 = &v238 - __src;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v258, v257 + 1, 24);
                        v193 = __src;
                        v192 = (__src + v228);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v258, v257 + 1, 24);
                        v192 = &v238;
                        v193 = __src;
                      }
                    }

                    v194 = &v193[24 * v257];
                    v195 = *v192;
                    *(v194 + 2) = v192[2];
                    *v194 = v195;
                    v196 = (v257 + 1);
                    LODWORD(v257) = v257 + 1;
                    if (DiscardableAttrDictionary)
                    {
                      LODWORD(v238) = 3;
                      v239 = " does not dominate this use";
                      v240 = 27;
                      v197 = &v238;
                      v198 = __src;
                      if (v196 >= HIDWORD(v257))
                      {
                        if (__src <= &v238 && __src + 24 * v196 > &v238)
                        {
                          v229 = &v238 - __src;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v258, v196 + 1, 24);
                          v198 = __src;
                          v197 = (__src + v229);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v258, v196 + 1, 24);
                          v197 = &v238;
                          v198 = __src;
                        }
                      }

                      v199 = &v198[24 * v257];
                      v200 = *v197;
                      *(v199 + 2) = v197[2];
                      *v199 = v200;
                      LODWORD(v257) = v257 + 1;
                      *&v266 = DiscardableAttrDictionary;
                      BYTE8(v266) = 0;
                      v277[0] = 0;
                      if (v265 != 1)
                      {
LABEL_431:
                        mlir::InFlightDiagnostic::abandon(&DiscardableAttrDictionary);
                        if (DiscardableAttrDictionary)
                        {
                          mlir::InFlightDiagnostic::report(&DiscardableAttrDictionary);
                        }

                        if (v265 == 1)
                        {
                          if (v263 != &v265)
                          {
                            free(v263);
                          }

                          v214 = v261;
                          if (v261)
                          {
                            v215 = *(&v261 + 1);
                            v216 = v261;
                            if (*(&v261 + 1) != v261)
                            {
                              do
                              {
                                v215 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v215 - 1);
                              }

                              while (v215 != v214);
                              v216 = v261;
                            }

                            *(&v261 + 1) = v214;
                            operator delete(v216);
                          }

                          v217 = v259;
                          if (v259)
                          {
                            v218 = *(&v259 + 1);
                            v219 = v259;
                            if (*(&v259 + 1) != v259)
                            {
                              do
                              {
                                v221 = *--v218;
                                v220 = v221;
                                *v218 = 0;
                                if (v221)
                                {
                                  MEMORY[0x1AC55A040](v220, 0x1000C8077774924);
                                }
                              }

                              while (v218 != v217);
                              v219 = v259;
                            }

                            *(&v259 + 1) = v217;
                            operator delete(v219);
                          }

                          if (__src != v258)
                          {
                            free(__src);
                          }
                        }

                        v243 = *(*(v186 + 72) + v190);
                        DefiningOp = mlir::Value::getDefiningOp(&v243);
                        if (DefiningOp)
                        {
                          mlir::Diagnostic::attachNote(&v266 + 1, *(DefiningOp + 24), 1);
                        }

                        v223 = *(v243 + 2);
                        mlir::Block::getParent(*(v186 + 16));
                        mlir::Block::getParent(v223);
                        v224 = mlir::Attribute::getContext((v186 + 24));
                        v226 = mlir::UnknownLoc::get(v224, v225);
                        if (mlir::Block::getParentOp(v223))
                        {
                          v226 = *(mlir::Block::getParentOp(v223) + 24);
                        }

                        mlir::Diagnostic::attachNote(&v266 + 1, v226, 1);
                      }
                    }

                    else
                    {
                      *&v266 = 0;
                      BYTE8(v266) = 0;
                      v277[0] = 0;
                      if (v265 != 1)
                      {
                        goto LABEL_431;
                      }
                    }
                  }

                  else
                  {
                    *&v266 = 0;
                    BYTE8(v266) = 0;
                    v277[0] = 0;
                    if (v265 != 1)
                    {
                      goto LABEL_431;
                    }
                  }

                  *(&v266 + 1) = v254;
                  v267 = v255;
                  v268 = v270;
                  v269 = 0x400000000;
                  v201 = v257;
                  if (v257)
                  {
                    v202 = __src;
                    if (__src != v258)
                    {
                      v268 = __src;
                      v269 = v257;
                      __src = v258;
                      HIDWORD(v257) = 0;
                      goto LABEL_404;
                    }

                    if (v257 < 5)
                    {
                      v204 = v270;
                      v203 = v257;
LABEL_402:
                      memcpy(v204, v202, 24 * v203);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v270, v257, 24);
                      v203 = v257;
                      if (v257)
                      {
                        v202 = __src;
                        v204 = v268;
                        goto LABEL_402;
                      }
                    }

                    LODWORD(v269) = v201;
LABEL_404:
                    LODWORD(v257) = 0;
                  }

                  v271 = v259;
                  v259 = 0uLL;
                  __p = v261;
                  v272 = v260;
                  v274 = v262;
                  v260 = 0;
                  v261 = 0uLL;
                  v262 = 0;
                  __dst = v277;
                  v276 = 0;
                  v205 = v264;
                  if (v264)
                  {
                    if (v263 == &v265)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v277, v264, 24);
                      if (v264)
                      {
                        memcpy(__dst, v263, 24 * v264);
                      }

                      LODWORD(v276) = v205;
                    }

                    else
                    {
                      __dst = v263;
                      v276 = v264;
                      v263 = &v265;
                      HIDWORD(v264) = 0;
                    }

                    LODWORD(v264) = 0;
                  }

                  v277[0] = 1;
                  if (v265)
                  {
                    if (v263 != &v265)
                    {
                      free(v263);
                    }

                    v206 = v261;
                    if (v261)
                    {
                      v207 = *(&v261 + 1);
                      v208 = v261;
                      if (*(&v261 + 1) != v261)
                      {
                        do
                        {
                          v207 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v207 - 1);
                        }

                        while (v207 != v206);
                        v208 = v261;
                      }

                      *(&v261 + 1) = v206;
                      operator delete(v208);
                    }

                    v209 = v259;
                    if (v259)
                    {
                      v210 = *(&v259 + 1);
                      v211 = v259;
                      if (*(&v259 + 1) != v259)
                      {
                        do
                        {
                          v213 = *--v210;
                          v212 = v213;
                          *v210 = 0;
                          if (v213)
                          {
                            MEMORY[0x1AC55A040](v212, 0x1000C8077774924);
                          }
                        }

                        while (v210 != v209);
                        v211 = v259;
                      }

                      *(&v259 + 1) = v209;
                      operator delete(v211);
                    }

                    if (__src != v258)
                    {
                      free(__src);
                    }

                    v265 = 0;
                  }

                  goto LABEL_431;
                }
              }

LABEL_372:
              if (*this == 1 && (*(v186 + 44) & 0x7FFFFF) != 0)
              {
                {
                }

                if (((*(**(v186 + 48) + 32))(*(v186 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  v191 = v251;
                  if (v251 >= HIDWORD(v251))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v250, v252, v251 + 1, 8);
                    v191 = v251;
                  }

                  *(v250 + v191) = v186;
                  LODWORD(v251) = v251 + 1;
                }
              }
            }

            v181 = *(v181 + 8);
          }

          v180 += 24;
        }

        while (v180 != v230);
        v177 = v251;
      }

      if (!v177)
      {
        if (v250 != v252)
        {
          free(v250);
        }

        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(&v235);
      }
    }
  }

  return 1;
}

void llvm::ThreadPoolInterface::asyncImpl<void>(std::future<void> *a3@<X8>, uint64_t x1_0@<X1>)
{
  v7 = *MEMORY[0x1E69E9840];
  std::async[abi:nn200100]<std::function<void ()(void)>>(2, x1_0, &v6);
  state = v6.__state_;
  a3->__state_ = v6.__state_;
  v6.__state_ = 0;
  std::future<void>::~future(&v6);
  if (state)
  {
    atomic_fetch_add_explicit(&state->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::async[abi:nn200100]<std::function<void ()(void)>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, std::future<void> *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_13;
      }

      v6 = v5;
      (*(*v3 + 24))(v3, v5);
      v3 = v6;
      if (v6)
      {
LABEL_13:
        if (v3 == v5)
        {
          v8 = v7;
          (*(*v3 + 24))(v3, v7);
        }

        else
        {
          v8 = v3;
          v6 = 0;
        }

LABEL_16:
        std::__make_async_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_16;
  }

  if ((result & 2) != 0)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_20;
      }

      v6 = v5;
      (*(*v4 + 24))(v4, v5);
      v4 = v6;
      if (v6)
      {
LABEL_20:
        if (v4 == v5)
        {
          v8 = v7;
          (*(*v4 + 24))(v4, v7);
        }

        else
        {
          v8 = v4;
          v6 = 0;
        }

LABEL_23:
        operator new();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_23;
  }

  a3->__state_ = 0;
  return result;
}