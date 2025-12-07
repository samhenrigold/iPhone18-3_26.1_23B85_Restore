uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifySiblingProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v5 = *(a2 + 32);
  if (!v5)
  {
    return 1;
  }

  v6 = a2;
  v8 = *(a2 + 24);
  v68 = &v8[v5];
  v65 = (a1 + 528);
  while (1)
  {
    v9 = *v8;
    if (*v8)
    {
      if (*v9)
      {
        v10 = *(v9 + 32);
        if (v10)
        {
          break;
        }
      }
    }

LABEL_3:
    if (++v8 == v68)
    {
      return 1;
    }
  }

  v11 = *(v9 + 24);
  v66 = &v11[v10];
  v67 = v6;
  v69 = *v8;
  while (1)
  {
    v12 = *v11;
    *(a1 + 8) = 0;
    if (!*(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    **a1 = 0;
    ++*(a1 + 8);
    v13 = *(a1 + 536);
    if (v13 || *(a1 + 540))
    {
      v14 = *(a1 + 544);
      if (v14 > 4 * v13 && v14 >= 0x41)
      {
        llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::shrink_and_clear(v65, a2, a3, a4);
        goto LABEL_25;
      }

      if (v14)
      {
        v15 = *v65 + 48;
        for (i = v14 << 6; i; i -= 64)
        {
          v17 = *(v15 - 48);
          if (v17 != -8192)
          {
            if (v17 == -4096)
            {
              goto LABEL_19;
            }

            v18 = *(v15 - 16);
            if (v15 != v18)
            {
              free(v18);
            }
          }

          *(v15 - 48) = -4096;
LABEL_19:
          v15 += 64;
        }
      }

      *(a1 + 536) = 0;
    }

LABEL_25:
    buffer = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(a1, **v6, 0, *v12, 0, 0);
    v20 = *(v69 + 32);
    if (v20)
    {
      break;
    }

LABEL_8:
    ++v11;
    v6 = v67;
    if (v11 == v66)
    {
      goto LABEL_3;
    }
  }

  v21 = *(v69 + 24);
  v22 = &v21[v20];
  while (2)
  {
    v26 = *v21;
    if (*v21 == v12)
    {
      goto LABEL_29;
    }

    v27 = *v26;
    v28 = *(a1 + 528);
    v29 = *(a1 + 544);
    if (!v29)
    {
      goto LABEL_49;
    }

    v23 = ((v27 >> 4) ^ (v27 >> 9)) & (v29 - 1);
    v24 = &v28[8 * v23];
    v25 = *v24;
    if (v27 == *v24)
    {
      goto LABEL_28;
    }

    v30 = 0;
    v31 = 1;
    while (v25 != -4096)
    {
      if (v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v25 == -8192;
      }

      if (v32)
      {
        v30 = v24;
      }

      v33 = v23 + v31++;
      v23 = v33 & (v29 - 1);
      v24 = &v28[8 * v23];
      v25 = *v24;
      if (v27 == *v24)
      {
        goto LABEL_28;
      }
    }

    if (v30)
    {
      v24 = v30;
    }

    v34 = *(a1 + 536);
    if (4 * v34 + 4 >= (3 * v29))
    {
LABEL_49:
      v35 = 2 * v29;
      goto LABEL_51;
    }

    if (v29 + ~v34 - *(a1 + 540) <= v29 >> 3)
    {
      v35 = *(a1 + 544);
LABEL_51:
      v36 = (v35 - 1) | ((v35 - 1) >> 1);
      v37 = v36 | (v36 >> 2) | ((v36 | (v36 >> 2)) >> 4);
      v38 = ((v37 | (v37 >> 8)) >> 16) | v37 | (v37 >> 8);
      if ((v38 + 1) > 0x40)
      {
        v39 = v38 + 1;
      }

      else
      {
        v39 = 64;
      }

      *(a1 + 544) = v39;
      buffer = llvm::allocate_buffer(v39 << 6, 8uLL);
      *(a1 + 528) = buffer;
      if (v28)
      {
        v40 = (v29 << 6);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(v65, v28, &v40[v28]);
        llvm::deallocate_buffer(v28, v40);
      }

      *(a1 + 536) = 0;
      v41 = *(a1 + 544);
      if (v41)
      {
        v42 = buffer;
        if (((v41 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_102;
        }

        v43 = ((v41 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
        v42 = (buffer + 64 * (v43 & 0x7FFFFFFFFFFFFFELL));
        v44 = (buffer + 64);
        v45 = v43 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          *(v44 - 8) = -4096;
          *v44 = -4096;
          v44 += 16;
          v45 -= 2;
        }

        while (v45);
        if (v43 != (v43 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_102:
          do
          {
            *v42 = -4096;
            v42 = (v42 + 64);
          }

          while (v42 != (buffer + 64 * v41));
        }

        v46 = v41 - 1;
        v47 = (v41 - 1) & ((v27 >> 4) ^ (v27 >> 9));
        v24 = (buffer + 64 * v47);
        v48 = *v24;
        if (v27 != *v24)
        {
          v49 = 0;
          v50 = 1;
          while (v48 != -4096)
          {
            if (v49)
            {
              v51 = 0;
            }

            else
            {
              v51 = v48 == -8192;
            }

            if (v51)
            {
              v49 = v24;
            }

            v52 = v47 + v50++;
            v47 = v52 & v46;
            v24 = (buffer + 64 * v47);
            v48 = *v24;
            if (v27 == *v24)
            {
              goto LABEL_73;
            }
          }

          if (v49)
          {
            v24 = v49;
          }
        }
      }

      else
      {
        v24 = 0;
      }

LABEL_73:
      ++*(a1 + 536);
      if (*v24 != -4096)
      {
LABEL_35:
        --*(a1 + 540);
      }
    }

    else
    {
      *(a1 + 536) = v34 + 1;
      if (*v24 != -4096)
      {
        goto LABEL_35;
      }
    }

    *v24 = v27;
    *(v24 + 3) = 0u;
    *(v24 + 5) = 0u;
    *(v24 + 1) = 0u;
    v24[7] = 0;
    v24[4] = (v24 + 6);
    *(v24 + 11) = 4;
LABEL_28:
    if (*(v24 + 2))
    {
LABEL_29:
      if (++v21 == v22)
      {
        goto LABEL_8;
      }

      continue;
    }

    break;
  }

  v53 = llvm::errs(buffer);
  v54 = v53;
  v55 = *(v53 + 4);
  if ((*(v53 + 3) - v55) > 4)
  {
    *(v55 + 4) = 32;
    *v55 = 1701080910;
    *(v53 + 4) += 5;
    v56 = *v26;
    if (!*v26)
    {
      goto LABEL_87;
    }

LABEL_80:
    mlir::Block::printAsOperand(v56, v54);
    v57 = *(v54 + 4);
    if (*(v54 + 3) - v57 <= 0x1FuLL)
    {
      goto LABEL_81;
    }

LABEL_94:
    qmemcpy(v57, " not reachable when its sibling ", 32);
    *(v54 + 4) += 32;
    v58 = *v12;
    if (*v12)
    {
      goto LABEL_95;
    }

LABEL_82:
    v59 = *(v54 + 4);
    if (*(v54 + 3) - v59 > 6uLL)
    {
      *(v59 + 3) = 1920233580;
      *v59 = 1819047278;
      *(v54 + 4) += 7;
      v60 = *(v54 + 4);
      if (*(v54 + 3) - v60 <= 0xCuLL)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v58 = llvm::raw_ostream::write(v54, "nullptr", 7uLL);
      v60 = *(v54 + 4);
      if (*(v54 + 3) - v60 <= 0xCuLL)
      {
        goto LABEL_96;
      }
    }

LABEL_91:
    qmemcpy(v60, " is removed!\n", 13);
    *(v54 + 4) += 13;
    v63 = llvm::errs(v58);
    if (*(v63 + 4) != *(v63 + 2))
    {
      goto LABEL_97;
    }

    return 0;
  }

  v54 = llvm::raw_ostream::write(v53, "Node ", 5uLL);
  v56 = *v26;
  if (*v26)
  {
    goto LABEL_80;
  }

LABEL_87:
  v62 = *(v54 + 4);
  if (*(v54 + 3) - v62 > 6uLL)
  {
    *(v62 + 3) = 1920233580;
    *v62 = 1819047278;
    *(v54 + 4) += 7;
    v57 = *(v54 + 4);
    if (*(v54 + 3) - v57 > 0x1FuLL)
    {
      goto LABEL_94;
    }
  }

  else
  {
    llvm::raw_ostream::write(v54, "nullptr", 7uLL);
    v57 = *(v54 + 4);
    if (*(v54 + 3) - v57 > 0x1FuLL)
    {
      goto LABEL_94;
    }
  }

LABEL_81:
  v54 = llvm::raw_ostream::write(v54, " not reachable when its sibling ", 0x20uLL);
  v58 = *v12;
  if (!*v12)
  {
    goto LABEL_82;
  }

LABEL_95:
  mlir::Block::printAsOperand(v58, v54);
  v60 = *(v54 + 4);
  if (*(v54 + 3) - v60 > 0xCuLL)
  {
    goto LABEL_91;
  }

LABEL_96:
  v64 = llvm::raw_ostream::write(v54, " is removed!\n", 0xDuLL);
  v63 = llvm::errs(v64);
  if (*(v63 + 4) != *(v63 + 2))
  {
LABEL_97:
    llvm::raw_ostream::flush_nonempty(v63);
  }

  return 0;
}

BOOL llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::isPermutation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  v3 = *a1;
  v4 = v30;
  v26 = v30;
  v27 = v30;
  v28 = 4;
  v29 = 0;
  if (!v2)
  {
    return 1;
  }

  v6 = &v3[v2];
  do
  {
    v7 = *v3;
    if (v27 != v4)
    {
      goto LABEL_4;
    }

    v8 = HIDWORD(v28);
    if (!HIDWORD(v28))
    {
LABEL_12:
      if (HIDWORD(v28) >= v28)
      {
LABEL_4:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v26, v7);
      }

      else
      {
        ++HIDWORD(v28);
        v4[v8] = v7;
      }

      v4 = v26;
      goto LABEL_6;
    }

    v9 = 0;
    while (v4[v9] != v7)
    {
      if (HIDWORD(v28) == ++v9)
      {
        goto LABEL_12;
      }
    }

LABEL_6:
    ++v3;
  }

  while (v3 != v6);
  v12 = *(a2 + 8);
  v13 = v27;
  if (v12)
  {
    v14 = *a2;
    v15 = *a2 + 8 * v12;
    if (v27 == v4)
    {
      if (!HIDWORD(v28))
      {
        return 0;
      }

      v16 = (v27 + 8 * HIDWORD(v28));
      do
      {
        v17 = 8 * HIDWORD(v28);
        for (i = v4; *i != *v14; ++i)
        {
          v17 -= 8;
          if (!v17)
          {
            return 0;
          }
        }

        v10 = i != v16;
        if (i == v16)
        {
          break;
        }

        ++v14;
      }

      while (v14 != v15);
      return v10;
    }

    do
    {
      v23 = *v14;
      if (v13 == v4)
      {
        v20 = HIDWORD(v28);
        if (HIDWORD(v28))
        {
          v25 = 8 * HIDWORD(v28);
          v19 = v4;
          while (*v19 != v23)
          {
            ++v19;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          v19 = &v13[HIDWORD(v28)];
        }
      }

      else
      {
        v19 = llvm::SmallPtrSetImplBase::doFind(&v26, v23);
        v4 = v26;
        v13 = v27;
        v20 = HIDWORD(v28);
        if (!v19)
        {
          v24 = v28;
          if (v27 == v26)
          {
            v24 = HIDWORD(v28);
          }

          v19 = (v27 + 8 * v24);
        }
      }

      if (v13 != v4)
      {
        v20 = v28;
      }

      v21 = &v13[v20];
      v10 = v19 != v21;
      ++v14;
    }

    while (v19 != v21 && v14 != v15);
  }

  else
  {
    v10 = 1;
  }

  if (v13 == v4)
  {
    return v10;
  }

  free(v13);
  return v10;
}

llvm::raw_ostream *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()(llvm *a1, uint64_t a2)
{
  v3 = llvm::errs(a1);
  if (!a2 || !*a2)
  {
    v6 = *(v3 + 4);
    if (*(v3 + 3) - v6 > 6uLL)
    {
      *(v6 + 3) = 1920233580;
      *v6 = 1819047278;
      *(v3 + 4) += 7;
      v5 = *(v3 + 4);
      if (*(v3 + 3) - v5 <= 1uLL)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = v3;
      llvm::raw_ostream::write(v3, "nullptr", 7uLL);
      v3 = v7;
      v5 = *(v7 + 4);
      if (*(v7 + 3) - v5 <= 1uLL)
      {
        goto LABEL_13;
      }
    }

LABEL_7:
    *v5 = 31520;
    *(v3 + 4) += 2;
    v8 = llvm::raw_ostream::operator<<(v3, *(a2 + 72));
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 <= 1uLL)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v4 = v3;
  mlir::Block::printAsOperand(*a2, v3);
  v3 = v4;
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 1uLL)
  {
    goto LABEL_7;
  }

LABEL_13:
  v12 = llvm::raw_ostream::write(v3, " {", 2uLL);
  v8 = llvm::raw_ostream::operator<<(v12, *(a2 + 72));
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 <= 1uLL)
  {
LABEL_14:
    v13 = llvm::raw_ostream::write(v8, ", ", 2uLL);
    result = llvm::raw_ostream::operator<<(v13, *(a2 + 76));
    v11 = *(result + 4);
    if (v11 < *(result + 3))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_8:
  *v9 = 8236;
  *(v8 + 4) += 2;
  result = llvm::raw_ostream::operator<<(v8, *(a2 + 76));
  v11 = *(result + 4);
  if (v11 < *(result + 3))
  {
LABEL_15:
    *(result + 4) = v11 + 1;
    *v11 = 125;
    return result;
  }

LABEL_9:

  return llvm::raw_ostream::write(result, 125);
}

llvm::raw_ostream *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = llvm::errs(a1);
  v7 = v6[4];
  if (v6[3] - v7 > 0x22uLL)
  {
    qmemcpy(v7, "Incorrect DFS numbers for:\n\tParent ", 35);
    v6[4] += 35;
  }

  else
  {
    llvm::raw_ostream::write(v6, "Incorrect DFS numbers for:\n\tParent ", 0x23uLL);
  }

  v8 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()((a1 + 2), *a1);
  v9 = llvm::errs(v8);
  v10 = v9[4];
  if (v9[3] - v10 > 7uLL)
  {
    *v10 = 0x20646C696843090ALL;
    v9[4] += 8;
    v11 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()((a1 + 2), a2);
    if (!a3)
    {
LABEL_6:
      v12 = llvm::errs(v11);
      v13 = *(v12 + 4);
      if (*(v12 + 3) - v13 <= 0xEuLL)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, "\n\tChild ", 8uLL);
    v11 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()((a1 + 2), a2);
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v16 = llvm::errs(v11);
  v17 = v16[4];
  if (v16[3] - v17 > 0xEuLL)
  {
    qmemcpy(v17, "\n\tSecond child ", 15);
    v16[4] += 15;
  }

  else
  {
    llvm::raw_ostream::write(v16, "\n\tSecond child ", 0xFuLL);
  }

  v18 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()((a1 + 2), a3);
  v12 = llvm::errs(v18);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 <= 0xEuLL)
  {
LABEL_7:
    v12 = llvm::raw_ostream::write(v12, "\nAll children: ", 0xFuLL);
    v14 = a1[1];
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_14:
  qmemcpy(v13, "\nAll children: ", 15);
  *(v12 + 4) += 15;
  v14 = a1[1];
  v15 = *(v14 + 8);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_15:
  v19 = *v14;
  v20 = 8 * v15;
  do
  {
    while (1)
    {
      v21 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()((a1 + 2), *v19);
      v12 = llvm::errs(v21);
      v22 = *(v12 + 4);
      if (*(v12 + 3) - v22 > 1uLL)
      {
        break;
      }

      v12 = llvm::raw_ostream::write(v12, ", ", 2uLL);
      ++v19;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_19;
      }
    }

    *v22 = 8236;
    *(v12 + 4) += 2;
    ++v19;
    v20 -= 8;
  }

  while (v20);
LABEL_19:
  v23 = llvm::errs(v12);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    v26 = llvm::raw_ostream::write(v23, 10);
    result = llvm::errs(v26);
    if (*(result + 4) == *(result + 2))
    {
      return result;
    }
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 10;
    result = llvm::errs(v23);
    if (*(result + 4) == *(result + 2))
    {
      return result;
    }
  }

  return llvm::raw_ostream::flush_nonempty(result);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v80 = *(a2 - 1);
        v81 = *v10;
        if (*(v80 + 72) < *(*v10 + 72))
        {
          *v10 = v80;
          *(a2 - 1) = v81;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v88 = v10 + 1;
      v89 = v10[1];
      v90 = v10 + 2;
      v91 = v10[2];
      v92 = *v10;
      v93 = *(v89 + 72);
      v94 = *(*v10 + 72);
      v95 = *(v91 + 72);
      if (v93 >= v94)
      {
        if (v95 < v93)
        {
          *v88 = v91;
          *v90 = v89;
          v96 = v10;
          v97 = v10 + 1;
          result = v89;
          if (v95 < v94)
          {
            goto LABEL_144;
          }

          goto LABEL_145;
        }

LABEL_154:
        v89 = v91;
        v110 = *(a2 - 1);
        if (*(v110 + 72) >= *(v89 + 72))
        {
          return result;
        }
      }

      else
      {
        v96 = v10;
        v97 = v10 + 2;
        result = *v10;
        if (v95 >= v93)
        {
          *v10 = v89;
          v10[1] = v92;
          v96 = v10 + 1;
          v97 = v10 + 2;
          result = v92;
          if (v95 >= v94)
          {
            goto LABEL_154;
          }
        }

LABEL_144:
        *v96 = v91;
        *v97 = v92;
        v89 = result;
LABEL_145:
        v110 = *(a2 - 1);
        if (*(v110 + 72) >= *(v89 + 72))
        {
          return result;
        }
      }

      *v90 = v110;
      *(a2 - 1) = v89;
      v115 = *v90;
      v116 = *v88;
      v117 = *(v115 + 72);
      if (v117 < *(v116 + 72))
      {
        v10[1] = v115;
        v10[2] = v116;
        v118 = *v10;
        if (v117 < *(*v10 + 72))
        {
          *v10 = v115;
          v10[1] = v118;
        }
      }

      return result;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1);
    }

LABEL_10:
    if (v11 <= 23)
    {
      v98 = v10 + 1;
      v100 = v10 == a2 || v98 == a2;
      if (a5)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v10;
          do
          {
            v105 = *v102;
            v104 = v102[1];
            v102 = v98;
            v106 = *(v104 + 72);
            if (v106 < *(v105 + 72))
            {
              v107 = v101;
              do
              {
                *(v10 + v107 + 8) = v105;
                if (!v107)
                {
                  v103 = v10;
                  goto LABEL_128;
                }

                v105 = *(v10 + v107 - 8);
                v107 -= 8;
              }

              while (v106 < *(v105 + 72));
              v103 = (v10 + v107 + 8);
LABEL_128:
              *v103 = v104;
            }

            v98 = v102 + 1;
            v101 += 8;
          }

          while (v102 + 1 != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v112 = *v9;
          v111 = v9[1];
          v9 = v98;
          v113 = *(v111 + 72);
          if (v113 < *(v112 + 72))
          {
            v114 = v9;
            do
            {
              *v114 = v112;
              v112 = *(v114 - 2);
              --v114;
            }

            while (v113 < *(v112 + 72));
            *v114 = v111;
          }

          v98 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,llvm::DomTreeNodeBase<mlir::Block> **>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    v15 = *(v14 + 72);
    if (v11 < 0x81)
    {
      v20 = *v10;
      v21 = *v12;
      v22 = *(*v10 + 72);
      v23 = *(*v13 + 72);
      if (v22 < v23)
      {
        if (v15 < v22)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v20;
        *v10 = v21;
        v36 = *(a2 - 1);
        if (*(v36 + 72) < v23)
        {
          *v10 = v36;
LABEL_37:
          *(a2 - 1) = v21;
        }

LABEL_38:
        --a4;
        v26 = *v10;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v15 >= v22)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v20;
      v25 = *v13;
      if (*(*v10 + 72) >= *(*v13 + 72))
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v25;
      --a4;
      v26 = v25;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_39;
    }

    v16 = *v12;
    v17 = *v10;
    v18 = *(*v12 + 72);
    v19 = *(*v10 + 72);
    if (v18 >= v19)
    {
      if (v15 < v18)
      {
        *v12 = v14;
        *(a2 - 1) = v16;
        v24 = *v10;
        if (*(*v12 + 72) < *(*v10 + 72))
        {
          *v10 = *v12;
          *v12 = v24;
        }
      }
    }

    else
    {
      if (v15 >= v18)
      {
        *v10 = v16;
        *v12 = v17;
        v27 = *(a2 - 1);
        if (*(v27 + 72) >= v19)
        {
          goto LABEL_29;
        }

        *v12 = v27;
      }

      else
      {
        *v10 = v14;
      }

      *(a2 - 1) = v17;
    }

LABEL_29:
    v28 = v12 - 1;
    v29 = *(v12 - 1);
    v30 = v10[1];
    v31 = *(v29 + 72);
    v32 = *(v30 + 72);
    v33 = *(a2 - 2);
    v34 = *(v33 + 72);
    if (v31 >= v32)
    {
      if (v34 < v31)
      {
        *v28 = v33;
        *(a2 - 2) = v29;
        v35 = v10[1];
        if (*(*v28 + 72) < *(v35 + 72))
        {
          v10[1] = *v28;
          *v28 = v35;
        }
      }
    }

    else
    {
      if (v34 >= v31)
      {
        v10[1] = v29;
        *v28 = v30;
        v38 = *(a2 - 2);
        if (*(v38 + 72) >= v32)
        {
          goto LABEL_43;
        }

        *v28 = v38;
      }

      else
      {
        v10[1] = v33;
      }

      *(a2 - 2) = v30;
    }

LABEL_43:
    v41 = v12[1];
    v39 = v12 + 1;
    v40 = v41;
    v42 = v10[2];
    v43 = *(v41 + 72);
    v44 = *(v42 + 72);
    v45 = *(a2 - 3);
    v46 = *(v45 + 72);
    if (v43 >= v44)
    {
      if (v46 < v43)
      {
        *v39 = v45;
        *(a2 - 3) = v40;
        v47 = v10[2];
        if (*(*v39 + 72) < *(v47 + 72))
        {
          v10[2] = *v39;
          *v39 = v47;
        }
      }

      goto LABEL_52;
    }

    if (v46 < v43)
    {
      v10[2] = v45;
LABEL_51:
      *(a2 - 3) = v42;
      goto LABEL_52;
    }

    v10[2] = v40;
    *v39 = v42;
    v48 = *(a2 - 3);
    if (*(v48 + 72) < v44)
    {
      *v39 = v48;
      goto LABEL_51;
    }

LABEL_52:
    v49 = *v13;
    v50 = *v28;
    v51 = *(*v13 + 72);
    v52 = *(*v28 + 72);
    v53 = *v39;
    v54 = *(*v39 + 72);
    if (v51 >= v52)
    {
      if (v54 >= v51)
      {
        goto LABEL_60;
      }

      *v13 = v53;
      *v39 = v49;
      v39 = v13;
      v49 = v50;
      if (v54 < v52)
      {
LABEL_59:
        *v28 = v53;
        *v39 = v50;
LABEL_60:
        v56 = *v10;
        *v10 = v49;
        *v13 = v56;
        --a4;
        v26 = *v10;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      v70 = *v10;
      *v10 = v53;
      *v13 = v70;
      --a4;
      v26 = *v10;
      if (a5)
      {
        goto LABEL_39;
      }

LABEL_61:
      v37 = *(v26 + 72);
      if (*(*(v10 - 1) + 72) < v37)
      {
        goto LABEL_62;
      }

      if (v37 >= *(*(a2 - 1) + 72))
      {
        v72 = (v10 + 1);
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v72 += 8;
        }

        while (v37 >= *(*v10 + 72));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v37 >= *(v71 + 72));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v37 < *(v74 + 72));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          do
          {
            v77 = v10[1];
            ++v10;
            v75 = v77;
          }

          while (v37 >= *(v77 + 72));
          do
          {
            v78 = *--v73;
            v76 = v78;
          }

          while (v37 < *(v78 + 72));
        }

        while (v10 < v73);
      }

      v79 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v79;
      }

      a5 = 0;
      *v79 = v26;
    }

    else
    {
      if (v54 < v51)
      {
        goto LABEL_59;
      }

      *v28 = v49;
      *v13 = v50;
      v28 = v13;
      v49 = v53;
      if (v54 < v52)
      {
        goto LABEL_59;
      }

      v55 = *v10;
      *v10 = v50;
      *v13 = v55;
      --a4;
      v26 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v37 = *(v26 + 72);
LABEL_62:
      v57 = 0;
      do
      {
        v58 = v10[++v57];
      }

      while (*(v58 + 72) < v37);
      v59 = &v10[v57];
      v60 = a2;
      if (v57 == 1)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v62 + 72) >= v37);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v61 + 72) >= v37);
      }

      if (v59 >= v60)
      {
        v68 = v59 - 1;
        if (v59 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v68;
        goto LABEL_80;
      }

      v63 = *v60;
      v64 = &v10[v57];
      v65 = v60;
      do
      {
        *v64 = v63;
        *v65 = v58;
        do
        {
          v66 = v64[1];
          ++v64;
          v58 = v66;
        }

        while (*(v66 + 72) < v37);
        do
        {
          v67 = *--v65;
          v63 = v67;
        }

        while (*(v67 + 72) >= v37);
      }

      while (v64 < v65);
      v68 = v64 - 1;
      if (v64 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v68 = v26;
      if (v59 < v60)
      {
        goto LABEL_83;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **>(v10, v68);
      v10 = v68 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **>(v68 + 1, a2);
      if (result)
      {
        a2 = v68;
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,false>(v9, v68, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v68 + 1;
      }
    }
  }

  v82 = *v10;
  v83 = v10[1];
  v84 = *(v83 + 72);
  v85 = *(*v10 + 72);
  v86 = *(a2 - 1);
  v87 = *(v86 + 72);
  if (v84 >= v85)
  {
    if (v87 < v84)
    {
      v10[1] = v86;
      *(a2 - 1) = v83;
      v109 = *v10;
      v108 = v10[1];
      if (*(v108 + 72) < *(*v10 + 72))
      {
        *v10 = v108;
        v10[1] = v109;
      }
    }
  }

  else
  {
    if (v87 >= v84)
    {
      *v10 = v83;
      v10[1] = v82;
      v119 = *(a2 - 1);
      if (*(v119 + 72) >= v85)
      {
        return result;
      }

      v10[1] = v119;
    }

    else
    {
      *v10 = v86;
    }

    *(a2 - 1) = v82;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 72);
  v8 = *(*result + 72);
  v9 = *a3;
  v10 = *(*a3 + 72);
  if (v7 < v8)
  {
    if (v10 >= v7)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(*a3 + 72) >= v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
    v5 = v6;
LABEL_11:
    v12 = *a4;
    if (*(*a4 + 72) >= *(v5 + 72))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v7)
  {
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 72) >= *(v9 + 72))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 72) >= *(*result + 72))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 72) >= *(*a3 + 72))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v13 = *a2;
  if (*(*a3 + 72) < *(*a2 + 72))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(*a2 + 72) < *(*result + 72))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(*a5 + 72) < *(*a4 + 72))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(*a4 + 72) < *(*a3 + 72))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(*a3 + 72) < *(*a2 + 72))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(*a2 + 72) < *(*result + 72))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(v7 + 72);
      v9 = *(*a1 + 72);
      v10 = *(a2 - 1);
      v11 = *(v10 + 72);
      if (v8 >= v9)
      {
        if (v11 >= v8)
        {
          return 1;
        }

        a1[1] = v10;
        *(a2 - 1) = v7;
        v33 = *a1;
        v32 = a1[1];
        if (*(v32 + 72) >= *(*a1 + 72))
        {
          return 1;
        }

        *a1 = v32;
        a1[1] = v33;
        return 1;
      }

      else if (v11 >= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v47 + 72) >= v9)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v10;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

LABEL_14:
      v13 = a1 + 2;
      v12 = a1[2];
      v14 = a1[1];
      v15 = *a1;
      v16 = *(v14 + 72);
      v17 = *(*a1 + 72);
      v18 = *(v12 + 72);
      if (v16 >= v17)
      {
        if (v18 >= v16)
        {
          goto LABEL_28;
        }

        a1[1] = v12;
        *v13 = v14;
        v19 = a1;
        v20 = a1 + 1;
      }

      else
      {
        v19 = a1;
        v20 = a1 + 2;
        if (v18 < v16)
        {
LABEL_27:
          *v19 = v12;
          *v20 = v15;
          goto LABEL_28;
        }

        *a1 = v14;
        a1[1] = v15;
        v19 = a1 + 1;
        v20 = a1 + 2;
      }

      if (v18 < v17)
      {
        goto LABEL_27;
      }

LABEL_28:
      v34 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v35 = 0;
      for (i = 24; ; i += 8)
      {
        v37 = *v34;
        v38 = *v13;
        v39 = *(*v34 + 72);
        if (v39 < *(v38 + 72))
        {
          break;
        }

LABEL_31:
        v13 = v34++;
        if (v34 == a2)
        {
          return 1;
        }
      }

      v40 = i;
      do
      {
        *(a1 + v40) = v38;
        v41 = v40 - 8;
        if (v40 == 8)
        {
          *a1 = v37;
          if (++v35 != 8)
          {
            goto LABEL_31;
          }

          return v34 + 1 == a2;
        }

        v38 = *(a1 + v40 - 16);
        v40 -= 8;
      }

      while (v39 < *(v38 + 72));
      *(a1 + v41) = v37;
      if (++v35 != 8)
      {
        goto LABEL_31;
      }

      return v34 + 1 == a2;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    v26 = *(v22 + 72);
    v27 = *(*a1 + 72);
    v28 = *(v24 + 72);
    if (v26 >= v27)
    {
      if (v28 >= v26)
      {
        goto LABEL_43;
      }

      *v21 = v24;
      *v23 = v22;
      v29 = a1;
      v30 = a1 + 1;
      v31 = v22;
      if (v28 >= v27)
      {
LABEL_41:
        v42 = *(a2 - 1);
        if (*(v42 + 72) >= *(v22 + 72))
        {
          return 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v29 = a1;
      v30 = a1 + 2;
      v31 = *a1;
      if (v28 >= v26)
      {
        *a1 = v22;
        a1[1] = v25;
        v29 = a1 + 1;
        v30 = a1 + 2;
        v31 = v25;
        if (v28 >= v27)
        {
LABEL_43:
          v22 = v24;
          v42 = *(a2 - 1);
          if (*(v42 + 72) >= *(v22 + 72))
          {
            return 1;
          }

LABEL_44:
          *v23 = v42;
          *(a2 - 1) = v22;
          v43 = *v23;
          v44 = *v21;
          v45 = *(v43 + 72);
          if (v45 >= *(v44 + 72))
          {
            return 1;
          }

          a1[1] = v43;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *(*a1 + 72))
          {
            return 1;
          }

          *a1 = v43;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v29 = v24;
    *v30 = v25;
    v22 = v31;
    goto LABEL_41;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  if (*(v4 + 72) >= *(*a1 + 72))
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,llvm::DomTreeNodeBase<mlir::Block> **>(char *a1, char *a2, char *a3)
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
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3 && *(v9 + 72) < *(*(v8 + 1) + 72))
        {
          v9 = *(v8 + 1);
          v8 += 8;
          v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v10 = &a1[8 * v5];
        v11 = *v10;
        v12 = *(*v10 + 72);
        if (*(v9 + 72) >= v12)
        {
          do
          {
            v13 = v8;
            *v10 = v9;
            if (v4 < v7)
            {
              break;
            }

            v14 = (2 * v7) | 1;
            v8 = &a1[8 * v14];
            v15 = 2 * v7 + 2;
            v9 = *v8;
            if (v15 < v3 && *(v9 + 72) < *(*(v8 + 1) + 72))
            {
              v9 = *(v8 + 1);
              v8 += 8;
              v14 = v15;
            }

            v10 = v13;
            v7 = v14;
          }

          while (*(v9 + 72) >= v12);
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
      v17 = *a1;
      i = a2;
      do
      {
        v18 = *i;
        if (*(*i + 72) < *(v17 + 72))
        {
          *i = v17;
          *a1 = v18;
          v17 = v18;
        }

        i += 8;
      }

      while (i != a3);
      goto LABEL_45;
    }

    v19 = a1 + 16;
    for (i = a2; i != a3; i += 8)
    {
      v20 = *i;
      v21 = *(*i + 72);
      if (v21 < *(*a1 + 72))
      {
        *i = *a1;
        *a1 = v20;
        v22 = *(a1 + 1);
        if (a2 - a1 == 16)
        {
          v23 = a1 + 8;
          v24 = 1;
          if (*(v22 + 72) >= v21)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = *(v22 + 72);
          v26 = *(*v19 + 72);
          if (v25 >= v26)
          {
            v23 = a1 + 8;
          }

          else
          {
            v22 = *v19;
            v23 = a1 + 16;
          }

          if (v25 >= v26)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          if (*(v22 + 72) >= v21)
          {
LABEL_38:
            v27 = a1;
            do
            {
              v28 = v23;
              *v27 = v22;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[8 * v29];
              v30 = 2 * v24 + 2;
              v22 = *v23;
              if (v30 < v3 && *(v22 + 72) < *(*(v23 + 1) + 72))
              {
                v22 = *(v23 + 1);
                v23 += 8;
                v29 = v30;
              }

              v27 = v28;
              v24 = v29;
            }

            while (*(v22 + 72) >= v21);
            *v28 = v20;
          }
        }
      }
    }
  }

LABEL_45:
  if (v3 >= 2)
  {
    do
    {
      v32 = 0;
      v33 = *a1;
      v34 = (v3 - 2) >> 1;
      v35 = a1;
      do
      {
        while (1)
        {
          v41 = &v35[8 * v32];
          v40 = v41 + 8;
          v39 = *(v41 + 1);
          v42 = (2 * v32) | 1;
          v32 = 2 * v32 + 2;
          if (v32 < v3)
          {
            break;
          }

          v32 = v42;
          *v35 = v39;
          v35 = v41 + 8;
          if (v42 > v34)
          {
            goto LABEL_57;
          }
        }

        v38 = *(v41 + 2);
        v37 = v41 + 16;
        v36 = v38;
        if (*(v39 + 72) >= *(v38 + 72))
        {
          v32 = v42;
        }

        else
        {
          v39 = v36;
          v40 = v37;
        }

        *v35 = v39;
        v35 = v40;
      }

      while (v32 <= v34);
LABEL_57:
      a2 -= 8;
      if (v40 == a2)
      {
        *v40 = v33;
      }

      else
      {
        *v40 = *a2;
        *a2 = v33;
        v43 = (v40 - a1 + 8) >> 3;
        v6 = v43 < 2;
        v44 = v43 - 2;
        if (!v6)
        {
          v45 = v44 >> 1;
          v46 = &a1[8 * v45];
          v47 = *v46;
          v48 = *v40;
          v49 = *(*v40 + 72);
          if (*(*v46 + 72) < v49)
          {
            do
            {
              v50 = v46;
              *v40 = v47;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[8 * v45];
              v47 = *v46;
              v40 = v50;
            }

            while (*(*v46 + 72) < v49);
            *v50 = v48;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, uint64_t *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = &v30;
  v30 = a2;
  v31 = a5;
  v29 = 0x4000000001;
  v25 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v25) + 1) = a5;
  v11 = v29;
  while (v29)
  {
    v12 = v28 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v29) = v11 - 1;
    v25 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v25);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v18 + 8), v13, &v25);
      v19 = v26;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v25, v13);
      v19 = v26;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v24 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v25, v25 + v19, &v24, 126 - 2 * __clz(v19), 1);
          v19 = v26;
        }
      }
    }

    v20 = v25;
    if (v19 && v13 != a4)
    {
      v21 = 8 * v19;
      do
      {
        if (*v20 != a4)
        {
          if (v29 >= HIDWORD(v29))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = (v28 + 16 * v29);
          *v22 = *v20;
          v22[1] = v6;
          LODWORD(v29) = v29 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v25;
    }

    if (v20 != &v27)
    {
      free(v20);
    }

LABEL_3:
    v11 = v29;
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return a3;
}

uint64_t llvm::GraphDiff<mlir::Block *,true>::GraphDiff(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  *a1 = 1;
  *(a1 + 8) = -4096;
  v6 = a1 + 8;
  *(a1 + 80) = -4096;
  *(a1 + 152) = -4096;
  *(a1 + 224) = -4096;
  *(a1 + 296) = 1;
  *(a1 + 304) = -4096;
  *(a1 + 376) = -4096;
  *(a1 + 448) = -4096;
  *(a1 + 520) = -4096;
  *(a1 + 600) = a1 + 616;
  *(a1 + 608) = 0x400000000;
  llvm::cfg::LegalizeUpdates<mlir::Block *>(a2, a3, (a1 + 600), 1, 0);
  v7 = *(a1 + 608);
  if (v7)
  {
    v8 = *(a1 + 600);
    v9 = &v8[2 * v7];
    do
    {
      v11 = *v8;
      v10 = v8[1];
      v42 = *v8;
      if (*a1)
      {
        v12 = 4;
        v13 = v6;
      }

      else
      {
        v12 = *(a1 + 16);
        if (!v12)
        {
          v31 = 0;
          goto LABEL_18;
        }

        v13 = *(a1 + 8);
      }

      v14 = v12 - 1;
      v15 = v14 & ((v11 >> 4) ^ (v11 >> 9));
      v16 = (v13 + 72 * v15);
      v17 = *v16;
      if (v11 == *v16)
      {
        goto LABEL_8;
      }

      v33 = 0;
      v34 = 1;
      while (v17 != -4096)
      {
        if (v33)
        {
          v35 = 0;
        }

        else
        {
          v35 = v17 == -8192;
        }

        if (v35)
        {
          v33 = v16;
        }

        v36 = v15 + v34++;
        v15 = v36 & v14;
        v16 = (v13 + 72 * v15);
        v17 = *v16;
        if (v11 == *v16)
        {
          goto LABEL_8;
        }
      }

      if (v33)
      {
        v31 = v33;
      }

      else
      {
        v31 = v16;
      }

LABEL_18:
      v16 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>(a1, v31, &v42);
LABEL_8:
      v18 = ((v10 & 4) == 0) ^ a4;
      v19 = &v16[4 * v18];
      v20 = v19 + 1;
      v21 = *(v19 + 4);
      if (v21 >= *(v19 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v10 & 0xFFFFFFFFFFFFFFF8;
      *(*v20 + 8 * v21) = v10 & 0xFFFFFFFFFFFFFFF8;
      ++*(v20 + 2);
      v42 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (*(a1 + 296))
      {
        v23 = 4;
        v24 = a1 + 304;
      }

      else
      {
        v23 = *(a1 + 312);
        if (!v23)
        {
          v32 = 0;
LABEL_20:
          v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::InsertIntoBucket<mlir::Block *>((a1 + 296), v32, &v42);
          goto LABEL_14;
        }

        v24 = *(a1 + 304);
      }

      v25 = v23 - 1;
      v26 = v25 & ((v22 >> 4) ^ (v22 >> 9));
      v27 = (v24 + 72 * v26);
      v28 = *v27;
      if (*v27 != v22)
      {
        v37 = 0;
        v38 = 1;
        while (v28 != -4096)
        {
          if (v37)
          {
            v39 = 0;
          }

          else
          {
            v39 = v28 == -8192;
          }

          if (v39)
          {
            v37 = v27;
          }

          v40 = v26 + v38++;
          v26 = v40 & v25;
          v27 = (v24 + 72 * v26);
          v28 = *v27;
          if (*v27 == v22)
          {
            goto LABEL_14;
          }
        }

        if (v37)
        {
          v32 = v37;
        }

        else
        {
          v32 = v27;
        }

        goto LABEL_20;
      }

LABEL_14:
      v29 = &v27[4 * v18];
      v30 = *(v29 + 4);
      if (v30 >= *(v29 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29[1] + 8 * v30) = v11;
      ++*(v29 + 4);
      v8 += 2;
    }

    while (v8 != v9);
  }

  *(a1 + 592) = a4;
  return a1;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ApplyUpdates(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 608);
  if (!v3)
  {
    return;
  }

  if (v3 == 1)
  {
    v7 = llvm::GraphDiff<mlir::Block *,false>::popUpdateForIncrementalUpdates(a2);
    if (a3)
    {
      v14[0] = 0;
      v15 = a3;
      v16 = a3;
      v17 = *(a3 + 608);
      v8 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 4) != 0)
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::DeleteEdge(result, v14, v7, v8);
      }

      else
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertEdge(result, v14, v7, v8);
      }
    }

    else
    {
      v13 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 4) != 0)
      {

        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::DeleteEdge(result, 0, v7, v13);
      }

      else
      {

        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertEdge(result, 0, v7, v13);
      }
    }

    return;
  }

  v14[0] = 0;
  v15 = a2;
  v16 = a3;
  v17 = v3;
  v9 = *(result + 56);
  if (v9 > 0x64)
  {
    if (v3 <= v9 / 0x28)
    {
      goto LABEL_12;
    }

LABEL_11:
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::CalculateFromScratch(result, v14);
  }

  if (v3 > v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = 1;
  do
  {
    v12 = llvm::GraphDiff<mlir::Block *,false>::popUpdateForIncrementalUpdates(v15);
    if ((v11 & 4) != 0)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::DeleteEdge(result, v14, v12, v11 & 0xFFFFFFFFFFFFFFF8);
      if (v10 >= v17)
      {
        return;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertEdge(result, v14, v12, (v11 & 0xFFFFFFFFFFFFFFF8));
      if (v10 >= v17)
      {
        return;
      }
    }

    ++v10;
  }

  while ((v14[0] & 1) == 0);
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertEdge(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 128);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 112);
  v7 = v5 - 1;
  v8 = (v5 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v9 = v6[2 * v8];
  if (v9 != a3)
  {
    v13 = 1;
    while (v9 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & v7;
      v9 = v6[2 * v8];
      if (v9 == a3)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_6;
  }

LABEL_3:
  if (v8 == v5 || (v10 = LODWORD(v6[2 * v8 + 1]), *(a1 + 56) <= v10) || (v11 = *(*(a1 + 48) + 8 * v10)) == 0)
  {
LABEL_6:
    v12 = *v6;
    if (*v6)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        if (v12 == -4096)
        {
          break;
        }

        v17 = v15 + v16++;
        v15 = v17 & v7;
        v12 = v6[2 * v15];
      }

      while (v12);
    }

LABEL_16:
    llvm::DominatorTreeBase<mlir::Block,true>::createNode();
  }

  *(a1 + 152) = 0;
  v18 = (v5 - 1) & ((a4 >> 4) ^ (a4 >> 9));
  v19 = v6[2 * v18];
  if (v19 != a4)
  {
    v22 = 1;
    while (v19 != -4096)
    {
      v23 = v18 + v22++;
      v18 = v23 & (v5 - 1);
      v19 = v6[2 * v18];
      if (v19 == a4)
      {
        goto LABEL_18;
      }
    }

LABEL_28:

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertUnreachable(a1, a2, v11, a4);
  }

LABEL_18:
  if (v18 == v5)
  {
    goto LABEL_28;
  }

  v20 = LODWORD(v6[2 * v18 + 1]);
  if (*(a1 + 56) <= v20)
  {
    goto LABEL_28;
  }

  v21 = *(*(a1 + 48) + 8 * v20);
  if (!v21)
  {
    goto LABEL_28;
  }

  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertReachable(a1, a2, v11, v21);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::DeleteEdge(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 128);
  if (v4)
  {
    v5 = *(result + 112);
    v6 = v4 - 1;
    v7 = (v4 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v8 = *(v5 + 16 * v7);
    if (v8 == a3)
    {
LABEL_3:
      if (v7 != v4)
      {
        v9 = *(v5 + 16 * v7 + 8);
        v10 = *(result + 56);
        if (v10 > v9)
        {
          v11 = *(result + 48);
          if (*(v11 + 8 * v9))
          {
            v12 = v6 & ((a4 >> 4) ^ (a4 >> 9));
            v13 = *(v5 + 16 * v12);
            if (v13 == a4)
            {
LABEL_7:
              if (v12 != v4)
              {
                v14 = *(v5 + 16 * v12 + 8);
                if (v10 > v14)
                {
                  if (*(v11 + 8 * v14))
                  {
                    llvm::DominatorTreeBase<mlir::Block,true>::findNearestCommonDominator();
                  }
                }
              }
            }

            else
            {
              v17 = 1;
              while (v13 != -4096)
              {
                v18 = v12 + v17++;
                v12 = v18 & v6;
                v13 = *(v5 + 16 * v12);
                if (v13 == a4)
                {
                  goto LABEL_7;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = 1;
      while (v8 != -4096)
      {
        v16 = v7 + v15++;
        v7 = v16 & v6;
        v8 = *(v5 + 16 * v7);
        if (v8 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertUnreachable(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5[16] = *MEMORY[0x277D85DE8];
  v4[0] = v5;
  v4[1] = 0x800000000;
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ComputeUnreachableDominators(a1, a2, a4, a3, v4);
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::InsertReachable(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v130[8] = *MEMORY[0x277D85DE8];
  v105 = a4;
  if (!**(a4 + 8))
  {
    v99 = *(a1 + 8);
    if (v99)
    {
      v100 = 8 * v99;
      v101 = *a1;
      while (*v101 != *a4)
      {
        ++v101;
        v100 -= 8;
        if (!v100)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      v101 = *a1;
    }

    if (v101 != (*a1 + 8 * v99))
    {

      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::CalculateFromScratch(a1, a2);
    }
  }

LABEL_2:
  if (*a3 && *a4)
  {
    llvm::DominatorTreeBase<mlir::Block,true>::findNearestCommonDominator();
  }

  v6 = *(a1 + 112);
  v7 = 0;
  if (*v6)
  {
    v102 = 1;
    do
    {
      v103 = v7 + v102++;
      v7 = v103 & (*(a1 + 128) - 1);
    }

    while (v6[2 * v7]);
  }

  v8 = *(*(a1 + 48) + 8 * LODWORD(v6[2 * v7 + 1]));
  v9 = *(v8 + 16) + 1;
  if (v9 >= *(a4 + 16))
  {
    return;
  }

  v104 = v8;
  v113 = v115;
  v116 = 1;
  v117 = -4096;
  v118 = -4096;
  v119 = -4096;
  v120 = -4096;
  v121 = -4096;
  v122 = -4096;
  v123 = -4096;
  v124 = -4096;
  v125 = v127;
  v126 = 0x800000000;
  v128 = v130;
  v129 = 0x800000000;
  v110 = v112;
  v111 = 0x800000000;
  v115[0] = a4;
  v114 = 0x800000001;
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>,llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v116, &v105, &v107, &v106, a4);
  v12 = v114;
  if (!v114)
  {
    goto LABEL_125;
  }

  while (2)
  {
    v13 = v113;
    v14 = *v113;
    v15 = v12;
    if (v12 != 1)
    {
      v16 = 0;
      v17 = v113 + 8 * v12;
      v18 = (v12 - 2) >> 1;
      v19 = v113;
      do
      {
        while (1)
        {
          v25 = &v19[v16];
          v24 = (v25 + 1);
          v23 = v25[1];
          v26 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 < v15)
          {
            break;
          }

          v16 = v26;
          *v19 = v23;
          v19 = v25 + 1;
          if (v26 > v18)
          {
            goto LABEL_18;
          }
        }

        v22 = v25[2];
        v21 = (v25 + 2);
        v20 = v22;
        v10 = *(v22 + 16);
        if (*(v23 + 16) >= v10)
        {
          v16 = v26;
        }

        else
        {
          v23 = v20;
          v24 = v21;
        }

        *v19 = v23;
        v19 = v24;
      }

      while (v16 <= v18);
LABEL_18:
      v27 = v17 - 8;
      if (v24 == v27)
      {
        *v24 = v14;
      }

      else
      {
        *v24 = *v27;
        *v27 = v14;
        v28 = (v24 - v13 + 8) >> 3;
        v29 = v28 < 2;
        v30 = v28 - 2;
        if (!v29)
        {
          v31 = v30 >> 1;
          v32 = &v13[8 * v31];
          v33 = *v32;
          v34 = *v24;
          v35 = *(*v24 + 16);
          if (*(*v32 + 16) < v35)
          {
            do
            {
              v36 = v32;
              *v24 = v33;
              if (!v31)
              {
                break;
              }

              v31 = (v31 - 1) >> 1;
              v32 = &v13[8 * v31];
              v33 = *v32;
              v24 = v36;
            }

            while (*(*v32 + 16) < v35);
            *v36 = v34;
          }
        }
      }
    }

    LODWORD(v114) = v15 - 1;
    if (v126 >= HIDWORD(v126))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v125 + v126) = v14;
    LODWORD(v126) = v126 + 1;
    v37 = *(v14 + 16);
    v38 = *v14;
    if (a2)
    {
LABEL_27:
      llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(a2 + 8), v38, &v107);
      v39 = v108;
      v40 = v107;
      if (!v108)
      {
        goto LABEL_114;
      }

      goto LABEL_45;
    }

    while (1)
    {
      v41 = *v38;
      v107 = v109;
      v108 = 0x800000000;
      if (!v41)
      {
        v46 = v109;
        v47 = v109;
        goto LABEL_44;
      }

      v42 = 0;
      v43 = v41;
      do
      {
        v44 = v42;
        v43 = *v43;
        --v42;
      }

      while (v43);
      if (v42 <= 0xFFFFFFFFFFFFFFF7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v45 = v109;
      do
      {
        *v45++ = mlir::PredecessorIterator::unwrap(v41);
        v41 = *v41;
      }

      while (v41);
      v46 = v107;
      v47 = v107;
      v48 = v107 + 8 * (v108 - v42);
      if (v108 == v42)
      {
LABEL_37:
        if (v47 != v48)
        {
          v49 = v47 + 8;
          if (v47 + 8 != v48)
          {
            v50 = (v107 - v47 + 8 * (v108 - v44 + 1) - 8);
            do
            {
              if (*v49)
              {
                *v47 = *v49;
                v47 += 8;
              }

              ++v49;
              v50 -= 8;
            }

            while (v50);
          }
        }

LABEL_44:
        v51 = (v47 - v46) >> 3;
        v39 = v51;
        LODWORD(v108) = v51;
        v40 = v107;
        if (!v51)
        {
          goto LABEL_114;
        }

LABEL_45:
        v52 = &v40[v39];
        while (1)
        {
          v59 = *(a1 + 128);
          if (v59)
          {
            v60 = *(a1 + 112);
            v61 = ((*v40 >> 4) ^ (*v40 >> 9)) & (v59 - 1);
            v62 = *(v60 + 16 * v61);
            if (v62 == *v40)
            {
LABEL_51:
              if (v61 != v59)
              {
                v63 = *(v60 + 16 * v61 + 8);
                if (*(a1 + 56) > v63)
                {
                  v64 = *(*(a1 + 48) + 8 * v63);
                  v65 = *(v64 + 16);
                  if (v65 <= v9)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }
              }
            }

            else
            {
              v66 = 1;
              while (v62 != -4096)
              {
                v67 = v61 + v66++;
                v61 = v67 & (v59 - 1);
                v62 = *(v60 + 16 * v61);
                if (v62 == *v40)
                {
                  goto LABEL_51;
                }
              }
            }
          }

          v64 = 0;
          v65 = MEMORY[0x10];
          if (MEMORY[0x10] <= v9)
          {
            goto LABEL_48;
          }

LABEL_60:
          v68 = v116;
          v69 = v116 & 1;
          if (v116)
          {
            v53 = 8;
            v54 = &v117;
          }

          else
          {
            v53 = v118;
            if (!v118)
            {
              v70 = 0;
              goto LABEL_92;
            }

            v54 = v117;
          }

          v55 = v53 - 1;
          v56 = v55 & ((v64 >> 4) ^ (v64 >> 9));
          v57 = &v54[8 * v56];
          v58 = *v57;
          if (v64 != *v57)
          {
            v82 = 0;
            v83 = 1;
            while (v58 != -4096)
            {
              if (v82)
              {
                v84 = 0;
              }

              else
              {
                v84 = v58 == -8192;
              }

              if (v84)
              {
                v82 = v57;
              }

              v85 = v56 + v83++;
              v56 = v85 & v55;
              v57 = &v54[8 * v56];
              v58 = *v57;
              if (v64 == *v57)
              {
                goto LABEL_48;
              }
            }

            if (v82)
            {
              v86 = v82;
            }

            else
            {
              v86 = v57;
            }

            if (v116)
            {
              v70 = 8;
            }

            else
            {
              v70 = v118;
            }

            if (4 * (v116 >> 1) + 4 < 3 * v70)
            {
              if (v70 + ~(v116 >> 1) - HIDWORD(v116) <= v70 >> 3)
              {
                goto LABEL_93;
              }
            }

            else
            {
LABEL_92:
              v70 *= 2;
LABEL_93:
              v87 = v40;
              llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::grow(&v116, v70, v10, v11);
              v68 = v116;
              if (v116)
              {
                v88 = 8;
                v89 = &v117;
                goto LABEL_97;
              }

              v88 = v118;
              if (v118)
              {
                v89 = v117;
LABEL_97:
                v40 = v87;
                v69 = v116 & 1;
                v90 = v88 - 1;
                v91 = (v88 - 1) & ((v64 >> 4) ^ (v64 >> 9));
                v86 = &v89[8 * v91];
                v92 = *v86;
                if (v64 != *v86)
                {
                  v93 = 0;
                  v94 = 1;
                  while (v92 != -4096)
                  {
                    if (v93)
                    {
                      v95 = 0;
                    }

                    else
                    {
                      v95 = v92 == -8192;
                    }

                    if (v95)
                    {
                      v93 = v86;
                    }

                    v96 = v91 + v94++;
                    v91 = v96 & v90;
                    v86 = &v89[8 * (v96 & v90)];
                    v92 = *v86;
                    if (v64 == *v86)
                    {
                      goto LABEL_65;
                    }
                  }

                  if (v93)
                  {
                    v86 = v93;
                  }
                }
              }

              else
              {
                v69 = 0;
                v86 = 0;
                v40 = v87;
              }
            }

LABEL_65:
            LODWORD(v116) = (v68 & 0xFFFFFFFE | v69) + 2;
            if (*v86 != -4096)
            {
              --HIDWORD(v116);
            }

            *v86 = v64;
            if (v65 <= v37)
            {
              if (v114 >= HIDWORD(v114))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v113 + v114) = v64;
              v71 = (v114 + 1);
              LODWORD(v114) = v71;
              if (v71 >= 2)
              {
                v72 = v113;
                v73 = v113 + 8 * v71;
                v74 = (v71 - 2) >> 1;
                v75 = v113 + 8 * v74;
                v76 = *v75;
                v79 = *(v73 - 1);
                v78 = v73 - 8;
                v77 = v79;
                v80 = *(v79 + 16);
                if (*(*v75 + 16) < v80)
                {
                  do
                  {
                    v81 = v75;
                    *v78 = v76;
                    if (!v74)
                    {
                      break;
                    }

                    v74 = (v74 - 1) >> 1;
                    v75 = &v72[8 * v74];
                    v76 = *v75;
                    v78 = v81;
                  }

                  while (*(*v75 + 16) < v80);
                  *v81 = v77;
                }
              }
            }

            else
            {
              if (v111 >= HIDWORD(v111))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v110 + v111) = v64;
              LODWORD(v111) = v111 + 1;
            }
          }

LABEL_48:
          if (++v40 == v52)
          {
            v40 = v107;
            goto LABEL_114;
          }
        }
      }

      v98 = 8 * (v108 - v44 + 1);
      v47 = v107;
      do
      {
        if (!*v47)
        {
          goto LABEL_37;
        }

        v47 += 8;
        v98 -= 8;
      }

      while (v98);
      v39 = (v108 - v42);
      LODWORD(v108) = v108 - v42;
      v40 = v107;
      if (v108)
      {
        goto LABEL_45;
      }

LABEL_114:
      if (v40 != v109)
      {
        free(v40);
      }

      if (!v111)
      {
        break;
      }

      v97 = *(v110 + v111 - 1);
      LODWORD(v111) = v111 - 1;
      v38 = *v97;
      if (a2)
      {
        goto LABEL_27;
      }
    }

    v12 = v114;
    if (v114)
    {
      continue;
    }

    break;
  }

LABEL_125:
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::UpdateInsertion(a1, a2, v104, &v113);
  if (v110 != v112)
  {
    free(v110);
  }

  if (v128 != v130)
  {
    free(v128);
  }

  if (v125 != v127)
  {
    free(v125);
  }

  if ((v116 & 1) == 0)
  {
    llvm::deallocate_buffer(v117, (8 * v118));
  }

  if (v113 != v115)
  {
    free(v113);
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ComputeUnreachableDominators(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = &v11;
  v10[1] = 0x4000000001;
  v11 = 0;
  v12 = 0u;
  v13 = 0;
  v14 = a2;
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,true>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(v10, a3, 0, a1, a5, 0, 0);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(v10);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::attachNewSubtree(v10, a1, a4);
  if (v13)
  {
    v7 = (v12 + 48);
    v8 = v13 << 6;
    while (1)
    {
      if ((*(v7 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v9 = *(v7 - 2);
        if (v7 != v9)
        {
          free(v9);
        }
      }

      v7 += 8;
      v8 -= 64;
      if (!v8)
      {
        llvm::deallocate_buffer(v12, (v13 << 6));
      }
    }
  }

  llvm::deallocate_buffer(v12, 0);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,true>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = &v44;
  v44 = a2;
  v45 = a6;
  v43 = 0x4000000001;
  v39 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v39) + 1) = a6;
  v12 = v43;
  if (v43)
  {
    v13 = a7;
    do
    {
      v14 = v42 + 16 * v12;
      v15 = *(v14 - 2);
      v16 = *(v14 - 2);
      LODWORD(v43) = v12 - 1;
      v39 = v15;
      v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v39);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 9))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v17[3] + 4 * v18) = v16;
      ++*(v17 + 8);
      if (*v17)
      {
        goto LABEL_3;
      }

      a3 = (a3 + 1);
      *(v17 + 2) = a3;
      *(v17 + 3) = a3;
      *v17 = a3;
      *(v17 + 1) = v16;
      v19 = *(a1 + 8);
      if (v19 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a1 + 8 * v19) = v15;
      ++*(a1 + 8);
      v20 = *(a1 + 552);
      if (v20)
      {
        llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(v20 + 8), v15, &v39);
        v21 = v40;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>(v15, &v39);
        v21 = v40;
        if (v13)
        {
LABEL_11:
          if (v21 >= 2)
          {
            v38 = v13;
            std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v39, v39 + v21, &v38, 126 - 2 * __clz(v21), 1);
            v21 = v40;
          }
        }
      }

      v22 = v39;
      if (v21)
      {
        v23 = v39 + 8 * v21;
        while (1)
        {
          v27 = *v22;
          v28 = *(a4 + 128);
          if (!v28)
          {
            goto LABEL_15;
          }

          v29 = *(a4 + 112);
          v30 = ((v27 >> 4) ^ (v27 >> 9)) & (v28 - 1);
          v31 = *(v29 + 16 * v30);
          if (v31 != v27)
          {
            break;
          }

LABEL_20:
          if (v30 == v28)
          {
            goto LABEL_15;
          }

          v32 = *(v29 + 16 * v30 + 8);
          if (*(a4 + 56) <= v32)
          {
            goto LABEL_15;
          }

          v24 = *(*(a4 + 48) + 8 * v32);
          if (!v24)
          {
            goto LABEL_15;
          }

          v33 = *(a5 + 8);
          if (v33 >= *(a5 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v25 = (*a5 + 16 * v33);
          *v25 = v15;
          v26 = (a5 + 8);
LABEL_17:
          v25[1] = v24;
          ++*v26;
          if (++v22 == v23)
          {
            v22 = v39;
            v13 = a7;
            goto LABEL_32;
          }
        }

        v34 = 1;
        while (v31 != -4096)
        {
          v35 = v30 + v34++;
          v30 = v35 & (v28 - 1);
          v31 = *(v29 + 16 * v30);
          if (v31 == v27)
          {
            goto LABEL_20;
          }
        }

LABEL_15:
        if (v43 >= HIDWORD(v43))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v24 = v7 & 0xFFFFFFFF00000000 | a3;
        v25 = v42 + 16 * v43;
        *v25 = v27;
        v26 = &v43;
        v7 = v24;
        goto LABEL_17;
      }

LABEL_32:
      if (v22 != &v41)
      {
        free(v22);
      }

LABEL_3:
      v12 = v43;
    }

    while (v43);
  }

  if (v42 != &v44)
  {
    free(v42);
  }

  return a3;
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::attachNewSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v19 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v19);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    v9 = (*a1 + 8);
    while (1)
    {
      v11 = *v9;
      v12 = *(a2 + 128);
      if (!v12)
      {
        goto LABEL_4;
      }

      v13 = *(a2 + 112);
      v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 != v11)
      {
        break;
      }

LABEL_8:
      if (v14 == v12)
      {
        goto LABEL_4;
      }

      v16 = *(v13 + 16 * v14 + 8);
      if (*(a2 + 56) <= v16 || !*(*(a2 + 48) + 8 * v16))
      {
        goto LABEL_4;
      }

      if (++v9 == v8)
      {
        return result;
      }
    }

    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 == v11)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v19 = *v9;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v19);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(a1, v10[2], a2);
    llvm::DominatorTreeBase<mlir::Block,true>::createNode();
  }

  return result;
}

char *llvm::GraphDiff<mlir::Block *,true>::getChildren<true>@<X0>(char *result@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = *a2;
  v7 = a3 + 2;
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v6)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v9 = *v9;
      --v8;
    }

    while (v9);
    if (v8 <= 0xFFFFFFFFFFFFFFF7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v7;
    do
    {
      result = mlir::PredecessorIterator::unwrap(v6);
      *v11++ = result;
      v6 = *v6;
    }

    while (v6);
    v12 = *(a3 + 2);
    v7 = *a3;
    v10 = *a3;
    v13 = *a3 + 8 * (v12 - v8);
    if (v12 != v8)
    {
      v17 = 8 * (v12 - v8);
      v10 = *a3;
      while (*v10)
      {
        ++v10;
        v17 -= 8;
        if (!v17)
        {
          v10 = (*a3 + 8 * (v12 - v8));
          goto LABEL_20;
        }
      }
    }

    if (v10 != v13 && v10 + 1 != v13)
    {
      v14 = 8 * (v12 - v8);
      v15 = v10 - v7 + 8;
      do
      {
        v16 = *(v7 + v15);
        if (v16)
        {
          *v10++ = v16;
        }

        v15 += 8;
      }

      while (v14 != v15);
    }
  }

  else
  {
    v10 = a3 + 2;
  }

LABEL_20:
  v18 = v10 - v7;
  v19 = (v10 - v7) >> 3;
  *(a3 + 2) = v19;
  v20 = v4 + 8;
  v21 = *v4;
  if (*v4)
  {
    v22 = 4;
  }

  else
  {
    v20 = *(v4 + 1);
    v22 = *(v4 + 4);
    if (!v22)
    {
      v23 = 0;
LABEL_23:
      v24 = &v20[72 * v23];
      goto LABEL_27;
    }
  }

  v25 = v22 - 1;
  v26 = (v22 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v24 = &v20[72 * v26];
  v27 = *v24;
  if (*v24 != a2)
  {
    v43 = 1;
    while (v27 != -4096)
    {
      v44 = v26 + v43++;
      v26 = v44 & v25;
      v24 = &v20[72 * (v44 & v25)];
      v27 = *v24;
      if (*v24 == a2)
      {
        goto LABEL_26;
      }
    }

    if ((v21 & 1) == 0)
    {
      v20 = *(v4 + 1);
      v23 = *(v4 + 4);
      goto LABEL_23;
    }

    v24 = v4 + 296;
LABEL_56:
    if (v24 == v4 + 296)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (v21)
  {
    goto LABEL_56;
  }

LABEL_27:
  if (v24 == (*(v4 + 1) + 72 * *(v4 + 4)))
  {
    return result;
  }

LABEL_28:
  v28 = *(v24 + 4);
  if (v28)
  {
    v29 = (v18 >> 3);
    v30 = *(v24 + 1);
    v31 = &v30[v28];
    do
    {
      v32 = *v30;
      v33 = &v7[v29];
      if (v29)
      {
        v34 = 8 * v29;
        v35 = v7;
        v36 = v7;
        while (*v36 != v32)
        {
          ++v36;
          ++v35;
          v34 -= 8;
          if (!v34)
          {
            v35 = &v7[v29];
            goto LABEL_30;
          }
        }
      }

      else
      {
        v35 = v7;
        v36 = v7;
      }

      v37 = v35 + 1;
      if (v36 != v33 && v37 != v33)
      {
        v39 = &v7[v29 - 1] - v35;
        do
        {
          if (*v37 != v32)
          {
            *v35++ = *v37;
          }

          ++v37;
          v39 -= 8;
        }

        while (v39);
      }

LABEL_30:
      v29 = ((v35 - v7) >> 3);
      ++v30;
    }

    while (v30 != v31);
    v19 = (v35 - v7) >> 3;
    *(a3 + 2) = v29;
  }

  v40 = &v7[v19];
  v41 = *(v24 + 5);
  v42 = &v41[*(v24 + 12)];

  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, v40, v41, v42);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 128);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(a3 + 112);
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v5 + 16 * v6);
  if (v7 != a2)
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    v15 = a2;
    v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v15);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::getNodeForBlock(a1, v14[2], a3);
    llvm::DominatorTreeBase<mlir::Block,true>::createNode();
  }

LABEL_3:
  if (v6 == v4)
  {
    goto LABEL_11;
  }

  v8 = *(v5 + 16 * v6 + 8);
  if (*(a3 + 56) <= v8)
  {
    goto LABEL_11;
  }

  v9 = *(*(a3 + 48) + 8 * v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  return v9;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::UpdateInsertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 168);
  if (v4)
  {
    v6 = *(a4 + 160);
    v7 = &v6[v4];
    do
    {
      v9 = *v6;
      v10 = *(*v6 + 8);
      if (v10 != a3)
      {
        v11 = *(v10 + 24);
        v12 = *(v10 + 32);
        v13 = &v11[v12];
        if (v12)
        {
          v14 = 8 * v12;
          do
          {
            if (*v11 == v9)
            {
              goto LABEL_12;
            }

            ++v11;
            v14 -= 8;
          }

          while (v14);
          v11 = v13;
        }

LABEL_12:
        if (v13 != v11 + 1)
        {
          memmove(v11, v11 + 1, v13 - (v11 + 1));
          LODWORD(v12) = *(v10 + 32);
        }

        *(v10 + 32) = v12 - 1;
        *(v9 + 8) = a3;
        v8 = *(a3 + 32);
        if (v8 < *(a3 + 36))
        {
          *(*(a3 + 24) + 8 * v8) = v9;
          ++*(a3 + 32);
          llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      ++v6;
    }

    while (v6 != v7);
  }

  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::UpdateRootsAfterUpdate(a1, a2);
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::UpdateRootsAfterUpdate(uint64_t a1, uint64_t a2)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = 8 * v2;
    if (a2)
    {
      while (1)
      {
        llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), *v5, &v9);
        v7 = v10;
        if (v9 != v11)
        {
          free(v9);
        }

        if (v7)
        {
          break;
        }

        ++v5;
        v6 -= 8;
        if (!v6)
        {
          return;
        }
      }
    }

    else
    {
      while (1)
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v9, *v5);
        v8 = v10;
        if (v9 != v11)
        {
          free(v9);
        }

        if (v8)
        {
          break;
        }

        ++v5;
        v6 -= 8;
        if (!v6)
        {
          return;
        }
      }
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(a1, a2, &v9);
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84[5] = *MEMORY[0x277D85DE8];
  *a3 = a3 + 16;
  *(a3 + 8) = 0x400000000;
  v74 = &v76;
  v75 = 0x4000000001;
  v76 = 0;
  v77 = 0u;
  v78 = 0;
  v79 = a2;
  *&v80 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v77, &v80);
  v4[1] = 0x100000001;
  *v4 = 1;
  if (v75 >= HIDWORD(v75))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v74 + v75) = 0;
  LODWORD(v75) = v75 + 1;
  v6 = *(a1 + 144);
  v7 = *(v6 + 8);
  v8 = a1;
  if (v7 == v6)
  {
    v9 = 0;
    v10 = 1;
  }

  else if (a2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7)
      {
        v11 = (v7 - 8);
      }

      else
      {
        v11 = 0;
      }

      llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), v11, &v80);
      v12 = DWORD2(v80);
      if (v80 != &v81)
      {
        free(v80);
      }

      if (!v12)
      {
        v13 = *(a3 + 8);
        if (v13 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v13) = v11;
        ++*(a3 + 8);
        v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v74, v11, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
      }

      v7 = *(v7 + 8);
      ++v9;
    }

    while (v7 != v6);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7)
      {
        v62 = (v7 - 8);
      }

      else
      {
        v62 = 0;
      }

      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v80, v62);
      v63 = DWORD2(v80);
      if (v80 != &v81)
      {
        free(v80);
      }

      if (!v63)
      {
        v64 = *(a3 + 8);
        if (v64 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v64) = v62;
        ++*(a3 + 8);
        v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v74, v62, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
      }

      v7 = *(v7 + 8);
      ++v9;
    }

    while (v7 != v6);
  }

  if (v9 + 1 == v10)
  {
    if (v78)
    {
      v59 = v77 + 48;
      v60 = v78 << 6;
      while (1)
      {
        if ((*(v59 - 48) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v61 = *(v59 - 16);
          if (v59 != v61)
          {
            free(v61);
          }
        }

        v59 += 64;
        v60 -= 64;
        if (!v60)
        {
          llvm::deallocate_buffer(v77, (v78 << 6));
        }
      }
    }

    llvm::deallocate_buffer(v77, 0);
  }

  LOBYTE(v71[0]) = 0;
  v73 = 0;
  v70[0] = v71;
  v70[1] = v8;
  v14 = v8;
  v70[2] = &v74;
  v15 = *(v8 + 144);
  v16 = *(v15 + 8);
  if (v16 == v15)
  {
LABEL_102:
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::RemoveRedundantRoots(v14, a2, a3, v5);
  }

  v65 = v8;
  v66 = *(v8 + 144);
  while (1)
  {
    if (v16)
    {
      v17 = (v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    *&v80 = v17;
    if (*llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v77, &v80))
    {
      goto LABEL_20;
    }

    if ((v73 & 1) == 0)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(llvm::DominatorTreeBase<mlir::Block,true> const&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *)::{lambda(void)#1}::operator()(v70, v18, v19, v5);
    }

    v20 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(&v74, v17, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, v10, v71);
    v21 = *(a3 + 8);
    if (v21 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20;
    v67 = *(v74 + v20);
    *(*a3 + 8 * v21) = v67;
    ++*(a3 + 8);
    if (v20 > v10)
    {
      break;
    }

LABEL_19:
    v10 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(&v74, v67, v10, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
    v15 = v66;
LABEL_20:
    v16 = *(v16 + 8);
    if (v16 == v15)
    {
      v14 = v65;
      if (v73)
      {
        llvm::deallocate_buffer(v71[0], (16 * v72));
      }

      goto LABEL_102;
    }
  }

  while (1)
  {
    v23 = v77;
    v24 = *(v74 + v22);
    v80 = 0u;
    v81 = 0;
    v82 = v84;
    v83 = 0x400000000;
    v25 = v78;
    if (!v78)
    {
      break;
    }

    v26 = (v78 - 1) & ((v24 >> 4) ^ (v24 >> 9));
    v27 = (v77 + (v26 << 6));
    v28 = *v27;
    if (v24 == *v27)
    {
      goto LABEL_47;
    }

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
        v29 = v27;
      }

      v32 = v26 + v30++;
      v26 = v32 & (v78 - 1);
      v27 = (v77 + (v26 << 6));
      v28 = *v27;
      if (v24 == *v27)
      {
        goto LABEL_47;
      }
    }

    if (v29)
    {
      v27 = v29;
    }

    if (4 * DWORD2(v77) + 4 >= 3 * v78)
    {
      break;
    }

    if (v78 + ~DWORD2(v77) - HIDWORD(v77) <= v78 >> 3)
    {
      v40 = v78;
LABEL_71:
      v41 = (v40 - 1) | ((v40 - 1) >> 1);
      v42 = v41 | (v41 >> 2) | ((v41 | (v41 >> 2)) >> 4);
      v43 = ((v42 | (v42 >> 8)) >> 16) | v42 | (v42 >> 8);
      if ((v43 + 1) > 0x40)
      {
        v44 = v43 + 1;
      }

      else
      {
        v44 = 64;
      }

      v78 = v44;
      buffer = llvm::allocate_buffer(v44 << 6, 8uLL);
      *&v77 = buffer;
      if (v23)
      {
        v46 = (v25 << 6);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(&v77, v23, &v46[v23]);
        llvm::deallocate_buffer(v23, v46);
      }

      *(&v77 + 1) = 0;
      v47 = v78;
      if (!v78)
      {
        goto LABEL_93;
      }

      v48 = buffer;
      if (((v78 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_125;
      }

      v49 = ((v78 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
      v48 = &buffer[8 * (v49 & 0x7FFFFFFFFFFFFFELL)];
      v50 = buffer + 8;
      v51 = v49 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *(v50 - 8) = -4096;
        *v50 = -4096;
        v50 += 16;
        v51 -= 2;
      }

      while (v51);
      if (v49 != (v49 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_125:
        do
        {
          *v48 = -4096;
          v48 += 8;
        }

        while (v48 != &buffer[8 * v47]);
      }

      if (v47)
      {
        v52 = v47 - 1;
        v53 = v52 & ((v24 >> 4) ^ (v24 >> 9));
        v27 = &buffer[8 * v53];
        v54 = *v27;
        if (v24 != *v27)
        {
          v55 = 0;
          v56 = 1;
          while (v54 != -4096)
          {
            if (v55)
            {
              v57 = 0;
            }

            else
            {
              v57 = v54 == -8192;
            }

            if (v57)
            {
              v55 = v27;
            }

            v58 = v53 + v56++;
            v53 = v58 & v52;
            v27 = &buffer[8 * v53];
            v54 = *v27;
            if (v24 == *v27)
            {
              goto LABEL_94;
            }
          }

          if (v55)
          {
            v27 = v55;
          }
        }
      }

      else
      {
LABEL_93:
        v27 = 0;
      }

LABEL_94:
      ++DWORD2(v77);
      if (*v27 == -4096)
      {
        goto LABEL_46;
      }

LABEL_45:
      --HIDWORD(v77);
      goto LABEL_46;
    }

    ++DWORD2(v77);
    if (*v27 != -4096)
    {
      goto LABEL_45;
    }

LABEL_46:
    *v27 = v24;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 8) = 0u;
    *(v27 + 7) = 0;
    *(v27 + 4) = v27 + 48;
    *(v27 + 11) = 4;
LABEL_47:
    v33 = v80;
    *(v27 + 3) = v81;
    *(v27 + 8) = v33;
    v34 = (v27 + 32);
    v35 = v82;
    if (v27 + 32 != &v82)
    {
      if (v82 != v84)
      {
        v36 = *(v27 + 4);
        if (v36 != v27 + 48)
        {
          free(v36);
          v35 = v82;
        }

        *(v27 + 4) = v35;
        *(v27 + 5) = v83;
        v82 = v84;
        HIDWORD(v83) = 0;
        goto LABEL_61;
      }

      v37 = v83;
      v38 = *(v27 + 10);
      if (v38 >= v83)
      {
        if (v83)
        {
          memmove(*v34, v82, 4 * v83);
        }
      }

      else
      {
        if (*(v27 + 11) < v83)
        {
          *(v27 + 10) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v38)
        {
          memmove(*v34, v82, 4 * v38);
          v39 = v83 - v38;
          if (v83 != v38)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v38 = 0;
          v39 = v83;
          if (v83)
          {
LABEL_59:
            memcpy(*v34 + 4 * v38, &v82[4 * v38], 4 * v39);
          }
        }
      }

      *(v27 + 10) = v37;
LABEL_61:
      LODWORD(v83) = 0;
      v35 = v82;
    }

    if (v35 != v84)
    {
      free(v35);
    }

    LODWORD(v75) = v75 - 1;
    if (v10 >= --v22)
    {
      goto LABEL_19;
    }
  }

  v40 = 2 * v78;
  goto LABEL_71;
}

void *llvm::GraphDiff<mlir::Block *,true>::getChildren<false>@<X0>(uint64_t a1@<X0>, mlir::Block *a2@<X1>, uint64_t *a3@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v43, a2);
  result = mlir::SuccessorRange::SuccessorRange(v43, a2);
  v8 = v43[0];
  v7 = v43[1];
  v9 = a3 + 2;
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v7 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    v10 = (v8 + 32 * v7 - 8);
    v11 = 0;
    v12 = v7;
    do
    {
      v13 = *v10;
      v10 -= 4;
      v9[v11++] = v13;
      --v12;
    }

    while (v12);
  }

  v14 = a3 + 2;
  v15 = &v9[v7];
  if (v7)
  {
    v16 = 8 * v7;
    v14 = a3 + 2;
    while (*v14)
    {
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v14 = &v9[v7];
        goto LABEL_17;
      }
    }
  }

  if (v14 != v15)
  {
    v17 = v14 + 1;
    if (v14 + 1 != v15)
    {
      v18 = &v9[v7] - v14 - 8;
      do
      {
        if (*v17)
        {
          *v14++ = *v17;
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

LABEL_17:
  v19 = v14 - v9;
  v20 = (v14 - v9) >> 3;
  *(a3 + 2) = v20;
  v21 = *(a1 + 296);
  if (v21)
  {
    v22 = a1 + 304;
    v23 = 4;
  }

  else
  {
    v22 = *(a1 + 304);
    v23 = *(a1 + 312);
    if (!v23)
    {
      v24 = 0;
LABEL_20:
      v25 = v22 + 72 * v24;
      goto LABEL_24;
    }
  }

  v26 = v23 - 1;
  v27 = (v23 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v25 = v22 + 72 * v27;
  v28 = *v25;
  if (*v25 != a2)
  {
    v29 = 1;
    while (v28 != -4096)
    {
      v30 = v27 + v29++;
      v27 = v30 & v26;
      v25 = v22 + 72 * (v30 & v26);
      v28 = *v25;
      if (*v25 == a2)
      {
        goto LABEL_23;
      }
    }

    if ((v21 & 1) == 0)
    {
      v22 = *(a1 + 304);
      v24 = *(a1 + 312);
      goto LABEL_20;
    }

    v25 = a1 + 592;
LABEL_33:
    if (v25 == a1 + 592)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_23:
  if (v21)
  {
    goto LABEL_33;
  }

LABEL_24:
  if (v25 == *(a1 + 304) + 72 * *(a1 + 312))
  {
    return result;
  }

LABEL_34:
  v31 = *(v25 + 16);
  if (v31)
  {
    v32 = (v19 >> 3);
    v33 = *(v25 + 8);
    v34 = &v33[v31];
    do
    {
      v35 = *v33;
      v36 = &v9[v32];
      if (v32)
      {
        v37 = 8 * v32;
        v38 = a3 + 2;
        v39 = a3 + 2;
        while (*v39 != v35)
        {
          ++v39;
          ++v38;
          v37 -= 8;
          if (!v37)
          {
            v38 = &v9[v32];
            goto LABEL_36;
          }
        }
      }

      else
      {
        v38 = a3 + 2;
        v39 = a3 + 2;
      }

      v40 = v38 + 1;
      if (v39 != v36 && v40 != v36)
      {
        v42 = (&a3[v32 + 1] - v38);
        do
        {
          if (*v40 != v35)
          {
            *v38++ = *v40;
          }

          ++v40;
          v42 -= 8;
        }

        while (v42);
      }

LABEL_36:
      v32 = ((v38 - v9) >> 3);
      ++v33;
    }

    while (v33 != v34);
    v20 = (v38 - v9) >> 3;
    *(a3 + 2) = v32;
  }

  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, &v9[v20], *(v25 + 40), (*(v25 + 40) + 8 * *(v25 + 48)));
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = &v31;
  v31 = a2;
  v32 = a5;
  v30 = 0x4000000001;
  v26 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26) + 1) = a5;
  v11 = v30;
  while (v30)
  {
    v12 = v29 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v30) = v11 - 1;
    v26 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(v18 + 8), v13, &v26);
      v19 = v27;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>(v13, &v26);
      v19 = v27;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v25 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v26, v26 + v19, &v25, 126 - 2 * __clz(v19), 1);
          v19 = v27;
        }
      }
    }

    v20 = v26;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          if (v30 >= HIDWORD(v30))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = (v29 + 16 * v30);
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v30) = v30 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v26;
    }

    if (v20 != &v28)
    {
      free(v20);
    }

LABEL_3:
    v11 = v30;
  }

  if (v29 != &v31)
  {
    free(v29);
  }

  return a3;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(llvm::DominatorTreeBase<mlir::Block,true> const&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *)::{lambda(void)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    llvm::deallocate_buffer(*v4, (16 * *(v4 + 16)));
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  llvm::deallocate_buffer(0, 0);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = &v31;
  v31 = a2;
  v32 = a5;
  v30 = 0x4000000001;
  v26 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26) + 1) = a5;
  v11 = v30;
  while (v30)
  {
    v12 = v29 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v30) = v11 - 1;
    v26 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(v18 + 8), v13, &v26);
      v19 = v27;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v26, v13);
      v19 = v27;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v25 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v26, v26 + v19, &v25, 126 - 2 * __clz(v19), 1);
          v19 = v27;
        }
      }
    }

    v20 = v26;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          if (v30 >= HIDWORD(v30))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = (v29 + 16 * v30);
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v30) = v30 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v26;
    }

    if (v20 != &v28)
    {
      free(v20);
    }

LABEL_3:
    v11 = v30;
  }

  if (v29 != &v31)
  {
    free(v29);
  }

  return a3;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::RemoveRedundantRoots(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v23[0] = &v24;
  v23[1] = 0x4000000001;
  v24 = 0;
  v25 = 0u;
  v26 = 0;
  v27 = a2;
  if (!*(a3 + 8))
  {
    llvm::deallocate_buffer(0, 0);
  }

  v6 = 0;
  while (1)
  {
    v8 = *a3;
    if (a2)
    {
      break;
    }

    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v28, *(*a3 + 8 * v6));
    v12 = v29;
    v13 = v28;
    if (v28 != v30)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v12)
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(v23, v9, v10, v11);
      v14 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<true,BOOL (*)(mlir::Block*,mlir::Block*)>(v23, v8[v6], 0, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 0, 0);
      v7 = *(a3 + 8);
      if (v14 >= 2)
      {
        if (!v7)
        {
LABEL_21:
          if (v26)
          {
            v20 = (v25 + 48);
            v21 = v26 << 6;
            while (1)
            {
              if ((*(v20 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                v22 = *(v20 - 2);
                if (v20 != v22)
                {
                  free(v22);
                }
              }

              v20 += 8;
              v21 -= 64;
              if (!v21)
              {
                llvm::deallocate_buffer(v25, (v26 << 6));
              }
            }
          }

          llvm::deallocate_buffer(v25, 0);
        }

        v15 = *a3 + 8 * v7;
        v16 = 2;
        while (1)
        {
          v17 = 8 * v7;
          v18 = *a3;
          while (*v18 != *(v23[0] + v16))
          {
            ++v18;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_13;
            }
          }

          if (v17)
          {
            break;
          }

LABEL_13:
          if (++v16 > v14)
          {
            goto LABEL_4;
          }
        }

        v19 = v8[v6];
        v8[v6] = *(v15 - 8);
        *(v15 - 8) = v19;
        LODWORD(v7) = v7 - 1;
        *(a3 + 8) = v7;
        --v6;
      }
    }

    else
    {
      LODWORD(v7) = *(a3 + 8);
    }

LABEL_4:
    if (v7 <= ++v6)
    {
      goto LABEL_21;
    }
  }

  llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), *(*a3 + 8 * v6), &v28);
  v12 = v29;
  v13 = v28;
  if (v28 == v30)
  {
    goto LABEL_8;
  }

LABEL_7:
  free(v13);
  goto LABEL_8;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::HasProperSupport(uint64_t a1, uint64_t a2, mlir::Block **a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::GraphDiff<mlir::Block *,true>::getChildren<false>(*(a2 + 8), *a3, &v15);
    v4 = v15;
    v5 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(&v15, *a3);
    v4 = v15;
    v5 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = &v4[v5];
LABEL_7:
    v8 = *(a1 + 112);
    v9 = ((*v4 >> 4) ^ (*v4 >> 9)) & (v6 - 1);
    v10 = *(v8 + 16 * v9);
    if (v10 != *v4)
    {
      v12 = 1;
      do
      {
        if (v10 == -4096)
        {
          goto LABEL_12;
        }

        v13 = v9 + v12++;
        v9 = v13 & (v6 - 1);
        v10 = *(v8 + 16 * v9);
      }

      while (v10 != *v4);
    }

    if (v9 != v6)
    {
      v11 = *(v8 + 16 * v9 + 8);
      if (*(a1 + 56) > v11)
      {
        if (*(*(a1 + 48) + 8 * v11))
        {
          llvm::DominatorTreeBase<mlir::Block,true>::findNearestCommonDominator();
        }
      }
    }

LABEL_12:
    while (++v4 != v7)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v4 = v15;
  }

LABEL_20:
  if (v4 != v17)
  {
    free(v4);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::DeleteReachable(llvm::DominatorTreeBase<mlir::Block,true>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::BatchUpdateInfo *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = &v38;
  v38 = a2;
  v39 = a6;
  v37 = 0x4000000001;
  v33 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v33) + 1) = a6;
  v13 = v37;
  while (v37)
  {
    v14 = v36 + 16 * v13;
    v15 = *(v14 - 2);
    v16 = *(v14 - 2);
    LODWORD(v37) = v13 - 1;
    v33 = v15;
    v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v33);
    v18 = *(v17 + 8);
    if (v18 >= *(v17 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v17[3] + 4 * v18) = v16;
    ++*(v17 + 8);
    if (*v17)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v17 + 2) = a3;
    *(v17 + 3) = a3;
    *v17 = a3;
    *(v17 + 1) = v16;
    v19 = *(a1 + 8);
    if (v19 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v19) = v15;
    ++*(a1 + 8);
    v20 = *(a1 + 552);
    if (v20)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(v20 + 8), v15, &v33);
      v21 = v34;
      if (a7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>(v15, &v33);
      v21 = v34;
      if (a7)
      {
LABEL_11:
        if (v21 >= 2)
        {
          v32 = a7;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v33, v33 + v21, &v32, 126 - 2 * __clz(v21), 1);
          v21 = v34;
        }
      }
    }

    v22 = v33;
    if (v21)
    {
      v23 = v33 + 8 * v21;
      do
      {
        v25 = *v22;
        v26 = *(a5 + 112);
        v27 = *(a5 + 128) - 1;
        v28 = ((*v22 >> 4) ^ (*v22 >> 9)) & v27;
        if (*(v26 + 16 * v28) != *v22)
        {
          v29 = 1;
          do
          {
            v30 = v28 + v29++;
            v28 = v30 & v27;
          }

          while (*(v26 + 16 * v28) != v25);
        }

        if (*(*(*(a5 + 48) + 8 * *(v26 + 16 * v28 + 8)) + 16) > a4)
        {
          if (v37 >= HIDWORD(v37))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v7 & 0xFFFFFFFF00000000 | a3;
          v24 = v36 + 16 * v37;
          *v24 = v25;
          v24[1] = v7;
          LODWORD(v37) = v37 + 1;
        }

        ++v22;
      }

      while (v22 != v23);
      v22 = v33;
    }

    if (v22 != &v35)
    {
      free(v22);
    }

LABEL_3:
    v13 = v37;
  }

  if (v36 != &v38)
  {
    free(v36);
  }

  return a3;
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::reattachExistingSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v34 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    for (i = (*a1 + 8); i != v8; ++i)
    {
      v11 = *i;
      v12 = *(a2 + 128);
      if (v12)
      {
        v13 = *(a2 + 112);
        v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
        v15 = *(v13 + 16 * v14);
        if (v15 == v11)
        {
LABEL_9:
          if (v14 != v12)
          {
            v16 = *(v13 + 16 * v14 + 8);
            if (*(a2 + 56) > v16)
            {
              v17 = *(*(a2 + 48) + 8 * v16);
              v34 = *i;
              result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
              v18 = *(a2 + 128);
              if (!v18)
              {
                goto LABEL_27;
              }

              goto LABEL_18;
            }
          }
        }

        else
        {
          v19 = 1;
          while (v15 != -4096)
          {
            v20 = v14 + v19++;
            v14 = v20 & (v12 - 1);
            v15 = *(v13 + 16 * v14);
            if (v15 == v11)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v17 = 0;
      v34 = *i;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
      v18 = *(a2 + 128);
      if (!v18)
      {
        goto LABEL_27;
      }

LABEL_18:
      v21 = result[2];
      v22 = *(a2 + 112);
      v23 = ((v21 >> 4) ^ (v21 >> 9)) & (v18 - 1);
      v24 = *(v22 + 16 * v23);
      if (v24 == v21)
      {
LABEL_19:
        if (v23 != v18)
        {
          v25 = *(v22 + 16 * v23 + 8);
          if (*(a2 + 56) > v25)
          {
            v26 = *(*(a2 + 48) + 8 * v25);
            v27 = *(v17 + 8);
            if (v27 != v26)
            {
              goto LABEL_28;
            }

            continue;
          }
        }
      }

      else
      {
        v28 = 1;
        while (v24 != -4096)
        {
          v29 = v23 + v28++;
          v23 = v29 & (v18 - 1);
          v24 = *(v22 + 16 * v23);
          if (v24 == v21)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_27:
      v26 = 0;
      v27 = *(v17 + 8);
      if (v27)
      {
LABEL_28:
        v30 = *(v27 + 24);
        v31 = *(v27 + 32);
        v32 = &v30[v31];
        if (v31)
        {
          v33 = 8 * v31;
          do
          {
            if (*v30 == v17)
            {
              goto LABEL_33;
            }

            ++v30;
            v33 -= 8;
          }

          while (v33);
          v30 = v32;
        }

LABEL_33:
        if (v32 != v30 + 1)
        {
          memmove(v30, v30 + 1, v32 - (v30 + 1));
          LODWORD(v31) = *(v27 + 32);
        }

        *(v27 + 32) = v31 - 1;
        *(v17 + 8) = v26;
        v10 = *(v26 + 32);
        if (v10 < *(v26 + 36))
        {
          *(*(v26 + 24) + 8 * v10) = v17;
          ++*(v26 + 32);
          llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::IsSameAsFreshTree(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2[0] = &v3;
  v2[1] = 0x400000000;
  v4 = &v6;
  v5 = 0x600000000;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v1 = *(a1 + 144);
  v10 = 0;
  v11 = v1;
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::CalculateFromScratch(v2, 0);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyRoots(llvm *a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  if (*(a2 + 144))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 8) == 0;
  }

  if (v2)
  {
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::FindRoots(a2, 0, v8);
  }

  v3 = llvm::errs(a1);
  v4 = *(v3 + 4);
  if (*(v3 + 3) - v4 <= 0x21uLL)
  {
    v5 = llvm::raw_ostream::write(v3, "Tree has no parent but has roots!\n", 0x22uLL);
    v6 = llvm::errs(v5);
    if (*(v6 + 4) == *(v6 + 2))
    {
      return 0;
    }

    goto LABEL_11;
  }

  qmemcpy(v4, "Tree has no parent but has roots!\n", 34);
  *(v3 + 4) += 34;
  v6 = llvm::errs(v3);
  if (*(v6 + 4) != *(v6 + 2))
  {
LABEL_11:
    llvm::raw_ostream::flush_nonempty(v6);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyReachability(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(a1, a2, a3, a4);
  v47 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v47);
  *(v6 + 1) = 0x100000001;
  *v6 = 1;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 8 * v7) = 0;
  ++*(a1 + 8);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *a2;
    v10 = 8 * v8;
    v11 = 1;
    do
    {
      v12 = *v9++;
      v6 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(a1, v12, v11, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::AlwaysDescend, 1, 0);
      v11 = v6;
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a2 + 56);
  if (v13)
  {
    v14 = *(a2 + 48);
    v15 = 8 * v13;
    do
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *v16;
        if (*v16)
        {
          v47 = *v16;
          v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v47);
          if (!*v6)
          {
            v18 = llvm::errs(v6);
            v19 = v18;
            v20 = *(v18 + 4);
            if (*(v18 + 3) - v20 > 0xCuLL)
            {
              qmemcpy(v20, "DomTree node ", 13);
              *(v18 + 4) += 13;
            }

            else
            {
              v19 = llvm::raw_ostream::write(v18, "DomTree node ", 0xDuLL);
            }

            mlir::Block::printAsOperand(v17, v19);
            v45 = *(v19 + 4);
            if (*(v19 + 3) - v45 > 0x17uLL)
            {
              qmemcpy(v45, " not found by DFS walk!\n", 24);
              *(v19 + 4) += 24;
              v43 = llvm::errs(v44);
              if (*(v43 + 4) == *(v43 + 2))
              {
                return 0;
              }

              goto LABEL_44;
            }

            v46 = llvm::raw_ostream::write(v19, " not found by DFS walk!\n", 0x18uLL);
            v43 = llvm::errs(v46);
            if (*(v43 + 4) != *(v43 + 2))
            {
LABEL_44:
              llvm::raw_ostream::flush_nonempty(v43);
              return 0;
            }

            return 0;
          }
        }
      }

      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  v21 = *(a1 + 8);
  if (!v21)
  {
    return 1;
  }

  v22 = *a1;
  v23 = *(a2 + 128);
  if (!v23)
  {
    v35 = 8 * v21;
    do
    {
      v29 = *v22;
      if (*v22)
      {
        goto LABEL_31;
      }

      ++v22;
      v35 -= 8;
    }

    while (v35);
    return 1;
  }

  v24 = &v22[v21];
  v25 = *(a2 + 112);
  v26 = v23 - 1;
  v27 = *(a2 + 56);
  v28 = *(a2 + 48);
  while (1)
  {
    v29 = *v22;
    if (!*v22)
    {
      goto LABEL_16;
    }

    v30 = v26 & ((v29 >> 4) ^ (v29 >> 9));
    v31 = *(v25 + 16 * v30);
    if (v31 != v29)
    {
      break;
    }

LABEL_19:
    if (v30 == v23)
    {
      goto LABEL_31;
    }

    v32 = *(v25 + 16 * v30 + 8);
    if (v27 <= v32 || !*(v28 + 8 * v32))
    {
      goto LABEL_31;
    }

LABEL_16:
    if (++v22 == v24)
    {
      return 1;
    }
  }

  v33 = 1;
  while (v31 != -4096)
  {
    v34 = v30 + v33++;
    v30 = v34 & v26;
    v31 = *(v25 + 16 * v30);
    if (v31 == v29)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  v37 = llvm::errs(v6);
  v38 = v37;
  v39 = *(v37 + 4);
  if ((*(v37 + 3) - v39) > 8)
  {
    *(v39 + 8) = 32;
    *v39 = *"CFG node ";
    *(v37 + 4) += 9;
  }

  else
  {
    v38 = llvm::raw_ostream::write(v37, "CFG node ", 9uLL);
  }

  mlir::Block::printAsOperand(v29, v38);
  v41 = *(v38 + 4);
  if (*(v38 + 3) - v41 <= 0x1AuLL)
  {
    v42 = llvm::raw_ostream::write(v38, " not found in the DomTree!\n", 0x1BuLL);
    v43 = llvm::errs(v42);
    if (*(v43 + 4) == *(v43 + 2))
    {
      return 0;
    }

    goto LABEL_44;
  }

  qmemcpy(v41, " not found in the DomTree!\n", 27);
  *(v38 + 4) += 27;
  v43 = llvm::errs(v40);
  if (*(v43 + 4) != *(v43 + 2))
  {
    goto LABEL_44;
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::VerifyLevels(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  v3 = 8 * v1;
  while (1)
  {
    v4 = *v2;
    if (!*v2)
    {
      goto LABEL_4;
    }

    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_4;
    }

    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v6)
    {
      break;
    }

    if (v7)
    {
      v12 = llvm::errs(a1);
      v13 = v12;
      v14 = *(v12 + 4);
      if (*(v12 + 3) - v14 > 0x14uLL)
      {
        qmemcpy(v14, "Node without an IDom ", 21);
        *(v12 + 4) += 21;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v12, "Node without an IDom ", 0x15uLL);
      }

      mlir::Block::printAsOperand(v5, v13);
      v29 = *(v13 + 4);
      if (*(v13 + 3) - v29 > 0x14uLL)
      {
        qmemcpy(v29, " has a nonzero level ", 21);
        *(v13 + 4) += 21;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v13, " has a nonzero level ", 0x15uLL);
      }

      v27 = llvm::raw_ostream::operator<<(v13, *(v4 + 16));
      v28 = *(v27 + 4);
      if (*(v27 + 3) - v28 > 1uLL)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

LABEL_4:
    ++v2;
    v3 -= 8;
    if (!v3)
    {
      return 1;
    }
  }

  if (v7 == *(v6 + 16) + 1)
  {
    goto LABEL_4;
  }

  v8 = llvm::errs(a1);
  v9 = *(v8 + 4);
  if ((*(v8 + 3) - v9) > 4)
  {
    *(v9 + 4) = 32;
    *v9 = 1701080910;
    v10 = v8;
    *(v8 + 4) += 5;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v8, "Node ", 5uLL);
  }

  v15 = v5;
  v16 = v10;
  mlir::Block::printAsOperand(v15, v10);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) <= 0xA)
  {
    v18 = llvm::raw_ostream::write(v16, " has level ", 0xBuLL);
    v19 = llvm::raw_ostream::operator<<(v18, *(v4 + 16));
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 <= 0xFuLL)
    {
      goto LABEL_18;
    }

LABEL_23:
    *v20 = *" while its IDom ";
    *(v19 + 4) += 16;
    v21 = *v6;
    if (*v6)
    {
      goto LABEL_24;
    }

LABEL_19:
    v22 = *(v19 + 4);
    if (*(v19 + 3) - v22 > 6uLL)
    {
      *(v22 + 3) = 1920233580;
      *v22 = 1819047278;
      *(v19 + 4) += 7;
      v24 = *(v19 + 4);
      if ((*(v19 + 3) - v24) > 0xA)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = v19;
      llvm::raw_ostream::write(v19, "nullptr", 7uLL);
      v19 = v23;
      v24 = *(v23 + 4);
      if ((*(v23 + 3) - v24) > 0xA)
      {
        goto LABEL_35;
      }
    }

LABEL_25:
    v26 = llvm::raw_ostream::write(v19, " has level ", 0xBuLL);
    v27 = llvm::raw_ostream::operator<<(v26, *(v6 + 16));
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 1uLL)
    {
      goto LABEL_36;
    }

LABEL_32:
    v30 = llvm::raw_ostream::write(v27, "!\n", 2uLL);
    v31 = llvm::errs(v30);
    if (*(v31 + 4) == *(v31 + 2))
    {
      return 0;
    }

    goto LABEL_37;
  }

  *(v17 + 7) = 543974774;
  *v17 = *" has level ";
  *(v16 + 4) += 11;
  v19 = llvm::raw_ostream::operator<<(v16, *(v4 + 16));
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 0xFuLL)
  {
    goto LABEL_23;
  }

LABEL_18:
  v19 = llvm::raw_ostream::write(v19, " while its IDom ", 0x10uLL);
  v21 = *v6;
  if (!*v6)
  {
    goto LABEL_19;
  }

LABEL_24:
  v25 = v19;
  mlir::Block::printAsOperand(v21, v19);
  v19 = v25;
  v24 = *(v25 + 4);
  if ((*(v25 + 3) - v24) <= 0xA)
  {
    goto LABEL_25;
  }

LABEL_35:
  *(v24 + 7) = 543974774;
  *v24 = *" has level ";
  *(v19 + 4) += 11;
  v27 = llvm::raw_ostream::operator<<(v19, *(v6 + 16));
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 <= 1uLL)
  {
    goto LABEL_32;
  }

LABEL_36:
  *v28 = 2593;
  *(v27 + 4) += 2;
  v31 = llvm::errs(v27);
  if (*(v31 + 4) == *(v31 + 2))
  {
    return 0;
  }

LABEL_37:
  llvm::raw_ostream::flush_nonempty(v31);
  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::VerifyDFSNumbers(unsigned int *a1)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 152) != 1 || *(a1 + 18) == 0;
  if (v1)
  {
    return 1;
  }

  v3 = *(a1 + 14);
  v4 = *v3;
  if (*v3)
  {
    LODWORD(v4) = 0;
    v33 = 1;
    do
    {
      v34 = v4 + v33++;
      v4 = v34 & (a1[32] - 1);
    }

    while (v3[2 * v4]);
  }

  v5 = *(a1 + 6);
  v6 = v5[LODWORD(v3[2 * v4 + 1])];
  if (*(v6 + 72))
  {
    v7 = llvm::errs(a1);
    v8 = v7[4];
    if (v7[3] - v8 > 0x27uLL)
    {
      qmemcpy(v8, "DFSIn number for the tree root is not:\n\t", 40);
      v7[4] += 40;
    }

    else
    {
      llvm::raw_ostream::write(v7, "DFSIn number for the tree root is not:\n\t", 0x28uLL);
    }

    v25 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()(&v36, v6);
    v26 = llvm::errs(v25);
    v27 = *(v26 + 4);
    if (v27 >= *(v26 + 3))
    {
      goto LABEL_44;
    }

LABEL_38:
    *(v26 + 4) = v27 + 1;
    *v27 = 10;
    v28 = llvm::errs(v26);
    if (*(v28 + 4) != *(v28 + 2))
    {
      goto LABEL_45;
    }

    return 0;
  }

  v9 = &v5[a1[14]];
  while (1)
  {
    v10 = *v5;
    if (!*v5)
    {
      goto LABEL_13;
    }

    v11 = *(v10 + 32);
    if (!v11)
    {
      break;
    }

    v12 = *(v10 + 24);
    v36 = v38;
    v37 = 0x800000000;
    if (v11 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v36, v12, 8 * v11);
    v13 = (v37 + v11);
    v1 = v37 + v11 == 0;
    LODWORD(v37) = v13;
    v14 = (v36 + 8 * v13);
    v15 = 126 - 2 * __clz(v13);
    if (v1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,false>(v36, v14, v35, v16, 1);
    v35[0] = v10;
    v35[1] = &v36;
    v17 = *v36;
    if (*(*v36 + 72) == *(v10 + 72) + 1)
    {
      v18 = *(v36 + v37 - 1);
      if (*(v18 + 76) + 1 != *(v10 + 76))
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v35, v18, 0);
        v24 = 0;
        a1 = v36;
        if (v36 == v38)
        {
          goto LABEL_32;
        }

LABEL_31:
        free(a1);
        goto LABEL_32;
      }

      v19 = v37 - 1;
      v20 = (v36 + 8);
      while (v19)
      {
        v21 = v17;
        v22 = *(v17 + 76) + 1;
        v23 = *v20++;
        v17 = v23;
        --v19;
        if (v22 != *(v23 + 72))
        {
          llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v35, v21, v17);
          v24 = 0;
          a1 = v36;
          if (v36 != v38)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }

      v24 = 1;
      a1 = v36;
      if (v36 != v38)
      {
        goto LABEL_31;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v35, *v36, 0);
      v24 = 0;
      a1 = v36;
      if (v36 != v38)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    if (!v24)
    {
      return 0;
    }

LABEL_13:
    if (++v5 == v9)
    {
      return 1;
    }
  }

  if (*(v10 + 72) + 1 == *(v10 + 76))
  {
    goto LABEL_13;
  }

  v29 = llvm::errs(a1);
  v30 = v29[4];
  if (v29[3] - v30 > 0x2AuLL)
  {
    qmemcpy(v30, "Tree leaf should have DFSOut = DFSIn + 1:\n\t", 43);
    v29[4] += 43;
  }

  else
  {
    llvm::raw_ostream::write(v29, "Tree leaf should have DFSOut = DFSIn + 1:\n\t", 0x2BuLL);
  }

  v31 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()(&v36, v10);
  v26 = llvm::errs(v31);
  v27 = *(v26 + 4);
  if (v27 < *(v26 + 3))
  {
    goto LABEL_38;
  }

LABEL_44:
  v32 = llvm::raw_ostream::write(v26, 10);
  v28 = llvm::errs(v32);
  if (*(v28 + 4) != *(v28 + 2))
  {
LABEL_45:
    llvm::raw_ostream::flush_nonempty(v28);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyParentProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a2 + 56);
  result = 1;
  if (v5)
  {
    v7 = *(a2 + 48);
    v8 = &v7[v5];
    while (1)
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = *v9;
        if (*v9)
        {
          if (*(v9 + 32))
          {
            llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(a1, a2, a3, a4);
            v62 = 0;
            buffer = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v62);
            buffer[1] = 0x100000001;
            *buffer = 1;
            v12 = *(a1 + 8);
            if (v12 >= *(a1 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a1 + 8 * v12) = 0;
            ++*(a1 + 8);
            v13 = *(a2 + 8);
            if (v13)
            {
              v14 = *a2;
              v15 = 8 * v13;
              a3 = 1;
              do
              {
                v16 = *v14++;
                buffer = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,true> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(a1, v16, a3, v10, 1, 0);
                a3 = buffer;
                v15 -= 8;
              }

              while (v15);
            }

            v17 = *(v9 + 32);
            v18 = 0uLL;
            if (v17)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      if (++v7 == v8)
      {
        return 1;
      }
    }

    v19 = *(v9 + 24);
    v20 = &v19[v17];
    while (1)
    {
      v21 = *v19;
      v22 = **v19;
      v23 = *(a1 + 528);
      v24 = *(a1 + 544);
      if (!v24)
      {
        break;
      }

      v25 = ((v22 >> 4) ^ (v22 >> 9)) & (v24 - 1);
      v26 = &v23[8 * v25];
      v27 = *v26;
      if (v22 == *v26)
      {
        goto LABEL_29;
      }

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
          v28 = v26;
        }

        v31 = v25 + v29++;
        v25 = v31 & (v24 - 1);
        v26 = &v23[8 * v25];
        v27 = *v26;
        if (v22 == *v26)
        {
          goto LABEL_29;
        }
      }

      if (v28)
      {
        v26 = v28;
      }

      v32 = *(a1 + 536);
      if (4 * v32 + 4 >= (3 * v24))
      {
        break;
      }

      if (v24 + ~v32 - *(a1 + 540) <= v24 >> 3)
      {
        v33 = *(a1 + 544);
LABEL_37:
        v34 = (v33 - 1) | ((v33 - 1) >> 1);
        v35 = v34 | (v34 >> 2) | ((v34 | (v34 >> 2)) >> 4);
        v36 = ((v35 | (v35 >> 8)) >> 16) | v35 | (v35 >> 8);
        if ((v36 + 1) > 0x40)
        {
          v37 = v36 + 1;
        }

        else
        {
          v37 = 64;
        }

        *(a1 + 544) = v37;
        buffer = llvm::allocate_buffer(v37 << 6, 8uLL);
        *(a1 + 528) = buffer;
        if (v23)
        {
          v38 = (v24 << 6);
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1 + 528, v23, &v38[v23]);
          llvm::deallocate_buffer(v23, v38);
        }

        v18 = 0uLL;
        *(a1 + 536) = 0;
        v39 = *(a1 + 544);
        if (v39)
        {
          v40 = buffer;
          if (((v39 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_84;
          }

          v41 = ((v39 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
          v40 = &buffer[8 * (v41 & 0x7FFFFFFFFFFFFFELL)];
          v42 = buffer + 8;
          v43 = v41 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v42 - 8) = -4096;
            *v42 = -4096;
            v42 += 16;
            v43 -= 2;
          }

          while (v43);
          if (v41 != (v41 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_84:
            do
            {
              *v40 = -4096;
              v40 += 8;
            }

            while (v40 != &buffer[8 * v39]);
          }

          v44 = v39 - 1;
          v45 = (v39 - 1) & ((v22 >> 4) ^ (v22 >> 9));
          v26 = &buffer[8 * v45];
          v46 = *v26;
          if (v22 != *v26)
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
                v47 = v26;
              }

              v50 = v45 + v48++;
              v45 = v50 & v44;
              v26 = &buffer[8 * v45];
              v46 = *v26;
              v18 = 0uLL;
              if (v22 == *v26)
              {
                goto LABEL_59;
              }
            }

            if (v47)
            {
              v26 = v47;
            }

            v18 = 0uLL;
          }
        }

        else
        {
          v26 = 0;
        }

LABEL_59:
        ++*(a1 + 536);
        if (*v26 == -4096)
        {
          goto LABEL_28;
        }

LABEL_27:
        --*(a1 + 540);
        goto LABEL_28;
      }

      *(a1 + 536) = v32 + 1;
      if (*v26 != -4096)
      {
        goto LABEL_27;
      }

LABEL_28:
      *v26 = v22;
      *(v26 + 3) = v18;
      *(v26 + 5) = v18;
      *(v26 + 1) = v18;
      v26[7] = 0;
      v26[4] = (v26 + 6);
      *(v26 + 11) = 4;
LABEL_29:
      if (*(v26 + 2))
      {
        v51 = llvm::errs(buffer);
        v52 = v51;
        v53 = *(v51 + 4);
        if ((*(v51 + 3) - v53) > 5)
        {
          *(v53 + 4) = 8292;
          *v53 = 1818847299;
          *(v51 + 4) += 6;
          v54 = *v21;
          if (!*v21)
          {
            goto LABEL_70;
          }

LABEL_67:
          mlir::Block::printAsOperand(v54, v52);
          v55 = *(v52 + 4);
          if (*(v52 + 3) - v55 <= 0x1BuLL)
          {
            goto LABEL_68;
          }

LABEL_75:
          qmemcpy(v55, " reachable after its parent ", 28);
          *(v52 + 4) += 28;
        }

        else
        {
          v52 = llvm::raw_ostream::write(v51, "Child ", 6uLL);
          v54 = *v21;
          if (*v21)
          {
            goto LABEL_67;
          }

LABEL_70:
          v56 = *(v52 + 4);
          if (*(v52 + 3) - v56 > 6uLL)
          {
            *(v56 + 3) = 1920233580;
            *v56 = 1819047278;
            *(v52 + 4) += 7;
            v55 = *(v52 + 4);
            if (*(v52 + 3) - v55 > 0x1BuLL)
            {
              goto LABEL_75;
            }
          }

          else
          {
            llvm::raw_ostream::write(v52, "nullptr", 7uLL);
            v55 = *(v52 + 4);
            if (*(v52 + 3) - v55 > 0x1BuLL)
            {
              goto LABEL_75;
            }
          }

LABEL_68:
          v52 = llvm::raw_ostream::write(v52, " reachable after its parent ", 0x1CuLL);
        }

        mlir::Block::printAsOperand(v10, v52);
        v58 = *(v52 + 4);
        if (*(v52 + 3) - v58 > 0xCuLL)
        {
          qmemcpy(v58, " is removed!\n", 13);
          *(v52 + 4) += 13;
          v60 = llvm::errs(v57);
          if (*(v60 + 4) == *(v60 + 2))
          {
            return 0;
          }
        }

        else
        {
          v59 = llvm::raw_ostream::write(v52, " is removed!\n", 0xDuLL);
          v60 = llvm::errs(v59);
          if (*(v60 + 4) == *(v60 + 2))
          {
            return 0;
          }
        }

        llvm::raw_ostream::flush_nonempty(v60);
        return 0;
      }

      if (++v19 == v20)
      {
        goto LABEL_3;
      }
    }

    v33 = 2 * v24;
    goto LABEL_37;
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifySiblingProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a2 + 56);
  result = 1;
  if (v5)
  {
    v7 = *(a2 + 48);
    v97 = &v7[v5];
    v95 = (a1 + 528);
    while (1)
    {
      v8 = *v7;
      if (*v7)
      {
        if (*v8)
        {
          v9 = *(v8 + 32);
          if (v9)
          {
            break;
          }
        }
      }

LABEL_3:
      if (++v7 == v97)
      {
        return 1;
      }
    }

    v10 = *(v8 + 24);
    v96 = &v10[v9];
    v98 = *v7;
    while (1)
    {
      v11 = *v10;
      *(a1 + 8) = 0;
      if (!*(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      **a1 = 0;
      ++*(a1 + 8);
      v12 = *(a1 + 536);
      if (!v12 && !*(a1 + 540))
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 544);
      if (v13 > 4 * v12 && v13 >= 0x41)
      {
        llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::shrink_and_clear(v95, a2, a3, a4);
LABEL_16:
        v14 = *v11;
        v15 = *(a1 + 528);
        v16 = *(a1 + 544);
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      if (v13)
      {
        break;
      }

LABEL_27:
      *(a1 + 536) = 0;
      v14 = *v11;
      v15 = *(a1 + 528);
      v16 = *(a1 + 544);
      if (!v16)
      {
LABEL_28:
        v18 = 0;
        v22 = *(a1 + 536);
        if (4 * v22 + 4 >= (3 * v16))
        {
          goto LABEL_103;
        }

        goto LABEL_29;
      }

LABEL_17:
      v17 = *v15;
      if (!*v15)
      {
        v18 = v15;
        goto LABEL_33;
      }

      LODWORD(v61) = 0;
      v62 = 0;
      v63 = 1;
      v18 = v15;
      while (v17 != -4096)
      {
        if (v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v17 == -8192;
        }

        if (v64)
        {
          v62 = v18;
        }

        v65 = v61 + v63++;
        v61 = v65 & (v16 - 1);
        v18 = &v15[8 * v61];
        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_33;
        }
      }

      if (v62)
      {
        v18 = v62;
      }

      v22 = *(a1 + 536);
      if (4 * v22 + 4 >= (3 * v16))
      {
LABEL_103:
        v66 = 2 * v16;
        goto LABEL_105;
      }

LABEL_29:
      if (v16 + ~v22 - *(a1 + 540) <= v16 >> 3)
      {
        v66 = v16;
LABEL_105:
        v67 = (v66 - 1) | ((v66 - 1) >> 1);
        v68 = v67 | (v67 >> 2) | ((v67 | (v67 >> 2)) >> 4);
        v69 = ((v68 | (v68 >> 8)) >> 16) | v68 | (v68 >> 8);
        if ((v69 + 1) > 0x40)
        {
          v70 = v69 + 1;
        }

        else
        {
          v70 = 64;
        }

        *(a1 + 544) = v70;
        result = llvm::allocate_buffer(v70 << 6, 8uLL);
        *(a1 + 528) = result;
        if (v15)
        {
          v71 = (v16 << 6);
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(v95, v15, &v71[v15]);
          llvm::deallocate_buffer(v15, v71);
        }

        *(a1 + 536) = 0;
        v72 = *(a1 + 544);
        if (v72)
        {
          v73 = result;
          if (((v72 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_155;
          }

          v74 = ((v72 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
          v73 = (result + ((v74 & 0x7FFFFFFFFFFFFFELL) << 6));
          v75 = (result + 64);
          v76 = v74 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v75 - 8) = -4096;
            *v75 = -4096;
            v75 += 16;
            v76 -= 2;
          }

          while (v76);
          if (v74 != (v74 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_155:
            do
            {
              *v73 = -4096;
              v73 += 8;
            }

            while (v73 != (result + (v72 << 6)));
          }

          v77 = *result;
          if (*result)
          {
            LODWORD(v78) = 0;
            v79 = 0;
            v80 = v72 - 1;
            v81 = 1;
            v18 = result;
            while (v77 != -4096)
            {
              if (v79)
              {
                v82 = 0;
              }

              else
              {
                v82 = v77 == -8192;
              }

              if (v82)
              {
                v79 = v18;
              }

              v83 = v78 + v81++;
              v78 = v83 & v80;
              v18 = result + (v78 << 6);
              v77 = *v18;
              if (!*v18)
              {
                goto LABEL_119;
              }
            }

            if (v79)
            {
              v18 = v79;
            }
          }

          else
          {
            v18 = result;
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_119:
        ++*(a1 + 536);
        if (*v18 == -4096)
        {
          goto LABEL_32;
        }

LABEL_31:
        --*(a1 + 540);
        goto LABEL_32;
      }

      *(a1 + 536) = v22 + 1;
      if (*v18 != -4096)
      {
        goto LABEL_31;
      }

LABEL_32:
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 32) = v18 + 48;
      *(v18 + 44) = 4;
LABEL_33:
      *(v18 + 16) = 0x100000001;
      *(v18 + 8) = 1;
      v23 = *(a1 + 8);
      if (v23 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a1 + 8 * v23) = 0;
      ++*(a1 + 8);
      v24 = *(a2 + 8);
      if (v24)
      {
        v25 = *a2;
        v26 = 8 * v24;
        a3 = 1;
        do
        {
          v27 = *v25++;
          result = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,true> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(a1, v27, a3, v14, 1, 0);
          a3 = result;
          v26 -= 8;
        }

        while (v26);
      }

      v28 = *(v98 + 32);
      if (v28)
      {
        v29 = *(v98 + 24);
        v30 = &v29[v28];
        while (2)
        {
          v34 = *v29;
          if (*v29 == v11)
          {
            goto LABEL_41;
          }

          v35 = *v34;
          v36 = *(a1 + 528);
          v37 = *(a1 + 544);
          if (!v37)
          {
LABEL_61:
            v43 = 2 * v37;
            goto LABEL_63;
          }

          v31 = ((v35 >> 4) ^ (v35 >> 9)) & (v37 - 1);
          v32 = &v36[8 * v31];
          v33 = *v32;
          if (v35 == *v32)
          {
LABEL_40:
            if (!*(v32 + 2))
            {
              v84 = llvm::errs(result);
              v85 = v84;
              v86 = *(v84 + 4);
              if ((*(v84 + 3) - v86) > 4)
              {
                *(v86 + 4) = 32;
                *v86 = 1701080910;
                *(v84 + 4) += 5;
                v87 = *v34;
                if (!*v34)
                {
                  goto LABEL_141;
                }

LABEL_135:
                mlir::Block::printAsOperand(v87, v85);
                v88 = *(v85 + 4);
                if (*(v85 + 3) - v88 <= 0x1FuLL)
                {
                  goto LABEL_136;
                }

LABEL_148:
                qmemcpy(v88, " not reachable when its sibling ", 32);
                *(v85 + 4) += 32;
                v89 = *v11;
                if (*v11)
                {
                  goto LABEL_149;
                }

LABEL_137:
                v90 = *(v85 + 4);
                if (*(v85 + 3) - v90 > 6uLL)
                {
                  *(v90 + 3) = 1920233580;
                  *v90 = 1819047278;
                  *(v85 + 4) += 7;
                  v91 = *(v85 + 4);
                  if (*(v85 + 3) - v91 <= 0xCuLL)
                  {
                    goto LABEL_150;
                  }
                }

                else
                {
                  v89 = llvm::raw_ostream::write(v85, "nullptr", 7uLL);
                  v91 = *(v85 + 4);
                  if (*(v85 + 3) - v91 <= 0xCuLL)
                  {
                    goto LABEL_150;
                  }
                }
              }

              else
              {
                v85 = llvm::raw_ostream::write(v84, "Node ", 5uLL);
                v87 = *v34;
                if (*v34)
                {
                  goto LABEL_135;
                }

LABEL_141:
                v92 = *(v85 + 4);
                if (*(v85 + 3) - v92 > 6uLL)
                {
                  *(v92 + 3) = 1920233580;
                  *v92 = 1819047278;
                  *(v85 + 4) += 7;
                  v88 = *(v85 + 4);
                  if (*(v85 + 3) - v88 > 0x1FuLL)
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
                  llvm::raw_ostream::write(v85, "nullptr", 7uLL);
                  v88 = *(v85 + 4);
                  if (*(v85 + 3) - v88 > 0x1FuLL)
                  {
                    goto LABEL_148;
                  }
                }

LABEL_136:
                v85 = llvm::raw_ostream::write(v85, " not reachable when its sibling ", 0x20uLL);
                v89 = *v11;
                if (!*v11)
                {
                  goto LABEL_137;
                }

LABEL_149:
                mlir::Block::printAsOperand(v89, v85);
                v91 = *(v85 + 4);
                if (*(v85 + 3) - v91 <= 0xCuLL)
                {
LABEL_150:
                  v94 = llvm::raw_ostream::write(v85, " is removed!\n", 0xDuLL);
                  v93 = llvm::errs(v94);
                  if (*(v93 + 4) == *(v93 + 2))
                  {
                    return 0;
                  }

LABEL_146:
                  llvm::raw_ostream::flush_nonempty(v93);
                  return 0;
                }
              }

              qmemcpy(v91, " is removed!\n", 13);
              *(v85 + 4) += 13;
              v93 = llvm::errs(v89);
              if (*(v93 + 4) == *(v93 + 2))
              {
                return 0;
              }

              goto LABEL_146;
            }

LABEL_41:
            if (++v29 == v30)
            {
              goto LABEL_8;
            }

            continue;
          }

          break;
        }

        v38 = 0;
        v39 = 1;
        while (v33 != -4096)
        {
          if (v38)
          {
            v40 = 0;
          }

          else
          {
            v40 = v33 == -8192;
          }

          if (v40)
          {
            v38 = v32;
          }

          v41 = v31 + v39++;
          v31 = v41 & (v37 - 1);
          v32 = &v36[8 * v31];
          v33 = *v32;
          if (v35 == *v32)
          {
            goto LABEL_40;
          }
        }

        if (v38)
        {
          v32 = v38;
        }

        v42 = *(a1 + 536);
        if (4 * v42 + 4 >= (3 * v37))
        {
          goto LABEL_61;
        }

        if (v37 + ~v42 - *(a1 + 540) <= v37 >> 3)
        {
          v43 = *(a1 + 544);
LABEL_63:
          v44 = (v43 - 1) | ((v43 - 1) >> 1);
          v45 = v44 | (v44 >> 2) | ((v44 | (v44 >> 2)) >> 4);
          v46 = ((v45 | (v45 >> 8)) >> 16) | v45 | (v45 >> 8);
          if ((v46 + 1) > 0x40)
          {
            v47 = v46 + 1;
          }

          else
          {
            v47 = 64;
          }

          *(a1 + 544) = v47;
          result = llvm::allocate_buffer(v47 << 6, 8uLL);
          *(a1 + 528) = result;
          if (v36)
          {
            v48 = (v37 << 6);
            llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(v95, v36, &v48[v36]);
            llvm::deallocate_buffer(v36, v48);
          }

          *(a1 + 536) = 0;
          v49 = *(a1 + 544);
          if (v49)
          {
            v50 = result;
            if (((v49 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_156;
            }

            v51 = ((v49 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
            v50 = (result + ((v51 & 0x7FFFFFFFFFFFFFELL) << 6));
            v52 = (result + 64);
            v53 = v51 & 0x7FFFFFFFFFFFFFELL;
            do
            {
              *(v52 - 8) = -4096;
              *v52 = -4096;
              v52 += 16;
              v53 -= 2;
            }

            while (v53);
            if (v51 != (v51 & 0x7FFFFFFFFFFFFFELL))
            {
LABEL_156:
              do
              {
                *v50 = -4096;
                v50 += 8;
              }

              while (v50 != (result + (v49 << 6)));
            }

            v54 = v49 - 1;
            v55 = (v49 - 1) & ((v35 >> 4) ^ (v35 >> 9));
            v32 = (result + (v55 << 6));
            v56 = *v32;
            if (v35 != *v32)
            {
              v57 = 0;
              v58 = 1;
              while (v56 != -4096)
              {
                if (v57)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v56 == -8192;
                }

                if (v59)
                {
                  v57 = v32;
                }

                v60 = v55 + v58++;
                v55 = v60 & v54;
                v32 = (result + (v55 << 6));
                v56 = *v32;
                if (v35 == *v32)
                {
                  goto LABEL_85;
                }
              }

              if (v57)
              {
                v32 = v57;
              }
            }
          }

          else
          {
            v32 = 0;
          }

LABEL_85:
          ++*(a1 + 536);
          if (*v32 != -4096)
          {
LABEL_47:
            --*(a1 + 540);
          }
        }

        else
        {
          *(a1 + 536) = v42 + 1;
          if (*v32 != -4096)
          {
            goto LABEL_47;
          }
        }

        *v32 = v35;
        *(v32 + 3) = 0u;
        *(v32 + 5) = 0u;
        *(v32 + 1) = 0u;
        v32[7] = 0;
        v32[4] = (v32 + 6);
        *(v32 + 11) = 4;
        goto LABEL_40;
      }

LABEL_8:
      if (++v10 == v96)
      {
        goto LABEL_3;
      }
    }

    v19 = *v95 + 48;
    v20 = v13 << 6;
    while (1)
    {
      v21 = *(v19 - 48);
      if (v21 != -8192)
      {
        if (v21 == -4096)
        {
          goto LABEL_22;
        }

        result = *(v19 - 16);
        if (v19 != result)
        {
          free(result);
        }
      }

      *(v19 - 48) = -4096;
LABEL_22:
      v19 += 64;
      v20 -= 64;
      if (!v20)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,true>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,true> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, uint64_t *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = &v30;
  v30 = a2;
  v31 = a5;
  v29 = 0x4000000001;
  v25 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v25) + 1) = a5;
  v11 = v29;
  while (v29)
  {
    v12 = v28 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v29) = v11 - 1;
    v25 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v25);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,true>::getChildren<true>(*(v18 + 8), v13, &v25);
      v19 = v26;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>(v13, &v25);
      v19 = v26;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v24 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v25, v25 + v19, &v24, 126 - 2 * __clz(v19), 1);
          v19 = v26;
        }
      }
    }

    v20 = v25;
    if (v19 && v13 != a4)
    {
      v21 = 8 * v19;
      do
      {
        if (*v20 != a4)
        {
          if (v29 >= HIDWORD(v29))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = (v28 + 16 * v29);
          *v22 = *v20;
          v22[1] = v6;
          LODWORD(v29) = v29 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v25;
    }

    if (v20 != &v27)
    {
      free(v20);
    }

LABEL_3:
    v11 = v29;
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return a3;
}

void mlir::DynamicTypeDefinition::get()
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = typeOrAttrParser;
  v6 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &>::CallbacksHolder<llvm::LogicalResult (*)(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &),llvm::LogicalResult (* const)(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &),void>::Callbacks + 2;
  v3 = typeOrAttrPrinter;
  v4 = llvm::detail::UniqueFunctionBase<void,mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>>::CallbacksHolder<void (*)(mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>),void (* const)(mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>),void>::Callbacks + 2;
  operator new();
}

{
  operator new();
}

uint64_t typeOrAttrParser(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 160))(a1) & 1) == 0 || ((*(*a1 + 176))(a1))
  {
    return 1;
  }

  v8 = 0;
  if ((*(*a1 + 440))(a1, &v8, 0))
  {
    v5 = *(a2 + 8);
    if (v5 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 8 * v5) = v8;
    while (1)
    {
      ++*(a2 + 8);
      if ((*(*a1 + 176))(a1))
      {
        break;
      }

      v7 = 0;
      if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v7, 0) & 1) == 0)
      {
        return 0;
      }

      v6 = *(a2 + 8);
      if (v6 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v6) = v7;
    }

    return 1;
  }

  return 0;
}

llvm::raw_ostream *typeOrAttrPrinter(llvm::raw_ostream *result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    v7 = v6[4];
    if (v6[3] == v7)
    {
      llvm::raw_ostream::write(v6, "<", 1uLL);
    }

    else
    {
      *v7 = 60;
      ++v6[4];
    }

    v8 = (*(*v5 + 16))(v5);
    v16 = *a2;
    v9.n128_f64[0] = mlir::Attribute::print(&v16, v8, 0);
    if (a3 != 1)
    {
      v11 = 8 * a3;
      v12 = a2 + 1;
      v13 = v11 - 8;
      do
      {
        v15 = *(v8 + 4);
        if (*(v8 + 3) - v15 <= 1uLL)
        {
          llvm::raw_ostream::write(v8, ", ", 2uLL);
        }

        else
        {
          *v15 = 8236;
          *(v8 + 4) += 2;
        }

        v14 = *v12++;
        v16 = v14;
        v9.n128_f64[0] = mlir::Attribute::print(&v16, v8, 0);
        v13 -= 8;
      }

      while (v13);
    }

    result = (*(*v5 + 16))(v5, v9);
    v10 = *(result + 4);
    if (*(result + 3) == v10)
    {
      return llvm::raw_ostream::write(result, ">", 1uLL);
    }

    else
    {
      *v10 = 62;
      ++*(result + 4);
    }
  }

  return result;
}

uint64_t *mlir::DynamicTypeDefinition::DynamicTypeDefinition(uint64_t *__dst, const void *a2, size_t __len, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  *(__dst + __len) = 0;
  __dst[3] = a4;
  __dst[7] = 0;
  v14 = *(a5 + 3);
  __dst[7] = v14;
  if (v14 >= 8)
  {
    if ((v14 & 2) != 0 && (v14 & 4) != 0)
    {
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 4, a5);
      (*((__dst[7] & 0xFFFFFFFFFFFFFFF8) + 16))(a5);
    }

    else
    {
      v17 = *a5;
      __dst[6] = *(a5 + 2);
      *(__dst + 2) = v17;
    }

    *(a5 + 3) = 0;
    __dst[11] = 0;
    v15 = *(a6 + 3);
    __dst[11] = v15;
    if (v15 < 8)
    {
LABEL_9:
      __dst[15] = 0;
      v16 = *(a7 + 3);
      __dst[15] = v16;
      if (v16 < 8)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __dst[11] = 0;
    v15 = *(a6 + 3);
    __dst[11] = v15;
    if (v15 < 8)
    {
      goto LABEL_9;
    }
  }

  if ((v15 & 2) != 0 && (v15 & 4) != 0)
  {
    (*((v15 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 8, a6);
    (*((__dst[11] & 0xFFFFFFFFFFFFFFF8) + 16))(a6);
  }

  else
  {
    v18 = *a6;
    __dst[10] = *(a6 + 2);
    *(__dst + 4) = v18;
  }

  *(a6 + 3) = 0;
  __dst[15] = 0;
  v16 = *(a7 + 3);
  __dst[15] = v16;
  if (v16 >= 8)
  {
LABEL_21:
    if ((v16 & 2) != 0 && (v16 & 4) != 0)
    {
      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 12, a7);
      (*((__dst[15] & 0xFFFFFFFFFFFFFFF8) + 16))(a7);
    }

    else
    {
      v19 = *a7;
      __dst[14] = *(a7 + 2);
      *(__dst + 6) = v19;
    }

    *(a7 + 3) = 0;
  }

LABEL_26:
  __dst[16] = *(a4 + 32);
  return __dst;
}

void *mlir::DynamicTypeDefinition::DynamicTypeDefinition(void *a1, uint64_t a2, const void *a3, size_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a4;
  if (a4)
  {
    memmove(a1, a3, a4);
  }

  *(a1 + a4) = 0;
  a1[3] = a2;
  a1[7] = 0;
  a1[11] = 0;
  a1[15] = 0;
  a1[16] = *(a2 + 32);
  return a1;
}

{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a4;
  if (a4)
  {
    memmove(a1, a3, a4);
  }

  *(a1 + a4) = 0;
  a1[3] = a2;
  a1[7] = 0;
  a1[11] = 0;
  a1[15] = 0;
  a1[16] = *(a2 + 32);
  return a1;
}

void mlir::DynamicTypeDefinition::registerInTypeUniquer(mlir::MLIRContext **this)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this[16]);

  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, this, 0, v3);
}

uint64_t mlir::DynamicType::get(uint64_t a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 128);
  mlir::detail::getDefaultDiagnosticEmitFn(v21, v6);
  v16 = v6;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v6);
  v15[0] = a1;
  v15[1] = &v16;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail18DynamicTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v20[1] = v15;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, a2 + 2 * a3);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ a1 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ a1 ^ 0xFF51AFD7ED558CCDLL)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, a1, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  v12 = v22;
  if (v22 >= 8)
  {
    if ((v22 & 4) != 0)
    {
      v13 = v21[0];
      if ((v22 & 2) != 0)
      {
        v13 = v21;
      }

      v14 = result;
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
      result = v14;
    }

    if ((v12 & 2) == 0)
    {
      llvm::deallocate_buffer(v21[0], v21[1]);
    }
  }

  return result;
}

uint64_t mlir::DynamicType::getChecked(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v10 = (a3 + 32);
  v11 = *(a3 + 56);
  if ((v11 & 2) == 0)
  {
    v10 = *v10;
  }

  if (((*(v11 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v18 = *(a3 + 128);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v18);
  v17[0] = a3;
  v17[1] = &v18;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail18DynamicTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v22[1] = v17;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v13 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a4, &a4[2 * a5]);
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ a3 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ a3 ^ 0xFF51AFD7ED558CCDLL)));
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, a3, (-348639895 * ((v15 >> 47) ^ v15)) ^ v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::DynamicType::classof(uint64_t *a1)
{
  v1 = *a1;
  {
    v7 = v1;
    mlir::DynamicType::classof();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID(void)::id;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

BOOL mlir::DynamicType::parse(mlir::DynamicType *this, mlir::AsmParser *a2, mlir::DynamicTypeDefinition *a3, mlir::DynamicType *a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x600000000;
  v7 = (a2 + 64);
  v8 = *(a2 + 11);
  if ((v8 & 2) == 0)
  {
    v7 = *v7;
  }

  if ((*(v8 & 0xFFFFFFFFFFFFFFF8))(v7, this, &v14, a4))
  {
    v13 = this;
    Checked = mlir::DynamicType::getChecked(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l, &v13, a2, v14, v15);
    *a3 = Checked;
    v10 = Checked != 0;
    v11 = v14;
    if (v14 == v16)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v14;
  if (v14 != v16)
  {
LABEL_7:
    free(v11);
  }

  return v10;
}

uint64_t mlir::DynamicType::print(mlir::DynamicType *this, mlir::AsmPrinter *a2)
{
  v4 = *(*this + 8);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(*this + 8);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = (*(*a2 + 16))(a2);
  if (v7 <= *(v8 + 24) - *(v8 + 32))
  {
    if (v7)
    {
      v9 = v8;
      memcpy(*(v8 + 32), v6, v7);
      *(v9 + 32) += v7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v8, v6, v7);
  }

  v11 = *(*this + 8);
  v10 = *(*this + 16);
  v12 = (v11 + 96);
  v13 = *(*this + 24);
  v14 = *(v11 + 120);
  v15 = *(v14 & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 2) == 0)
  {
    v12 = *v12;
  }

  return v15(v12, a2, v10, v13);
}

void mlir::DynamicAttrDefinition::get()
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = typeOrAttrParser;
  v6 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &>::CallbacksHolder<llvm::LogicalResult (*)(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &),llvm::LogicalResult (* const)(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &),void>::Callbacks + 2;
  v3 = typeOrAttrPrinter;
  v4 = llvm::detail::UniqueFunctionBase<void,mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>>::CallbacksHolder<void (*)(mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>),void (* const)(mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>),void>::Callbacks + 2;
  operator new();
}

{
  operator new();
}

uint64_t *mlir::DynamicAttrDefinition::DynamicAttrDefinition(uint64_t *__dst, const void *a2, size_t __len, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  *(__dst + __len) = 0;
  __dst[3] = a4;
  __dst[7] = 0;
  v14 = *(a5 + 3);
  __dst[7] = v14;
  if (v14 >= 8)
  {
    if ((v14 & 2) != 0 && (v14 & 4) != 0)
    {
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 4, a5);
      (*((__dst[7] & 0xFFFFFFFFFFFFFFF8) + 16))(a5);
    }

    else
    {
      v17 = *a5;
      __dst[6] = *(a5 + 2);
      *(__dst + 2) = v17;
    }

    *(a5 + 3) = 0;
    __dst[11] = 0;
    v15 = *(a6 + 3);
    __dst[11] = v15;
    if (v15 < 8)
    {
LABEL_9:
      __dst[15] = 0;
      v16 = *(a7 + 3);
      __dst[15] = v16;
      if (v16 < 8)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __dst[11] = 0;
    v15 = *(a6 + 3);
    __dst[11] = v15;
    if (v15 < 8)
    {
      goto LABEL_9;
    }
  }

  if ((v15 & 2) != 0 && (v15 & 4) != 0)
  {
    (*((v15 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 8, a6);
    (*((__dst[11] & 0xFFFFFFFFFFFFFFF8) + 16))(a6);
  }

  else
  {
    v18 = *a6;
    __dst[10] = *(a6 + 2);
    *(__dst + 4) = v18;
  }

  *(a6 + 3) = 0;
  __dst[15] = 0;
  v16 = *(a7 + 3);
  __dst[15] = v16;
  if (v16 >= 8)
  {
LABEL_21:
    if ((v16 & 2) != 0 && (v16 & 4) != 0)
    {
      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 8))(__dst + 12, a7);
      (*((__dst[15] & 0xFFFFFFFFFFFFFFF8) + 16))(a7);
    }

    else
    {
      v19 = *a7;
      __dst[14] = *(a7 + 2);
      *(__dst + 6) = v19;
    }

    *(a7 + 3) = 0;
  }

LABEL_26:
  __dst[16] = *(a4 + 32);
  return __dst;
}

void *mlir::DynamicAttrDefinition::DynamicAttrDefinition(void *a1, uint64_t a2, const void *a3, size_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a4;
  if (a4)
  {
    memmove(a1, a3, a4);
  }

  *(a1 + a4) = 0;
  a1[3] = a2;
  a1[7] = 0;
  a1[11] = 0;
  a1[15] = 0;
  a1[16] = *(a2 + 32);
  return a1;
}

{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a4;
  if (a4)
  {
    memmove(a1, a3, a4);
  }

  *(a1 + a4) = 0;
  a1[3] = a2;
  a1[7] = 0;
  a1[11] = 0;
  a1[15] = 0;
  a1[16] = *(a2 + 32);
  return a1;
}

void mlir::DynamicAttrDefinition::registerInAttrUniquer(mlir::MLIRContext **this)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this[16]);

  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, this, 0, v3);
}

uint64_t mlir::DynamicAttr::get(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v6);
  v12[0] = a1;
  v12[1] = v6;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail18DynamicAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11DynamicAttrEJRPNS1_21DynamicAttrDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v16[1] = v12;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ a1 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ a1 ^ 0xFF51AFD7ED558CCDLL)));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, a1, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::DynamicAttr::getChecked(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v10 = (a3 + 32);
  v11 = *(a3 + 56);
  if ((v11 & 2) == 0)
  {
    v10 = *v10;
  }

  if (((*(v11 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a3 + 128);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
  v18[0] = a3;
  v18[1] = v12;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail18DynamicAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11DynamicAttrEJRPNS1_21DynamicAttrDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
  v22[1] = v18;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v14 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a4, &a4[2 * a5]);
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ a3 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ a3 ^ 0xFF51AFD7ED558CCDLL)));
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, a3, (-348639895 * ((v16 >> 47) ^ v16)) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicAttrStorage * mlir::StorageUniquer::get<mlir::detail::DynamicAttrStorage,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicAttrStorage *)>,mlir::TypeID,mlir::DynamicAttrDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::DynamicAttr::classof(uint64_t *a1)
{
  v1 = *a1;
  {
    v7 = v1;
    mlir::DynamicAttr::classof();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsDynamicAttr<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsDynamicAttr>(void)::Empty>,void>::resolveTypeID(void)::id;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

BOOL mlir::DynamicAttr::parse(mlir::DynamicAttr *this, mlir::AsmParser *a2, mlir::DynamicAttrDefinition *a3, mlir::DynamicAttr *a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x600000000;
  v7 = (a2 + 64);
  v8 = *(a2 + 11);
  if ((v8 & 2) == 0)
  {
    v7 = *v7;
  }

  if ((*(v8 & 0xFFFFFFFFFFFFFFF8))(v7, this, &v14, a4))
  {
    v13 = this;
    Checked = mlir::DynamicAttr::getChecked(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicAttrEJRPNS1_21DynamicAttrDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l, &v13, a2, v14, v15);
    *a3 = Checked;
    v10 = Checked != 0;
    v11 = v14;
    if (v14 == v16)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v14;
  if (v14 != v16)
  {
LABEL_7:
    free(v11);
  }

  return v10;
}

uint64_t mlir::DynamicAttr::print(mlir::DynamicAttr *this, mlir::AsmPrinter *a2)
{
  v4 = *(*this + 8);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(*this + 8);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = (*(*a2 + 16))(a2);
  if (v7 <= *(v8 + 24) - *(v8 + 32))
  {
    if (v7)
    {
      v9 = v8;
      memcpy(*(v8 + 32), v6, v7);
      *(v9 + 32) += v7;
    }
  }

  else
  {
    llvm::raw_ostream::write(v8, v6, v7);
  }

  v11 = *(*this + 8);
  v10 = *(*this + 16);
  v12 = (v11 + 96);
  v13 = *(*this + 24);
  v14 = *(v11 + 120);
  v15 = *(v14 & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 2) == 0)
  {
    v12 = *v12;
  }

  return v15(v12, a2, v10, v13);
}

uint64_t mlir::DynamicOpDefinition::DynamicOpDefinition(uint64_t a1, llvm::formatv_object_base *a2, llvm::formatv_object_base *a3, void *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10, __int128 *a11)
{
  v57 = *MEMORY[0x277D85DE8];
  v17 = a4[4];
  v18 = a4[1];
  v19 = a4[2];
  v47 = 773;
  v46[0] = v18;
  v46[1] = v19;
  v46[2] = ".";
  v48[0] = v46;
  v48[2] = a2;
  v48[3] = a3;
  v49 = 1282;
  llvm::Twine::str(v48, __p);
  v53 = 260;
  v52 = __p;
  v21 = mlir::StringAttr::get(v17, &v52, v20);
  v23 = a4 + 24;
  v22 = a4[24];
  a4[34] += 8;
  if (v22 && (Slow = (v22 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 8 <= a4[25]))
  {
    *v23 = Slow + 8;
  }

  else
  {
    v45 = v21;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a4 + 24), 8, 8, 3);
    v21 = v45;
  }

  memset(v56, 0, sizeof(v56));
  v54 = v56;
  v55 = 0x300000000;
  *a1 = &unk_28685E580;
  *(a1 + 8) = v21;
  *(a1 + 16) = Slow;
  *(a1 + 24) = a4;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 0x300000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_28689CD50;
  *(a1 + 136) = 0;
  v25 = *(a5 + 3);
  *(a1 + 136) = v25;
  if (v25 >= 8)
  {
    if ((v25 & 2) != 0 && (v25 & 4) != 0)
    {
      (*((v25 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 112, a5);
      (*((*(a1 + 136) & 0xFFFFFFFFFFFFFFF8) + 16))(a5);
    }

    else
    {
      v36 = *a5;
      *(a1 + 128) = *(a5 + 2);
      *(a1 + 112) = v36;
    }

    *(a5 + 3) = 0;
    *(a1 + 168) = 0;
    v26 = *(a6 + 3);
    *(a1 + 168) = v26;
    if (v26 < 8)
    {
LABEL_8:
      v27 = a9;
      *(a1 + 200) = 0;
      v28 = *(a7 + 3);
      *(a1 + 200) = v28;
      if (v28 < 8)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else
  {
    *(a1 + 168) = 0;
    v26 = *(a6 + 3);
    *(a1 + 168) = v26;
    if (v26 < 8)
    {
      goto LABEL_8;
    }
  }

  if ((v26 & 2) != 0 && (v26 & 4) != 0)
  {
    (*((v26 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 144, a6);
    (*((*(a1 + 168) & 0xFFFFFFFFFFFFFFF8) + 16))(a6);
  }

  else
  {
    v37 = *a6;
    *(a1 + 160) = *(a6 + 2);
    *(a1 + 144) = v37;
  }

  *(a6 + 3) = 0;
  v27 = a9;
  *(a1 + 200) = 0;
  v28 = *(a7 + 3);
  *(a1 + 200) = v28;
  if (v28 < 8)
  {
LABEL_9:
    v29 = a10;
    *(a1 + 232) = 0;
    v30 = *(a8 + 3);
    *(a1 + 232) = v30;
    if (v30 < 8)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_25:
  if ((v28 & 2) != 0 && (v28 & 4) != 0)
  {
    (*((v28 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 176, a7);
    (*((*(a1 + 200) & 0xFFFFFFFFFFFFFFF8) + 16))(a7);
  }

  else
  {
    v38 = *a7;
    *(a1 + 192) = *(a7 + 2);
    *(a1 + 176) = v38;
  }

  *(a7 + 3) = 0;
  v29 = a10;
  *(a1 + 232) = 0;
  v30 = *(a8 + 3);
  *(a1 + 232) = v30;
  if (v30 < 8)
  {
LABEL_10:
    v31 = a11;
    *(a1 + 264) = 0;
    v32 = *(v27 + 3);
    *(a1 + 264) = v32;
    if (v32 < 8)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((v30 & 2) != 0 && (v30 & 4) != 0)
  {
    (*((v30 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 208, a8);
    (*((*(a1 + 232) & 0xFFFFFFFFFFFFFFF8) + 16))(a8);
  }

  else
  {
    v39 = *a8;
    *(a1 + 224) = *(a8 + 2);
    *(a1 + 208) = v39;
  }

  *(a8 + 3) = 0;
  v31 = a11;
  *(a1 + 264) = 0;
  v32 = *(v27 + 3);
  *(a1 + 264) = v32;
  if (v32 < 8)
  {
LABEL_11:
    *(a1 + 296) = 0;
    v33 = *(v29 + 3);
    *(a1 + 296) = v33;
    if (v33 < 8)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((v32 & 2) != 0 && (v32 & 4) != 0)
  {
    (*((v32 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 240, v27);
    (*((*(a1 + 264) & 0xFFFFFFFFFFFFFFF8) + 16))(v27);
  }

  else
  {
    v40 = *v27;
    *(a1 + 256) = *(v27 + 2);
    *(a1 + 240) = v40;
  }

  *(v27 + 3) = 0;
  *(a1 + 296) = 0;
  v33 = *(v29 + 3);
  *(a1 + 296) = v33;
  if (v33 < 8)
  {
LABEL_12:
    *(a1 + 328) = 0;
    v34 = *(v31 + 3);
    *(a1 + 328) = v34;
    if (v34 < 8)
    {
      goto LABEL_13;
    }

LABEL_45:
    if ((v34 & 2) != 0 && (v34 & 4) != 0)
    {
      (*((v34 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 304, v31);
      (*((*(a1 + 328) & 0xFFFFFFFFFFFFFFF8) + 16))(v31);
    }

    else
    {
      v42 = *v31;
      *(a1 + 320) = *(v31 + 2);
      *(a1 + 304) = v42;
    }

    *(v31 + 3) = 0;
    a4[34] += 8;
    v35 = a4[24];
    if (!v35)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

LABEL_40:
  if ((v33 & 2) != 0 && (v33 & 4) != 0)
  {
    (*((v33 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 272, v29);
    (*((*(a1 + 296) & 0xFFFFFFFFFFFFFFF8) + 16))(v29);
  }

  else
  {
    v41 = *v29;
    *(a1 + 288) = *(v29 + 2);
    *(a1 + 272) = v41;
  }

  *(v29 + 3) = 0;
  *(a1 + 328) = 0;
  v34 = *(v31 + 3);
  *(a1 + 328) = v34;
  if (v34 >= 8)
  {
    goto LABEL_45;
  }

LABEL_13:
  a4[34] += 8;
  v35 = a4[24];
  if (!v35)
  {
    goto LABEL_54;
  }

LABEL_50:
  v43 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v43 + 8 > a4[25])
  {
LABEL_54:
    v43 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a4 + 24), 8, 8, 3);
    goto LABEL_52;
  }

  *v23 = v43 + 8;
LABEL_52:
  *(a1 + 16) = v43;
  return a1;
}

{
  return mlir::DynamicOpDefinition::DynamicOpDefinition(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void mlir::DynamicOpDefinition::get()
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = off_281D73538 + 2;
  v9 = off_281D73540 + 2;
  v8 = off_281D73548 + 2;
  operator new();
}

void mlir::ExtensibleDialect::ExtensibleDialect(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = mlir::Dialect::Dialect(a1, a2, a3, a4, a5);
  *v5 = &unk_28689CE18;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 136) = 0x1000000000;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0x1000000000;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 208) = v5 + 224;
  *(v5 + 216) = 0x400000000;
  *(v5 + 256) = v5 + 272;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  operator new();
}

{
  v5 = mlir::Dialect::Dialect(a1, a2, a3, a4, a5);
  *v5 = &unk_28689CE18;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 136) = 0x1000000000;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0x1000000000;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 208) = v5 + 224;
  *(v5 + 216) = 0x400000000;
  *(v5 + 256) = v5 + 272;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  operator new();
}

void mlir::ExtensibleDialect::registerDynamicType(void *a1, uint64_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v30 = v3;
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = *(v3 + 24);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::try_emplace<std::unique_ptr<mlir::DynamicTypeDefinition>>(a1 + 12, &v30, a2, &v37);
  v37 = v5;
  v38 = v6;
  v39 = v3;
  v10 = llvm::StringMapImpl::hash(v5, v6, v8, v9);
  llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((a1 + 15), v5, v6, v10, &v39);
  v12 = a1[4];
  v13 = a1[1];
  v14 = a1[2];
  LOWORD(v35) = 773;
  v32 = v13;
  v33 = v14;
  *&v34 = ".";
  v15 = *(v3 + 23);
  v16 = *v3;
  if (v15 >= 0)
  {
    v16 = v3;
  }

  if (v15 < 0)
  {
    v15 = *(v3 + 8);
  }

  v37 = &v32;
  v39 = v16;
  v40 = v15;
  v41 = 1282;
  v29 = mlir::StringAttr::get(v12, &v37, v11);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = &v34;
  v33 = 0x300000000;
  v17 = v30;
  Value = mlir::StringAttr::getValue(&v29);
  v20 = v19;
  v37 = v7;
  v38 = &v40;
  v39 = 0x300000000;
  if (v33)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(&v38, &v32);
  }

  v42 = mlir::detail::StorageUserBase<mlir::DynamicType,mlir::Type,mlir::detail::DynamicTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsDynamicType>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v43 = v31;
  v44 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v45 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11DynamicTypeES2_NSB_18DynamicTypeStorageENSB_11TypeUniquerEJNS1_9TypeTrait13IsDynamicTypeEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v46 = &v28;
  v47 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11DynamicTypeES2_NSA_18DynamicTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait13IsDynamicTypeEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v48 = &v27;
  v49 = v17;
  v50 = Value;
  v51 = v20;
  v21 = v32;
  if (v33)
  {
    v22 = 16 * v33;
    v23 = (v32 + 8);
    do
    {
      v24 = *v23;
      v23 += 2;
      free(v24);
      v22 -= 16;
    }

    while (v22);
    v21 = v32;
  }

  if (v21 != &v34)
  {
    free(v21);
  }

  mlir::Dialect::addType(a1, v30, &v37);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(v3 + 128));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, v3, 0, v26);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::try_emplace<std::unique_ptr<mlir::DynamicTypeDefinition>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v9 = v22;
    ++*(v19 + 2);
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

void mlir::ExtensibleDialect::registerDynamicAttr(void *a1, uint64_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v30 = v3;
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = *(v3 + 24);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::try_emplace<std::unique_ptr<mlir::DynamicTypeDefinition>>(a1 + 18, &v30, a2, &v37);
  v37 = v5;
  v38 = v6;
  v39 = v3;
  v10 = llvm::StringMapImpl::hash(v5, v6, v8, v9);
  llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>((a1 + 21), v5, v6, v10, &v39);
  v12 = a1[4];
  v13 = a1[1];
  v14 = a1[2];
  LOWORD(v35) = 773;
  v32 = v13;
  v33 = v14;
  *&v34 = ".";
  v15 = *(v3 + 23);
  v16 = *v3;
  if (v15 >= 0)
  {
    v16 = v3;
  }

  if (v15 < 0)
  {
    v15 = *(v3 + 8);
  }

  v37 = &v32;
  v39 = v16;
  v40 = v15;
  v41 = 1282;
  v29 = mlir::StringAttr::get(v12, &v37, v11);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = &v34;
  v33 = 0x300000000;
  v17 = v30;
  Value = mlir::StringAttr::getValue(&v29);
  v20 = v19;
  v37 = v7;
  v38 = &v40;
  v39 = 0x300000000;
  if (v33)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(&v38, &v32);
  }

  v42 = mlir::detail::StorageUserBase<mlir::DynamicAttr,mlir::Attribute,mlir::detail::DynamicAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsDynamicAttr>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v43 = v31;
  v44 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v45 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11DynamicAttrES2_NSB_18DynamicAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait13IsDynamicAttrEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v46 = &v28;
  v47 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11DynamicAttrES2_NSA_18DynamicAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait13IsDynamicAttrEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v48 = &v27;
  v49 = v17;
  v50 = Value;
  v51 = v20;
  v21 = v32;
  if (v33)
  {
    v22 = 16 * v33;
    v23 = (v32 + 8);
    do
    {
      v24 = *v23;
      v23 += 2;
      free(v24);
      v22 -= 16;
    }

    while (v22);
    v21 = v32;
  }

  if (v21 != &v34)
  {
    free(v21);
  }

  mlir::Dialect::addAttribute(a1, v30, &v37);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(v3 + 128));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, v3, 0, v26);
}

uint64_t mlir::ExtensibleDialect::registerDynamicOp(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v4 = v2;
  mlir::RegisteredOperationName::insert(&v4, 0, 0);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

BOOL mlir::ExtensibleDialect::classof(mlir::ExtensibleDialect *this, const mlir::Dialect *a2)
{
  v2 = *(this + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = (v2 - 1) & ((&_MergedGlobals_87 >> 4) ^ (&_MergedGlobals_87 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != &_MergedGlobals_87)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == &_MergedGlobals_87)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8) != 0;
}

uint64_t mlir::ExtensibleDialect::parseOptionalDynamicType(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4, uint64_t *a5)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v10 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey((a1 + 120), a2, a3, v10);
  if (Key == -1 || Key == *(a1 + 128) || (v12 = *(*(*(a1 + 120) + 8 * Key) + 8)) == 0)
  {
    v18 = 0;
    v19 = 0;
    return v18 | (v19 << 8);
  }

  v22 = v24;
  v23 = 0x600000000;
  v13 = (v12 + 64);
  v14 = *(v12 + 88);
  if ((v14 & 2) == 0)
  {
    v13 = *v13;
  }

  if ((*(v14 & 0xFFFFFFFFFFFFFFF8))(v13, a4, &v22))
  {
    v21 = a4;
    Checked = mlir::DynamicType::getChecked(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l, &v21, v12, v22, v23);
    v16 = Checked == 0;
    v17 = v22;
    if (v22 == v24)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  Checked = 0;
  v16 = 1;
  v17 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v17);
  }

LABEL_13:
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    *a5 = Checked;
    v18 = 1;
  }

  v19 = 1;
  return v18 | (v19 << 8);
}

uint64_t mlir::ExtensibleDialect::printIfDynamicType(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  {
    mlir::DynamicType::classof();
  }

  v5 = (v4 + 72);
  v6 = *(v4 + 96);
  if ((v6 & 2) == 0)
  {
    v5 = *v5;
  }

  v7 = (*(v6 & 0xFFFFFFFFFFFFFFF8))(v5, mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID(void)::id);
  result = 0;
  if (a1 && v7)
  {
    v9 = a1[1];
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = a1[1];
    }

    else
    {
      v11 = *v9;
    }

    if (v10 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    v13 = (*(*a2 + 16))(a2);
    if (v12 <= *(v13 + 24) - *(v13 + 32))
    {
      if (v12)
      {
        v14 = v13;
        memcpy(*(v13 + 32), v11, v12);
        *(v14 + 32) += v12;
      }
    }

    else
    {
      llvm::raw_ostream::write(v13, v11, v12);
    }

    v15 = a1[1];
    v16 = (v15 + 96);
    v17 = *(v15 + 120);
    if ((v17 & 2) == 0)
    {
      v16 = *v16;
    }

    (*(v17 & 0xFFFFFFFFFFFFFFF8))(v16, a2, a1[2], a1[3]);
    return 1;
  }

  return result;
}

uint64_t mlir::ExtensibleDialect::parseOptionalDynamicAttr(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4, uint64_t *a5)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v10 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey((a1 + 168), a2, a3, v10);
  if (Key == -1 || Key == *(a1 + 176) || (v12 = *(*(*(a1 + 168) + 8 * Key) + 8)) == 0)
  {
    v18 = 0;
    v19 = 0;
    return v18 | (v19 << 8);
  }

  v22 = v24;
  v23 = 0x600000000;
  v13 = (v12 + 64);
  v14 = *(v12 + 88);
  if ((v14 & 2) == 0)
  {
    v13 = *v13;
  }

  if ((*(v14 & 0xFFFFFFFFFFFFFFF8))(v13, a4, &v22))
  {
    v21 = a4;
    Checked = mlir::DynamicAttr::getChecked(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicAttrEJRPNS1_21DynamicAttrDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l, &v21, v12, v22, v23);
    v16 = Checked == 0;
    v17 = v22;
    if (v22 == v24)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  Checked = 0;
  v16 = 1;
  v17 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v17);
  }

LABEL_13:
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    *a5 = Checked;
    v18 = 1;
  }

  v19 = 1;
  return v18 | (v19 << 8);
}

uint64_t mlir::ExtensibleDialect::printIfDynamicAttr(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  {
    mlir::DynamicAttr::classof();
  }

  v5 = (v4 + 72);
  v6 = *(v4 + 96);
  if ((v6 & 2) == 0)
  {
    v5 = *v5;
  }

  v7 = (*(v6 & 0xFFFFFFFFFFFFFFF8))(v5, mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsDynamicAttr<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsDynamicAttr>(void)::Empty>,void>::resolveTypeID(void)::id);
  result = 0;
  if (a1 && v7)
  {
    v9 = a1[1];
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = a1[1];
    }

    else
    {
      v11 = *v9;
    }

    if (v10 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    v13 = (*(*a2 + 16))(a2);
    if (v12 <= *(v13 + 24) - *(v13 + 32))
    {
      if (v12)
      {
        v14 = v13;
        memcpy(*(v13 + 32), v11, v12);
        *(v14 + 32) += v12;
      }
    }

    else
    {
      llvm::raw_ostream::write(v13, v11, v12);
    }

    v15 = a1[1];
    v16 = (v15 + 96);
    v17 = *(v15 + 120);
    if ((v17 & 2) == 0)
    {
      v16 = *v16;
    }

    (*(v17 & 0xFFFFFFFFFFFFFFF8))(v16, a2, a1[2], a1[3]);
    return 1;
  }

  return result;
}

void mlir::DynamicDialect::DynamicDialect(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28689CE98;
  v4 = mlir::Dialect::Dialect(a1, a2, a3, a4, a1);
  *v4 = &unk_28689CE18;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 136) = 0x1000000000;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0x1000000000;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 208) = v4 + 224;
  *(v4 + 216) = 0x400000000;
  *(v4 + 256) = v4 + 272;
  *(v4 + 264) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  operator new();
}

BOOL mlir::DynamicDialect::classof(mlir::DynamicDialect *this, const mlir::Dialect *a2)
{
  v2 = *(this + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = (v2 - 1) & ((&unk_27F874210 >> 4) ^ (&unk_27F874210 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != &unk_27F874210)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == &unk_27F874210)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8) != 0;
}

uint64_t mlir::DynamicDialect::parseType(mlir::DynamicDialect *this, mlir::DialectAsmParser *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v18 = 0;
  v19 = 0;
  v5 = mlir::AsmParser::parseKeyword(a2, &v18);
  result = 0;
  if (v5)
  {
    v16[0] = 0;
    v7 = mlir::ExtensibleDialect::parseOptionalDynamicType(this, v18, v19, a2, v16);
    if ((v7 & 0x100) != 0)
    {
      if (v7)
      {
        return v16[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v16[0] = "expected dynamic type";
      v17 = 259;
      (*(*a2 + 24))(v20, a2, v4, v16);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v8 = __p;
        if (__p)
        {
          v9 = v26;
          v10 = __p;
          if (v26 != __p)
          {
            do
            {
              v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
            }

            while (v9 != v8);
            v10 = __p;
          }

          v26 = v8;
          operator delete(v10);
        }

        v11 = v23;
        if (v23)
        {
          v12 = v24;
          v13 = v23;
          if (v24 != v23)
          {
            do
            {
              v15 = *--v12;
              v14 = v15;
              *v12 = 0;
              if (v15)
              {
                MEMORY[0x259C63150](v14, 0x1000C8077774924);
              }
            }

            while (v12 != v11);
            v13 = v23;
          }

          v24 = v11;
          operator delete(v13);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t mlir::DynamicDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v18 = 0;
  v19 = 0;
  v5 = mlir::AsmParser::parseKeyword(a2, &v18);
  result = 0;
  if (v5)
  {
    v16[0] = 0;
    v7 = mlir::ExtensibleDialect::parseOptionalDynamicAttr(a1, v18, v19, a2, v16);
    if ((v7 & 0x100) != 0)
    {
      if (v7)
      {
        return v16[0];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v16[0] = "expected dynamic attribute";
      v17 = 259;
      (*(*a2 + 24))(v20, a2, v4, v16);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v8 = __p;
        if (__p)
        {
          v9 = v26;
          v10 = __p;
          if (v26 != __p)
          {
            do
            {
              v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
            }

            while (v9 != v8);
            v10 = __p;
          }

          v26 = v8;
          operator delete(v10);
        }

        v11 = v23;
        if (v23)
        {
          v12 = v24;
          v13 = v23;
          if (v24 != v23)
          {
            do
            {
              v15 = *--v12;
              v14 = v15;
              *v12 = 0;
              if (v15)
              {
                MEMORY[0x259C63150](v14, 0x1000C8077774924);
              }
            }

            while (v12 != v11);
            v13 = v23;
          }

          v24 = v11;
          operator delete(v13);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_25710B858()
{

  JUMPOUT(0x259C63180);
}

void mlir::DynamicOpDefinition::~DynamicOpDefinition(mlir::DynamicOpDefinition *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  mlir::DynamicOpDefinition::~DynamicOpDefinition(this, a2, a3, a4);

  JUMPOUT(0x259C63180);
}

{
  *this = &unk_28689CD50;
  v5 = *(this + 41);
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      v6 = (this + 304);
      if ((v5 & 2) == 0)
      {
        v6 = *v6;
      }

      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, a2, a3, a4);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 38), *(this + 39));
    }
  }

  v7 = *(this + 37);
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v8 = (this + 272);
      if ((v7 & 2) == 0)
      {
        v8 = *v8;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, a2, a3, a4);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 34), *(this + 35));
    }
  }

  v9 = *(this + 33);
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v10 = (this + 240);
      if ((v9 & 2) == 0)
      {
        v10 = *v10;
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, a2, a3, a4);
    }

    if ((v9 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 30), *(this + 31));
    }
  }

  v11 = *(this + 29);
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v12 = (this + 208);
      if ((v11 & 2) == 0)
      {
        v12 = *v12;
      }

      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v12, a2, a3, a4);
    }

    if ((v11 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 26), *(this + 27));
    }
  }

  v13 = *(this + 25);
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      v14 = (this + 176);
      if ((v13 & 2) == 0)
      {
        v14 = *v14;
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v14, a2, a3, a4);
    }

    if ((v13 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 22), *(this + 23));
    }
  }

  v15 = *(this + 21);
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      v16 = (this + 144);
      if ((v15 & 2) == 0)
      {
        v16 = *v16;
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v16, a2, a3, a4);
    }

    if ((v15 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 18), *(this + 19));
    }
  }

  v17 = *(this + 17);
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      v18 = (this + 112);
      if ((v17 & 2) == 0)
      {
        v18 = *v18;
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v18, a2, a3, a4);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 14), *(this + 15));
    }
  }

  *this = &unk_28685E580;
  v19 = *(this + 4);
  v20 = *(this + 10);
  if (v20)
  {
    v21 = 16 * v20;
    v22 = v19 + 1;
    do
    {
      v23 = *v22;
      v22 += 2;
      free(v23);
      v21 -= 16;
    }

    while (v21);
    v19 = *(this + 4);
  }

  if (v19 != (this + 48))
  {
    free(v19);
  }
}