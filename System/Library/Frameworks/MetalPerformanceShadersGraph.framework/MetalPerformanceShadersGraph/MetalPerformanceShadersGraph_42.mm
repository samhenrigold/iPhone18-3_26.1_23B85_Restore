void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
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
      v5 = (*a1 + 16 * (v12 & v3));
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
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
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

void *llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
          v23 = &result[2 * v25];
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
              v23 = &result[2 * (v30 & v16)];
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
          v23[1] = *(v17 + 1);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

uint64_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = a2;
  if (a4 == 3)
  {
    v8 = a1 + 4;
    if (*(**a3 + ((a1 - *a3[1] + 32) >> 2)))
    {
      v17 = a1;
      std::swap[abi:nn200100]<mlir::OpOperand>(a1 + 4, a2);
      std::swap[abi:nn200100]<mlir::OpOperand>(v17, v8);
      return v8;
    }

    std::swap[abi:nn200100]<mlir::OpOperand>(a1, a1 + 4);
    a1 = v8;
LABEL_50:
    std::swap[abi:nn200100]<mlir::OpOperand>(a1, v6);
    return v6;
  }

  if (a4 == 2)
  {
    goto LABEL_50;
  }

  if (a6 < a4)
  {
    v7 = a4 / 2;
    v8 = &a1[4 * (a4 / 2)];
    v9 = **a3;
    v10 = *a3[1];
    v11 = v8 - 4;
    if (*(v9 + ((v8 - v10 - 32) >> 2)))
    {
      v12 = 32 - 32 * v7;
      v13 = &a1[4 * v7 - 8] - v10;
      v14 = a4 / 2;
      while (v12)
      {
        --v14;
        v15 = *(v9 + (v13 >> 2));
        v12 += 32;
        v13 -= 32;
        if (!v15)
        {
          v16 = a4;
          v11 = (a1 - v12);
          goto LABEL_53;
        }
      }

      v45 = a6;
      v44 = a5;
      v48 = a1;
      v49 = a4 - v7;
      v50 = v8 - v10;
      if (!*(v9 + ((v8 - v10) >> 2)))
      {
LABEL_86:
        v70 = (v6 + 4);
        v71 = v50 + 32;
        v51 = v8;
        v52 = v44;
        v53 = v45;
        while (1)
        {
          v51 += 4;
          if (v51 == v6)
          {
            goto LABEL_90;
          }

          --v49;
          v72 = *(v9 + (v71 >> 2));
          v71 += 32;
          if (v72)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      v16 = a4;
      v14 = a4 / 2;
LABEL_53:
      v43 = a3;
      v44 = a5;
      v45 = a6;
      v46 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(a1, v11, a3, v14, a5, a6);
      a3 = v43;
      v9 = **v43;
      v47 = v16;
      v48 = v46;
      v49 = v47 - v7;
      v50 = v8 - *v43[1];
      if (!*(v9 + (v50 >> 2)))
      {
        goto LABEL_86;
      }
    }

    v51 = v8;
    v52 = v44;
    v53 = v45;
LABEL_89:
    v70 = std::__stable_partition_impl<std::_ClassicAlgPolicy,mlir::OpTrait::impl::foldCommutative(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &,mlir::OpOperand *,long,std::pair<mlir::OpOperand *,long>>(v51, v6, a3, v49, v52, v53);
LABEL_90:
    if (v48 == v8)
    {
      return v70;
    }

    if (v8 == v70)
    {
      return v48;
    }

    std::swap[abi:nn200100]<mlir::OpOperand>(v48, v8);
    v6 = v48 + 4;
    for (i = v8 + 4; i != v70; i += 4)
    {
      if (v6 == v8)
      {
        v8 = i;
      }

      std::swap[abi:nn200100]<mlir::OpOperand>(v6, i);
      v6 += 4;
    }

    if (v6 != v8)
    {
      v74 = v6;
      v75 = v8;
      while (1)
      {
        std::swap[abi:nn200100]<mlir::OpOperand>(v74, v8);
        v8 += 4;
        v76 = v74 + 4 == v75;
        if (v8 == v70)
        {
          if (v74 + 4 == v75)
          {
            return v6;
          }

          v8 = v75 + 4;
          for (v74 += 8; ; v74 += 4)
          {
            std::swap[abi:nn200100]<mlir::OpOperand>(v74 - 4, v75);
            v76 = v74 == v75;
            if (v8 != v70)
            {
              break;
            }

            if (v74 == v75)
            {
              return v6;
            }
          }
        }

        else
        {
          v74 += 4;
        }

        if (v76)
        {
          v75 = v8;
        }
      }
    }

    return v8;
  }

  *a5 = 0;
  a5[1] = 0;
  v18 = a1[1];
  a5[2] = a1[2];
  if (v18)
  {
    v19 = *a1;
    *v18 = *a1;
    if (v19)
    {
      *(v19 + 8) = v18;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = 0;
  v20 = a1[1];
  if (v20)
  {
    v21 = *a1;
    *v20 = *a1;
    if (v21)
    {
      *(v21 + 8) = v20;
    }
  }

  a1[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[3] = a1[3];
  a1[3] = 0;
  v22 = a5[3];
  if (v22)
  {
    v23 = *v22;
    *a5 = *v22;
    a5[1] = v22;
    if (v23)
    {
      *(v23 + 8) = a5;
    }

    *v22 = a5;
  }

  v24 = a5 + 4;
  v25 = a1 + 4;
  v26 = 1;
  if (a1 + 4 != a2)
  {
    v27 = a1 + 4;
    do
    {
      while (*(**a3 + ((v27 - *a3[1]) >> 2)))
      {
        *v24 = 0;
        v24[1] = 0;
        v28 = v25[1];
        v24[2] = v25[2];
        if (v28)
        {
          v29 = *v25;
          *v28 = *v25;
          if (v29)
          {
            *(v29 + 8) = v28;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = 0;
        v30 = v25[1];
        if (v30)
        {
          v31 = *v25;
          *v30 = *v25;
          if (v31)
          {
            *(v31 + 8) = v30;
          }
        }

        v25[1] = 0;
        *v24 = 0;
        v24[1] = 0;
        v24[3] = v25[3];
        v25[3] = 0;
        v32 = v24[3];
        if (v32)
        {
          v33 = *v32;
          *v24 = *v32;
          v24[1] = v32;
          if (v33)
          {
            *(v33 + 8) = v24;
          }

          *v32 = v24;
        }

        ++v26;
        v24 += 4;
        v25 += 4;
        v27 += 4;
        if (v25 == a2)
        {
          goto LABEL_47;
        }
      }

      v34 = a1[1];
      if (v34)
      {
        v35 = *a1;
        *v34 = *a1;
        if (v35)
        {
          *(v35 + 8) = v34;
        }
      }

      v36 = v25[1];
      if (v36)
      {
        v37 = *v25;
        *v36 = *v25;
        if (v37)
        {
          *(v37 + 8) = v36;
        }
      }

      v25[1] = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[3] = v25[3];
      v25[3] = 0;
      v38 = a1[3];
      if (v38)
      {
        v39 = *v38;
        *a1 = *v38;
        a1[1] = v38;
        if (v39)
        {
          *(v39 + 8) = a1;
        }

        *v38 = a1;
      }

      a1 += 4;
      v25 += 4;
      v27 += 4;
    }

    while (v25 != a2);
LABEL_47:
    v40 = v25 - 4;
    v41 = a1[1];
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v40 = a1;
  v41 = a1[1];
  if (v41)
  {
LABEL_56:
    v54 = *a1;
    *v41 = *a1;
    if (v54)
    {
      *(v54 + 8) = v41;
    }
  }

LABEL_58:
  v55 = v40[5];
  if (v55)
  {
    v56 = *v25;
    *v55 = v56;
    if (v56)
    {
      *(v56 + 8) = v55;
    }
  }

  v40[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[3] = v40[7];
  v40[7] = 0;
  v57 = a1[3];
  if (v57)
  {
    v58 = *v57;
    *a1 = *v57;
    a1[1] = v57;
    if (v58)
    {
      *(v58 + 8) = a1;
    }

    *v57 = a1;
  }

  v6 = a1 + 4;
  if (v24 > a5)
  {
    v59 = a5;
    v60 = a1 + 4;
    do
    {
      v61 = v60[1];
      if (v61)
      {
        v62 = *v60;
        *v61 = *v60;
        if (v62)
        {
          *(v62 + 8) = v61;
        }
      }

      v63 = v59[1];
      if (v63)
      {
        v64 = *v59;
        *v63 = *v59;
        if (v64)
        {
          *(v64 + 8) = v63;
        }
      }

      v59[1] = 0;
      *v60 = 0;
      v60[1] = 0;
      v60[3] = v59[3];
      v59[3] = 0;
      v65 = v60[3];
      if (v65)
      {
        v66 = *v65;
        *v60 = *v65;
        v60[1] = v65;
        if (v66)
        {
          *(v66 + 8) = v60;
        }

        *v65 = v60;
      }

      v59 += 4;
      v60 += 4;
    }

    while (v59 < v24);
  }

  if (a5 && v26)
  {
    v67 = a5 + 1;
    do
    {
      v68 = *v67;
      if (*v67)
      {
        v69 = *(v67 - 1);
        *v68 = v69;
        if (v69)
        {
          *(v69 + 8) = v68;
        }
      }

      v67 += 4;
      --v26;
    }

    while (v26);
  }

  return v6;
}

uint64_t *std::swap[abi:nn200100]<mlir::OpOperand>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    *v2 = *result;
    if (v3)
    {
      *(v3 + 8) = v2;
    }
  }

  result[1] = 0;
  v4 = result[3];
  result[3] = 0;
  if (v4)
  {
    v5 = *v4;
    v19 = v5;
    v20 = v4;
    if (v5)
    {
      *(v5 + 8) = &v19;
      v6 = result[1];
      *v4 = &v19;
      if (v6)
      {
        v7 = *result;
        *v6 = *result;
        if (v7)
        {
          *(v7 + 8) = v6;
        }
      }
    }

    else
    {
      *v4 = &v19;
    }
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    *v8 = *a2;
    if (v9)
    {
      *(v9 + 8) = v8;
    }
  }

  a2[1] = 0;
  *result = 0;
  result[1] = 0;
  result[3] = a2[3];
  a2[3] = 0;
  v10 = result[3];
  if (v10)
  {
    v11 = *v10;
    *result = *v10;
    result[1] = v10;
    if (v11)
    {
      *(v11 + 8) = result;
    }

    *v10 = result;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = *a2;
    *v12 = *a2;
    if (v13)
    {
      *(v13 + 8) = v12;
    }
  }

  v14 = v20;
  if (v20)
  {
    v15 = v19;
    *v20 = v19;
    if (v15)
    {
      *(v15 + 8) = v14;
    }
  }

  v20 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[3] = v4;
  if (v4)
  {
    v16 = *v4;
    *a2 = *v4;
    a2[1] = v4;
    if (v16)
    {
      *(v16 + 8) = a2;
      v17 = v20;
      *v4 = a2;
      if (v17)
      {
        v18 = v19;
        *v17 = v19;
        if (v18)
        {
          *(v18 + 8) = v17;
        }
      }
    }

    else
    {
      *v4 = a2;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v18 = *a2;
    v19 = a2[3];
    do
    {
      v20 = v5 + 1;
      v5 = v19;
      if (v20 != v19)
      {
        v5 = v20;
        while (1)
        {
          v21 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v22 = v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v22 || v21 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v19 == ++v5)
          {
            v5 = v19;
            break;
          }
        }
      }

      ++v7;
    }

    while (v5 != v6);
  }

  v8 = *(result + 8);
  if (v7 + v8 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7 + v8, 8);
    v8 = *(result + 8);
  }

  v9 = a2[1];
  v10 = *(a3 + 8);
  if (v9 != v10)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*result + 8 * v8);
    do
    {
      *v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = v9 + 1;
      v9 = v12;
      if (v14 != v12)
      {
        v9 = v14;
        while (1)
        {
          v15 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v16 = v15 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          if (v12 == ++v9)
          {
            v9 = v12;
            break;
          }
        }
      }

      ++v13;
    }

    while (v9 != v10);
    LODWORD(v8) = *(result + 8);
  }

  *(result + 8) = v8 + v7;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v9 = *(a3 + 8);
  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v19 = a2[1];
    do
    {
      v20 = v19 + 1;
      v21 = a2[3];
      if (v19 + 1 != v8)
      {
        v22 = v6 + 56 + 32 * v19;
        v21 = v20;
        while (1)
        {
          v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v24 = v23 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v24 || v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v21;
          v22 += 32;
          if (v8 == v21)
          {
            v21 = a2[3];
            break;
          }
        }
      }

      ++v10;
      v19 = v21;
    }

    while (v21 != v9);
  }

  v11 = *(result + 8);
  if (v10 + v11 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v10 + v11, 8);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v9 = *(a3 + 8);
    v11 = *(result + 8);
  }

  if (v7 != v9)
  {
    v12 = (*result + 8 * v11);
    do
    {
      *v12 = *(*(v6 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v13 = v7 + 1;
      v14 = v8;
      if (v7 + 1 != v8)
      {
        v15 = v6 + 56 + 32 * v7;
        v14 = v13;
        while (1)
        {
          v16 = *(*(*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v17 || v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v14;
          v15 += 32;
          if (v8 == v14)
          {
            v14 = v8;
            break;
          }
        }
      }

      ++v12;
      v7 = v14;
    }

    while (v14 != v9);
    LODWORD(v11) = *(result + 8);
  }

  *(result + 8) = v11 + v10;
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>,void>(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  v6 = a2->i64[0];
  v7 = a2->i64[1];
  v8 = a3->i64[0];
  v9 = a3->i64[1];
  v10 = 0;
  if (a2->i64[0] != a3->i64[0] || v7 != v9)
  {
    do
    {
      if (v6 == a2[1].i64[0])
      {
        v7 += 8;
      }

      else
      {
        v6 += 8;
      }

      ++v10;
    }

    while (v6 != v8 || v7 != v9);
  }

  v12 = *(result + 8);
  if (v10 + v12 <= *(result + 12))
  {
    v21 = a3[1];
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v10 + v12, 8);
    v8 = a3->i64[0];
    v9 = a3->i64[1];
    v21 = a3[1];
    v12 = *(result + 8);
  }

  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = (*result + 8 * v12);
  if (v22 == v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v16 = &unk_1F5AF8138;
        do
        {
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = (&v22 + (*v16 >> 1));
            if (*v16)
            {
              break;
            }

            v16 += 2;
            v17 = v18(v19);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v16 += 2;
          v17 = (*(*v19 + v18))();
        }

        while (!v17);
LABEL_22:
        *v14 = *v17;
        v20 = v22;
        if (v22 == v23.i64[0])
        {
          break;
        }

        *&v22 = v22 + 8;
        ++v14;
        if (v20 + 8 == v8)
        {
          goto LABEL_16;
        }
      }

      if (*(&v22 + 1) != v23.i64[1])
      {
        *(&v22 + 1) += 8;
      }

      ++v14;
    }

    while (v22 != v8);
LABEL_16:
    if (*(&v22 + 1) == v9)
    {
      v15 = vmovn_s64(vmvnq_s8(vceqq_s64(v23, v21)));
      if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(result + 8) += v10;
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

__n128 OUTLINED_FUNCTION_0_3@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v2);
  result = *v1;
  v3[1].n128_u64[0] = v1[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v24 = (v22 + 24 * a22);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  return result;
}

void OUTLINED_FUNCTION_5_5(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, va, a1 + 1, 24);
}

void OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

void OUTLINED_FUNCTION_8_4(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, (a1 + 40), v1 + 1, 24);
}

void OUTLINED_FUNCTION_14_6(const void **a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v11 = a1;
  LOWORD(v16) = 259;

  mlir::Operation::emitOpError(v9, va, va1);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_20_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, char a8)
{
  a2 = a1;
  a6 = 259;

  mlir::Operation::emitOpError(v8, &a2, &a8);
}

void OUTLINED_FUNCTION_21_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void *OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v8, &a8);
}

void OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a11, v11 + 1, 24);
}

void OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, const void **);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  mlir::Operation::emitOpError(v16, va, va1);
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_39_0(llvm *a1@<X0>, uint64_t a3@<X8>)
{

  llvm::deallocate_buffer(a1, (16 * a3));
}

void OUTLINED_FUNCTION_48_0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void OUTLINED_FUNCTION_58_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{

  operator delete(a1);
}

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    mlir::ArrayAttr::getValue(&v4);
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = v4 | 4;
  return a1;
}

void mlir::NamedAttrList::findDuplicate(uint64_t *__return_ptr a1@<X8>, uint64_t **this@<X0>)
{
  mlir::DictionaryAttr::findDuplicate(this, (this[10] & 4) != 0, a1);
  if ((this[10] & 4) == 0)
  {
    this[10] = 4;
  }
}

unint64_t mlir::NamedAttrList::getDictionary(mlir::NamedAttrList *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 10);
  if ((v4 & 4) == 0)
  {
    mlir::DictionaryAttr::sortInPlace(this);
    *(this + 10) = 4;
LABEL_4:
    v4 = *(this + 10) & 7 | mlir::DictionaryAttr::getWithSorted(a2, *this, *(this + 2));
    *(this + 10) = v4;
    return v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v4 <= 7)
  {
    goto LABEL_4;
  }

  return v4 & 0xFFFFFFFFFFFFFFF8;
}

void mlir::NamedAttrList::append(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v11 = a4;
  Context = mlir::Attribute::getContext(&v11);
  v10 = 261;
  v9[0] = a2;
  v9[1] = a3;
  v8 = mlir::StringAttr::get(Context, v9);
  mlir::NamedAttrList::append(a1, v8, v11);
}

void mlir::NamedAttrList::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::NamedAttribute::NamedAttribute(&v11, a2, a3);
  v4 = v11;
  v12 = v11;
  v5 = *(a1 + 80);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = mlir::NamedAttribute::operator<((*a1 + 16 * v6 - 16), &v12);
      v5 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v7)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v5) = v8 | v5;
        v4 = v12;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v5) = v5 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 80) = v5 & 7;
  v9 = *(a1 + 8);
  if (v9 >= *(a1 + 12))
  {
    v10 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v9 + 1, 16);
    v4 = v10;
    LODWORD(v9) = *(a1 + 8);
  }

  *(*a1 + 16 * v9) = v4;
  ++*(a1 + 8);
}

uint64_t mlir::NamedAttrList::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  v3 = *(result + 80);
  if ((v3 & 4) != 0)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = result;
      v6 = mlir::NamedAttribute::operator<((*result + 16 * v4 - 16), &v14);
      result = v5;
      v7 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v6)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v3) = v8 | v7;
        a2 = v14;
        a3 = v15;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v7) = v3 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(result + 80) = v3 & 7;
  v9 = *(result + 8);
  if (v9 >= *(result + 12))
  {
    v11 = a2;
    v12 = a3;
    v13 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v9 + 1, 16);
    a2 = v11;
    a3 = v12;
    result = v13;
    LODWORD(v9) = *(v13 + 8);
  }

  v10 = (*result + 16 * v9);
  *v10 = a2;
  v10[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, const void *a2, size_t a3)
{
  v3 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, a2, a3);
  if (v4)
  {
    return *(v3 + 1);
  }

  else
  {
    return 0;
  }
}

mlir::CallGraphNode *mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(uint64_t a1, const void *a2, size_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    if (!v6)
    {
      return v5;
    }

    while (1)
    {
      v11 = v6 >> 1;
      v7 = (v5 + 16 * (v6 >> 1));
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v7);
      AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      v14 = v13;
      v15 = a3 >= v13 ? v13 : a3;
      if (v15)
      {
        v16 = memcmp(AttrData, a2, v15);
        if (v16)
        {
          break;
        }
      }

      if (v14 == a3)
      {
        return v7;
      }

      if (v14 < a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 = v11;
      if (v11 <= 0)
      {
        return v5;
      }
    }

    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = (v7 + 16);
    v11 = v6 + ~v11;
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = (v5 + 16 * v6);
    if (a3)
    {
      v8 = 16 * v6;
      while (1)
      {
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v5);
        v9 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
        if (v10 == a3 && !memcmp(v9, a2, a3))
        {
          break;
        }

        v5 = (v5 + 16);
        v8 -= 16;
        if (!v8)
        {
          return v7;
        }
      }
    }

    else
    {
      v17 = 16 * v6;
      while (1)
      {
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v5);
        mlir::OpaqueAttr::getAttrData(&CallableRegion);
        if (!v18)
        {
          break;
        }

        v5 = (v5 + 16);
        v17 -= 16;
        if (!v17)
        {
          return v7;
        }
      }
    }
  }

  return v5;
}

uint64_t mlir::NamedAttrList::get(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v3 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, (*a1 + 16 * v4), a2);
    v6 = v7;
  }

  else
  {
    if (!v4)
    {
      return 0;
    }

    v5 = 16 * v4;
    v6 = 1;
    while (mlir::CallGraphNode::getCallableRegion(v3) != a2)
    {
      v3 = (v3 + 16);
      v5 -= 16;
      if (!v5)
      {
        return 0;
      }
    }
  }

  if (v6)
  {
    return *(v3 + 1);
  }

  return 0;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v27 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*a1 + 16 * v7);
  if ((*(a1 + 80) & 4) != 0)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, v8, a2);
    v10 = v11;
  }

  else
  {
    if (!v7)
    {
LABEL_11:
      if ((*(a1 + 80) & 4) != 0)
      {
        AttrData = mlir::OpaqueAttr::getAttrData(&v27);
        v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, AttrData, v14);
        v4 = v27;
      }

      mlir::NamedAttribute::NamedAttribute(&v26, v4, a3);
      v15 = v26;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      if ((*a1 + 16 * v17) == v6)
      {
        if (v17 >= v18)
        {
          v25 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v25;
          v17 = *(a1 + 8);
          v16 = *a1;
        }

        *(v16 + v17) = v15;
        ++*(a1 + 8);
      }

      else
      {
        v19 = v6 - v16;
        if (v17 >= v18)
        {
          v24 = v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v17 + 1, 16);
          v15 = v24;
          v16 = *a1;
          v17 = *(a1 + 8);
        }

        v20 = (v16 + v19);
        *(v16 + v17) = *(v16 + v17 - 1);
        v21 = *(a1 + 8);
        v22 = *a1 + 16 * v21 - 16;
        if (v22 != v20)
        {
          v23 = v15;
          memmove(v20 + 1, v20, v22 - v20);
          v15 = v23;
          LODWORD(v21) = *(a1 + 8);
        }

        *(a1 + 8) = v21 + 1;
        *v20 = v15;
      }

      result = 0;
      goto LABEL_23;
    }

    v9 = 16 * v7;
    v10 = 1;
    while (mlir::CallGraphNode::getCallableRegion(v6) != v4)
    {
      v6 = (v6 + 16);
      v9 -= 16;
      if (!v9)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  result = *(v6 + 1);
  if (result == a3)
  {
    return result;
  }

  *(v6 + 1) = a3;
LABEL_23:
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v12 = a4;
  Context = mlir::Attribute::getContext(&v12);
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v8 = mlir::StringAttr::get(Context, v10);
  return mlir::NamedAttrList::set(a1, v8, v12);
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(*a1, (*a1 + 16 * v5), a2);
    v7 = v8;
  }

  else
  {
    if (!v5)
    {
      return 0;
    }

    v6 = 16 * v5;
    v7 = 1;
    while (mlir::CallGraphNode::getCallableRegion(v4) != a2)
    {
      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        return 0;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(v4 + 1);
  v10 = *(a1 + 8);
  v11 = *a1 + 16 * v10;
  if (v11 != (v4 + 16))
  {
    v12 = *(v4 + 1);
    memmove(v4, v4 + 16, v11 - (v4 + 16));
    result = v12;
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::erase(mlir::NamedAttrList *this, StringRef a2)
{
  v3 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(this, a2.var0, a2.var1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  result = *(v3 + 1);
  v7 = *(this + 2);
  v8 = *this + 16 * v7;
  if (v8 != (v5 + 16))
  {
    v9 = result;
    memmove(v5, v5 + 16, v8 - (v5 + 16));
    result = v9;
    LODWORD(v7) = *(this + 2);
  }

  *(this + 2) = v7 - 1;
  *(this + 10) &= 7uLL;
  return result;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a2;
  *a1 = a2;
  Context = mlir::Attribute::getContext(&v9);
  mlir::OperationName::OperationName(a1 + 1, a3, a4, Context);
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  a1[26] = 0x100000000;
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return a1;
}

double mlir::OperationState::OperationState(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a1 + 4;
  a1[3] = 0x400000000;
  a1[8] = a1 + 10;
  a1[9] = 0x400000000;
  a1[14] = a1 + 16;
  a1[15] = 0x400000000;
  a1[24] = 4;
  a1[25] = a1 + 27;
  *&result = 0x100000000;
  a1[26] = 0x100000000;
  a1[28] = a1 + 30;
  a1[29] = 0x100000000;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = &mlir::detail::TypeIDResolver<void,void>::id;
  a1[34] = 0;
  a1[36] = 0;
  return result;
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v19 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v20 = a1 + 16;
  *(a1 + 24) = 0x400000000;
  if (a5 < 5)
  {
    if (!a5)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v19, a5, 8);
    v19 = (*(a1 + 16) + 8 * *(a1 + 24));
  }

  v21 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) == 0 && v21)
  {
    v22 = 0;
    if (a5 < 4 || v19 - v21 <= 0x1F)
    {
      v23 = v19;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = &v19[a5 & 0xFFFFFFFFFFFFFFFCLL];
      v24 = (v21 + 16);
      v25 = v19 + 2;
      v26 = a5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (a5 == v22)
      {
        goto LABEL_32;
      }
    }

    v30 = a5 - v22;
    v31 = (v21 + 8 * v22);
    do
    {
      v32 = *v31++;
      *v23++ = v32;
      --v30;
    }

    while (v30);
    goto LABEL_32;
  }

  if ((a4 & 6) == 2 && v21)
  {
    if (a5 > 0xA && (v19 >= v21 + 32 * a5 || v21 + 24 >= &v19[a5]))
    {
      v33 = a5 & 3;
      if ((a5 & 3) == 0)
      {
        v33 = 4;
      }

      v28 = a5 - v33;
      v34 = (v21 + 88);
      v35 = (v19 + 2);
      v36 = v28;
      do
      {
        v37 = v34 - 8;
        v38 = vld4q_f64(v37);
        v39 = vld4q_f64(v34);
        *(v35 - 1) = v38;
        *v35 = v39;
        v34 += 16;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      v19 += v28;
    }

    else
    {
      v28 = 0;
    }

    v40 = a5 - v28;
    v41 = (v21 + 32 * v28 + 24);
    do
    {
      v42 = *v41;
      v41 += 4;
      *v19++ = v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v29 = 0;
    do
    {
      v19[v29] = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v29);
      ++v29;
    }

    while (a5 != v29);
  }

LABEL_32:
  *(a1 + 64) = a1 + 80;
  *(a1 + 24) += a5;
  *(a1 + 72) = 0x400000000;
  if (a7 < 5)
  {
    if (!a7)
    {
      v46 = 0;
      goto LABEL_39;
    }

    v43 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), a7, 8);
    v43 = *(a1 + 72);
  }

  v44 = 0;
  v45 = *(a1 + 64) + 8 * v43;
  do
  {
    *(v45 + 8 * v44) = mlir::TypeRange::dereference_iterator(a6, v44);
    ++v44;
  }

  while (a7 != v44);
  v46 = *(a1 + 72);
LABEL_39:
  *(a1 + 72) = v46 + a7;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x400000000;
  *(a1 + 192) = 0;
  mlir::DictionaryAttr::sort();
  *(a1 + 192) = 4;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x100000000;
  if (a12 < 2)
  {
    if (!a12)
    {
      v50 = 0;
      goto LABEL_46;
    }

    v47 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 200, (a1 + 216), a12, 8);
    v47 = *(a1 + 208);
  }

  v48 = 0;
  v49 = *(a1 + 200) + 8 * v47;
  do
  {
    *(v49 + 8 * v48) = mlir::BlockRange::dereference_iterator(a11, v48);
    ++v48;
  }

  while (a12 != v48);
  v50 = *(a1 + 208);
LABEL_46:
  v51 = a1 + 240;
  *(a1 + 224) = a1 + 240;
  v52 = (a1 + 224);
  *(a1 + 208) = v50 + a12;
  *(a1 + 232) = 0x100000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  if (a14)
  {
    v53 = 0;
    v54 = a13;
    v55 = 8 * a14;
    v56 = a13;
    do
    {
      if (v53 >= *(a1 + 236))
      {
        if (v51 <= v56 && v51 + 8 * v53 > v56)
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v53 + 1);
          v57 = (v54 + *v52 - v51);
          v51 = *v52;
          goto LABEL_50;
        }

        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v53 + 1);
        v51 = *v52;
      }

      v57 = v56;
LABEL_50:
      v58 = *(a1 + 232);
      v59 = *v57;
      *v57 = 0;
      *(v51 + 8 * v58) = v59;
      v53 = v58 + 1;
      *(a1 + 232) = v58 + 1;
      ++v56;
      ++v54;
      v55 -= 8;
    }

    while (v55);
  }

  return a1;
}

{
  return mlir::OperationState::OperationState(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  mlir::OperationName::OperationName(&v25, a3, a4, Context);
  return mlir::OperationState::OperationState(a1, a2, v25, a5, a6, a7, a8, v21, a9, a10, a11, a12, a13, a14);
}

void mlir::OperationState::~OperationState(mlir::OperationState *this)
{
  if (*(this + 32))
  {
    (*(this + 34))(*(this + 35));
  }

  v2 = *(this + 28);
  v3 = *(this + 58);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        mlir::Region::~Region(v6);
        operator delete(v7);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 28);
  }

  if (v2 != this + 240)
  {
    free(v2);
  }

  v8 = *(this + 25);
  if (v8 != this + 216)
  {
    free(v8);
  }

  v9 = *(this + 14);
  if (v9 != this + 128)
  {
    free(v9);
  }

  v10 = *(this + 8);
  if (v10 != this + 80)
  {
    free(v10);
  }

  v11 = *(this + 2);
  if (v11 != this + 32)
  {
    free(v11);
  }
}

void mlir::OperationState::addOperands(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = *(result + 24);
  v7 = a3 + v6;
  if (v7 > *(result + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 16, (result + 32), v7, 8);
    v6 = *(result + 24);
  }

  if (a3)
  {
    v8 = *(result + 16);
    v9 = (v8 + 8 * v6);
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) != 0 || !v10)
    {
      if ((a2 & 6) == 2 && v10)
      {
        if (a3 > 0xC && (v9 >= v10 + 32 * a3 || v10 + 24 >= v8 + 8 * (a3 + v6)))
        {
          v22 = a3 & 3;
          if ((a3 & 3) == 0)
          {
            v22 = 4;
          }

          v16 = a3 - v22;
          v23 = (v10 + 88);
          v24 = (v9 + 2);
          v25 = v16;
          do
          {
            v26 = v23 - 8;
            v27 = vld4q_f64(v26);
            v28 = vld4q_f64(v23);
            *(v24 - 1) = v27;
            *v24 = v28;
            v23 += 16;
            v24 += 2;
            v25 -= 4;
          }

          while (v25);
          v9 += v16;
        }

        else
        {
          v16 = 0;
        }

        v29 = a3 - v16;
        v30 = (v10 + 32 * v16 + 24);
        do
        {
          v31 = *v30;
          v30 += 4;
          *v9++ = v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v17 = 0;
        do
        {
          v9[v17] = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, v17);
          ++v17;
        }

        while (a3 != v17);
      }
    }

    else
    {
      if (a3 <= 7 || (v11 = 8 * v6 + v8, v11 - v10 < 0x20))
      {
        v12 = 0;
LABEL_9:
        v13 = a3 - v12;
        v14 = (v10 + 8 * v12);
        do
        {
          v15 = *v14++;
          *v9++ = v15;
          --v13;
        }

        while (v13);
        goto LABEL_32;
      }

      v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 += a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v10 + 16);
      v19 = (v11 + 16);
      v20 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (a3 != v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_32:
  *(result + 24) += a3;
}

void mlir::OperationState::addSuccessors(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 208);
  v7 = a3 + v6;
  if (v7 > *(result + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 200, (result + 216), v7, 8);
    v6 = *(result + 208);
  }

  if (a3)
  {
    v8 = 0;
    v9 = *(result + 200) + 8 * v6;
    do
    {
      *(v9 + 8 * v8) = mlir::BlockRange::dereference_iterator(a2, v8);
      ++v8;
    }

    while (a3 != v8);
    LODWORD(v6) = *(result + 208);
  }

  *(result + 208) = v6 + a3;
}

uint64_t mlir::OperationState::addRegion(mlir::OperationState *this)
{
  v2 = operator new(0x18uLL);
  *v2 = v2;
  v2[1] = v2;
  v2[2] = 0;
  v7 = v2;
  v3 = *(this + 58);
  if (v3 >= *(this + 59))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<mlir::Region*>(this + 224, &v7);
    return *(*(this + 28) + 8 * *(this + 58) - 8);
  }

  else
  {
    v4 = *(this + 28);
    *(v4 + 8 * v3) = v2;
    v5 = v3 + 1;
    *(this + 58) = v5;
    return *(v4 + 8 * v5 - 8);
  }
}

uint64_t mlir::OperationState::addRegion(uint64_t result, char *a2)
{
  v3 = (result + 224);
  v2 = *(result + 224);
  v4 = *(result + 232);
  if (v4 >= *(result + 236))
  {
    v7 = result;
    v8 = a2;
    if (v2 <= a2 && v2 + 8 * v4 > a2)
    {
      v10 = &a2[-v2];
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v4 + 1);
      v2 = *v3;
      a2 = &v10[*v3];
      result = v7;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v4 + 1);
      v2 = *v3;
      result = v7;
      a2 = v8;
    }
  }

  v5 = *(result + 232);
  v6 = *a2;
  *a2 = 0;
  *(v2 + 8 * v5) = v6;
  *(result + 232) = v5 + 1;
  return result;
}

uint64_t mlir::OperationState::addRegions(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = (result + 224);
    v3 = *(result + 224);
    v5 = *(result + 232);
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      if (v5 >= *(result + 236))
      {
        v11 = result;
        v12 = a2;
        if (v3 <= v7 && v3 + 8 * v5 > v7)
        {
          v13 = v3;
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
          v3 = *v4;
          a2 = v12;
          v8 = (v12 + *v4 - v13);
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
          v3 = *v4;
          v8 = v7;
          a2 = v12;
        }

        result = v11;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(result + 232);
      v10 = *v8;
      *v8 = 0;
      *(v3 + 8 * v9) = v10;
      v5 = v9 + 1;
      *(result + 232) = v9 + 1;
      ++v7;
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::detail::OperandStorage::OperandStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 8) = a3;
  *a1 = a5 & 0x7FFFFFFF;
  *(a1 + 4) = a5 & 0x7FFFFFFF;
  if ((a5 & 0x7FFFFFFF) != 0)
  {
    v7 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v7)
    {
      if ((a4 & 6) == 2 && v7)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (*(a1 + 8) + v13);
          v16 = *(v7 + 24 + v13);
          v15[2] = a2;
          v15[3] = v16;
          *v15 = 0;
          v15[1] = v16;
          v17 = *v16;
          *v15 = *v16;
          if (v17)
          {
            *(v17 + 8) = v15;
          }

          *v16 = v15;
          ++v14;
          v13 += 32;
        }

        while (v14 < *(a1 + 4));
      }

      else
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(a1 + 8) + v18);
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v19);
          v20[2] = a2;
          v20[3] = NextResultAtOffset;
          *v20 = 0;
          v20[1] = NextResultAtOffset;
          v22 = *NextResultAtOffset;
          *v20 = *NextResultAtOffset;
          if (v22)
          {
            *(v22 + 8) = v20;
          }

          *NextResultAtOffset = v20;
          ++v19;
          v18 += 32;
        }

        while (v19 < *(a1 + 4));
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = (*(a1 + 8) + v8);
        v11 = *(v7 + 8 * v9);
        v10[2] = a2;
        v10[3] = v11;
        *v10 = 0;
        v10[1] = v11;
        v12 = *v11;
        *v10 = *v11;
        if (v12)
        {
          *(v12 + 8) = v10;
        }

        *v11 = v10;
        ++v9;
        v8 += 32;
      }

      while (v9 < *(a1 + 4));
    }
  }

  return a1;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  result = mlir::detail::OperandStorage::resize(a1, a2, a4);
  if (a4)
  {
    v7 = result;
    v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v9 = a3 & 6;
    if ((a3 & 6) != 0 || !v8)
    {
      v16 = a4;
      if (v9 == 2 && v8)
      {
        v17 = v8 + 3;
        do
        {
          v18 = *v17;
          v19 = v7[1];
          if (v19)
          {
            v20 = *v7;
            *v19 = *v7;
            if (v20)
            {
              *(v20 + 8) = v19;
            }
          }

          v7[3] = v18;
          v21 = *v18;
          *v7 = *v18;
          v7[1] = v18;
          if (v21)
          {
            *(v21 + 8) = v7;
          }

          *v18 = v7;
          v7 += 4;
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v23 = v7[1];
          if (v23)
          {
            v24 = *v7;
            *v23 = *v7;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          v7[3] = result;
          v25 = *result;
          *v7 = *result;
          v7[1] = result;
          if (v25)
          {
            *(v25 + 8) = v7;
          }

          *result = v7;
          v7 += 4;
        }
      }
    }

    else
    {
      v10 = a4;
      do
      {
        v12 = *v8++;
        v11 = v12;
        v13 = v7[1];
        if (v13)
        {
          v14 = *v7;
          *v13 = *v7;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        v7[3] = v11;
        v15 = *v11;
        *v7 = *v11;
        v7[1] = v11;
        if (v15)
        {
          *(v15 + 8) = v7;
        }

        *v11 = v7;
        v7 += 4;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

char *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  result = *(this + 1);
  v5 = *(this + 1);
  if (v5 >= a3)
  {
    if (v5 != a3)
    {
      v29 = a3;
      do
      {
        v30 = &result[32 * v29];
        v31 = *(v30 + 1);
        if (v31)
        {
          v32 = *v30;
          *v31 = v32;
          if (v32)
          {
            *(v32 + 8) = v31;
          }
        }

        ++v29;
      }

      while (v5 != v29);
    }

    *(this + 1) = a3;
  }

  else
  {
    v6 = *this & 0x7FFFFFFF;
    if (v6 >= a3)
    {
      do
      {
        v24 = &result[32 * v5];
        *v24 = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = a2;
        *(v24 + 3) = 0;
        LODWORD(v5) = *(this + 1) + 1;
        *(this + 1) = v5;
      }

      while (v5 != a3);
    }

    else
    {
      v8 = this;
      v9 = result;
      v10 = (v6 + 2) | ((v6 + 2) >> 1) | (((v6 + 2) | ((v6 + 2) >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      v12 = (v11 >> 16) | v11;
      if (v12 + 1 > a3)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = a3;
      }

      v15 = malloc(32 * v14);
      if (v5)
      {
        v16 = v9;
        v17 = (v9 + 24);
        v18 = 32 * v5;
        v19 = 32 * v5;
        v20 = v15;
        v21 = a3;
        v22 = v8;
        v23 = a2;
        do
        {
          v25 = *(v17 - 2);
          v20[2] = *(v17 - 1);
          if (v25)
          {
            v26 = *(v17 - 3);
            *v25 = v26;
            if (v26)
            {
              *(v26 + 8) = v25;
            }
          }

          *(v17 - 2) = 0;
          *v20 = 0;
          v20[1] = 0;
          v27 = *v17;
          v20[3] = *v17;
          *v17 = 0;
          if (v27)
          {
            v28 = *v27;
            *v20 = *v27;
            v20[1] = v27;
            if (v28)
            {
              *(v28 + 8) = v20;
            }

            *v27 = v20;
          }

          v20 += 4;
          v17 += 4;
          v19 -= 32;
        }

        while (v19);
        v33 = (v9 + 8);
        do
        {
          v34 = *v33;
          if (*v33)
          {
            v35 = *(v33 - 1);
            *v34 = v35;
            if (v35)
            {
              *(v35 + 8) = v34;
            }
          }

          v33 += 4;
          v18 -= 32;
        }

        while (v18);
      }

      else
      {
        v21 = a3;
        v16 = v9;
        v22 = v8;
        v23 = a2;
      }

      do
      {
        v36 = &v15[4 * v5];
        *v36 = 0;
        v36[1] = 0;
        v36[2] = v23;
        v36[3] = 0;
        LODWORD(v5) = v5 + 1;
      }

      while (v21 != v5);
      *(v22 + 1) = v21;
      if ((*v22 & 0x80000000) != 0)
      {
        free(v16);
        v22 = v8;
      }

      *(v22 + 1) = v15;
      *v22 = v14 | 0x80000000;
      return v15;
    }
  }

  return result;
}

mlir::detail::OperandStorage *mlir::detail::OperandStorage::setOperands(mlir::detail::OperandStorage *result, mlir::Operation *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v6 = a6;
  v8 = a3;
  v9 = result;
  v10 = a6 - a4;
  if (a6 == a4)
  {
    v6 = a4;
    if (!a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a6 < a4)
  {
    result = mlir::detail::OperandStorage::eraseOperands(result, a6 + a3, a4 - a6);
    if (!v6)
    {
      return result;
    }

LABEL_6:
    v11 = 0;
    v12 = *(v9 + 1);
    v13 = (a5 & 6) != 0;
    v14 = (a5 & 6) != 2;
    v15 = a5 & 0xFFFFFFFFFFFFFFF8;
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = 1;
    }

    for (i = 24; ; i += 32)
    {
      if (v16)
      {
        if (v17)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v11);
          v19 = (v12 + 32 * (v8 + v11));
          v20 = v19[1];
          if (v20)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = *(v15 + i);
          v19 = (v12 + 32 * (v8 + v11));
          v20 = v19[1];
          if (v20)
          {
LABEL_21:
            v21 = *v19;
            *v20 = *v19;
            if (v21)
            {
              *(v21 + 8) = v20;
            }
          }
        }
      }

      else
      {
        result = *(v15 + 8 * v11);
        v19 = (v12 + 32 * (v8 + v11));
        v20 = v19[1];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      v19[3] = result;
      v22 = *result;
      *v19 = *result;
      v19[1] = result;
      if (v22)
      {
        *(v22 + 8) = v19;
      }

      *result = v19;
      if (v6 == ++v11)
      {
        return result;
      }
    }
  }

  result = mlir::detail::OperandStorage::resize(result, a2, *(result + 1) + v10);
  v25 = result;
  v26 = 32 * v10;
  v27 = 32 * (v24 - (a4 + v8));
  if (v26 != v27)
  {
    v28 = (result + 32 * v24);
    v29 = &v28[v26 / 0xFFFFFFFFFFFFFFF8];
    v30 = &v28[v27 / 0xFFFFFFFFFFFFFFF8];
    v31 = v28 - 4;
    v32 = &v28[v26 / 0xFFFFFFFFFFFFFFF8 - 4];
    for (result = std::swap[abi:nn200100]<mlir::OpOperand>(v28 - 4, v32); v32 != v30; result = std::swap[abi:nn200100]<mlir::OpOperand>(v31, v32))
    {
      if (v31 == v29)
      {
        v29 = v32;
      }

      v31 -= 4;
      v32 -= 4;
    }

    if (v31 != v29)
    {
      v33 = v29;
      while (1)
      {
        v33 -= 4;
        result = std::swap[abi:nn200100]<mlir::OpOperand>(v31 - 4, v33);
        v34 = v31 - 4 == v29;
        if (v33 == v30)
        {
          if (v31 - 4 == v29)
          {
            break;
          }

          v33 = v29 - 4;
          v31 -= 8;
          while (1)
          {
            result = std::swap[abi:nn200100]<mlir::OpOperand>(v31, v29 - 4);
            v34 = v31 == v29;
            if (v33 != v30)
            {
              break;
            }

            v35 = v31 == v29;
            v31 -= 4;
            if (v35)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v31 -= 4;
        }

        if (v34)
        {
          v29 = v33;
        }
      }
    }
  }

LABEL_42:
  if (v6)
  {
    v36 = v6;
    v37 = (a5 & 0xFFFFFFFFFFFFFFF8);
    v38 = (a5 & 0xFFFFFFFFFFFFFFF8) == 0 || (a5 & 6) != 2;
    if ((a5 & 6) != 0 || !v37)
    {
      v39 = 0;
      for (j = 3; ; j += 4)
      {
        if (v38)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, v39);
          v41 = (v25 + 32 * v8 + 32 * v39);
          v42 = v41[1];
          if (v42)
          {
            goto LABEL_54;
          }
        }

        else
        {
          result = v37[j];
          v41 = (v25 + 32 * v8 + 32 * v39);
          v42 = v41[1];
          if (v42)
          {
LABEL_54:
            v43 = *v41;
            *v42 = *v41;
            if (v43)
            {
              *(v43 + 8) = v42;
            }
          }
        }

        v41[3] = result;
        v44 = *result;
        *v41 = *result;
        v41[1] = result;
        if (v44)
        {
          *(v44 + 8) = v41;
        }

        *result = v41;
        if (v36 == ++v39)
        {
          return result;
        }
      }
    }

    do
    {
      v45 = (v25 + 32 * v8);
      v47 = *v37++;
      v46 = v47;
      v48 = v45[1];
      if (v48)
      {
        v49 = *v45;
        *v48 = *v45;
        if (v49)
        {
          *(v49 + 8) = v48;
        }
      }

      v45[3] = v46;
      v50 = *v46;
      *v45 = *v46;
      v45[1] = v46;
      if (v50)
      {
        *(v50 + 8) = v45;
      }

      *v46 = v45;
      ++v8;
      --v36;
    }

    while (v36);
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::eraseOperands(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v4 = this;
  v5 = this[1];
  v6 = *(this + 1);
  *(this + 1) = v6 - a3;
  v7 = a2;
  v8 = v5 + 32 * a2;
  v9 = a3;
  v10 = (v8 + 32 * a3);
  v11 = (v5 + 32 * v6);
  v12 = v6 - a3 == a2 || a3 == 0;
  if (!v12 && v10 != v11)
  {
    this = std::swap[abi:nn200100]<mlir::OpOperand>((v5 + 32 * a2), (v8 + 32 * a3));
    v18 = (v8 + 32);
    v19 = v10 + 4;
    if (v10 + 4 != v11)
    {
      v20 = 32 * v6 - 32 * v7 - 32 * v9 - 32;
      do
      {
        if (v18 == v10)
        {
          v10 = v19;
        }

        this = std::swap[abi:nn200100]<mlir::OpOperand>(v18, v19);
        v18 += 4;
        v19 += 4;
        v20 -= 32;
      }

      while (v20);
    }

    if (v18 != v10)
    {
      v21 = v10;
      while (1)
      {
        this = std::swap[abi:nn200100]<mlir::OpOperand>(v18, v10);
        v10 += 4;
        v22 = v18 + 4 == v21;
        if (v10 == v11)
        {
          if (v18 + 4 == v21)
          {
            break;
          }

          v10 = v21 + 4;
          v18 += 8;
          while (1)
          {
            this = std::swap[abi:nn200100]<mlir::OpOperand>(v18 - 4, v21);
            v22 = v18 == v21;
            if (v10 != v11)
            {
              break;
            }

            v12 = v18 == v21;
            v18 += 4;
            if (v12)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          v18 += 4;
        }

        if (v22)
        {
          v21 = v10;
        }
      }
    }
  }

LABEL_9:
  if (a3)
  {
    v14 = *(v4 + 1);
    do
    {
      v15 = (v5 + 32 * v14);
      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = v17;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      ++v14;
      --v9;
    }

    while (v9);
  }

  return this;
}

uint64_t mlir::OperandRange::split@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v7 = a2;
  result = mlir::AffineBinaryOpExpr::getLHS(&v7);
  *a3 = v5;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = result;
  return result;
}

uint64_t mlir::OperandRangeRange::dereference(void *a1, uint64_t a2)
{
  v17 = a1[1];
  v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
  if (a2)
  {
    v5 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v5 >= 7)
    {
      v9 = v5 + 1;
      v10 = (v5 + 1) & 0x7FFFFFFFFFFFFFF8;
      v7 = (v4 + 4 * v10);
      v11 = (v4 + 16);
      v12 = 0uLL;
      v13 = v10;
      v14 = 0uLL;
      do
      {
        v12 = vaddq_s32(v11[-1], v12);
        v14 = vaddq_s32(*v11, v14);
        v11 += 2;
        v13 -= 8;
      }

      while (v13);
      v6 = vaddvq_s32(vaddq_s32(v14, v12));
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      v7 = v4;
    }

    do
    {
      v15 = *v7++;
      v6 += v15;
    }

    while (v7 != (v4 + 4 * a2));
LABEL_9:
    v8 = v6;
    return *a1 + 32 * v8;
  }

  v8 = 0;
  return *a1 + 32 * v8;
}

uint64_t mlir::MutableOperandRange::MutableOperandRange(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  v9 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  v10 = a1 + 16;
  *(a1 + 24) = 0x100000000;
  v11 = 3 * a6;
  v12 = (24 * a6) >> 3;
  v13 = -1431655765 * v12;
  if (0xAAAAAAAAAAAAAAABLL * v12 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9, 0xAAAAAAAAAAAAAAABLL * v12, 24);
    v14 = *(a1 + 24);
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if (a6)
  {
LABEL_5:
    memcpy((*(a1 + 16) + 24 * v14), a5, 8 * v11);
    v14 = *(a1 + 24);
  }

LABEL_6:
  *(a1 + 24) = v14 + v13;
  return a1;
}

mlir::MutableOperandRange *mlir::MutableOperandRange::MutableOperandRange(mlir::MutableOperandRange *this, mlir::OpOperand *a2)
{
  v3 = *(a2 + 2);
  OperandNumber = mlir::OpOperand::getOperandNumber(a2);
  *this = v3;
  *(this + 2) = OperandNumber;
  *(this + 3) = 1;
  *(this + 2) = this + 32;
  *(this + 3) = 0x100000000;
  return this;
}

void mlir::MutableOperandRange::slice(_DWORD *result@<X0>, int a2@<W1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v7 = result[2] + a2;
  v8 = *(result + 2);
  v9 = result[6];
  *a5 = *result;
  *(a5 + 8) = v7;
  *(a5 + 12) = a3;
  v10 = (a5 + 32);
  *(a5 + 16) = a5 + 32;
  v11 = (a5 + 16);
  *(a5 + 24) = 0x100000000;
  if (v9 < 2)
  {
    if (!v9)
    {
      v13 = 0;
      *(a5 + 24) = 0;
      if (*(a4 + 24) != 1)
      {
        return;
      }

      goto LABEL_6;
    }

    v12 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v9, 24);
    v12 = *(a5 + 24);
  }

  memcpy((*(a5 + 16) + 24 * v12), v8, 24 * v9);
  v13 = (*(a5 + 24) + v9);
  *(a5 + 24) = v13;
  if (*(v5 + 24) != 1)
  {
    return;
  }

LABEL_6:
  v14 = *(a5 + 16);
  if (v13 >= *(a5 + 28))
  {
    if (v14 <= v5 && v14 + 24 * v13 > v5)
    {
      v17 = v5 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 24);
      v14 = *v11;
      v5 = &v17[*v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 24);
      v14 = *v11;
    }
  }

  v15 = v14 + 24 * *(a5 + 24);
  v16 = *v5;
  *(v15 + 16) = *(v5 + 2);
  *v15 = v16;
  ++*(a5 + 24);
}

void mlir::MutableOperandRange::append(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    mlir::Operation::insertOperands(*result, *(result + 12) + *(result + 8), a2, a3);
    v5 = *(result + 12) + v3;

    mlir::MutableOperandRange::updateLength(result, v5);
  }
}

void mlir::MutableOperandRange::updateLength(mlir::MutableOperandRange *this, int a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  *(this + 3) = a2;
  v3 = *(this + 6);
  if (v3)
  {
    v5 = a2 - v2;
    v6 = (*(this + 2) + 8);
    v7 = 24 * v3;
    while (1)
    {
      v18 = v6[1];
      v9 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
      v10 = v8;
      v19 = v21;
      v20 = 0x800000000;
      v11 = (4 * v8) >> 2;
      if (v11 < 9)
      {
        break;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v11, 4);
      v12 = v20;
      v13 = v19;
      v14 = 4 * v10;
      if (v10)
      {
        goto LABEL_6;
      }

LABEL_7:
      LODWORD(v20) = v12 + (v14 >> 2);
      *(v13 + *(v6 - 2)) += v5;
      Context = mlir::Attribute::getContext(&v18);
      v6[1] = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v19, v20);
      v16 = *this;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v6);
      mlir::Operation::setAttr(v16, CallableRegion, v6[1]);
      if (v19 != v21)
      {
        free(v19);
      }

      v6 += 3;
      v7 -= 24;
      if (!v7)
      {
        return;
      }
    }

    v12 = 0;
    v13 = v21;
    v14 = 4 * v8;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    memcpy(v13 + 4 * v12, v9, v14);
    v12 = v20;
    v13 = v19;
    goto LABEL_7;
  }
}

void mlir::MutableOperandRange::assign(mlir::MutableOperandRange *a1, uint64_t a2, uint64_t a3)
{
  mlir::Operation::setOperands(*a1, *(a1 + 2), *(a1 + 3), a2, a3);
  if (a3 != *(a1 + 3))
  {

    mlir::MutableOperandRange::updateLength(a1, a3);
  }
}

void mlir::MutableOperandRange::erase(mlir::MutableOperandRange *this, int a2, unsigned int a3)
{
  if (*(this + 3))
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2) + a2, a3);
    v5 = *(this + 3) - a3;

    mlir::MutableOperandRange::updateLength(this, v5);
  }
}

void mlir::MutableOperandRange::clear(mlir::MutableOperandRange *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    mlir::detail::OperandStorage::eraseOperands((*this + 64), *(this + 2), v1);

    mlir::MutableOperandRange::updateLength(this, 0);
  }
}

uint64_t mlir::MutableOperandRangeRange::MutableOperandRangeRange(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v16 = v18;
  v17 = 0x100000000;
  if (&v15 != a2)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      if (v7 < 2)
      {
        v11 = 24;
        v10 = v18;
      }

      else
      {
        v8 = a2;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v7, 24);
        v9 = *(v8 + 6);
        if (!v9)
        {
LABEL_8:
          LODWORD(v17) = v7;
          goto LABEL_9;
        }

        a2 = v8;
        v10 = v16;
        v11 = 24 * v9;
      }

      memcpy(v10, a2[2], v11);
      goto LABEL_8;
    }
  }

LABEL_9:
  v18[3] = a3;
  v18[4] = a4;
  v14 = a4;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v14);
  llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(a1, &v15, 0, LHS);
  if (v16 != v18)
  {
    free(v16);
  }

  return a1;
}

void mlir::MutableOperandRangeRange::dereference(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  *v19 = *(a1 + 64);
  v6 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v19);
  v7 = (v6 + 4 * a2);
  if (!a2)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v8 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v8 < 7)
  {
    v9 = 0;
    v10 = v6;
    do
    {
LABEL_8:
      v17 = *v10++;
      v9 += v17;
    }

    while (v10 != v7);
    goto LABEL_9;
  }

  v11 = v8 + 1;
  v12 = (v8 + 1) & 0x7FFFFFFFFFFFFFF8;
  v10 = (v6 + 4 * v12);
  v13 = (v6 + 16);
  v14 = 0uLL;
  v15 = v12;
  v16 = 0uLL;
  do
  {
    v14 = vaddq_s32(v13[-1], v14);
    v16 = vaddq_s32(*v13, v16);
    v13 += 2;
    v15 -= 8;
  }

  while (v15);
  v9 = vaddvq_s32(vaddq_s32(v16, v14));
  if (v11 != v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = *v7;
  *&v22[4] = *(a1 + 56);
  *v19 = a2;
  *&v19[4] = *v22;
  v20 = *&v22[16];
  v21 = 1;
  mlir::MutableOperandRange::slice(a1, v9, v18, v19, a3);
}

__n128 mlir::ResultRange::getUses@<Q0>(mlir::detail::OpResultImpl **this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = this[1];
  if (v5)
  {
    v6 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6))
    {
      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    if (v5 == v6)
    {
LABEL_8:
      v7 = 0;
      v6 = v5;
      goto LABEL_10;
    }

    v7 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  result = *this;
  *(a2 + 56) = *this;
  *(a2 + 40) = result;
  *(a2 + 72) = 0;
  return result;
}

uint64_t *mlir::ResultRange::use_begin@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = 0;
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      if (*this)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v6 = 0;
        a2[1] = v3;
        goto LABEL_9;
      }
    }

    a2[1] = v5;
    if (v3 == v5)
    {
      v6 = 0;
    }

    else
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, v5);
      v6 = *this;
    }

LABEL_9:
    a2[4] = v6;
  }

  return this;
}

__n128 mlir::ResultRange::use_end@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = *this;
  *a2 = *this;
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::operator++(uint64_t *a1)
{
  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  v2 = a1[4];
  if (v2)
  {
    a1[4] = *v2;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, a1[1]);
  if (a1[4])
  {
    return a1;
  }

  v4 = a1[1] + 1;
  a1[1] = v4;
  if (v4 == a1[3])
  {
    a1[4] = 0;
    return a1;
  }

  else
  {
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v4);
      v6 = a1[1];
      v7 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v4 = v6 + 1;
      a1[1] = v4;
      if (v4 == v7)
      {
        a1[4] = 0;
        return a1;
      }
    }

    if (v6 == v7)
    {
      a1[4] = 0;
    }

    else
    {
      a1[4] = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
    }

    return a1;
  }
}

uint64_t *mlir::ResultRange::replaceAllUsesWith(uint64_t *this, mlir::Operation *a2)
{
  v2 = *(a2 + 9);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = this[1];
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v6);
      for (this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v6); ; *this = v9)
      {
        v9 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v10 = v9[1];
        if (v10)
        {
          v11 = *v9;
          *v10 = *v9;
          if (v11)
          {
            *(v11 + 8) = v10;
          }
        }

        v9[3] = this;
        v12 = *this;
        *v9 = *this;
        v9[1] = this;
        if (v12)
        {
          *(v12 + 8) = v9;
        }
      }

      ++v6;
    }

    while (v6 != v4 && v6 != v2);
  }

  return this;
}

uint64_t *mlir::ResultRange::replaceUsesWithIf(uint64_t *result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = result[1];
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = *result;
    v12 = v4 - 1;
    v13 = v6 - 1;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v10);
      v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v10);
      v16[0] = NextResultAtOffset;
      v16[1] = v15;
      result = mlir::Value::replaceUsesWithIf(v16, v15, a3, a4);
      if (v13 == v10)
      {
        break;
      }

      v7 = v12 == v10++;
    }

    while (!v7);
  }

  return result;
}

unint64_t *mlir::ValueRange::ValueRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9;
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

unint64_t mlir::ValueRange::offset_base(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return v3 + 8 * a2;
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    return (v3 + 32 * a2) | 2;
  }
}

uint64_t mlir::ValueRange::dereference_iterator(void *a1, uint64_t a2)
{
  v2 = *a1 & 6;
  v3 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    return *(v3 + 8 * a2);
  }

  if (v2 != 2 || v3 == 0)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, a2);
  }

  else
  {
    return *(v3 + 32 * a2 + 24);
  }
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

void mlir::OperationEquivalence::isRegionEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), unint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6, unsigned int a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, void), uint64_t a10)
{
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v10 = a1;
  v11 = a2;
  v64 = a1;
  v65 = a2;
  while (1)
  {
    v12 = *(v11 + 8);
    v10 = *(v10 + 8);
    v13 = v10 == a1 || v12 == a2;
    if (v13)
    {
      goto LABEL_94;
    }

    v14 = v10 ? (v10 - 8) : 0;
    v15 = v12 ? (v12 - 8) : 0;
    if (((v14[7] - v14[6]) >> 3) != ((v15[7] - v15[6]) >> 3))
    {
      goto LABEL_94;
    }

    v66 = v12;
    v79 = v14;
    v80 = v15;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>(&v74, &v79, &v80, v78);
    if (*(v78[0] + 8) != v15)
    {
      goto LABEL_94;
    }

    v16 = v14[6];
    v17 = v14[7];
    v18 = v15[6];
    v19 = v15[7];
    if (v16 != v17 && v18 != v19)
    {
      if (a5)
      {
        v54 = v18 + 8;
        v55 = v16 + 8;
        while (1)
        {
          v56 = *(v55 - 8);
          v79 = v56;
          v57 = *(v54 - 8);
          v77 = v57;
          if ((*(v57 + 8) ^ *(v56 + 8)) > 7)
          {
            break;
          }

          if ((a7 & 1) == 0)
          {
            Loc = mlir::Value::getLoc(&v79);
            if (Loc != mlir::Value::getLoc(&v77))
            {
              break;
            }

            v56 = v79;
            v57 = v77;
          }

          a5(a6, v56, v57);
          if (v55 != v17)
          {
            v55 += 8;
            v13 = v54 == v19;
            v54 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else if (a7)
      {
        v62 = v18 + 8;
        v63 = v16 + 8;
        while (1)
        {
          v79 = *(v63 - 8);
          if ((*(*(v62 - 8) + 8) ^ v79[1]) > 7)
          {
            break;
          }

          if (v63 != v17)
          {
            v63 += 8;
            v13 = v62 == v19;
            v62 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
        v59 = v18 + 8;
        v60 = v16 + 8;
        while (1)
        {
          v79 = *(v60 - 8);
          v77 = *(v59 - 8);
          if ((*(v77 + 8) ^ v79[1]) > 7)
          {
            break;
          }

          v61 = mlir::Value::getLoc(&v79);
          if (v61 != mlir::Value::getLoc(&v77))
          {
            break;
          }

          if (v60 != v17)
          {
            v60 += 8;
            v13 = v59 == v19;
            v59 += 8;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_19;
        }
      }

LABEL_94:
      llvm::deallocate_buffer(v74, (16 * v76));
    }

LABEL_19:
    v21 = v15 + 4;
    v22 = v15[5];
    v23 = v14[5];
    v68 = v14 + 4;
    if (v23 != v14 + 4)
    {
      break;
    }

LABEL_78:
    a1 = v64;
    a2 = v65;
    v11 = v66;
    if (v22 != v21)
    {
      goto LABEL_94;
    }
  }

  v67 = v15 + 4;
  while (1)
  {
    if (v22 == v21)
    {
      goto LABEL_94;
    }

    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v25 = v24;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v27 = v26;
    if (!mlir::OperationEquivalence::isEquivalentTo(v25, v26, a3, a4, a5, a6, a7, v28, a9, a10))
    {
      goto LABEL_94;
    }

    v29 = mlir::SuccessorRange::SuccessorRange(&v79, v25);
    v30 = v79;
    v31 = v80;
    mlir::SuccessorRange::SuccessorRange(v29, v27);
    if (v31)
    {
      v32 = v80;
      if (v80)
      {
        break;
      }
    }

LABEL_21:
    v22 = v22[1];
    v23 = v23[1];
    v21 = v67;
    if (v23 == v68)
    {
      goto LABEL_78;
    }
  }

  v33 = 0;
  v34 = v79;
  v35 = v74;
  v36 = v76;
  while (1)
  {
    v37 = *(v30 + 32 * v33 + 24);
    v38 = *(v34 + 32 * v33 + 24);
    if (!v36)
    {
      goto LABEL_50;
    }

    v39 = v36 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v36 - 1);
    v41 = v35 + 16 * v40;
    v42 = *v41;
    if (v37 != *v41)
    {
      break;
    }

LABEL_43:
    if (*(v41 + 1) != v38)
    {
      goto LABEL_94;
    }

    if (++v33 == v31 || v33 == v32)
    {
      goto LABEL_21;
    }
  }

  v43 = 0;
  v44 = 1;
  while (v42 != -4096)
  {
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = v42 == -8192;
    }

    if (v45)
    {
      v43 = v41;
    }

    v46 = v40 + v44++;
    v40 = v46 & v39;
    v41 = v35 + 16 * (v46 & v39);
    v42 = *v41;
    if (v37 == *v41)
    {
      goto LABEL_43;
    }
  }

  if (v43)
  {
    v41 = v43;
  }

  if (4 * v75 + 4 < 3 * v36)
  {
    if (v36 + ~v75 - HIDWORD(v75) > v36 >> 3)
    {
      LODWORD(v75) = v75 + 1;
      if (*v41 == -4096)
      {
LABEL_42:
        *v41 = v37;
        *(v41 + 1) = v38;
        goto LABEL_43;
      }

LABEL_41:
      --HIDWORD(v75);
      goto LABEL_42;
    }
  }

  else
  {
LABEL_50:
    v36 *= 2;
  }

  llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(&v74, v36);
  v35 = v74;
  v36 = v76;
  if (v76)
  {
    v47 = v76 - 1;
    v48 = (v76 - 1) & ((v37 >> 4) ^ (v37 >> 9));
    v41 = v74 + 16 * v48;
    v49 = *v41;
    if (v37 != *v41)
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
          v50 = v41;
        }

        v53 = v48 + v51++;
        v48 = v53 & v47;
        v41 = v74 + 16 * (v53 & v47);
        v49 = *v41;
        if (v37 == *v41)
        {
          goto LABEL_63;
        }
      }

      if (v50)
      {
        v41 = v50;
      }
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_63:
  LODWORD(v75) = v75 + 1;
  if (*v41 == -4096)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

uint64_t mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), unint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, void), uint64_t a10)
{
  if (a1 == a2)
  {
    return 1;
  }

  v11 = *(a1 + 48);
  if (v11 != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v12 = *(a1 + 44);
  v13 = *(a2 + 44);
  if (((v13 ^ v12) & 0x7FFFFF) != 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if ((v12 & 0x800000) != 0)
  {
    v14 = *(a1 + 68);
    if ((v13 & 0x800000) != 0)
    {
      goto LABEL_8;
    }

LABEL_68:
    if (v14)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if ((v13 & 0x800000) == 0)
  {
    goto LABEL_68;
  }

LABEL_8:
  if (v14 != *(a2 + 68))
  {
    return 0;
  }

LABEL_9:
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v65 = a7;
  v17 = a1;
  v18 = a1 + 64;
  v19 = a1 + 64 + 16 * ((v12 >> 23) & 1);
  if (!BYTE3(v12))
  {
    v19 = 0;
  }

  v21 = a2 + 64;
  if (HIBYTE(*(a2 + 44)))
  {
    v22 = a2 + 64 + 16 * ((v13 >> 23) & 1);
  }

  else
  {
    v22 = 0;
  }

  result = (*(*v11 + 168))(v11, v19, v22, a4, a5, a6, a7, a8);
  if (!result)
  {
    return result;
  }

  v25 = a2;
  v26 = v17;
  if ((v65 & 1) == 0 && *(v17 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v64 = v18;
  if (!a9 || (v27 = mlir::Operation::hasTrait<mlir::OpTrait::IsCommutative>(v17), v25 = a2, v26 = v17, !v27))
  {
    if ((*(v26 + 46) & 0x80) != 0)
    {
      v31 = *(v26 + 72);
      v32 = *(v26 + 68);
      v33 = a4;
      if ((*(v25 + 46) & 0x80) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = a4;
      if ((*(v25 + 46) & 0x80) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v32)
    {
      v34 = *(v25 + 68);
      if (v34)
      {
        v35 = v31 + 24;
        v36 = *(v25 + 72) + 24;
        v37 = v32 - 1;
        v38 = v34 - 1;
        while (1)
        {
          if (*v35 != *v36)
          {
            if ((*(*v36 + 8) ^ *(*v35 + 8)) > 7)
            {
              return 0;
            }

            v39 = a3(v33);
            v25 = a2;
            v33 = a4;
            v26 = v17;
            if ((v39 & 1) == 0)
            {
              return 0;
            }
          }

          v40 = v38-- != 0;
          v41 = v40;
          v40 = v37-- != 0;
          if (v40)
          {
            v35 += 32;
            v36 += 32;
            if (v41)
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

  if ((*(v17 + 46) & 0x80) != 0)
  {
    v28 = *(v17 + 68);
    v29 = *(v17 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = 0;
    v29 = 2;
    if ((*(a2 + 46) & 0x80) != 0)
    {
LABEL_22:
      v30 = a9(a10, v29, v28, *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2, *(a2 + 68));
      v25 = a2;
      v26 = v17;
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }
  }

  v61 = a9(a10, v29, v28, 2uLL, 0);
  v25 = a2;
  v26 = v17;
  if ((v61 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v63 = v21;
  v42 = *(v26 + 36);
  v43 = v26 - 16;
  v44 = *(v25 + 36);
  v45 = v25 - 16;
  if (v42)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  if (v44)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  if (v42 && v44)
  {
    v48 = 0;
    if (a5)
    {
      v49 = v42 - 1;
      v50 = v44 - 1;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, v48);
        v52 = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v48);
        if ((*(v52 + 8) ^ *(NextResultAtOffset + 8)) > 7)
        {
          break;
        }

        a5(a6, NextResultAtOffset, v52);
        if (v49 != v48)
        {
          v53 = v50 == v48++;
          if (!v53)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      v54 = v42 - 1;
      v55 = v44 - 1;
      while (1)
      {
        v56 = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, v48);
        if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, v48) + 8) ^ *(v56 + 8)) > 7)
        {
          break;
        }

        if (v54 != v48)
        {
          v53 = v55 == v48++;
          if (!v53)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    return 0;
  }

LABEL_59:
  v57 = *(v17 + 44);
  v58 = v57 & 0x7FFFFF;
  if ((v57 & 0x7FFFFF) != 0)
  {
    v59 = ((v64 + 16 * ((v57 >> 23) & 1) + ((v57 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v17 + 40);
  }

  else
  {
    v59 = 0;
    v58 = 0;
  }

  v60 = *(a2 + 44);
  if ((v60 & 0x7FFFFF) != 0)
  {
    if (v58)
    {
      mlir::OperationEquivalence::isRegionEquivalentTo(v59, ((v63 + 16 * ((v60 >> 23) & 1) + ((v60 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), a3, a4, a5, a6, v65, v24, 0, v62);
    }
  }

  return 1;
}

void mlir::OperationEquivalence::isEquivalentTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v9 = v11;
  v10 = v11;
  v8 = v11;
  mlir::OperationEquivalence::isEquivalentTo(a1, a2, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_0>, &v10, llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_1>, &v9, a3, a8, llvm::function_ref<llvm::LogicalResult ()(mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::OperationEquivalence::isEquivalentTo(mlir::Operation *,mlir::Operation *,mlir::OperationEquivalence::Flags)::$_2>, &v8);
  llvm::deallocate_buffer(v11[0], (16 * v12));
}

mlir::OperationFingerPrint *mlir::OperationFingerPrint::OperationFingerPrint(mlir::OperationFingerPrint *this, mlir::Operation *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a2;
  llvm::SHA1::init(v8);
  v7[0] = v8;
  v7[1] = &v9;
  if (a3)
  {
    mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OperationFingerPrint::OperationFingerPrint(mlir::Operation *,BOOL)::$_0>, v7, 1);
  }

  else
  {
    mlir::OperationFingerPrint::OperationFingerPrint(mlir::Operation *,BOOL)::$_0::operator()(v7, a2);
  }

  llvm::SHA1::result(&v10, v8);
  *this = v10;
  *(this + 4) = v11;
  return this;
}

mlir::CallGraphNode *mlir::impl::findAttrSorted<mlir::NamedAttribute *>(mlir::CallGraphNode *this, mlir::CallGraphNode *a2, uint64_t a3)
{
  v3 = this;
  v17 = a3;
  v4 = (a2 - this) >> 4;
  if (v4 >= 17)
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v17);
    v7 = v6;
    while (1)
    {
      v8 = v4 >> 1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion((v3 + 16 * (v4 >> 1)));
      v9 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      v11 = v10;
      v12 = v7 >= v10 ? v10 : v7;
      if (v12)
      {
        v13 = memcmp(v9, AttrData, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return (v3 + 16 * (v4 >> 1));
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = v8;
      if (v8 <= 0)
      {
        return v3;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v4 >> 1) + 16);
    v8 = v4 + ~v8;
    goto LABEL_4;
  }

  if (this == a2)
  {
    return a2;
  }

  while (mlir::CallGraphNode::getCallableRegion(v3) != a3)
  {
    v3 = (v3 + 16);
    if (v3 == a2)
    {
      return a2;
    }
  }

  return v3;
}

uint64_t llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  __src = v19;
  v18 = 0x100000000;
  if (&v16 != a2)
  {
    v9 = *(a2 + 6);
    if (v9)
    {
      if (v9 < 2)
      {
        v12 = 24;
        v11 = v19;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v19, *(a2 + 6), 24);
        v10 = *(a2 + 6);
        if (!v10)
        {
LABEL_8:
          LODWORD(v18) = v9;
          v8 = v9;
          goto LABEL_9;
        }

        v11 = __src;
        v12 = 24 * v10;
      }

      memcpy(v11, *(a2 + 2), v12);
      goto LABEL_8;
    }
  }

LABEL_9:
  v20 = *(a2 + 56);
  v21 = a3;
  *a1 = v16;
  v13 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x100000000;
  if (&v16 != a1 && v8)
  {
    if (v8 < 2)
    {
      v14 = 24;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8, 24);
      if (!v18)
      {
LABEL_16:
        *(a1 + 24) = v8;
        a3 = v21;
        goto LABEL_17;
      }

      v13 = *(a1 + 16);
      v14 = 24 * v18;
    }

    memcpy(v13, __src, v14);
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 56) = v20;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  if (__src != v19)
  {
    free(__src);
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ValueTypeRange<mlir::ResultRange>,llvm::hash_code>(char *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17 = a2;
  NextResultAtOffset = *a5;
  v11 = a5[1];
  v12 = a5[3];
  if (v11)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, a5[1]);
  }

  mlir::TypeRange::TypeRange(v18, NextResultAtOffset & 0xFFFFFFFFFFFFFFF9 | 4, v12 - v11);
  v13 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v18[0], 0, v18[0], v18[1]);
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, a3, a4, v13);
  v18[0] = v17;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v18, v14, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v18[0], v15, a4);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
      v9 = (v6 + 16 * (v16 & v7));
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
        v9[1] = *a3;
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
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
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

BOOL ValueEquivalenceCache::checkCommutativeEquivalent(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v97[6] = *MEMORY[0x1E69E9840];
  if (a3 != a5)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  v88 = a2;
  v89 = a4;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 0;
  v10 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 2;
  v11 = (a4 & 6) != 2;
  v12 = a4 & 0xFFFFFFFFFFFFFFF8;
  v13 = (a4 & 0xFFFFFFFFFFFFFFF8) == 0 || (a4 & 6) != 0;
  if ((a4 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v11 = 1;
  }

  v90 = v11;
  for (i = a3; ; --i)
  {
    if (v9)
    {
      if (v10)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7);
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      else
      {
        NextResultAtOffset = *(v8 + 32 * v7 + 24);
        if (!v13)
        {
LABEL_26:
          v16 = *(v12 + 8 * v7);
          if (NextResultAtOffset == v16)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      NextResultAtOffset = *(v8 + 8 * v7);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    if (v90)
    {
      v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = *(v12 + 32 * v7 + 24);
      if (NextResultAtOffset == v16)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v17 = *(a1 + 4);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = *a1;
    v19 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v19 >> 47) ^ v19);
    LODWORD(v19) = -348639895 * ((v20 >> 47) ^ v20);
    v21 = v17 - 1;
    v22 = (v17 - 1) & v19;
    v23 = *(*a1 + 16 * v22);
    if (v23 == NextResultAtOffset)
    {
      break;
    }

    v24 = 1;
    while (v23 != -4096)
    {
      v25 = v22 + v24++;
      v22 = v25 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == NextResultAtOffset)
      {
        goto LABEL_31;
      }
    }

LABEL_15:
    if (v16)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (++v7 == a3)
    {
      return 1;
    }
  }

LABEL_31:
  if (*(v18 + 16 * v22 + 8) == v16)
  {
    goto LABEL_32;
  }

LABEL_39:
  v27 = a3 - v7;
  if (a3 == v7)
  {
    return 1;
  }

  if (v7)
  {
    if (v9)
    {
      if (v10)
      {
        v28 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v28 = (v8 + 32 * v7) | 2;
      }
    }

    else
    {
      v28 = v8 + 8 * v7;
    }

    v88 = v28;
  }

  v95 = v97;
  v96 = 0x600000000;
  if (v27 < 7)
  {
    v29 = v97;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v97, a3 - v7, 8);
    v29 = v95 + 8 * v96;
  }

  v30 = v88 & 0xFFFFFFFFFFFFFFF8;
  if ((v88 & 6) != 0 || !v30)
  {
    if ((v88 & 6) == 2 && v30)
    {
      if (v27 > 0x10 && (v29 >= v30 + 32 * v27 || v30 + 24 >= &v29[v27]))
      {
        if ((v27 & 3) != 0)
        {
          v39 = v27 & 3;
        }

        else
        {
          v39 = 4;
        }

        v37 = v27 - v39;
        v40 = &v29[v27 - v39];
        v41 = (v30 + 88);
        v42 = (v29 + 2);
        v43 = i - v39;
        do
        {
          v44 = v41 - 8;
          v45 = vld4q_f64(v44);
          v46 = vld4q_f64(v41);
          *(v42 - 1) = v45;
          *v42 = v46;
          v41 += 16;
          v42 += 2;
          v43 -= 4;
        }

        while (v43);
        v29 = v40;
      }

      else
      {
        v37 = 0;
      }

      v47 = i - v37;
      v48 = (v30 + 32 * v37 + 24);
      do
      {
        v49 = *v48;
        v48 += 4;
        *v29++ = v49;
        --v47;
      }

      while (v47);
    }

    else
    {
      v38 = 0;
      do
      {
        v29[v38] = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v38);
        ++v38;
      }

      while (i != v38);
    }
  }

  else
  {
    v31 = 0;
    if (v27 < 4 || v29 - v30 <= 0x1F)
    {
      v32 = v29;
    }

    else
    {
      v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = &v29[v27 & 0xFFFFFFFFFFFFFFFCLL];
      v33 = (v30 + 16);
      v34 = v29 + 2;
      v35 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v27 == v31)
      {
        goto LABEL_80;
      }
    }

    do
    {
      *v32++ = *(v30 + 8 * v31++);
    }

    while (i != v31);
  }

LABEL_80:
  v50 = (v96 + v27);
  v85 = v96 + v27 == 0;
  LODWORD(v96) = v50;
  v51 = (v95 + 8 * v50);
  v52 = 126 - 2 * __clz(v50);
  if (v85)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v95, v51, &v92, v53, 1);
  if (v7)
  {
    if (v13)
    {
      if (v90)
      {
        v54 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v7) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v54 = (v12 + 32 * v7) | 2;
      }
    }

    else
    {
      v54 = v12 + 8 * v7;
    }

    v89 = v54;
  }

  v92 = v94;
  v93 = 0x600000000;
  if (v27 < 7)
  {
    v55 = v94;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, a3 - v7, 8);
    v55 = v92 + 8 * v93;
  }

  v56 = v89 & 0xFFFFFFFFFFFFFFF8;
  if ((v89 & 6) != 0 || !v56)
  {
    if ((v89 & 6) == 2 && v56)
    {
      if (v27 > 0x10 && (v55 >= v56 + 32 * v27 || v56 + 24 >= &v55[8 * v27]))
      {
        if ((v27 & 3) != 0)
        {
          v66 = v27 & 3;
        }

        else
        {
          v66 = 4;
        }

        v63 = v27 - v66;
        v67 = &v55[8 * (v27 - v66)];
        v68 = (v56 + 88);
        v69 = (v55 + 16);
        v70 = i - v66;
        do
        {
          v71 = v68 - 8;
          v72 = vld4q_f64(v71);
          v73 = vld4q_f64(v68);
          *(v69 - 1) = v72;
          *v69 = v73;
          v68 += 16;
          v69 += 2;
          v70 -= 4;
        }

        while (v70);
        v55 = v67;
      }

      else
      {
        v63 = 0;
      }

      v74 = i - v63;
      v75 = (v56 + 32 * v63 + 24);
      do
      {
        v76 = *v75;
        v75 += 4;
        *v55 = v76;
        v55 += 8;
        --v74;
      }

      while (v74);
    }

    else
    {
      v64 = 0;
      v65 = v7 - a3;
      do
      {
        *&v55[8 * v64] = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, v64);
        ++v64;
      }

      while (v65 + v64);
    }
  }

  else
  {
    v57 = 0;
    if (v27 < 4 || &v55[-v56] <= 0x1F)
    {
      v58 = v55;
    }

    else
    {
      v57 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v58 = &v55[8 * (v27 & 0xFFFFFFFFFFFFFFFCLL)];
      v59 = (v56 + 16);
      v60 = v55 + 16;
      v61 = i & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *v59;
        *(v60 - 1) = *(v59 - 1);
        *v60 = v62;
        v59 += 2;
        v60 += 2;
        v61 -= 4;
      }

      while (v61);
      if (v27 == v57)
      {
        goto LABEL_121;
      }
    }

    do
    {
      *v58 = *(v56 + 8 * v57);
      v58 += 8;
      ++v57;
    }

    while (i != v57);
  }

LABEL_121:
  v77 = (v93 + v27);
  v85 = v93 + v27 == 0;
  LODWORD(v93) = v77;
  v78 = (v92 + 8 * v77);
  v79 = 126 - 2 * __clz(v77);
  if (v85)
  {
    v80 = 0;
  }

  else
  {
    v80 = v79;
  }

  std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v92, v78, &v91, v80, 1);
  if (v96 != v93)
  {
    result = 0;
    v81 = v92;
    goto LABEL_134;
  }

  v81 = v92;
  if (v96)
  {
    v82 = 0;
    do
    {
      v83 = *(v95 + v82);
      v84 = *(v92 + v82);
      result = v83 == v84;
      v85 = v83 != v84 || 8 * v96 - 8 == v82;
      v82 += 8;
    }

    while (!v85);
LABEL_134:
    if (v81 != v94)
    {
LABEL_135:
      v86 = result;
      free(v81);
      result = v86;
    }
  }

  else
  {
    result = 1;
    if (v92 != v94)
    {
      goto LABEL_135;
    }
  }

  if (v95 != v97)
  {
    v87 = result;
    free(v95);
    return v87;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v71 = *(a2 - 1);
      v72 = *v10;
      if (v71 < *v10)
      {
        *v10 = v71;
        *(a2 - 1) = v72;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = v10 + 1;
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v88 = *v85;
            v87 = v85[1];
            v85 = v81;
            if (v87 < v88)
            {
              v89 = v84;
              do
              {
                *(v10 + v89 + 8) = v88;
                if (!v89)
                {
                  v86 = v10;
                  goto LABEL_125;
                }

                v88 = *(v10 + v89 - 8);
                v89 -= 8;
              }

              while (v87 < v88);
              v86 = (v10 + v89 + 8);
LABEL_125:
              *v86 = v87;
            }

            v81 = v85 + 1;
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v94 = *v9;
          v93 = v9[1];
          v9 = v81;
          if (v93 < v94)
          {
            do
            {
              *v81 = v94;
              v94 = *(v81 - 2);
              --v81;
            }

            while (v93 < v94);
            *v81 = v93;
          }

          v81 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,mlir::Value*>(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v16 = *v10;
      v17 = v10[v12];
      if (*v10 < v17)
      {
        if (v13 < v16)
        {
          v10[v12] = v13;
          goto LABEL_37;
        }

        v10[v12] = v16;
        *v10 = v17;
        v29 = *(a2 - 1);
        if (v29 < v17)
        {
          *v10 = v29;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v13 >= v16)
      {
        goto LABEL_38;
      }

      *v10 = v13;
      *(a2 - 1) = v16;
      v20 = v10[v12];
      if (*v10 >= v20)
      {
        goto LABEL_38;
      }

      v10[v12] = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v56 = (v10 + 1);
        do
        {
          v10 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v55 = v10[1];
          ++v10;
        }

        while (v21 >= v55);
      }

      v57 = a2;
      if (v10 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *--v57;
        }

        while (v21 < v58);
      }

      if (v10 < v57)
      {
        v59 = *v10;
        v60 = *v57;
        do
        {
          *v10 = v60;
          *v57 = v59;
          do
          {
            v61 = v10[1];
            ++v10;
            v59 = v61;
          }

          while (v21 >= v61);
          do
          {
            v62 = *--v57;
            v60 = v62;
          }

          while (v21 < v62);
        }

        while (v10 < v57);
      }

      v63 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v63;
      }

      a5 = 0;
      *v63 = v21;
    }

    else
    {
      v14 = v10[v12];
      v15 = *v10;
      if (v14 >= *v10)
      {
        if (v13 < v14)
        {
          v10[v12] = v13;
          *(a2 - 1) = v14;
          v18 = v10[v12];
          v19 = *v10;
          if (v18 < *v10)
          {
            *v10 = v18;
            v10[v12] = v19;
          }
        }
      }

      else
      {
        if (v13 >= v14)
        {
          *v10 = v14;
          v10[v12] = v15;
          v22 = *(a2 - 1);
          if (v22 >= v15)
          {
            goto LABEL_29;
          }

          v10[v12] = v22;
        }

        else
        {
          *v10 = v13;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = v10[v12 - 1];
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          v10[v23] = v26;
          *(a2 - 2) = v24;
          v27 = v10[v23];
          v28 = v10[1];
          if (v27 < v28)
          {
            v10[1] = v27;
            v10[v23] = v28;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          v10[v23] = v25;
          v30 = *(a2 - 2);
          if (v30 >= v25)
          {
            goto LABEL_43;
          }

          v10[v23] = v30;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v31 = v12 + 1;
      v32 = v10[v12 + 1];
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          v10[v31] = v34;
          *(a2 - 3) = v32;
          v35 = v10[v31];
          v36 = v10[2];
          if (v35 < v36)
          {
            v10[2] = v35;
            v10[v31] = v36;
          }
        }
      }

      else
      {
        if (v34 >= v32)
        {
          v10[2] = v32;
          v10[v31] = v33;
          v37 = *(a2 - 3);
          if (v37 >= v33)
          {
            goto LABEL_52;
          }

          v10[v31] = v37;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v38 = v10[v12];
      v39 = v10[v23];
      v40 = v10[v31];
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v10[v12] = v40;
          v10[v31] = v38;
          v38 = v40;
          if (v40 < v39)
          {
            v10[v23] = v40;
            v10[v12] = v39;
            v38 = v39;
          }
        }
      }

      else if (v40 >= v38)
      {
        v10[v23] = v38;
        v10[v12] = v39;
        v38 = v39;
        if (v40 < v39)
        {
          v10[v12] = v40;
          v10[v31] = v39;
          v38 = v40;
        }
      }

      else
      {
        v10[v23] = v40;
        v10[v31] = v39;
      }

      v41 = *v10;
      *v10 = v38;
      v10[v12] = v41;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,ValueEquivalenceCache::checkCommutativeEquivalent(mlir::ValueRange,mlir::ValueRange)::{lambda(mlir::ValueRange)#1}::operator() const(mlir::ValueRange)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v76 = v10 + 1;
      v77 = v10[1];
      v78 = v10 + 2;
      v79 = v10[2];
      v80 = *v10;
      if (v77 >= *v10)
      {
        if (v79 < v77)
        {
          *v76 = v79;
          *v78 = v77;
          if (v79 < v80)
          {
            *v10 = v79;
            v92 = v10 + 1;
            goto LABEL_171;
          }

LABEL_172:
          v79 = v77;
        }
      }

      else
      {
        if (v79 < v77)
        {
          *v10 = v79;
          goto LABEL_170;
        }

        *v10 = v77;
        v10[1] = v80;
        if (v79 < v80)
        {
          *v76 = v79;
LABEL_170:
          v92 = v10 + 2;
          v77 = v80;
LABEL_171:
          *v92 = v80;
          goto LABEL_172;
        }
      }

      v100 = *(a2 - 1);
      if (v100 < v79)
      {
        *v78 = v100;
        *(a2 - 1) = v79;
        v101 = *v78;
        v102 = *v76;
        if (v101 < v102)
        {
          v10[1] = v101;
          v10[2] = v102;
          v103 = *v10;
          if (v101 < *v10)
          {
            *v10 = v101;
            v10[1] = v103;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v64 = v10 + 1;
      v65 = v10[1];
      v67 = v10 + 2;
      v66 = v10[2];
      v68 = *v10;
      if (v65 >= *v10)
      {
        if (v66 >= v65)
        {
          v70 = *v10;
          v68 = v10[1];
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }

          goto LABEL_159;
        }

        *v64 = v66;
        *v67 = v65;
        if (v66 < v68)
        {
          *v10 = v66;
          v69 = v10 + 1;
          v70 = v66;
          v66 = v68;
          goto LABEL_154;
        }

        v70 = v68;
        v68 = v66;
        v66 = v65;
        v95 = v10[3];
        if (v95 >= v66)
        {
          goto LABEL_159;
        }

LABEL_155:
        v10[2] = v95;
        v10[3] = v66;
        if (v95 < v68)
        {
          *v64 = v95;
          *v67 = v68;
          if (v95 < v70)
          {
            *v10 = v95;
            v10[1] = v70;
          }
        }
      }

      else
      {
        if (v66 < v65)
        {
          *v10 = v66;
          v69 = v10 + 2;
          v70 = v66;
          v66 = v65;
          goto LABEL_153;
        }

        *v10 = v65;
        v10[1] = v68;
        if (v66 >= v68)
        {
          v70 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

        else
        {
          *v64 = v66;
          v69 = v10 + 2;
          v70 = v65;
LABEL_153:
          v65 = v68;
LABEL_154:
          *v69 = v68;
          v68 = v66;
          v66 = v65;
          v95 = v10[3];
          if (v95 < v66)
          {
            goto LABEL_155;
          }
        }

LABEL_159:
        v66 = v95;
      }

      v96 = *(a2 - 1);
      if (v96 >= v66)
      {
        return result;
      }

      v10[3] = v96;
      *(a2 - 1) = v66;
      v97 = v10[2];
      v90 = v10[3];
      if (v90 >= v97)
      {
        return result;
      }

      v10[2] = v90;
      v10[3] = v97;
      v98 = v10[1];
      if (v90 >= v98)
      {
        return result;
      }

      v10[1] = v90;
      v10[2] = v98;
      v91 = *v10;
      if (v90 >= *v10)
      {
        return result;
      }

LABEL_164:
      *v10 = v90;
      v10[1] = v91;
      return result;
    }

    goto LABEL_10;
  }

  v73 = *v10;
  v74 = v10[1];
  v75 = *(a2 - 1);
  if (v74 < *v10)
  {
    if (v75 >= v74)
    {
      *v10 = v74;
      v10[1] = v73;
      v99 = *(a2 - 1);
      if (v99 >= v73)
      {
        return result;
      }

      v10[1] = v99;
    }

    else
    {
      *v10 = v75;
    }

    *(a2 - 1) = v73;
    return result;
  }

  if (v75 < v74)
  {
    v10[1] = v75;
    *(a2 - 1) = v74;
    v91 = *v10;
    v90 = v10[1];
    if (v90 < *v10)
    {
      goto LABEL_164;
    }
  }

  return result;
}

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

_DWORD *OUTLINED_FUNCTION_3_7@<X0>(llvm::SHA1 *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  a4 = a2;

  return llvm::SHA1::update(a1, &a4, 8uLL);
}

_DWORD *OUTLINED_FUNCTION_4_6(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = a1;

  return llvm::SHA1::update(v10, &a10, 8uLL);
}

_DWORD *OUTLINED_FUNCTION_5_6@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  a3 = a1;
  v5 = *v3;

  return llvm::SHA1::update(v5, &a3, 8uLL);
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
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 && *(v2 + 8) == 1)
  {
    v7 = *(this + 2);
    v6 = &v7;
    v5 = operator new(0x20uLL);
    *v5 = &unk_1F5AF81E8;
    v5[1] = v9;
    v5[2] = this;
    v5[3] = &v6;
    v10 = v5;
    v8 = a2;
    std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::operator()(v5, &v8);
    if (v10 == v9)
    {
      (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 40))(v10);
    }
  }

  else
  {

    mlir::Operation::erase(a2, a2);
  }
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
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

uint64_t mlir::RewriterBase::inlineBlockBefore(void *a1, void *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a2[6];
  v10 = a2[7];
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

  v13 = a2 + 4;
  v12 = a2[4];
  if (a1[2])
  {
    if (v12 != a2 + 4)
    {
      do
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

  else if (v12 != a2 + 4 && v13 != a4)
  {
    v30 = a2[5];
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(a3 + 32, (a2 + 4), v30, (a2 + 4));
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

char *mlir::RewriterBase::splitBlock(uint64_t a1, uint64_t **this, mlir::Block *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
    v17 = *(a1 + 24);
    Parent = mlir::Block::getParent(this);
    v8 = this[2];
    mlir::ValueRange::ValueRange(v18, 0, 0);
    Block = mlir::OpBuilder::createBlock((v5 - 16), Parent, v8, v18[0], v18[1], 0, 0);
    if (this + 4 != a3)
    {
      while (1)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        if (*(v15 + 16) == Block)
        {
          break;
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v11 = v10;
        v13 = v10[1];
        v12 = v10[2];
        mlir::Operation::moveBefore(v10, Block, Block[5]);
        v14 = *(a1 + 16);
        if (v14)
        {
          (*(*v14 + 16))(v14, v11, v12, v13);
        }
      }
    }

    if (v17)
    {
      *v5 = v17;
    }

    else
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    return Block;
  }

  else
  {

    return mlir::Block::splitBlock(this, a3);
  }
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

uint64_t mlir::RewriterBase::moveBlockBefore(uint64_t a1, mlir::Block *this, uint64_t a3, uint64_t *a4)
{
  mlir::Block::getParent(this);
  mlir::Block::moveBefore(this, a3, a4);
  result = *(a1 + 16);
  if (result)
  {
    v9 = *(*result + 24);

    return v9();
  }

  return result;
}

void *mlir::RewriterBase::inlineRegionBefore(mlir::RewriterBase *this, mlir::Region *a2, mlir::Block *a3)
{
  Parent = mlir::Block::getParent(a3);

  return mlir::RewriterBase::inlineRegionBefore(this, a2, Parent, a3 + 1);
}

__n128 std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_1F5AF81E8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0,std::allocator<mlir::RewriterBase::eraseOp(mlir::Operation *)::$_0>,void ()(mlir::Operation *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF81E8;
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
                  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

void mlir::Region::dropAllReferences(uint64_t this)
{
  for (i = *(this + 8); i != this; i = *(i + 8))
  {
    if (i)
    {
      v3 = i - 8;
    }

    else
    {
      v3 = 0;
    }

    mlir::Block::dropAllReferences(v3);
  }
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
      operator delete(v8);
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
  v133[6] = *MEMORY[0x1E69E9840];
  if (*a1 == a1)
  {
    return;
  }

  v5 = a1;
  v6 = a1[1];
  v122 = a1;
  if (v6 == a1)
  {
    goto LABEL_57;
  }

  do
  {
    if (v6)
    {
      v10 = (v6 - 8);
    }

    else
    {
      v10 = 0;
    }

    v11 = operator new(0x48uLL);
    *v11 = 0u;
    v11[1] = 0u;
    *(v11 + 4) = v11 + 2;
    *(v11 + 5) = v11 + 2;
    *(v11 + 7) = 0;
    *(v11 + 8) = 0;
    *(v11 + 6) = 0;
    v131 = v10;
    a1 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>,mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::operator[]((a4 + 3), &v131);
    *a1 = v11;
    v12 = v10[6];
    v13 = v10[7];
    if (v12 != v13)
    {
      v14 = *a4;
      v15 = *(a4 + 4);
      while (1)
      {
        v20 = *v12;
        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = 0x9DDFEA08EB382D69 * ((8 * *v12 - 0xAE502812AA7333) ^ HIDWORD(*v12));
        v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v16 >> 47) ^ v16);
        v18 = (-348639895 * ((v17 >> 47) ^ v17)) & (v15 - 1);
        v19 = *(v14 + 16 * v18);
        if (v19 != v20)
        {
          break;
        }

LABEL_11:
        if (++v12 == v13)
        {
          goto LABEL_4;
        }
      }

      v31 = 1;
      while (v19 != -4096)
      {
        v32 = v18 + v31++;
        v18 = v32 & (v15 - 1);
        v19 = *(v14 + 16 * v18);
        if (v19 == v20)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      a1 = mlir::Block::addArgument(v11, *(v20 + 8) & 0xFFFFFFFFFFFFFFF8, *(v20 + 32));
      v14 = *a4;
      v15 = *(a4 + 4);
      if (!v15)
      {
        goto LABEL_37;
      }

      v21 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
      v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v21 >> 47) ^ v21);
      v23 = v15 - 1;
      v24 = (v15 - 1) & (-348639895 * ((v22 >> 47) ^ v22));
      v25 = (v14 + 16 * v24);
      v26 = *v25;
      if (*v25 == v20)
      {
LABEL_29:
        v25[1] = a1;
        goto LABEL_11;
      }

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
          v27 = v25;
        }

        v30 = v24 + v28++;
        v24 = v30 & v23;
        v25 = (v14 + 16 * (v30 & v23));
        v26 = *v25;
        if (*v25 == v20)
        {
          goto LABEL_29;
        }
      }

      if (v27)
      {
        v25 = v27;
      }

      v33 = *(a4 + 2);
      if (4 * v33 + 4 < 3 * v15)
      {
        if (v15 + ~v33 - *(a4 + 3) > v15 >> 3)
        {
          *(a4 + 2) = v33 + 1;
          if (*v25 == -4096)
          {
LABEL_28:
            *v25 = v20;
            v25[1] = 0;
            goto LABEL_29;
          }

LABEL_27:
          --*(a4 + 3);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_37:
        v15 *= 2;
      }

      v127 = a1;
      llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(a4, v15);
      v14 = *a4;
      v15 = *(a4 + 4);
      if (v15)
      {
        v34 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
        v35 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v34 >> 47) ^ v34);
        v36 = v15 - 1;
        v37 = (v15 - 1) & (-348639895 * ((v35 >> 47) ^ v35));
        v25 = (v14 + 16 * v37);
        v38 = *v25;
        if (*v25 != v20)
        {
          v39 = 0;
          v40 = 1;
          while (v38 != -4096)
          {
            if (v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = v38 == -8192;
            }

            if (v41)
            {
              v39 = v25;
            }

            v42 = v37 + v40++;
            v37 = v42 & v36;
            v25 = (v14 + 16 * (v42 & v36));
            v38 = *v25;
            a1 = v127;
            if (*v25 == v20)
            {
              goto LABEL_51;
            }
          }

          if (v39)
          {
            v25 = v39;
          }

          a1 = v127;
LABEL_51:
          ++*(a4 + 2);
          if (*v25 == -4096)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v25 = 0;
      }

      a1 = v127;
      goto LABEL_51;
    }

LABEL_4:
    *(v11 + 3) = *(v11 + 3) & 7 | a2;
    v8 = *a3;
    *(v11 + 1) = *a3;
    *(v11 + 2) = a3;
    v9 = v11 + 8;
    *(v8 + 8) = v9;
    *a3 = v9;
    v6 = *(v6 + 1);
    v5 = v122;
  }

  while (v6 != v122);
  v6 = *(v122 + 1);
LABEL_57:
  if (v6)
  {
    v43 = (v6 - 8);
  }

  else
  {
    v43 = 0;
  }

  v44 = *(a4 + 10);
  if (!v44)
  {
LABEL_63:
    v48 = 0;
    goto LABEL_65;
  }

  v45 = a4[3];
  v46 = ((v43 >> 4) ^ (v43 >> 9)) & (v44 - 1);
  v47 = *(v45 + 16 * v46);
  if (v47 != v43)
  {
    v119 = 1;
    while (v47 != -4096)
    {
      v120 = v46 + v119++;
      v46 = v120 & (v44 - 1);
      v47 = *(v45 + 16 * v46);
      if (v47 == v43)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_63;
  }

LABEL_62:
  if (v46 == v44)
  {
    goto LABEL_63;
  }

  v48 = *(v45 + 16 * v46 + 8);
LABEL_65:
  if (v48)
  {
    v49 = (v48 + 8);
  }

  else
  {
    v49 = 0;
  }

  LOBYTE(v131) = mlir::Operation::CloneOptions::all(a1);
  v50 = mlir::Operation::CloneOptions::cloneRegions(&v131, 0);
  v51 = mlir::Operation::CloneOptions::cloneOperands(v50, 0);
  v52 = *(v5 + 1);
  if (v52 != v5 && v49 != a3)
  {
    v54 = *v51;
    v55 = v49;
    do
    {
      v57 = v52 - 8;
      v124 = v52;
      if (!v52)
      {
        v57 = 0;
      }

      v58 = v57 + 32;
      v59 = *(v57 + 5);
      if (v59 != v57 + 32)
      {
        v60 = v55 - 1;
        if (!v55)
        {
          v60 = 0;
        }

        v61 = v60 + 4;
        do
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v63 = mlir::Operation::clone(v62, a4, v54);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v61, v63);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v64 = *v61;
          *v65 = *v61;
          v65[1] = v61;
          *(v64 + 8) = v65;
          *v61 = v65;
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v59 = *(v59 + 8);
        }

        while (v59 != v58);
      }

      v55 = v55[1];
      v52 = *(v124 + 1);
      v5 = v122;
    }

    while (v52 != v122 && v55 != a3);
    v52 = *(v122 + 1);
  }

  v131 = v133;
  v132 = 0x600000000;
  if (v52 != v5 && v49 != a3)
  {
    while (1)
    {
      v67 = v52 - 8;
      v125 = v52;
      if (!v52)
      {
        v67 = 0;
      }

      v68 = v49 - 1;
      v121 = v49;
      if (!v49)
      {
        v68 = 0;
      }

      v69 = v68[5];
      v70 = *(v67 + 5);
      v126 = v68 + 4;
      v128 = v67 + 32;
      if (v70 != v67 + 32 && v69 != v68 + 4)
      {
        break;
      }

LABEL_89:
      v49 = v121[1];
      v52 = *(v125 + 1);
      if (v52 == v122 || v49 == a3)
      {
        if (v131 != v133)
        {
          free(v131);
        }

        return;
      }
    }

    while (1)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v74 = v73;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v76 = v75;
      v77 = *(v74 + 44);
      if ((v77 & 0x800000) != 0)
      {
        v78 = *(v74 + 68);
      }

      else
      {
        v78 = 0;
      }

      v79 = v132;
      if (v132 != v78)
      {
        if (v132 <= v78)
        {
          if (HIDWORD(v132) < v78)
          {
            v80 = v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v131, v133, v78, 8);
            v78 = v80;
            v79 = v132;
          }

          if (v78 != v79)
          {
            v81 = v78;
            bzero(v131 + 8 * v79, 8 * (v78 - v79));
            v78 = v81;
          }
        }

        LODWORD(v132) = v78;
        v77 = *(v74 + 44);
      }

      if ((v77 & 0x800000) != 0)
      {
        v82 = *(v74 + 68);
        v83 = v131;
        if (v82)
        {
          v84 = *(v74 + 72);
          v85 = *(a4 + 4);
          if (v85)
          {
            v86 = 0;
            v87 = *a4;
            v88 = v85 - 1;
            v89 = v131;
            do
            {
              v90 = *(v84 + 32 * v86 + 24);
              v91 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
              v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v91 >> 47) ^ v91);
              v93 = (-348639895 * ((v92 >> 47) ^ v92)) & v88;
              v94 = *(v87 + 16 * v93);
              if (v94 == v90)
              {
LABEL_122:
                if (v93 != v85)
                {
                  v90 = *(v87 + 16 * v93 + 8);
                }
              }

              else
              {
                v95 = 1;
                while (v94 != -4096)
                {
                  v96 = v93 + v95++;
                  v93 = v96 & v88;
                  v94 = *(v87 + 16 * v93);
                  if (v94 == v90)
                  {
                    goto LABEL_122;
                  }
                }
              }

              *v89++ = v90;
              ++v86;
            }

            while (v86 != v82);
          }

          else
          {
            if (v82 >= 5 && (v131 >= v84 + 32 * v82 || v84 + 24 >= v131 + 8 * v82))
            {
              v99 = v82 & 3;
              if ((v82 & 3) == 0)
              {
                v99 = 4;
              }

              v97 = v82 - v99;
              v98 = v131 + 8 * (v82 - v99);
              v100 = (v84 + 88);
              v101 = (v131 + 16);
              v102 = v97;
              do
              {
                v103 = v100 - 8;
                v104 = vld4q_f64(v103);
                v105 = vld4q_f64(v100);
                *(v101 - 1) = v104;
                *v101 = v105;
                v100 += 16;
                v101 += 2;
                v102 -= 4;
              }

              while (v102);
            }

            else
            {
              v97 = 0;
              v98 = v131;
            }

            v106 = v82 - v97;
            v107 = (v84 + 32 * v97 + 24);
            do
            {
              v108 = *v107;
              v107 += 4;
              *v98++ = v108;
              --v106;
            }

            while (v106);
          }
        }
      }

      else
      {
        v83 = v131;
      }

      mlir::ValueRange::ValueRange(&v129, v83, v78);
      mlir::Operation::setOperands(v76, v129, v130);
      v109 = *(v74 + 44);
      v110 = v109 & 0x7FFFFF;
      if ((v109 & 0x7FFFFF) != 0)
      {
        v111 = (v74 + 16 * ((v109 >> 23) & 1) + ((v109 >> 21) & 0x7F8) + 32 * *(v74 + 40) + 64);
        v112 = *(v76 + 44);
        v113 = v112 & 0x7FFFFF;
        if ((v112 & 0x7FFFFF) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v111 = 0;
        v110 = 0;
        v112 = *(v76 + 44);
        v113 = v112 & 0x7FFFFF;
        if ((v112 & 0x7FFFFF) != 0)
        {
LABEL_142:
          if (v110)
          {
            v114 = (v76 + 16 * ((v112 >> 23) & 1) + ((v112 >> 21) & 0x7F8) + 32 * *(v76 + 40) + 64);
            v115 = 24 * v110 - 24;
            v116 = 24 * v113 - 24;
            v117 = v114;
            do
            {
              mlir::Region::cloneInto(v111, v117, v114, a4);
              if (!v115)
              {
                break;
              }

              v111 = (v111 + 24);
              v117 += 24;
              v115 -= 24;
              v114 += 3;
              v118 = v116;
              v116 -= 24;
            }

            while (v118);
          }
        }
      }

      v69 = v69[1];
      v70 = *(v70 + 8);
      if (v70 == v128 || v69 == v126)
      {
        goto LABEL_89;
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