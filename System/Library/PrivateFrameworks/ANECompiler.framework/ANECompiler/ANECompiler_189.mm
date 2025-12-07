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
    v2 = *(this + 38);
    if (v2)
    {
      v3 = this + 160;
      v4 = 4;
    }

    else
    {
      v3 = *(this + 20);
      v4 = *(this + 42);
      if (!v4)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_5;
      }
    }

    v7 = v4 - 1;
    v8 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *&v3[8 * v8];
    if (v9 == a2)
    {
LABEL_9:
      v10 = &v3[8 * v8];
      if ((v2 & 1) == 0)
      {
        if (v10 == (*(this + 20) + 8 * *(this + 42)))
        {
          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 1;
      while (v9 != -4096)
      {
        v12 = v8 + v11++;
        v8 = v12 & v7;
        v9 = *&v3[8 * v8];
        if (v9 == a2)
        {
          goto LABEL_9;
        }
      }

      if ((v2 & 1) == 0)
      {
        v3 = *(this + 20);
        v5 = *(this + 42);
        v6 = v5;
LABEL_5:
        if (&v3[8 * v6] == &v3[8 * v5])
        {
          return;
        }

        goto LABEL_20;
      }

      v10 = (this + 192);
    }

    if (v10 == (this + 192))
    {
      return;
    }
  }

LABEL_20:
  v18 = a2;
  v13 = this + 56;
  v14 = (*(this + 8) - *(this + 7)) >> 3;
  v15 = a2;
  v16 = v14;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(this + 10, &v15, &v16, v17);
  if (v17[16] == 1)
  {
    std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v18);
  }
}

uint64_t mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6[1] = 76;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_1F1A0C070;
  return result;
}

void sub_1A6E43E50()
{

  JUMPOUT(0x1AC55A070);
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
  v7[0] = &unk_1F1A0C0A8;
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
  v112[6] = *MEMORY[0x1E69E9840];
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = v112;
  v8 = &v109;
  v9 = &v103;
  v10 = &v107;
  v11 = &unk_1EB28B000;
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
          v91 = 1;
          while (v21 != -4096)
          {
            v92 = v20 + v91++;
            v20 = v92 & v19;
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

      v100 = v15;
      isOpTriviallyDead = mlir::isOpTriviallyDead(v15, a2);
      v24 = v100;
      if (!isOpTriviallyDead)
      {
        break;
      }

      mlir::RewriterBase::eraseOp((this + 16), v100);
      v5 = 1;
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }
    }

    {
      v93 = v24;
      mlir::tensor::PadOp::getConstantPaddingValue();
      v24 = v93;
    }

    if ((*(**(v24 + 6) + 32))(*(v24 + 6), v11[354]))
    {
      goto LABEL_56;
    }

    v110 = v7;
    v111 = 0x600000000;
    if ((mlir::Operation::fold(v100) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v111)
    {
      (*(*this + 40))(this, v100);
      v5 = 1;
      v43 = 2;
      goto LABEL_51;
    }

    v99 = *(this + 40);
    v26 = *(v100 + 2);
    ZinIrHalH13g::~ZinIrHalH13g(v100);
    *(this + 5) = v26;
    *(this + 6) = v27;
    v107 = v8;
    v108 = 0x600000000;
    v28 = *(v100 + 9);
    v29 = v100 - 16;
    if (!v28)
    {
      v29 = 0;
    }

    v101[0] = v29;
    v101[1] = v28;
    mlir::OperandRange::getTypes(&v102, v101);
    if (!v111)
    {
      v42 = v108;
      goto LABEL_46;
    }

    v96 = v10;
    v97 = v9;
    v98 = v8;
    v95 = v7;
    v30 = v102;
    v31 = v103;
    v32 = 8 * v111;
    v33 = v110;
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

      v37 = v100;
      v38 = *(v100 + 6);
      if (*(v38 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v102 = *(v38 + 8);
        Values = mlir::SparseElementsAttr::getValues(&v102);
        v37 = v100;
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
      v41 = v108;
      if (v108 >= HIDWORD(v108))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v98, v108 + 1, 8);
        v41 = v108;
      }

      *(v107 + v41) = v36;
      v42 = v108 + 1;
      LODWORD(v108) = v108 + 1;
      ++v33;
      v31 = (v31 + 1);
      v32 -= 8;
      if (!v32)
      {
        v7 = v95;
        v10 = v96;
        v9 = v97;
        v8 = v98;
LABEL_46:
        v44 = v100;
        mlir::ValueRange::ValueRange(&v102, v107, v42);
        mlir::RewriterBase::replaceOp(this + 2, v44, v102, v103);
        v43 = 2;
        v45 = 1;
        v5 = 1;
        v46 = v99;
        v47 = v107;
        if (v107 == v8)
        {
          goto LABEL_48;
        }

LABEL_47:
        free(v47);
        v46 = v99;
        goto LABEL_48;
      }
    }

    v102 = 1;
    v103 = -4096;
    v104 = -4096;
    v105 = -4096;
    v106 = -4096;
    v46 = v99;
    if (!v108)
    {
      v80 = 1;
      v9 = v97;
      v8 = v98;
      v10 = v96;
LABEL_127:
      v84 = v103;
      v85 = v104;
      if (v80)
      {
        v86 = v10;
      }

      else
      {
        v86 = (v103 + 8 * v104);
      }

      if (v80)
      {
        v87 = v9;
      }

      else
      {
        v87 = v103;
      }

      if (v80)
      {
        v88 = 4;
      }

      else
      {
        v88 = v104;
      }

      v81 = (v87 + 8 * v88);
      v83 = v80;
      goto LABEL_137;
    }

    v54 = v107;
    v55 = (v107 + 8 * v108);
    v9 = v97;
    v8 = v98;
    v10 = v96;
    while (2)
    {
      v101[0] = *v54;
      DefiningOp = mlir::Value::getDefiningOp(v101);
      v63 = v102;
      v64 = v102 & 1;
      if (v102)
      {
        v56 = 4;
        v57 = v9;
        goto LABEL_72;
      }

      v56 = v104;
      if (!v104)
      {
        LODWORD(a2) = 0;
        goto LABEL_98;
      }

      v57 = v103;
LABEL_72:
      v46 = v99;
      v58 = v56 - 1;
      v59 = v58 & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
      v60 = (v57 + 8 * v59);
      v61 = *v60;
      if (DefiningOp != *v60)
      {
        v65 = 0;
        v66 = 1;
        while (v61 != -4096)
        {
          if (v65)
          {
            v67 = 0;
          }

          else
          {
            v67 = v61 == -8192;
          }

          if (v67)
          {
            v65 = v60;
          }

          v68 = v59 + v66++;
          v59 = v68 & v58;
          v60 = (v57 + 8 * v59);
          v61 = *v60;
          if (DefiningOp == *v60)
          {
            goto LABEL_73;
          }
        }

        if (v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = v60;
        }

        if (v102)
        {
          a2 = 4;
        }

        else
        {
          a2 = v104;
        }

        if (4 * (v102 >> 1) + 4 < 3 * a2)
        {
          if (a2 + ~(v102 >> 1) - HIDWORD(v102) <= a2 >> 3)
          {
            goto LABEL_99;
          }
        }

        else
        {
LABEL_98:
          LODWORD(a2) = 2 * a2;
LABEL_99:
          v70 = DefiningOp;
          llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(&v102, a2);
          v63 = v102;
          if (v102)
          {
            v71 = 4;
            v72 = v97;
            goto LABEL_103;
          }

          v71 = v104;
          if (v104)
          {
            v72 = v103;
LABEL_103:
            v64 = v102 & 1;
            v73 = v71 - 1;
            v74 = (v71 - 1) & ((v70 >> 4) ^ (v70 >> 9));
            v69 = (v72 + 8 * v74);
            v75 = *v69;
            if (v70 != *v69)
            {
              v76 = 0;
              v77 = 1;
              while (v75 != -4096)
              {
                if (v76)
                {
                  v78 = 0;
                }

                else
                {
                  v78 = v75 == -8192;
                }

                if (v78)
                {
                  v76 = v69;
                }

                v79 = v74 + v77++;
                v74 = v79 & v73;
                v69 = (v72 + 8 * (v79 & v73));
                v75 = *v69;
                if (v70 == *v69)
                {
                  goto LABEL_104;
                }
              }

              if (v76)
              {
                v69 = v76;
              }
            }
          }

          else
          {
            v64 = 0;
            v69 = 0;
          }

LABEL_104:
          DefiningOp = v70;
          v9 = v97;
          v8 = v98;
          v10 = v96;
          v46 = v99;
        }

        LODWORD(v102) = (v63 & 0xFFFFFFFE | v64) + 2;
        if (*v69 != -4096)
        {
          --HIDWORD(v102);
        }

        *v69 = DefiningOp;
      }

LABEL_73:
      if (++v54 != v55)
      {
        continue;
      }

      break;
    }

    v80 = v102;
    if (v102 <= 1)
    {
      goto LABEL_127;
    }

    v81 = v10;
    v82 = v9;
    if ((v102 & 1) != 0 || (v82 = v103, v81 = (v103 + 8 * v104), v104))
    {
      v83 = v102 & 1;
      while ((*v82 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v82 = (v82 + 8);
        if (v82 == v81)
        {
          v82 = v81;
          break;
        }
      }

      v84 = v103;
      v85 = v104;
      v86 = v82;
LABEL_137:
      if (v83)
      {
        v89 = v10;
        if (v86 == v10)
        {
          goto LABEL_151;
        }

        do
        {
LABEL_145:
          v90 = *v86++;
          mlir::RewriterBase::eraseOp((this + 16), v90);
          if (v86 == v81)
          {
            v46 = v99;
          }

          else
          {
            v46 = v99;
            do
            {
              if ((*v86 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              ++v86;
            }

            while (v86 != v81);
          }
        }

        while (v86 != v89);
        LOBYTE(v80) = v102;
      }

      else
      {
        v89 = (v84 + 8 * v85);
        if (v86 != v89)
        {
          goto LABEL_145;
        }
      }
    }

LABEL_151:
    if ((v80 & 1) == 0)
    {
      llvm::deallocate_buffer(v103, (8 * v104));
    }

    v45 = 0;
    v43 = 0;
    v7 = v95;
    v47 = v107;
    if (v107 != v8)
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
    if (v110 != v7)
    {
      free(v110);
    }

    v11 = &unk_1EB28B000;
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
    v110 = this;
    v111 = &v100;
    v107 = this;
    v102 = this;
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

    v53 = mlir::PatternApplicator::matchAndRewrite(this + 192, v100, this + 16, v52, &v110, v50, &v107, v25, v51, &v102);
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

uint64_t mlir::eraseUnreachableBlocks(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v52[3] = *MEMORY[0x1E69E9840];
  v45 = v49;
  v46 = v49;
  v47 = 16;
  v48 = 0;
  v50 = v52;
  v51 = 0x100000000;
  if (a3 < 2)
  {
    v6 = 0;
    if (!a3)
    {
      v8 = 0;
      goto LABEL_74;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, a3, 8);
    v6 = v51;
  }

  v7 = 24 * a3;
  do
  {
    if (v6 >= HIDWORD(v51))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v6 + 1, 8);
      v6 = v51;
    }

    v50[v6] = a2;
    v6 = v51 + 1;
    LODWORD(v51) = v51 + 1;
    a2 += 24;
    v7 -= 24;
  }

  while (v7);
  v8 = 0;
  while (v6)
  {
    v9 = v50[--v6];
    LODWORD(v51) = v6;
    if (*v9 == v9)
    {
      continue;
    }

    v10 = v9[1];
    if (v10[1] == v9)
    {
      v11 = (v10 + 3);
      for (i = v10[4]; i != v11; i = *(i + 1))
      {
        ZinIrHalH13g::~ZinIrHalH13g(i);
        v14 = *(v13 + 44);
        v15 = v14 & 0x7FFFFF;
        if ((v14 & 0x7FFFFF) != 0)
        {
          v16 = v13 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 32 * *(v13 + 40) + 64;
          v17 = v51;
          v18 = 24 * v15;
          do
          {
            if (v17 >= HIDWORD(v51))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v17 + 1, 8);
              v17 = v51;
            }

            v50[v17] = v16;
            v17 = v51 + 1;
            LODWORD(v51) = v51 + 1;
            v16 += 24;
            v18 -= 24;
          }

          while (v18);
        }
      }

      goto LABEL_10;
    }

    if (v46 != v45)
    {
      if (v47 >= 0x21 && 4 * (HIDWORD(v47) - v48) < v47)
      {
        llvm::SmallPtrSetImplBase::shrink_and_clear(&v45);
        goto LABEL_29;
      }

      memset(v46, 255, 8 * v47);
    }

    HIDWORD(v47) = 0;
    v48 = 0;
LABEL_29:
    v19 = v9[1];
    if (v19)
    {
      v20 = (v19 - 1);
    }

    else
    {
      v20 = 0;
    }

    if (v46 == v45)
    {
      v22 = HIDWORD(v47);
      if (HIDWORD(v47))
      {
        v23 = 8 * HIDWORD(v47);
        v24 = v45;
        while (*v24 != v20)
        {
          ++v24;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_42;
      }

LABEL_39:
      if (HIDWORD(v47) < v47)
      {
        ++HIDWORD(v47);
        v45[v22] = v20;
LABEL_41:
        operator new();
      }
    }

    llvm::SmallPtrSetImplBase::insert_imp_big(&v45, v20);
    if (v21)
    {
      goto LABEL_41;
    }

LABEL_42:
    v25 = v9[1];
    if (v25 != v9)
    {
      while (1)
      {
        v26 = v25[1];
        v27 = v45;
        v28 = v46;
        if (v46 != v45)
        {
          break;
        }

        v31 = HIDWORD(v47);
        if (!HIDWORD(v47))
        {
LABEL_57:
          v29 = &v46[HIDWORD(v47)];
          v30 = v46;
LABEL_58:
          if (v30 == v28)
          {
            v35 = v31;
          }

          else
          {
            v35 = v47;
          }

          if (v29 != &v30[v35])
          {
            goto LABEL_62;
          }

          goto LABEL_44;
        }

        v34 = 8 * HIDWORD(v47);
        while (*v27 != v25 - 1)
        {
          v27 += 8;
          v34 -= 8;
          if (!v34)
          {
            goto LABEL_57;
          }
        }

        if (v27 != &v46[HIDWORD(v47)])
        {
LABEL_62:
          v36 = (v25 + 3);
          for (j = v25[4]; j != v36; j = *(j + 1))
          {
            ZinIrHalH13g::~ZinIrHalH13g(j);
            v39 = *(v38 + 44);
            v40 = v39 & 0x7FFFFF;
            if ((v39 & 0x7FFFFF) != 0)
            {
              v41 = v38 + 16 * ((v39 >> 23) & 1) + ((v39 >> 21) & 0x7F8) + 32 * *(v38 + 40) + 64;
              v42 = v51;
              v43 = 24 * v40;
              do
              {
                if (v42 >= HIDWORD(v51))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v42 + 1, 8);
                  v42 = v51;
                }

                v50[v42] = v41;
                v42 = v51 + 1;
                LODWORD(v51) = v51 + 1;
                v41 += 24;
                v43 -= 24;
              }

              while (v43);
            }
          }

          goto LABEL_45;
        }

LABEL_44:
        mlir::Block::dropAllDefinedValueUses(v25 - 1);
        (*(*a1 + 24))(a1, v25 - 1);
        v8 = 1;
LABEL_45:
        v25 = v26;
        if (v26 == v9)
        {
          goto LABEL_10;
        }
      }

      v29 = llvm::SmallPtrSetImplBase::doFind(&v45, v25 - 1);
      v28 = v45;
      v30 = v46;
      v31 = HIDWORD(v47);
      if (!v29)
      {
        v32 = v47;
        if (v46 == v45)
        {
          v32 = HIDWORD(v47);
          v33 = HIDWORD(v47);
        }

        else
        {
          v33 = v47;
        }

        if (&v46[v32] != &v46[v33])
        {
          goto LABEL_62;
        }

        goto LABEL_44;
      }

      goto LABEL_58;
    }

LABEL_10:
    v6 = v51;
  }

LABEL_74:
  if (v50 != v52)
  {
    free(v50);
  }

  if (v46 != v45)
  {
    free(v46);
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
  v11 = &unk_1EB28B000;
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
        ZinIrHalH13g::~ZinIrHalH13g(v16);
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

        v22 = (*(**(v18 + 48) + 32))(*(v18 + 48), v11[350]);
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
                  v11 = &unk_1EB28B000;
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

                v11 = &unk_1EB28B000;
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
      v11 = &unk_1EB28B000;
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

uint64_t deleteDeadness(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v122[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    v7 = 0;
    v85 = &a2[3 * a3];
    while (*v5 == v5)
    {
LABEL_3:
      v5 += 3;
      if (v5 == v85)
      {
        return v7 & 1;
      }
    }

    v8 = v5[1];
    v86 = v5;
    v88 = v8 != v5 && v8[1] == v5;
    if (v8)
    {
      v9 = (v8 - 1);
    }

    else
    {
      v9 = 0;
    }

    v99 = v9;
    llvm::post_order<mlir::Block *>(&v99, &v107);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v99, &v103, &v107);
    __dst = v106;
    v105 = 0x800000000;
    v10 = v110;
    if (!v110)
    {
LABEL_17:
      llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v93, &v95, &v112);
      v96 = v98;
      v97 = 0x800000000;
      v13 = v115;
      if (!v115)
      {
LABEL_23:
        v16 = v105;
        while (1)
        {
          if (v16 == v13)
          {
            if (!v13)
            {
LABEL_106:
              if (v96 != v98)
              {
                free(v96);
              }

              v5 = v86;
              if (v94 != v93)
              {
                free(v94);
              }

              if (__dst != v106)
              {
                free(__dst);
              }

              if (v100 != v99)
              {
                free(v100);
              }

              if (v114 != &v116)
              {
                free(v114);
              }

              if (v113 != v112)
              {
                free(v113);
              }

              if (__src != &v111)
              {
                free(__src);
              }

              if (v108 != v107)
              {
                free(v108);
              }

              for (i = *(v86[1] + 8); i != v86; i = i[1])
              {
                if (i)
                {
                  v83 = (i - 1);
                }

                else
                {
                  v83 = 0;
                }

                v107 = a4;
              }

              goto LABEL_3;
            }

            v17 = v96;
            v18 = __dst;
            while (1)
            {
              v19 = *v18 == *v17 && v18[2] == v17[2];
              if (!v19 || v18[4] != v17[4])
              {
                break;
              }

              v18 += 5;
              v17 += 5;
              if (v18 == (__dst + 40 * v13))
              {
                goto LABEL_106;
              }
            }
          }

          v20 = *(__dst + 5 * v16 - 5);
          if (!v88)
          {
            mlir::Block::getTerminator(v20);
            v22 = v21;
            v87 = v7;
            v89 = v21;
            if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v21))
            {
              if (v22)
              {
                InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v22);
                v91 = v22;
                v92 = InterfaceFor;
                v24 = *(v89 + 40);
                if (v24)
                {
                  v25 = 0;
                  while (1)
                  {
                    mlir::BranchOpInterface::getSuccessorOperands(&v91, (v24 + ~v25));
                    v26 = (HIDWORD(v119) + v117);
                    if (HIDWORD(v119) + v117)
                    {
                      break;
                    }

LABEL_55:
                    if (v120 != v122)
                    {
                      free(v120);
                    }

                    if (++v25 == v24)
                    {
                      goto LABEL_57;
                    }
                  }

                  v27 = 0;
                  v28 = *(((v89 + 64 + 16 * ((*(v89 + 44) >> 23) & 1) + ((*(v89 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * (v24 + ~v25) + 24);
                  while (1)
                  {
                    v29 = v26 + ~v27;
                    v30 = *(a4 + 24);
                    if (v30)
                    {
                      v31 = *(*(v28 + 48) + 8 * v29);
                      v32 = *(a4 + 8);
                      v33 = 0x9DDFEA08EB382D69 * ((8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31));
                      v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v33 >> 47) ^ v33);
                      v35 = v30 - 1;
                      v36 = (-348639895 * ((v34 >> 47) ^ v34)) & v35;
                      v37 = *(v32 + 8 * v36);
                      if (v37 == v31)
                      {
                        goto LABEL_48;
                      }

                      v38 = 1;
                      while (v37 != -4096)
                      {
                        v39 = v36 + v38++;
                        v36 = v39 & v35;
                        v37 = *(v32 + 8 * v36);
                        if (v37 == v31)
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    mlir::MutableOperandRange::erase(&v118, v29 - v117, 1u);
LABEL_48:
                    if (++v27 == v26)
                    {
                      goto LABEL_55;
                    }
                  }
                }
              }

              else
              {
                v91 = 0;
                v92 = 0;
              }
            }

            else
            {
              v91 = 0;
              v92 = 0;
            }

LABEL_57:
            v6 = a1;
            v7 = v87;
          }

          v42 = v20[4];
          v41 = (v20 + 4);
          v40 = v42;
          if (v42 != v41)
          {
            do
            {
              while (1)
              {
                v45 = *v40;
                ZinIrHalH13g::~ZinIrHalH13g(v40);
                v47 = v46;
                v48 = *(a4 + 48);
                if (v48)
                {
                  break;
                }

LABEL_74:
                v58 = v46[9];
                if (v58)
                {
                  v59 = (v46 - 4);
                }

                else
                {
                  v59 = 0;
                }

                if (v58)
                {
                  for (j = 0; j != v58; ++j)
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v59, j);
                    while (1)
                    {
                      v62 = *NextResultAtOffset;
                      if (!*NextResultAtOffset)
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

                      *v62 = 0;
                      v62[1] = 0;
                      v62[3] = 0;
                    }
                  }
                }

                v6 = a1;
                (*(*a1 + 16))(a1, v47);
                v7 = 1;
                v40 = v45;
                if (v45 == v41)
                {
                  goto LABEL_59;
                }
              }

              v49 = *(a4 + 32);
              v50 = v48 - 1;
              v51 = ((v46 >> 4) ^ (v46 >> 9)) & v50;
              v52 = *(v49 + 8 * v51);
              if (v52 != v46)
              {
                v56 = 1;
                while (v52 != -4096)
                {
                  v57 = v51 + v56++;
                  v51 = v57 & v50;
                  v52 = *(v49 + 8 * v51);
                  if (v52 == v46)
                  {
                    goto LABEL_65;
                  }
                }

                goto LABEL_74;
              }

LABEL_65:
              v53 = v46[11];
              v54 = v53 & 0x7FFFFF;
              if ((v53 & 0x7FFFFF) != 0)
              {
                v55 = (&v46[8 * v46[10] + 16 + 4 * ((v53 >> 23) & 1)] + ((v53 >> 21) & 0x7F8));
              }

              else
              {
                v55 = 0;
                v54 = 0;
              }

              v7 |= deleteDeadness(v6, v55, v54, a4);
              v40 = v45;
            }

            while (v45 != v41);
          }

LABEL_59:
          v16 = v105 - 1;
          LODWORD(v105) = v105 - 1;
          if (v105)
          {
            v43 = __dst + 40 * v16;
            v44 = *(v43 - 3);
            if (v44 != *(v43 - 1))
            {
              while (1)
              {
                v65 = *(v43 - 4);
                *(v43 - 3) = v44 + 1;
                v66 = *(v65 + 32 * v44 + 24);
                if (v100 != v99)
                {
                  goto LABEL_88;
                }

                v68 = v102;
                if (v102)
                {
                  v69 = 8 * v102;
                  v70 = v99;
                  while (*v70 != v66)
                  {
                    v70 = (v70 + 8);
                    v69 -= 8;
                    if (!v69)
                    {
                      goto LABEL_94;
                    }
                  }

                  goto LABEL_99;
                }

LABEL_94:
                if (v102 < v101)
                {
                  ++v102;
                  *(v99 + v68) = v66;
LABEL_96:
                  v71 = mlir::SuccessorRange::SuccessorRange(&v117, v66);
                  v72 = v117;
                  mlir::SuccessorRange::SuccessorRange(v71, v66);
                  v74 = v117;
                  v73 = v118;
                  if (v105 >= HIDWORD(v105))
                  {
                    v117 = v66;
                    v118 = v72;
                    v119 = 0;
                    v120 = v74;
                    v121 = v73;
                    if (__dst <= &v117 && __dst + 40 * v105 > &v117)
                    {
                      v81 = &v117 - __dst;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v106, v105 + 1, 40);
                      v77 = __dst;
                      v76 = (__dst + v81);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v106, v105 + 1, 40);
                      v76 = &v117;
                      v77 = __dst;
                    }

                    v78 = &v77[40 * v105];
                    v79 = *v76;
                    v80 = *(v76 + 1);
                    *(v78 + 4) = v76[4];
                    *v78 = v79;
                    *(v78 + 1) = v80;
                  }

                  else
                  {
                    v75 = (__dst + 40 * v105);
                    *v75 = v66;
                    v75[1] = v72;
                    v75[2] = 0;
                    v75[3] = v74;
                    v75[4] = v73;
                  }

                  v16 = v105 + 1;
                  LODWORD(v105) = v105 + 1;
LABEL_99:
                  v43 = __dst + 40 * v16;
                  v44 = *(v43 - 3);
                  if (v44 == *(v43 - 1))
                  {
                    break;
                  }
                }

                else
                {
LABEL_88:
                  llvm::SmallPtrSetImplBase::insert_imp_big(&v99, v66);
                  if (v67)
                  {
                    goto LABEL_96;
                  }

                  v16 = v105;
                  v43 = __dst + 40 * v105;
                  v44 = *(v43 - 3);
                  if (v44 == *(v43 - 1))
                  {
                    break;
                  }
                }
              }
            }
          }

          v13 = v97;
        }
      }

      v14 = v98;
      v15 = v115;
      if (v115 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v98, v115, 40);
        v15 = v115;
        if (!v115)
        {
LABEL_22:
          LODWORD(v97) = v13;
          goto LABEL_23;
        }

        v14 = v96;
      }

      memcpy(v14, v114, 40 * v15);
      goto LABEL_22;
    }

    v11 = v106;
    v12 = v110;
    if (v110 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v106, v110, 40);
      v12 = v110;
      if (!v110)
      {
LABEL_16:
        LODWORD(v105) = v10;
        goto LABEL_17;
      }

      v11 = __dst;
    }

    memcpy(v11, __src, 40 * v12);
    goto LABEL_16;
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

void mlir::simplifyRegions(uint64_t a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  mlir::eraseUnreachableBlocks(a1, a2, a3);
  v8[1] = 0;
  v8[2] = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a3)
  {
    do
    {
      LOBYTE(v8[0]) = 0;
      v6 = 24 * a3;
      v7 = a2;
      do
      {
        propagateLiveness(v7, v8);
        v7 += 3;
        v6 -= 24;
      }

      while (v6);
    }

    while ((v8[0] & 1) != 0);
  }

  else
  {
    LOBYTE(v8[0]) = 0;
  }

  deleteDeadness(a1, a2, a3, v8);
  llvm::deallocate_buffer(v10, (8 * v12));
}

void mergeIdenticalBlocks(uint64_t a1, char *a2, uint64_t a3)
{
  v328 = *MEMORY[0x1E69E9840];
  v311 = 0;
  *v310 = 0u;
  v312 = &v314;
  v313 = 0x100000000;
  if (a3)
  {
    v4 = 24 * a3;
    do
    {
      v326[0] = a2;
      llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::insert(v310, v326);
      a2 += 24;
      v4 -= 24;
    }

    while (v4);
    v5 = v313;
    if (v313)
    {
      v305 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      while (1)
      {
        v6 = *(v312 + v5 - 1);
        if (v311)
        {
          v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v311 - 1);
          v8 = *(v310[0] + v7);
          if (v6 == v8)
          {
LABEL_9:
            *(v310[0] + v7) = -8192;
            v310[1] = vadd_s32(v310[1], 0x1FFFFFFFFLL);
          }

          else
          {
            v296 = 1;
            while (v8 != -4096)
            {
              v297 = v7 + v296++;
              v7 = v297 & (v311 - 1);
              v8 = *(v310[0] + v7);
              if (v6 == v8)
              {
                goto LABEL_9;
              }
            }
          }
        }

        LODWORD(v313) = v5 - 1;
        v306 = v6;
        if (*v6 != v6)
        {
          v9 = v6[1];
          if (v9 == v6 || v9[1] != v6)
          {
            v309 = 0;
            v307 = 0;
            v308 = 0;
            v10 = v9[1];
            if (v10 == v6)
            {
              llvm::deallocate_buffer(0, 0);
            }

            while (1)
            {
              if (v10)
              {
                v14 = (v10 - 1);
              }

              else
              {
                v14 = 0;
              }

              mlir::SuccessorRange::SuccessorRange(v326, v14);
              NextResultAtOffset = 0;
              v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v307, v326, &NextResultAtOffset);
              v16 = NextResultAtOffset;
              if (v15)
              {
                v11 = *(NextResultAtOffset + 6);
                v13 = NextResultAtOffset + 24;
                v12 = NextResultAtOffset + 16;
                if (v11 >= *(NextResultAtOffset + 7))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(NextResultAtOffset + 16, NextResultAtOffset + 32, v11 + 1, 8);
                  v11 = v16[6];
                }

                goto LABEL_16;
              }

              *&v320 = NextResultAtOffset;
              v17 = v309;
              if (4 * v308 + 4 >= 3 * v309)
              {
                break;
              }

              if (v309 + ~v308 - HIDWORD(v308) <= v309 >> 3)
              {
                goto LABEL_28;
              }

              LODWORD(v308) = v308 + 1;
              if (*NextResultAtOffset != -4096)
              {
                goto LABEL_26;
              }

LABEL_15:
              v11 = 0;
              *v16 = *v326;
              *(v16 + 2) = v16 + 8;
              v12 = v16 + 4;
              *(v16 + 3) = 0x100000000;
              v13 = v16 + 6;
LABEL_16:
              *(*v12 + 8 * v11) = v14;
              ++*v13;
              v10 = v10[1];
              if (v10 == v6)
              {
                v18 = v307;
                v19 = v309;
                if (!v308)
                {
                  goto LABEL_290;
                }

                v20 = v307;
                if (v309)
                {
                  v21 = 40 * v309;
                  v20 = v307;
                  while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v20 = (v20 + 40);
                    v21 -= 40;
                    if (!v21)
                    {
                      goto LABEL_290;
                    }
                  }
                }

                v22 = (v307 + 40 * v309);
                if (v20 == v22)
                {
LABEL_290:
                  if (!v309)
                  {
                    goto LABEL_468;
                  }

                  goto LABEL_291;
                }

                while (1)
                {
                  v23 = *(v20 + 6);
                  if (v23 != 1)
                  {
                    v24 = *(v20 + 2);
                    v315 = v317;
                    v316 = 0x100000000;
                    if (v23)
                    {
                      break;
                    }
                  }

                  do
                  {
                    v20 = (v20 + 40);
                    if (v20 == v22)
                    {
                      goto LABEL_467;
                    }
                  }

                  while ((*v20 | 0x1000) == 0xFFFFFFFFFFFFF000);
                  if (v20 == v22)
                  {
LABEL_467:
                    v19 = v309;
                    v18 = v307;
                    if (!v309)
                    {
LABEL_468:
                      llvm::deallocate_buffer(v18, 0);
                    }

LABEL_291:
                    v188 = v18 + 32;
                    v189 = 40 * v19;
                    while (1)
                    {
                      if ((*(v188 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
                      {
                        v190 = *(v188 - 2);
                        if (v188 != v190)
                        {
                          free(v190);
                        }
                      }

                      v188 += 40;
                      v189 -= 40;
                      if (!v189)
                      {
                        llvm::deallocate_buffer(v307, (40 * v309));
                      }
                    }
                  }
                }

                v320 = *v24;
                v30 = v320;
                v321 = 0;
                v322 = 0;
                v323 = 0;
                v31 = v320 + 32;
                v32 = *(v320 + 40);
                if (v32 == (v320 + 32))
                {
                  goto LABEL_89;
                }

                v33 = (*(v320 + 56) - *(v320 + 48)) >> 3;
                while (2)
                {
                  ZinIrHalH13g::~ZinIrHalH13g(v32);
                  v40 = *(v39 + 36);
                  if (v40)
                  {
                    if (!v323)
                    {
                      goto LABEL_69;
                    }

                    v34 = (v323 - 1) & ((v39 >> 4) ^ (v39 >> 9));
                    v35 = v321 + 16 * v34;
                    v36 = *v35;
                    if (v39 == *v35)
                    {
LABEL_47:
                      LODWORD(v33) = v40 + v33;
                      goto LABEL_48;
                    }

                    v41 = 0;
                    v42 = 1;
                    while (v36 != -4096)
                    {
                      if (v41)
                      {
                        v43 = 0;
                      }

                      else
                      {
                        v43 = v36 == -8192;
                      }

                      if (v43)
                      {
                        v41 = v35;
                      }

                      v44 = v34 + v42++;
                      v34 = v44 & (v323 - 1);
                      v35 = v321 + 16 * v34;
                      v36 = *v35;
                      if (v39 == *v35)
                      {
                        goto LABEL_47;
                      }
                    }

                    if (v41)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = v35;
                    }

                    if (4 * v322 + 4 < 3 * v323)
                    {
                      if (v323 + ~v322 - HIDWORD(v322) > v323 >> 3)
                      {
                        LODWORD(v322) = v322 + 1;
                        if (*v45 == -4096)
                        {
                          goto LABEL_55;
                        }

                        goto LABEL_54;
                      }

                      v46 = v39;
                      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v321, v323);
                      v47 = v323;
                      if (v323)
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
LABEL_69:
                      v46 = v39;
                      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(&v321, 2 * v323);
                      v47 = v323;
                      if (v323)
                      {
LABEL_70:
                        v39 = v46;
                        v48 = v47 - 1;
                        v49 = (v47 - 1) & ((v46 >> 4) ^ (v46 >> 9));
                        v45 = v321 + 16 * v49;
                        v50 = *v45;
                        if (v46 != *v45)
                        {
                          v51 = 0;
                          v52 = 1;
                          while (v50 != -4096)
                          {
                            if (v51)
                            {
                              v53 = 0;
                            }

                            else
                            {
                              v53 = v50 == -8192;
                            }

                            if (v53)
                            {
                              v51 = v45;
                            }

                            v54 = v49 + v52++;
                            v49 = v54 & v48;
                            v45 = v321 + 16 * (v54 & v48);
                            v50 = *v45;
                            if (v46 == *v45)
                            {
                              goto LABEL_82;
                            }
                          }

                          if (v51)
                          {
                            v45 = v51;
                          }
                        }

LABEL_82:
                        LODWORD(v322) = v322 + 1;
                        if (*v45 == -4096)
                        {
LABEL_55:
                          *v45 = v39;
                          *(v45 + 2) = v33;
                          goto LABEL_47;
                        }

LABEL_54:
                        --HIDWORD(v322);
                        goto LABEL_55;
                      }
                    }

                    v45 = 0;
                    v39 = v46;
                    goto LABEL_82;
                  }

LABEL_48:
                  v37 = mlir::OperationEquivalence::computeHash(v39, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
                  v38 = __ROR8__(v37 + 16, 16);
                  *(&v320 + 1) = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (*(&v320 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v38)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v320 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v38)))) ^ ((0x9DDFEA08EB382D69 * (v38 ^ ((0x9DDFEA08EB382D69 * (*(&v320 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v38)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(&v320 + 1) ^ 0xFF51AFD7ED558CCDLL ^ v38)))) >> 47))) ^ v37;
                  v32 = *(v32 + 1);
                  if (v32 != v31)
                  {
                    continue;
                  }

                  break;
                }

                v32 = *(v30 + 5);
LABEL_89:
                while (v32 != v31)
                {
                  ZinIrHalH13g::~ZinIrHalH13g(v32);
                  v56 = *(v55 + 44);
                  v57 = v56 & 0x7FFFFF;
                  if ((v56 & 0x7FFFFF) != 0)
                  {
                    v58 = (v55 + 16 * ((v56 >> 23) & 1) + ((v56 >> 21) & 0x7F8) + 32 * *(v55 + 40) + 64);
                    v59 = 24 * v57;
                    while (v58 == *v58)
                    {
                      v58 += 3;
                      v59 -= 24;
                      if (!v59)
                      {
                        goto LABEL_88;
                      }
                    }

                    goto LABEL_43;
                  }

LABEL_88:
                  v32 = *(v32 + 1);
                }

                v61 = *(v30 + 6);
                for (i = *(v30 + 7); v61 != i; v61 = (v61 + 8))
                {
                  if (mlir::Value::isUsedOutsideOfBlock(v61, v30))
                  {
                    goto LABEL_43;
                  }
                }

                if (!v316)
                {
                  v25 = 0;
                  if (HIDWORD(v316))
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_271;
                }

                v62 = v315;
                v63 = v315 + 112 * v316;
                v302 = v63;
LABEL_102:
                if (*(v62 + 1) != *(&v320 + 1))
                {
                  goto LABEL_101;
                }

                v64 = *v62;
                v65 = v320;
                ArgumentTypes = mlir::Block::getArgumentTypes(*v62);
                v68 = v67;
                v69 = mlir::Block::getArgumentTypes(v65);
                if (v68 - ArgumentTypes != v70 - v69)
                {
                  goto LABEL_101;
                }

                for (; ArgumentTypes != v68; v69 += 8)
                {
                  if ((*(*v69 + 8) ^ *(*ArgumentTypes + 8)) > 7)
                  {
                    goto LABEL_101;
                  }

                  ArgumentTypes += 8;
                }

                v326[0] = &v327;
                v326[1] = 0x800000000;
                v71 = *(v64 + 5);
                v72 = *(v320 + 40);
                v73 = v320 + 32;
                if (v71 != (v64 + 32))
                {
                  v303 = 0;
                  v300 = v320 + 32;
                  do
                  {
                    if (v72 == v73)
                    {
                      goto LABEL_186;
                    }

                    ZinIrHalH13g::~ZinIrHalH13g(v71);
                    v75 = v74;
                    ZinIrHalH13g::~ZinIrHalH13g(v72);
                    if (!mlir::OperationEquivalence::isEquivalentTo(v75, v76, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v77, 1, v78, 0, v299))
                    {
                      goto LABEL_186;
                    }

                    ZinIrHalH13g::~ZinIrHalH13g(v71);
                    if ((*(v79 + 46) & 0x80) != 0)
                    {
                      v304 = *(v79 + 72);
                      ZinIrHalH13g::~ZinIrHalH13g(v72);
                      v301 = v72;
                      if ((*(v80 + 46) & 0x80) != 0)
                      {
                        goto LABEL_113;
                      }
                    }

                    else
                    {
                      v304 = 0;
                      ZinIrHalH13g::~ZinIrHalH13g(v72);
                      v301 = v72;
                      if ((*(v80 + 46) & 0x80) != 0)
                      {
LABEL_113:
                        v81 = *(v80 + 72);
                        ZinIrHalH13g::~ZinIrHalH13g(v71);
                        if ((*(v82 + 46) & 0x80) == 0)
                        {
                          goto LABEL_170;
                        }

                        goto LABEL_114;
                      }
                    }

                    v81 = 0;
                    ZinIrHalH13g::~ZinIrHalH13g(v71);
                    if ((*(v82 + 46) & 0x80) == 0)
                    {
                      goto LABEL_170;
                    }

LABEL_114:
                    v83 = *(v82 + 68);
                    if (v83)
                    {
                      v84 = 0;
                      while (1)
                      {
                        v85 = 32 * v84;
                        v86 = *(v304 + v85 + 24);
                        v325 = v86;
                        v87 = *(v81 + v85 + 24);
                        v324 = v87;
                        if (v86 == v87)
                        {
                          goto LABEL_117;
                        }

                        if ((v87[1] ^ v86[1]) > 7)
                        {
                          goto LABEL_186;
                        }

                        ParentBlock = mlir::Value::getParentBlock(&v325);
                        if ((ParentBlock == v64) == (mlir::Value::getParentBlock(&v324) != v65))
                        {
                          goto LABEL_186;
                        }

                        if (ParentBlock == v64)
                        {
                          break;
                        }

                        NextResultAtOffset = v325;
                        DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v90 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        mlir::Block::getTerminator(v90);
                        if (DefiningOp == v91)
                        {
                          v99 = *v64;
                          v100 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v99)
                          {
                            v101 = v100;
                            while (mlir::PredecessorIterator::unwrap(v99) != v101)
                            {
                              v99 = *v99;
                              if (!v99)
                              {
                                goto LABEL_123;
                              }
                            }

LABEL_186:
                            v127 = 0;
LABEL_187:
                            if (v326[0] != &v327)
                            {
                              free(v326[0]);
                            }

                            v63 = v302;
                            if ((v127 & 1) == 0)
                            {
LABEL_101:
                              v62 += 112;
                              if (v62 != v63)
                              {
                                goto LABEL_102;
                              }

                              v25 = v316;
                              if (v316 < HIDWORD(v316))
                              {
LABEL_41:
                                v26 = v315 + 112 * v25;
                                *v26 = v320;
                                *(v26 + 8) = 0;
                                *(v26 + 2) = 0;
                                *(v26 + 3) = 0;
                                *(v26 + 2) = v321;
                                v321 = 0;
                                *(v26 + 6) = v322;
                                LODWORD(v322) = 0;
                                v27 = *(v26 + 7);
                                *(v26 + 7) = HIDWORD(v322);
                                HIDWORD(v322) = v27;
                                v28 = *(v26 + 8);
                                *(v26 + 8) = v323;
                                v323 = v28;
                                *(v26 + 12) = 0;
                                v26 += 96;
                                *(v26 - 7) = 0;
                                *(v26 - 6) = 0;
                                *(v26 - 10) = 0;
                                *(v26 - 4) = v26 - 16;
                                *(v26 - 3) = 0x100000000;
                                *(v26 + 1) = 0;
                                *(v26 - 1) = v26;
                                v29 = v316 + 1;
                                goto LABEL_42;
                              }

LABEL_271:
                              v326[0] = 0;
                              v168 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v315, v317, 0, 112, v326);
                              v169 = &v168[112 * v316];
                              *v169 = v320;
                              *(v169 + 8) = 0;
                              *(v169 + 2) = 0;
                              *(v169 + 3) = 0;
                              *(v169 + 2) = v321;
                              v321 = 0;
                              *(v169 + 6) = v322;
                              LODWORD(v322) = 0;
                              v170 = *(v169 + 7);
                              *(v169 + 7) = HIDWORD(v322);
                              HIDWORD(v322) = v170;
                              v171 = *(v169 + 8);
                              *(v169 + 8) = v323;
                              v323 = v171;
                              *(v169 + 12) = 0;
                              v169 += 96;
                              *(v169 - 7) = 0;
                              *(v169 - 6) = 0;
                              *(v169 - 10) = 0;
                              *(v169 - 4) = v169 - 16;
                              *(v169 - 3) = 0x100000000;
                              *(v169 + 1) = 0;
                              *(v169 - 1) = v169;
                              v172 = v315;
                              if (v316)
                              {
                                v173 = 0;
                                v174 = 112 * v316;
                                do
                                {
                                  while (1)
                                  {
                                    v175 = &v172[v173];
                                    v176 = &v168[v173];
                                    *v176 = *&v172[v173];
                                    *(v176 + 8) = 0;
                                    *(v176 + 2) = 0;
                                    *(v176 + 3) = 0;
                                    *(v176 + 2) = *&v172[v173 + 16];
                                    *(v175 + 2) = 0;
                                    *(v176 + 6) = *&v172[v173 + 24];
                                    *(v175 + 6) = 0;
                                    v177 = *&v168[v173 + 28];
                                    *(v176 + 7) = *&v172[v173 + 28];
                                    *(v175 + 7) = v177;
                                    v178 = *&v168[v173 + 32];
                                    *(v176 + 8) = *&v172[v173 + 32];
                                    *(v175 + 8) = v178;
                                    *(v176 + 5) = 0;
                                    *(v176 + 6) = 0;
                                    *(v176 + 14) = 0;
                                    *(v176 + 5) = *&v172[v173 + 40];
                                    *(v175 + 5) = 0;
                                    *(v176 + 12) = *&v172[v173 + 48];
                                    *(v175 + 12) = 0;
                                    v179 = *&v168[v173 + 52];
                                    *(v176 + 13) = *&v172[v173 + 52];
                                    *(v175 + 13) = v179;
                                    v180 = *&v168[v173 + 56];
                                    *(v176 + 14) = *&v172[v173 + 56];
                                    *(v175 + 14) = v180;
                                    *&v168[v173 + 64] = &v168[v173 + 80];
                                    *&v168[v173 + 72] = 0x100000000;
                                    if (*&v172[v173 + 72])
                                    {
                                      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&v168[v173 + 64], v175 + 8);
                                    }

                                    *(v176 + 11) = *(v175 + 11);
                                    v181 = v175 + 96;
                                    v182 = *(v175 + 12);
                                    *(v176 + 12) = v182;
                                    v183 = v176 + 96;
                                    v184 = *(v175 + 13);
                                    *(v176 + 13) = v184;
                                    if (v184)
                                    {
                                      break;
                                    }

                                    *(v176 + 11) = v183;
                                    v173 += 112;
                                    if (v174 == v173)
                                    {
                                      goto LABEL_278;
                                    }
                                  }

                                  *(v182 + 16) = v183;
                                  *(v175 + 11) = v181;
                                  *v181 = 0;
                                  *(v175 + 13) = 0;
                                  v173 += 112;
                                }

                                while (v174 != v173);
LABEL_278:
                                v172 = v315;
                                if (v316)
                                {
                                  v185 = v315 + 112 * v316;
                                  std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy((v185 - 24), *(v185 - 2));
                                  v186 = *(v185 - 6);
                                  if (v185 - 32 != v186)
                                  {
                                    free(v186);
                                  }

                                  llvm::deallocate_buffer(*(v185 - 9), (8 * *(v185 - 14)));
                                }
                              }

                              v187 = v326[0];
                              if (v172 != v317)
                              {
                                free(v172);
                              }

                              v315 = v168;
                              v29 = v316 + 1;
                              HIDWORD(v316) = v187;
LABEL_42:
                              LODWORD(v316) = v29;
                            }

LABEL_43:
                            llvm::deallocate_buffer(v321, (16 * v323));
                          }
                        }

LABEL_123:
                        NextResultAtOffset = v324;
                        v92 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                        v93 = mlir::Value::getParentBlock(&NextResultAtOffset);
                        mlir::Block::getTerminator(v93);
                        if (v92 == v94)
                        {
                          v102 = *v65;
                          v103 = mlir::Value::getParentBlock(&NextResultAtOffset);
                          if (v102)
                          {
                            v104 = v103;
                            while (mlir::PredecessorIterator::unwrap(v102) != v104)
                            {
                              v102 = *v102;
                              if (!v102)
                              {
                                goto LABEL_124;
                              }
                            }

                            goto LABEL_186;
                          }
                        }

LABEL_124:
                        v95 = v326[1];
                        if (LODWORD(v326[1]) >= HIDWORD(v326[1]))
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(v326, &v327, LODWORD(v326[1]) + 1, 8);
                          *(v326[0] + LODWORD(v326[1])) = (v84 << 32) | v303;
                          v95 = v326[1];
                        }

                        else
                        {
                          v96 = v326[0] + 8 * LODWORD(v326[1]);
                          *v96 = v303;
                          v96[1] = v84;
                        }

                        LODWORD(v326[1]) = v95 + 1;
LABEL_117:
                        if (++v84 == v83)
                        {
                          goto LABEL_170;
                        }
                      }

                      if (v325 && (*(v325 + 1) & 7) == 7)
                      {
                        v97 = *(v325 + 6);
                        v98 = v324;
                        if (!v324)
                        {
                          goto LABEL_156;
                        }

LABEL_153:
                        if ((*(v98 + 1) & 7) == 7)
                        {
                          if (v97 != v98[6])
                          {
                            goto LABEL_186;
                          }

                          goto LABEL_117;
                        }

                        goto LABEL_156;
                      }

                      NextResultAtOffset = v325;
                      v105 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      v106 = *(v62 + 2);
                      v107 = *(v62 + 8);
                      if (v107)
                      {
                        v108 = ((v105 >> 4) ^ (v105 >> 9)) & (v107 - 1);
                        v109 = *(v106 + 16 * v108);
                        if (v109 != v105)
                        {
                          v110 = 1;
                          while (v109 != -4096)
                          {
                            v111 = v108 + v110++;
                            v108 = v111 & (v107 - 1);
                            v109 = *(v106 + 16 * v108);
                            if (v109 == v105)
                            {
                              goto LABEL_148;
                            }
                          }

                          goto LABEL_147;
                        }
                      }

                      else
                      {
LABEL_147:
                        v108 = *(v62 + 8);
                      }

LABEL_148:
                      v112 = *(v106 + 16 * v108 + 8);
                      if (!NextResultAtOffset || (*(NextResultAtOffset + 1) & 7) != 6)
                      {
                        v97 = (*(NextResultAtOffset + 1) & 7) + v112;
                        v98 = v324;
                        if (!v324)
                        {
                          goto LABEL_156;
                        }

                        goto LABEL_153;
                      }

                      v97 = *(NextResultAtOffset + 4) + 6 + v112;
                      v98 = v324;
                      if (v324)
                      {
                        goto LABEL_153;
                      }

LABEL_156:
                      NextResultAtOffset = v98;
                      v113 = mlir::Value::getDefiningOp(&NextResultAtOffset);
                      if (v323)
                      {
                        v114 = ((v113 >> 4) ^ (v113 >> 9)) & (v323 - 1);
                        v115 = *(v321 + 2 * v114);
                        if (v115 != v113)
                        {
                          v116 = 1;
                          while (v115 != -4096)
                          {
                            v117 = v114 + v116++;
                            v114 = v117 & (v323 - 1);
                            v115 = *(v321 + 2 * v114);
                            if (v115 == v113)
                            {
                              goto LABEL_163;
                            }
                          }

                          goto LABEL_162;
                        }
                      }

                      else
                      {
LABEL_162:
                        v114 = v323;
                      }

LABEL_163:
                      v118 = *(v321 + 4 * v114 + 2);
                      if (NextResultAtOffset && (*(NextResultAtOffset + 1) & 7) == 6)
                      {
                        if (v97 != *(NextResultAtOffset + 4) + 6 + v118)
                        {
                          goto LABEL_186;
                        }
                      }

                      else if (v97 != (*(NextResultAtOffset + 1) & 7) + v118)
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_117;
                    }

LABEL_170:
                    ZinIrHalH13g::~ZinIrHalH13g(v301);
                    v120 = *(v119 + 36);
                    if (v120)
                    {
                      v121 = v119 - 16;
                    }

                    else
                    {
                      v121 = 0;
                    }

                    if (v120)
                    {
                      v122 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v121, v122);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v65))
                        {
                          goto LABEL_186;
                        }
                      }

                      while (v120 != ++v122);
                    }

                    ZinIrHalH13g::~ZinIrHalH13g(v71);
                    v124 = *(v123 + 36);
                    if (v124)
                    {
                      v125 = v123 - 16;
                    }

                    else
                    {
                      v125 = 0;
                    }

                    if (v124)
                    {
                      v126 = 0;
                      do
                      {
                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v125, v126);
                        if (mlir::Value::isUsedOutsideOfBlock(&NextResultAtOffset, v64))
                        {
                          goto LABEL_186;
                        }
                      }

                      while (v124 != ++v126);
                    }

                    v71 = *(v71 + 1);
                    v72 = *(v301 + 1);
                    ++v303;
                    v73 = v300;
                  }

                  while (v71 != (v64 + 32));
                }

                if (v72 != v73)
                {
                  goto LABEL_186;
                }

                if (LODWORD(v326[1]))
                {
                  v128 = v326[0];
                  while (1)
                  {
                    v129 = *(v62 + 12);
                    v130 = v62 + 96;
                    if (*(v62 + 11) != v62 + 96)
                    {
                      v131 = *(v62 + 12);
                      v132 = v62 + 96;
                      if (v129)
                      {
                        do
                        {
                          v130 = v131;
                          v131 = *(v131 + 1);
                        }

                        while (v131);
                      }

                      else
                      {
                        do
                        {
                          v130 = *(v132 + 2);
                          v43 = *v130 == v132;
                          v132 = v130;
                        }

                        while (v43);
                      }

                      v133 = *(v130 + 7);
                      v134 = *v128;
                      if (v133 >= *v128 && (v134 < v133 || *(v130 + 8) >= v128[1]))
                      {
                        break;
                      }
                    }

                    if (v129)
                    {
                      v135 = v130 + 8;
                    }

                    else
                    {
                      v135 = v62 + 96;
                    }

                    if (!*v135)
                    {
                      goto LABEL_213;
                    }

LABEL_191:
                    v128 += 2;
                    if (v128 == (v326[0] + 8 * LODWORD(v326[1])))
                    {
                      goto LABEL_214;
                    }
                  }

                  if (!v129)
                  {
LABEL_213:
                    operator new();
                  }

                  v136 = v128[1];
                  while (2)
                  {
                    while (1)
                    {
                      v137 = v129;
                      v138 = *(v129 + 7);
                      if (v134 < v138)
                      {
                        break;
                      }

                      if (v138 >= v134)
                      {
                        v139 = *(v137 + 8);
                        if (v136 < v139)
                        {
                          break;
                        }

                        if (v139 >= v136)
                        {
                          goto LABEL_191;
                        }
                      }

                      v129 = v137[1];
                      if (!v129)
                      {
                        goto LABEL_213;
                      }
                    }

                    v129 = *v137;
                    if (!*v137)
                    {
                      goto LABEL_213;
                    }

                    continue;
                  }
                }

LABEL_214:
                if (*(v62 + 12))
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v62 + 5, &v320, &NextResultAtOffset);
                  if (v319 == 1)
                  {
                    v140 = v320;
                    v141 = *(v62 + 18);
                    if (v141 >= *(v62 + 19))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod((v62 + 64), v62 + 80, v141 + 1, 8);
                      v141 = *(v62 + 18);
                    }

                    *(*(v62 + 8) + 8 * v141) = v140;
                    ++*(v62 + 18);
                  }

                  goto LABEL_266;
                }

                v142 = *(v62 + 8);
                v143 = *(v62 + 18);
                v144 = v142;
                if (v143)
                {
                  v145 = v320;
                  v146 = 8 * v143;
                  v144 = *(v62 + 8);
                  do
                  {
                    if (*v144 == v320)
                    {
                      goto LABEL_265;
                    }

                    ++v144;
                    v146 -= 8;
                  }

                  while (v146);
                  if (v143 < *(v62 + 19))
                  {
LABEL_224:
                    v142[v143] = v145;
                    v147 = *(v62 + 18) + 1;
                    *(v62 + 18) = v147;
                    if (v147 >= 2)
                    {
                      goto LABEL_225;
                    }

LABEL_266:
                    v127 = 1;
                    goto LABEL_187;
                  }
                }

                else
                {
LABEL_265:
                  if (v144 != &v142[v143])
                  {
                    goto LABEL_266;
                  }

                  v145 = v320;
                  if (v143 < *(v62 + 19))
                  {
                    goto LABEL_224;
                  }
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod((v62 + 64), v62 + 80, v143 + 1, 8);
                *(*(v62 + 8) + 8 * *(v62 + 18)) = v145;
                v147 = *(v62 + 18) + 1;
                *(v62 + 18) = v147;
                if (v147 < 2)
                {
                  goto LABEL_266;
                }

LABEL_225:
                v148 = *(v62 + 8);
                v149 = &v148[v147];
                v150 = *(v62 + 5);
                v151 = *(v62 + 14);
                while (2)
                {
                  if (!v151)
                  {
LABEL_247:
                    v151 *= 2;
                    goto LABEL_248;
                  }

                  v152 = ((*v148 >> 4) ^ (*v148 >> 9)) & (v151 - 1);
                  v153 = (v150 + 8 * v152);
                  v154 = *v153;
                  if (*v148 == *v153)
                  {
LABEL_227:
                    ++v148;
                    v127 = 1;
                    if (v148 == v149)
                    {
                      goto LABEL_187;
                    }

                    continue;
                  }

                  break;
                }

                v155 = 0;
                v156 = 1;
                while (v154 != -4096)
                {
                  if (v155)
                  {
                    v157 = 0;
                  }

                  else
                  {
                    v157 = v154 == -8192;
                  }

                  if (v157)
                  {
                    v155 = v153;
                  }

                  v158 = v152 + v156++;
                  v152 = v158 & (v151 - 1);
                  v153 = (v150 + 8 * v152);
                  v154 = *v153;
                  if (*v148 == *v153)
                  {
                    goto LABEL_227;
                  }
                }

                if (v155)
                {
                  v159 = v155;
                }

                else
                {
                  v159 = v153;
                }

                v160 = *(v62 + 12);
                if (4 * v160 + 4 >= 3 * v151)
                {
                  goto LABEL_247;
                }

                if (v151 + ~v160 - *(v62 + 13) <= v151 >> 3)
                {
LABEL_248:
                  llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow((v62 + 40), v151);
                  v150 = *(v62 + 5);
                  v151 = *(v62 + 14);
                  if (v151)
                  {
                    v161 = v151 - 1;
                    v162 = ((*v148 >> 4) ^ (*v148 >> 9)) & (v151 - 1);
                    v159 = (v150 + 8 * v162);
                    v163 = *v159;
                    if (*v148 != *v159)
                    {
                      v164 = 0;
                      v165 = 1;
                      while (v163 != -4096)
                      {
                        if (v164)
                        {
                          v166 = 0;
                        }

                        else
                        {
                          v166 = v163 == -8192;
                        }

                        if (v166)
                        {
                          v164 = v159;
                        }

                        v167 = v162 + v165++;
                        v162 = v167 & v161;
                        v159 = (v150 + 8 * (v167 & v161));
                        v163 = *v159;
                        if (*v148 == *v159)
                        {
                          goto LABEL_260;
                        }
                      }

                      if (v164)
                      {
                        v159 = v164;
                      }
                    }
                  }

                  else
                  {
                    v159 = 0;
                  }

LABEL_260:
                  ++*(v62 + 12);
                  if (*v159 != -4096)
                  {
LABEL_232:
                    --*(v62 + 13);
                  }
                }

                else
                {
                  *(v62 + 12) = v160 + 1;
                  if (*v159 != -4096)
                  {
                    goto LABEL_232;
                  }
                }

                *v159 = *v148;
                goto LABEL_227;
              }
            }

            v17 = 2 * v309;
LABEL_28:
            llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(&v307, v17);
            llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(&v307, v326, &v320);
            v16 = v320;
            LODWORD(v308) = v308 + 1;
            if (*v320 == -4096)
            {
              goto LABEL_15;
            }

LABEL_26:
            --HIDWORD(v308);
            goto LABEL_15;
          }
        }

        v191 = v6[1];
        if (v191 != v6)
        {
          break;
        }

LABEL_6:
        v5 = v313;
        if (!v313)
        {
          goto LABEL_473;
        }
      }

      while (1)
      {
        v192 = v191 - 1;
        if (!v191)
        {
          v192 = 0;
        }

        v193 = (v192 + 4);
        for (j = v192[5]; j != v193; j = *(j + 1))
        {
          ZinIrHalH13g::~ZinIrHalH13g(j);
          v196 = *(v195 + 44);
          if ((v196 & 0x7FFFFF) != 0)
          {
            v197 = v195 + 16 * ((v196 >> 23) & 1) + ((v196 >> 21) & 0x7F8) + 32 * *(v195 + 40) + 64;
            v198 = v197 + 24 * (v196 & 0x7FFFFF);
            do
            {
              if (LODWORD(v310[1]))
              {
                v202 = v310[0];
                v203 = v311;
                if (!v311)
                {
                  v204 = 0;
                  if (4 * LODWORD(v310[1]) + 4 < 3 * v311)
                  {
                    goto LABEL_312;
                  }

                  goto LABEL_413;
                }

                v199 = (v311 - 1) & ((v197 >> 4) ^ (v197 >> 9));
                v200 = (v310[0] + 8 * v199);
                v201 = *v200;
                if (v197 != *v200)
                {
                  v257 = 0;
                  v258 = 1;
                  while (v201 != -4096)
                  {
                    if (v257)
                    {
                      v259 = 0;
                    }

                    else
                    {
                      v259 = v201 == -8192;
                    }

                    if (v259)
                    {
                      v257 = v200;
                    }

                    v260 = v199 + v258++;
                    v199 = v260 & (v311 - 1);
                    v200 = (v310[0] + 8 * v199);
                    v201 = *v200;
                    if (v197 == *v200)
                    {
                      goto LABEL_308;
                    }
                  }

                  if (v257)
                  {
                    v204 = v257;
                  }

                  else
                  {
                    v204 = v200;
                  }

                  if (4 * LODWORD(v310[1]) + 4 < 3 * v311)
                  {
LABEL_312:
                    v205 = v311;
                    if (v311 + ~LODWORD(v310[1]) - HIDWORD(v310[1]) > v311 >> 3)
                    {
                      ++LODWORD(v310[1]);
                      if (*v204 == -4096)
                      {
LABEL_315:
                        *v204 = v197;
                        v206 = v313;
                        if (v313 >= HIDWORD(v313))
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v312, &v314, v313 + 1, 8);
                          v206 = v313;
                        }

                        *(v312 + v206) = v197;
                        LODWORD(v313) = v313 + 1;
                        goto LABEL_308;
                      }

LABEL_314:
                      --HIDWORD(v310[1]);
                      goto LABEL_315;
                    }

LABEL_414:
                    v261 = (v205 - 1) | ((v205 - 1) >> 1);
                    v262 = v261 | (v261 >> 2) | ((v261 | (v261 >> 2)) >> 4);
                    v263 = ((v262 | (v262 >> 8)) >> 16) | v262 | (v262 >> 8);
                    if ((v263 + 1) > 0x40)
                    {
                      v264 = v263 + 1;
                    }

                    else
                    {
                      v264 = 64;
                    }

                    v311 = v264;
                    buffer = llvm::allocate_buffer(8 * v264, 8uLL);
                    v310[0] = buffer;
                    if (v202)
                    {
                      v310[1] = 0;
                      v266 = v311;
                      if (v311)
                      {
                        v267 = (v311 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                        v268 = buffer;
                        if (v267 < 3)
                        {
                          goto LABEL_480;
                        }

                        v269 = v267 + 1;
                        v268 = (buffer + 8 * (v269 & 0x3FFFFFFFFFFFFFFCLL));
                        v270 = (buffer + 16);
                        v271 = v269 & 0x3FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v270[-1] = v305;
                          *v270 = v305;
                          v270 += 2;
                          v271 -= 4;
                        }

                        while (v271);
                        if (v269 != (v269 & 0x3FFFFFFFFFFFFFFCLL))
                        {
LABEL_480:
                          do
                          {
                            *v268 = -4096;
                            v268 = (v268 + 8);
                          }

                          while (v268 != (buffer + 8 * v266));
                        }
                      }

                      if (v203)
                      {
                        v272 = 0;
                        v273 = v266 - 1;
                        v274 = v202;
                        do
                        {
                          v289 = *v274;
                          if ((*v274 | 0x1000) != 0xFFFFFFFFFFFFF000)
                          {
                            v290 = ((v289 >> 4) ^ (v289 >> 9)) & v273;
                            v288 = (buffer + 8 * v290);
                            v291 = *v288;
                            if (v289 != *v288)
                            {
                              v292 = 0;
                              v293 = 1;
                              while (v291 != -4096)
                              {
                                if (v292)
                                {
                                  v294 = 0;
                                }

                                else
                                {
                                  v294 = v291 == -8192;
                                }

                                if (v294)
                                {
                                  v292 = v288;
                                }

                                v295 = v290 + v293++;
                                v290 = v295 & v273;
                                v288 = (buffer + 8 * (v295 & v273));
                                v291 = *v288;
                                if (v289 == *v288)
                                {
                                  goto LABEL_447;
                                }
                              }

                              if (v292)
                              {
                                v288 = v292;
                              }
                            }

LABEL_447:
                            *v288 = v289;
                            LODWORD(v310[1]) = ++v272;
                          }

                          v274 = (v274 + 8);
                        }

                        while (v274 != (v202 + 8 * v203));
                      }

                      llvm::deallocate_buffer(v202, (8 * v203));
                    }

                    v310[1] = 0;
                    v275 = v311;
                    if (!v311)
                    {
                      goto LABEL_461;
                    }

                    v276 = (v311 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                    v277 = buffer;
                    if (v276 < 3)
                    {
                      goto LABEL_481;
                    }

                    v278 = v276 + 1;
                    v277 = (buffer + 8 * (v278 & 0x3FFFFFFFFFFFFFFCLL));
                    v279 = (buffer + 16);
                    v280 = v278 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v279[-1] = v305;
                      *v279 = v305;
                      v279 += 2;
                      v280 -= 4;
                    }

                    while (v280);
                    if (v278 != (v278 & 0x3FFFFFFFFFFFFFFCLL))
                    {
LABEL_481:
                      do
                      {
                        *v277 = -4096;
                        v277 = (v277 + 8);
                      }

                      while (v277 != (buffer + 8 * v275));
                    }

                    if (v275)
                    {
                      v281 = v275 - 1;
                      v282 = v281 & ((v197 >> 4) ^ (v197 >> 9));
                      v204 = (buffer + 8 * v282);
                      v283 = *v204;
                      if (v197 != *v204)
                      {
                        v284 = 0;
                        v285 = 1;
                        while (v283 != -4096)
                        {
                          if (v284)
                          {
                            v286 = 0;
                          }

                          else
                          {
                            v286 = v283 == -8192;
                          }

                          if (v286)
                          {
                            v284 = v204;
                          }

                          v287 = v282 + v285++;
                          v282 = v287 & v281;
                          v204 = (buffer + 8 * (v287 & v281));
                          v283 = *v204;
                          if (v197 == *v204)
                          {
                            goto LABEL_462;
                          }
                        }

                        if (v284)
                        {
                          v204 = v284;
                        }
                      }
                    }

                    else
                    {
LABEL_461:
                      v204 = 0;
                    }

LABEL_462:
                    ++LODWORD(v310[1]);
                    if (*v204 == -4096)
                    {
                      goto LABEL_315;
                    }

                    goto LABEL_314;
                  }

LABEL_413:
                  v205 = 2 * v311;
                  goto LABEL_414;
                }
              }

              else
              {
                v207 = v312;
                if (v313)
                {
                  v208 = 8 * v313;
                  v207 = v312;
                  while (*v207 != v197)
                  {
                    ++v207;
                    v208 -= 8;
                    if (!v208)
                    {
                      goto LABEL_324;
                    }
                  }
                }

                if (v207 != (v312 + 8 * v313))
                {
                  goto LABEL_308;
                }

LABEL_324:
                if (v313 >= HIDWORD(v313))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v312, &v314, v313 + 1, 8);
                  *(v312 + v313) = v197;
                  v209 = v313 + 1;
                  LODWORD(v313) = v209;
                  if (v209 < 2)
                  {
                    goto LABEL_308;
                  }

LABEL_326:
                  v210 = v312;
                  v211 = v312 + 8 * v209;
                  v212 = v310[0];
                  v213 = v311;
                  while (2)
                  {
                    if (!v213)
                    {
LABEL_348:
                      v217 = 2 * v213;
                      goto LABEL_349;
                    }

                    v214 = ((*v210 >> 4) ^ (*v210 >> 9)) & (v213 - 1);
                    v215 = (v212 + 8 * v214);
                    v216 = *v215;
                    if (*v210 == *v215)
                    {
LABEL_328:
                      if (++v210 == v211)
                      {
                        goto LABEL_308;
                      }

                      continue;
                    }

                    break;
                  }

                  v218 = 0;
                  v219 = 1;
                  while (v216 != -4096)
                  {
                    if (v218)
                    {
                      v220 = 0;
                    }

                    else
                    {
                      v220 = v216 == -8192;
                    }

                    if (v220)
                    {
                      v218 = v215;
                    }

                    v221 = v214 + v219++;
                    v214 = v221 & (v213 - 1);
                    v215 = (v212 + 8 * v214);
                    v216 = *v215;
                    if (*v210 == *v215)
                    {
                      goto LABEL_328;
                    }
                  }

                  if (v218)
                  {
                    v222 = v218;
                  }

                  else
                  {
                    v222 = v215;
                  }

                  if (4 * LODWORD(v310[1]) + 4 >= 3 * v213)
                  {
                    goto LABEL_348;
                  }

                  v217 = v213;
                  if (v213 + ~LODWORD(v310[1]) - HIDWORD(v310[1]) <= v213 >> 3)
                  {
LABEL_349:
                    v223 = (v217 - 1) | ((v217 - 1) >> 1);
                    v224 = v223 | (v223 >> 2) | ((v223 | (v223 >> 2)) >> 4);
                    v225 = ((v224 | (v224 >> 8)) >> 16) | v224 | (v224 >> 8);
                    if ((v225 + 1) > 0x40)
                    {
                      v226 = v225 + 1;
                    }

                    else
                    {
                      v226 = 64;
                    }

                    v311 = v226;
                    v227 = llvm::allocate_buffer(8 * v226, 8uLL);
                    v310[0] = v227;
                    if (v212)
                    {
                      v310[1] = 0;
                      v228 = v311;
                      if (v311)
                      {
                        v229 = (v311 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                        v230 = v227;
                        if (v229 < 3)
                        {
                          goto LABEL_482;
                        }

                        v231 = v229 + 1;
                        v230 = (v227 + 8 * (v231 & 0x3FFFFFFFFFFFFFFCLL));
                        v232 = (v227 + 16);
                        v233 = v231 & 0x3FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v232[-1] = v305;
                          *v232 = v305;
                          v232 += 2;
                          v233 -= 4;
                        }

                        while (v233);
                        if (v231 != (v231 & 0x3FFFFFFFFFFFFFFCLL))
                        {
LABEL_482:
                          do
                          {
                            *v230 = -4096;
                            v230 = (v230 + 8);
                          }

                          while (v230 != (v227 + 8 * v228));
                        }
                      }

                      if (v213)
                      {
                        v234 = 0;
                        v235 = v228 - 1;
                        v236 = v212;
                        do
                        {
                          v250 = *v236;
                          if ((*v236 | 0x1000) != 0xFFFFFFFFFFFFF000)
                          {
                            v251 = ((v250 >> 4) ^ (v250 >> 9)) & v235;
                            v249 = (v227 + 8 * v251);
                            v252 = *v249;
                            if (v250 != *v249)
                            {
                              v253 = 0;
                              v254 = 1;
                              while (v252 != -4096)
                              {
                                if (v253)
                                {
                                  v255 = 0;
                                }

                                else
                                {
                                  v255 = v252 == -8192;
                                }

                                if (v255)
                                {
                                  v253 = v249;
                                }

                                v256 = v251 + v254++;
                                v251 = v256 & v235;
                                v249 = (v227 + 8 * (v256 & v235));
                                v252 = *v249;
                                if (v250 == *v249)
                                {
                                  goto LABEL_380;
                                }
                              }

                              if (v253)
                              {
                                v249 = v253;
                              }
                            }

LABEL_380:
                            *v249 = v250;
                            LODWORD(v310[1]) = ++v234;
                          }

                          v236 = (v236 + 8);
                        }

                        while (v236 != (v212 + 8 * v213));
                      }

                      llvm::deallocate_buffer(v212, (8 * v213));
                    }

                    v310[1] = 0;
                    v213 = v311;
                    if (!v311)
                    {
                      goto LABEL_394;
                    }

                    v237 = (v311 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                    v238 = v227;
                    if (v237 < 3)
                    {
                      goto LABEL_483;
                    }

                    v239 = v237 + 1;
                    v238 = (v227 + 8 * (v239 & 0x3FFFFFFFFFFFFFFCLL));
                    v240 = (v227 + 16);
                    v241 = v239 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v240[-1] = v305;
                      *v240 = v305;
                      v240 += 2;
                      v241 -= 4;
                    }

                    while (v241);
                    if (v239 != (v239 & 0x3FFFFFFFFFFFFFFCLL))
                    {
LABEL_483:
                      do
                      {
                        *v238 = -4096;
                        v238 = (v238 + 8);
                      }

                      while (v238 != (v227 + 8 * v213));
                    }

                    if (v213)
                    {
                      v242 = v213 - 1;
                      v243 = ((*v210 >> 4) ^ (*v210 >> 9)) & (v213 - 1);
                      v222 = (v227 + 8 * v243);
                      v244 = *v222;
                      if (*v210 != *v222)
                      {
                        v245 = 0;
                        v246 = 1;
                        while (v244 != -4096)
                        {
                          if (v245)
                          {
                            v247 = 0;
                          }

                          else
                          {
                            v247 = v244 == -8192;
                          }

                          if (v247)
                          {
                            v245 = v222;
                          }

                          v248 = v243 + v246++;
                          v243 = v248 & v242;
                          v222 = (v227 + 8 * (v248 & v242));
                          v244 = *v222;
                          if (*v210 == *v222)
                          {
                            goto LABEL_395;
                          }
                        }

                        if (v245)
                        {
                          v222 = v245;
                        }
                      }
                    }

                    else
                    {
LABEL_394:
                      v222 = 0;
                    }

LABEL_395:
                    v212 = v227;
                    ++LODWORD(v310[1]);
                    if (*v222 != -4096)
                    {
LABEL_333:
                      --HIDWORD(v310[1]);
                    }
                  }

                  else
                  {
                    ++LODWORD(v310[1]);
                    if (*v222 != -4096)
                    {
                      goto LABEL_333;
                    }
                  }

                  *v222 = *v210;
                  goto LABEL_328;
                }

                *(v312 + v313) = v197;
                v209 = v313 + 1;
                LODWORD(v313) = v209;
                if (v209 >= 2)
                {
                  goto LABEL_326;
                }
              }

LABEL_308:
              v197 += 24;
            }

            while (v197 != v198);
          }
        }

        v191 = v191[1];
        if (v191 == v306)
        {
          goto LABEL_6;
        }
      }
    }

    v298 = v312;
    if (v312 == &v314)
    {
LABEL_475:
      llvm::deallocate_buffer(v310[0], (8 * v311));
    }
  }

  else
  {
LABEL_473:
    v298 = v312;
    if (v312 == &v314)
    {
      goto LABEL_475;
    }
  }

  free(v298);
  goto LABEL_475;
}

void llvm::post_order<mlir::Block *>(mlir::Block **a1@<X0>, uint64_t a2@<X8>)
{
  v13[40] = *MEMORY[0x1E69E9840];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v10, *a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7[0] = 0;
  memset(v6, 0, sizeof(v6));
  v3 = v6 + 8;
  v4 = v6 + 8;
  v5 = 8;
  v7[1] = v8 + 8;
  DWORD1(v8[0]) = 8;
  llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v10, &v3, a2);
  if (v7[1] != v8 + 8)
  {
    free(v7[1]);
  }

  if (v4 != v3)
  {
    free(v4);
  }

  if (v12 != v13)
  {
    free(v12);
  }

  if (v11 != v10)
  {
    free(v11);
  }
}

unint64_t processValue(unint64_t result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (1)
  {
    v5 = *(v2 + 2);
    OperandNumber = mlir::OpOperand::getOperandNumber(v2);
    {
    }

    result = (*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (!result)
    {
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    if (!result)
    {
      v26 = 0;
      v27 = 0;
      break;
    }

    result = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    v26 = v5;
    v27 = result;
    if (!v5)
    {
      break;
    }

    result = mlir::BranchOpInterface::getSuccessorBlockArgument(&v26, OperandNumber);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = *(a2 + 8);
      v10 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v10 >> 47) ^ v10);
      v12 = v8 - 1;
      v13 = v12 & (-348639895 * ((v11 >> 47) ^ v11));
      v14 = *(v9 + 8 * v13);
      if (v14 != result)
      {
        v23 = 1;
        while (v14 != -4096)
        {
          v24 = v13 + v23++;
          v13 = v24 & v12;
          v14 = *(v9 + 8 * v13);
          if (v14 == result)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_23;
      }

      break;
    }

LABEL_23:
    v2 = *v2;
    if (!v2)
    {
      return result;
    }
  }

LABEL_13:
  v15 = *(a2 + 48);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = *(v2 + 2);
  v17 = *(a2 + 32);
  v18 = v15 - 1;
  v19 = ((v16 >> 4) ^ (v16 >> 9)) & v18;
  v20 = *(v17 + 8 * v19);
  if (v20 != v16)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(v17 + 8 * v19);
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  if (!v4 || (*(v4 + 1) & 7) == 7)
  {
    Owner = v4;
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>((a2 + 8), &Owner, &v26);
  }

  else
  {
    Owner = mlir::detail::OpResultImpl::getOwner(v4);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a2 + 32), &Owner, &v26);
  }

  *a2 |= v28;
  return result;
}

void llvm::make_range<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[40] = *MEMORY[0x1E69E9840];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v17, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v11, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v14);
  *(v6 + 96) = a3 + 112;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v18)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, &v17);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 432, (a3 + 464), 8, &v8);
  *(a3 + 528) = a3 + 544;
  *(a3 + 536) = 0x800000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=((a3 + 528), &v11);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::BlockArgument)>::callback_fn<deleteDeadness(mlir::RewriterBase &,llvm::MutableArrayRef<mlir::Region>,anonymous namespace::LiveMap &)::$_0>(uint64_t a1, unint64_t a2)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 1;
  }

  v3 = *(*a1 + 8);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = v2 - 1;
  v7 = v6 & (-348639895 * ((v5 >> 47) ^ v5));
  v8 = *(v3 + 8 * v7);
  if (v8 == a2)
  {
    return 0;
  }

  v10 = 1;
  do
  {
    result = v8 == -4096;
    if (v8 == -4096)
    {
      break;
    }

    result = 0;
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v3 + 8 * v7);
  }

  while (v8 != a2);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
LABEL_19:
    *a3 = v14;
    return result;
  }

  v5 = *a1;
  v7 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(*a2, 0, *a2, a2[1]);
  v8 = v4 - 1;
  v9 = (v4 - 1) & v7;
  v10 = *a2;
  v11 = a2[1];
  if (!v11)
  {
    if (v10 != -8192)
    {
      v12 = 0;
      v32 = 1;
      v14 = (v5 + 40 * v9);
      v33 = *v14;
      if (*v14 == -8192)
      {
        goto LABEL_49;
      }

      while (v33 != -4096)
      {
        if (!v14[1])
        {
          goto LABEL_28;
        }

        do
        {
LABEL_49:
          if (v12)
          {
            v34 = 0;
          }

          else
          {
            v34 = v33 == -8192;
          }

          if (v34)
          {
            v12 = v14;
          }

          v35 = v9 + v32++;
          v9 = v35 & v8;
          v14 = (v5 + 40 * v9);
          v33 = *v14;
        }

        while (*v14 == -8192);
      }

      goto LABEL_27;
    }

    v22 = 1;
    v14 = (v5 + 40 * v9);
    v23 = *v14;
    if (*v14 != -8192)
    {
      while (v23 != -4096)
      {
        if (v14[1])
        {
          v24 = v9 + v22++;
          v9 = v24 & v8;
          v14 = (v5 + 40 * v9);
          v23 = *v14;
          if (*v14 != -8192)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v12 = 0;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v10 != -8192)
  {
    v12 = 0;
    v25 = 1;
    v14 = (v5 + 40 * v9);
    v26 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_39;
    }

    while (v26 != -4096)
    {
      if (v11 == v14[1])
      {
        v27 = (v26 + 24);
        v28 = (v10 + 24);
        v29 = a2[1];
        while (*v28 == *v27)
        {
          v27 += 4;
          v28 += 4;
          result = 1;
          if (!--v29)
          {
            goto LABEL_19;
          }
        }
      }

      do
      {
LABEL_39:
        if (v12)
        {
          v30 = 0;
        }

        else
        {
          v30 = v26 == -8192;
        }

        if (v30)
        {
          v12 = v14;
        }

        v31 = v9 + v25++;
        v9 = v31 & v8;
        v14 = (v5 + 40 * v9);
        v26 = *v14;
      }

      while (*v14 == -8192);
    }

    goto LABEL_27;
  }

  v12 = 0;
  v13 = 1;
  v14 = (v5 + 40 * v9);
  v15 = *v14;
  if (*v14 == -8192)
  {
LABEL_28:
    result = 1;
    *a3 = v14;
    return result;
  }

  while (v15 != -4096)
  {
    if (v11 == v14[1])
    {
      v16 = (v15 + 24);
      v17 = -8168;
      v18 = a2[1];
      while (*v17 == *v16)
      {
        v16 += 4;
        v17 += 32;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }
    }

    if (v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 == -8192;
    }

    if (v19)
    {
      v12 = v14;
    }

    v20 = v9 + v13++;
    v9 = v20 & v8;
    v14 = (v5 + 40 * v9);
    v15 = *v14;
    if (*v14 == -8192)
    {
      goto LABEL_28;
    }
  }

LABEL_27:
  if (v10 == -4096)
  {
    goto LABEL_28;
  }

  result = 0;
  if (v12)
  {
    v14 = v12;
  }

  *a3 = v14;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (a2 == a4)
  {
    v5 = 0;
  }

  else
  {
    *&v63 = *(a1 + 32 * a2 + 24);
    if (a2 + 1 == a4)
    {
      v5 = 8;
      v4 = a2 + 1;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * (a2 + 1) + 24);
      if (a2 + 2 == a4)
      {
        v5 = 16;
        v4 = a2 + 2;
      }

      else
      {
        *&v64 = *(a1 + 32 * (a2 + 2) + 24);
        if (a2 + 3 == a4)
        {
          v5 = 24;
          v4 = a2 + 3;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * (a2 + 3) + 24);
          if (a2 + 4 == a4)
          {
            v5 = 32;
            v4 = a2 + 4;
          }

          else
          {
            *&v65 = *(a1 + 32 * (a2 + 4) + 24);
            if (a2 + 5 == a4)
            {
              v5 = 40;
              v4 = a2 + 5;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * (a2 + 5) + 24);
              if (a2 + 6 == a4)
              {
                v5 = 48;
                v4 = a2 + 6;
              }

              else
              {
                *&v66 = *(a1 + 32 * (a2 + 6) + 24);
                if (a2 + 7 == a4)
                {
                  v5 = 56;
                  v4 = a2 + 7;
                }

                else
                {
                  *(&v66 + 1) = *(a1 + 32 * (a2 + 7) + 24);
                  v4 = a2 + 8;
                  v5 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  if (v4 == a4)
  {
    return llvm::hashing::detail::hash_short(&v63, v5, 0xFF51AFD7ED558CCDLL);
  }

  v7 = (0xB492B66FBE98F273 * __ROR8__(*(&v63 + 1) - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
  v8 = *(&v65 + 1) - 0x4B6D499041670D8DLL * __ROR8__(v66 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
  v9 = __ROR8__(v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64, 44) + v63 + 0x298DF016A9F64655 + __ROR8__(v7 + v63 + 0x298DF016A9F64655 + *(&v64 + 1) - 0xAE502812AB8D92, 21);
  v10 = v63 + 0x298DF016A9F64655 + *(&v63 + 1) + v64 + *(&v64 + 1);
  v11 = __ROR8__(*(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL, 44) + v65 + 0x4BF62CB950C3753ALL + __ROR8__(v8 + v64 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1), 21);
  v12 = *(&v65 + 1) + v66 + v65 + 0x4BF62CB950C3753ALL + *(&v66 + 1);
  v13 = 0x544962662A7EE1A4;
  v14 = 64;
  do
  {
    v21 = v4;
    *&v63 = *(a1 + 32 * v4++ + 24);
    v22 = v4 == a4;
    if (v4 == a4)
    {
      v23 = &v63;
      v24 = 56;
      v25 = &v63 + 8;
      v26 = 8;
    }

    else
    {
      *(&v63 + 1) = *(a1 + 32 * v4 + 24);
      v4 = v21 + 2;
      v22 = v21 + 2 == a4;
      if (v21 + 2 == a4)
      {
        v24 = 48;
        v23 = (&v63 + 8);
        v25 = &v64;
        v26 = 16;
      }

      else
      {
        *&v64 = *(a1 + 32 * v4 + 24);
        v4 = v21 + 3;
        v22 = v21 + 3 == a4;
        if (v21 + 3 == a4)
        {
          v24 = 40;
          v23 = &v64;
          v25 = &v64 + 8;
          v26 = 24;
        }

        else
        {
          *(&v64 + 1) = *(a1 + 32 * v4 + 24);
          v4 = v21 + 4;
          v22 = v21 + 4 == a4;
          if (v21 + 4 == a4)
          {
            v24 = 32;
            v23 = (&v64 + 8);
            v25 = &v65;
            v26 = 32;
          }

          else
          {
            *&v65 = *(a1 + 32 * v4 + 24);
            v4 = v21 + 5;
            v22 = v21 + 5 == a4;
            if (v21 + 5 == a4)
            {
              v24 = 24;
              v23 = &v65;
              v25 = &v65 + 8;
              v26 = 40;
            }

            else
            {
              *(&v65 + 1) = *(a1 + 32 * v4 + 24);
              v4 = v21 + 6;
              v22 = v21 + 6 == a4;
              if (v21 + 6 == a4)
              {
                v24 = 16;
                v23 = (&v65 + 8);
                v25 = &v66;
                v26 = 48;
              }

              else
              {
                *&v66 = *(a1 + 32 * v4 + 24);
                v4 = v21 + 7;
                v22 = v21 + 7 == a4;
                if (v21 + 7 != a4)
                {
                  *(&v66 + 1) = *(a1 + 32 * v4 + 24);
                  v4 = v21 + 8;
                  v22 = v21 + 8 == a4;
                  v26 = 64;
                  goto LABEL_21;
                }

                v24 = 8;
                v23 = &v66;
                v25 = &v66 + 8;
                v26 = 56;
              }
            }
          }
        }
      }
    }

    v27 = v26;
    if (v26 == v24)
    {
      v28 = a4 + ~v21;
      if (v28 >= 7)
      {
        v28 = 7;
      }

      if (55 - 8 * v28 >= ((8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7))
      {
        v29 = (8 * (v28 & 0xFFFFFFFFFFFFFFFLL)) | 7;
      }

      else
      {
        v29 = 55 - 8 * v28;
      }

      v30 = &v63;
      v31 = &v63 >= (v23 + v29 + 9) || v25 >= &v63 + v29 + 1;
      v32 = v26;
      if (!v31)
      {
        goto LABEL_72;
      }

      if (v29 < 0x1F)
      {
        v33 = 0;
LABEL_68:
        v52 = &v25[v33];
        v53 = (&v63 + v33);
        v54 = ~v29 + v33;
        do
        {
          v55 = *v53;
          *v53++ = *v52;
          *v52 = v55;
          v52 += 8;
          v54 += 8;
        }

        while (v54);
        goto LABEL_21;
      }

      v45 = v29 + 1;
      v33 = (v29 + 1) & 0x60;
      v46 = v63;
      v47 = v64;
      v48 = *(v25 + 1);
      v63 = *(&v63 + v26);
      v64 = v48;
      *(&v63 + v26) = v46;
      *(v25 + 1) = v47;
      if (v33 != 32)
      {
        v49 = v65;
        v50 = v66;
        v51 = *(v25 + 3);
        v65 = *(v25 + 2);
        v66 = v51;
        *(v25 + 2) = v49;
        *(v25 + 3) = v50;
      }

      if (v45 != v33)
      {
        if ((v45 & 0x18) != 0)
        {
          goto LABEL_68;
        }

        v30 = &v63 + v33;
        v32 = v26 + v33;
LABEL_72:
        v56 = v30 + 1;
        do
        {
          v57 = *(v56 - 1);
          *(v56 - 1) = *(&v63 + v32);
          *(&v63 + v32) = v57;
          if (v56 == v25)
          {
            break;
          }

          ++v56;
        }

        while (v32++ != 63);
      }
    }

    else
    {
      do
      {
        v34 = v27;
        v27 = v24;
        v24 = v34 % v24;
      }

      while (v24);
      v35 = (&v63 + v27);
      do
      {
        v37 = *(v35 - 1);
        v35 = (v35 - 1);
        v36 = v37;
        v38 = (v35 + v26);
        v39 = v35;
        do
        {
          v40 = v39;
          v39 = v38;
          *v40 = *v38;
          v41 = (&v67 - v38);
          v42 = __OFSUB__(v26, v41);
          v44 = v26 - v41;
          v43 = (v44 < 0) ^ v42;
          v38 = (&v63 + v44);
          if (v43)
          {
            v38 = (v39 + v26);
          }
        }

        while (v38 != v35);
        *v39 = v36;
      }

      while (v35 != &v63);
    }

LABEL_21:
    v15 = v8 + v10 + v13 + *(&v63 + 1);
    v8 = *(&v65 + 1) + v10 - 0x4B6D499041670D8DLL * __ROR8__(v8 + v9 + v66, 42);
    v16 = v63 - 0x4B6D499041670D8DLL * v9;
    v17 = 0xB492B66FBE98F273 * __ROR8__(v15, 37);
    v18 = __ROR8__(v7 + v12, 33);
    v19 = v17 ^ v11;
    v9 = __ROR8__(v16 + *(&v63 + 1) + v64, 44) + v16 + __ROR8__(v19 + v12 + v16 + *(&v64 + 1), 21);
    v13 = 0xB492B66FBE98F273 * v18;
    v20 = 0xB492B66FBE98F273 * v18 + v11 + v65;
    v10 = v16 + *(&v63 + 1) + v64 + *(&v64 + 1);
    v11 = __ROR8__(v8 + v64 + v20 + *(&v66 + 1), 21) + v20 + __ROR8__(*(&v65 + 1) + v66 + v20, 44);
    v12 = *(&v65 + 1) + v66 + v20 + *(&v66 + 1);
    v14 += v26;
    v7 = v19;
  }

  while (!v22);
  v59 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v12)));
  v60 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v11)));
  v61 = 0x9DDFEA08EB382D69 * (v60 ^ (v60 >> 47)) - 0x4B6D499041670D8DLL * ((v14 ^ (v14 >> 47)) + v18);
  v62 = 0x9DDFEA08EB382D69 * (v61 ^ (v19 - 0x4B6D499041670D8DLL * (v8 ^ (v8 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) ^ ((0x9DDFEA08EB382D69 * (v61 ^ (v62 >> 47) ^ v62)) >> 47));
}

char *llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::grow(uint64_t a1, int a2)
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
    v10 = 40 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(a1, v4, v4 + v10);

    llvm::deallocate_buffer(v4, v10);
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
      v17 = &result[40 * v11];
      do
      {
        *v13 = xmmword_1A75D9A80;
        v13 += 40;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[40 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_1A75D9A80;
      *(v15 + 40) = xmmword_1A75D9A80;
      v15 += 5;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = (v7 + 40 * v6);
      do
      {
        *v9 = xmmword_1A75D9A80;
        v9 = (v9 + 40);
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = (v7 + 40 * (v10 & 0xFFFFFFFFFFFFFFELL));
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = xmmword_1A75D9A80;
      *(v11 + 40) = xmmword_1A75D9A80;
      v11 += 5;
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::DenseMap<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>,mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>,llvm::DenseMapInfo<mlir::SuccessorRange,void>,llvm::detail::DenseMapPair<mlir::SuccessorRange,llvm::SmallVector<mlir::Block *,1u>>>::LookupBucketFor<mlir::SuccessorRange>(a1, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        *(v14 + 3) = 0x100000000;
        *(v14 + 2) = v14 + 2;
        v15 = (v14 + 1);
        if (*(v4 + 24))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v15, (v4 + 16));
        }

        ++*(a1 + 8);
        v16 = *(v4 + 16);
        if ((v4 + 32) != v16)
        {
          free(v16);
        }
      }

      v4 += 40;
    }

    while (v4 != a3);
  }
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::assign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 3) < a2)
  {

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::growAndAssign(a1, a2, a3);
    return;
  }

  v6 = *(a1 + 2);
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 2);
  }

  if (v7)
  {
    v8 = *a1;
    while (1)
    {
      if (v8 == a3)
      {
        goto LABEL_11;
      }

      v9 = *(a3 + 8);
      v10 = *(v8 + 8);
      if (v10 >= v9)
      {
        if (v9)
        {
          memmove(*v8, *a3, 8 * v9);
        }

        goto LABEL_10;
      }

      if (*(v8 + 12) >= v9)
      {
        if (v10)
        {
          memmove(*v8, *a3, 8 * v10);
          v11 = *(a3 + 8) - v10;
          if (v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v10 = 0;
          v11 = *(a3 + 8);
          if (*(a3 + 8))
          {
LABEL_23:
            memcpy((*v8 + 8 * v10), (*a3 + 8 * v10), 8 * v11);
          }
        }
      }

      else
      {
        *(v8 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 16), v9, 8);
        v10 = 0;
        v11 = *(a3 + 8);
        if (*(a3 + 8))
        {
          goto LABEL_23;
        }
      }

LABEL_10:
      *(v8 + 8) = v9;
LABEL_11:
      v8 += 80;
      if (!--v7)
      {
        v6 = *(a1 + 2);
        break;
      }
    }
  }

  v12 = v6 - a2;
  if (v6 < a2)
  {
    v13 = (*a1 + 80 * v6);
    while (1)
    {
      v16 = v13 + 2;
      *v13 = v13 + 2;
      v13[1] = 0x800000000;
      if (v13 == a3)
      {
        goto LABEL_30;
      }

      v17 = *(a3 + 8);
      if (!*(a3 + 8))
      {
        goto LABEL_30;
      }

      if (v17 < 9)
      {
        v14 = *(a3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v13 + 2, *(a3 + 8), 8);
        v14 = *(a3 + 8);
        if (!v14)
        {
          goto LABEL_29;
        }

        v16 = *v13;
      }

      memcpy(v16, *a3, 8 * v14);
LABEL_29:
      *(v13 + 2) = v17;
LABEL_30:
      v13 += 10;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_41;
      }
    }
  }

  if (v6 > a2)
  {
    v18 = 80 * v6;
    v19 = (v18 + *a1 - 80);
    v20 = 80 * a2 - v18;
    do
    {
      if (v19 + 2 != *v19)
      {
        free(*v19);
      }

      v19 -= 10;
      v20 += 80;
    }

    while (v20);
  }

LABEL_41:
  *(a1 + 2) = a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::growAndAssign(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v19 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 80, &v19);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    for (i = a2; i; --i)
    {
      v12 = v9 + 2;
      *v9 = v9 + 2;
      v9[1] = 0x800000000;
      if (v9 == a3)
      {
        goto LABEL_6;
      }

      v13 = *(a3 + 8);
      if (!*(a3 + 8))
      {
        goto LABEL_6;
      }

      if (v13 < 9)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v9 + 2, *(a3 + 8), 8);
        v11 = *(a3 + 8);
        if (!v11)
        {
          goto LABEL_5;
        }

        v12 = *v9;
      }

      memcpy(v12, *a3, 8 * v11);
LABEL_5:
      *(v9 + 2) = v13;
LABEL_6:
      v9 += 10;
    }
  }

  v14 = *a1;
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = &v14[10 * v15 - 10];
    v17 = -80 * v15;
    do
    {
      if (v16 + 2 != *v16)
      {
        free(*v16);
      }

      v16 -= 10;
      v17 += 80;
    }

    while (v17);
    v14 = *a1;
  }

  v18 = v19;
  if (v14 != v6)
  {
    free(v14);
  }

  *a1 = v8;
  *(a1 + 2) = a2;
  *(a1 + 3) = v18;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::grow(uint64_t *a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 80, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = 80 * v7;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x800000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v9, v6);
      }

      v9 += 10;
      v6 += 80;
      v8 -= 80;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = (v6 + 80 * v10 - 80);
      v12 = -80 * v10;
      do
      {
        if (v11 + 2 != *v11)
        {
          free(*v11);
        }

        v11 -= 10;
        v12 += 80;
      }

      while (v12);
      v6 = *a1;
    }
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 3) = v13;
}

_DWORD *llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 4uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x3FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & (37 * v24);
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v24 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v23 = &result[2 * (v31 & v25)];
              v27 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_24:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 8);
      }

      while (v17 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x3FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

char ***llvm::SmallVectorImpl<llvm::SmallVector<mlir::Value,8u>>::operator=(char ***a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = &v6[10 * v7 - 10];
        v9 = -80 * v7;
        do
        {
          if (v8 + 2 != *v8)
          {
            free(*v8);
          }

          v8 -= 10;
          v9 += 80;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 2);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = 80 * v12;
        do
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v16, v5);
          v5 += 80;
          v16 += 80;
          v17 -= 80;
        }

        while (v17);
        v18 = *a1;
        LODWORD(v13) = *(a1 + 2);
      }

      else
      {
        v18 = *a1;
      }

      v30 = v18 + 80 * v13;
      while (v30 != v16)
      {
        v32 = *(v30 - 80);
        v30 -= 80;
        v31 = v32;
        if ((v30 + 16) != v32)
        {
          free(v31);
        }
      }

      *(a1 + 2) = v12;
      v33 = *(a2 + 2);
      if (v33)
      {
        v34 = &(*a2)[80 * v33 - 80];
        v35 = -80 * v33;
        do
        {
          if (v34 + 2 != *v34)
          {
            free(*v34);
          }

          v34 -= 10;
          v35 += 80;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 3) >= v12)
    {
      if (!v13)
      {
        v13 = 0;
        v21 = *a2;
        v22 = *(a2 + 2);
        if (*(a2 + 2))
        {
LABEL_31:
          v23 = *a1;
          v24 = 80 * v13;
          v25 = 80 * v22;
          do
          {
            v26 = (v23 + v24);
            *v26 = v23 + v24 + 16;
            v26[1] = 0x800000000;
            if (*&v21[v24 + 8])
            {
              llvm::SmallVectorImpl<mlir::Value>::operator=(v26, &v21[v24]);
            }

            v23 += 80;
            v25 -= 80;
            v21 += 80;
          }

          while (v24 != v25);
          v21 = *a2;
        }

LABEL_36:
        *(a1 + 2) = v12;
        v27 = *v10;
        if (v27)
        {
          v28 = &v21[80 * v27 - 80];
          v29 = -80 * v27;
          do
          {
            if (v28 + 2 != *v28)
            {
              free(*v28);
            }

            v28 -= 10;
            v29 += 80;
          }

          while (v29);
        }

        goto LABEL_12;
      }

      v19 = *a1;
      v20 = 80 * v13;
      do
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v19, v5);
        v5 += 80;
        v19 += 80;
        v20 -= 80;
      }

      while (v20);
    }

    else
    {
      if (v13)
      {
        v14 = &(*a1)[10 * v13 - 10];
        v15 = -80 * v13;
        do
        {
          if (v14 + 2 != *v14)
          {
            free(*v14);
          }

          v14 -= 10;
          v15 += 80;
        }

        while (v15);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,8u>,false>::grow(a1, v12);
      v13 = 0;
    }

    v21 = *a2;
    v22 = *(a2 + 2);
    if (v13 != v22)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  return a1;
}

BOOL mlir::verifyListOfOperandsOrIntegers(uint64_t *a1, const char *a2, const char *a3, unsigned int a4, int64x2_t *a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = a4;
  if (a6 == a4)
  {
    if (!a6)
    {
      v42 = 0;
      if (!a8)
      {
        return 1;
      }

LABEL_32:
      v78[0] = "expected ";
      v79 = 259;
      mlir::Operation::emitError(a1, v78, &v84);
      if (v84)
      {
        LODWORD(v80) = 5;
        v81 = v42;
        v43 = &v80;
        v44 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v80 && v86 + 24 * v87 > &v80)
          {
            v73 = &v80 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v44 = v86;
            v43 = (v86 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v43 = &v80;
            v44 = v86;
          }
        }

        v45 = &v44[24 * v87];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        v47 = ++v87;
        if (v84)
        {
          LODWORD(v80) = 3;
          v81 = " dynamic ";
          v82 = 9;
          v48 = &v80;
          v49 = v86;
          if (v47 >= v88)
          {
            if (v86 <= &v80 && v86 + 24 * v47 > &v80)
            {
              v74 = &v80 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v47 + 1, 24);
              v49 = v86;
              v48 = (v86 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v47 + 1, 24);
              v48 = &v80;
              v49 = v86;
            }
          }

          v50 = &v49[24 * v87];
          v51 = *v48;
          *(v50 + 2) = v48[2];
          *v50 = v51;
          ++v87;
          if (v84)
          {
            v83 = 261;
            v80 = a2;
            v81 = a3;
            mlir::Diagnostic::operator<<(v85, &v80);
            if (v84)
            {
              LODWORD(v80) = 3;
              v81 = " values";
              v82 = 7;
              v52 = &v80;
              v53 = v86;
              if (v87 >= v88)
              {
                if (v86 <= &v80 && v86 + 24 * v87 > &v80)
                {
                  v77 = &v80 - v86;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                  v53 = v86;
                  v52 = (v86 + v77);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
                  v52 = &v80;
                  v53 = v86;
                }
              }

              v54 = &v53[24 * v87];
              v55 = *v52;
              *(v54 + 2) = v52[2];
              *v54 = v55;
              ++v87;
            }
          }
        }
      }

      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v56 = __p;
        if (__p)
        {
          v57 = v93;
          v58 = __p;
          if (v93 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v93 = v56;
          operator delete(v58);
        }

        v37 = v90;
        if (!v90)
        {
          goto LABEL_66;
        }

        v59 = v91;
        v39 = v90;
        if (v91 == v90)
        {
LABEL_65:
          v91 = v37;
          operator delete(v39);
LABEL_66:
          if (v86 != v89)
          {
            free(v86);
          }

          return v33;
        }

        do
        {
          v61 = *--v59;
          v60 = v61;
          *v59 = 0;
          if (v61)
          {
            MEMORY[0x1AC55A040](v60, 0x1000C8077774924);
          }
        }

        while (v59 != v37);
LABEL_64:
        v39 = v90;
        goto LABEL_65;
      }

      return v33;
    }

    v12 = (a6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= 3)
    {
      v62 = v12 + 1;
      v63 = (v12 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v14 = (a5 + 8 * v63);
      v64 = a5 + 1;
      v65 = 0uLL;
      v66 = vnegq_f64(0);
      v67 = v63;
      v68 = 0uLL;
      do
      {
        v65 = vsubq_s64(v65, vceqq_s64(v64[-1], v66));
        v68 = vsubq_s64(v68, vceqq_s64(*v64, v66));
        v64 += 2;
        v67 -= 4;
      }

      while (v67);
      v13 = vaddvq_s64(vaddq_s64(v68, v65));
      if (v62 == v63)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v13 = 0;
      v14 = a5;
    }

    do
    {
      v69 = v14->i64[0];
      v14 = (v14 + 8);
      if (v69 == 0x8000000000000000)
      {
        ++v13;
      }
    }

    while (v14 != (a5 + 8 * a6));
LABEL_62:
    v42 = v13;
    if (a8 == v13)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v78[0] = "expected ";
  v79 = 259;
  mlir::Operation::emitError(a1, v78, &v84);
  if (v84)
  {
    LODWORD(v80) = 5;
    v81 = v11;
    v15 = &v80;
    v16 = v86;
    if (v87 >= v88)
    {
      if (v86 <= &v80 && v86 + 24 * v87 > &v80)
      {
        v71 = &v80 - v86;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
        v16 = v86;
        v15 = (v86 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
        v15 = &v80;
        v16 = v86;
      }
    }

    v17 = &v16[24 * v87];
    v18 = *v15;
    *(v17 + 2) = v15[2];
    *v17 = v18;
    v19 = ++v87;
    if (v84)
    {
      LODWORD(v80) = 3;
      v81 = " ";
      v82 = 1;
      v20 = &v80;
      v21 = v86;
      if (v19 >= v88)
      {
        if (v86 <= &v80 && v86 + 24 * v19 > &v80)
        {
          v72 = &v80 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v19 + 1, 24);
          v21 = v86;
          v20 = (v86 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v19 + 1, 24);
          v20 = &v80;
          v21 = v86;
        }
      }

      v22 = &v21[24 * v87];
      v23 = *v20;
      *(v22 + 2) = v20[2];
      *v22 = v23;
      ++v87;
      if (v84)
      {
        v83 = 261;
        v80 = a2;
        v81 = a3;
        mlir::Diagnostic::operator<<(v85, &v80);
        if (v84)
        {
          LODWORD(v80) = 3;
          v81 = " values, got ";
          v82 = 13;
          v24 = &v80;
          v25 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v80 && v86 + 24 * v87 > &v80)
            {
              v75 = &v80 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v25 = v86;
              v24 = (v86 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v24 = &v80;
              v25 = v86;
            }
          }

          v26 = &v25[24 * v87];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          v28 = ++v87;
          if (v84)
          {
            LODWORD(v80) = 5;
            v81 = a6;
            v29 = &v80;
            v30 = v86;
            if (v28 >= v88)
            {
              if (v86 <= &v80 && v86 + 24 * v28 > &v80)
              {
                v76 = &v80 - v86;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v28 + 1, 24);
                v30 = v86;
                v29 = (v86 + v76);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v28 + 1, 24);
                v29 = &v80;
                v30 = v86;
              }
            }

            v31 = &v30[24 * v87];
            v32 = *v29;
            *(v31 + 2) = v29[2];
            *v31 = v32;
            ++v87;
          }
        }
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
  if (v84)
  {
    mlir::InFlightDiagnostic::report(&v84);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v93;
      v36 = __p;
      if (v93 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v93 = v34;
      operator delete(v36);
    }

    v37 = v90;
    if (!v90)
    {
      goto LABEL_66;
    }

    v38 = v91;
    v39 = v90;
    if (v91 == v90)
    {
      goto LABEL_65;
    }

    do
    {
      v41 = *--v38;
      v40 = v41;
      *v38 = 0;
      if (v41)
      {
        MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
      }
    }

    while (v38 != v37);
    goto LABEL_64;
  }

  return v33;
}

BOOL mlir::detail::verifyOffsetSizeAndStrideOp(uint64_t *a1, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  v4 = (*(a2 + 8))(a2, a1);
  v6 = v5;
  (*(a2 + 64))(&v116, a2, a1);
  if (v117 == 1 && v4 == 1)
  {
    v9 = 0;
  }

  else
  {
    (*(a2 + 64))(&v132, a2, a1);
    v8 = v133;
    (*(a2 + 72))(&v129, a2, a1);
    v9 = v8 != v130;
    if (v129 != v131)
    {
      free(v129);
    }

    if (v132 != v134)
    {
      free(v132);
    }
  }

  if (v116 != &v118)
  {
    free(v116);
  }

  if (v9)
  {
    v111[0] = "expected mixed offsets rank to match mixed sizes rank (";
    v112 = 259;
    mlir::Operation::emitError(a1, v111, &v116);
    (*(a2 + 64))(&v132, a2, a1);
    if (v116)
    {
      LODWORD(v129) = 5;
      v130 = v133;
      v10 = &v129;
      v11 = v119;
      if (v120 >= v121)
      {
        if (v119 <= &v129 && v119 + 24 * v120 > &v129)
        {
          v101 = &v129 - v119;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v11 = v119;
          v10 = v119 + v101;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v10 = &v129;
          v11 = v119;
        }
      }

      v12 = &v11[24 * v120];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v120;
      if (v116)
      {
        LODWORD(v129) = 3;
        v130 = " vs ";
        v131[0] = 4;
        v15 = &v129;
        v16 = v119;
        if (v14 >= v121)
        {
          if (v119 <= &v129 && v119 + 24 * v14 > &v129)
          {
            v103 = &v129 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v14 + 1, 24);
            v16 = v119;
            v15 = v119 + v103;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v14 + 1, 24);
            v15 = &v129;
            v16 = v119;
          }
        }

        v17 = &v16[24 * v120];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v120;
      }
    }

    (*(a2 + 72))(&v129, a2, a1);
    if (v116)
    {
      v113 = 5;
      v114 = v130;
      v19 = &v113;
      v20 = v119;
      if (v120 >= v121)
      {
        if (v119 <= &v113 && v119 + 24 * v120 > &v113)
        {
          v102 = &v113 - v119;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v20 = v119;
          v19 = (v119 + v102);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
          v19 = &v113;
          v20 = v119;
        }
      }

      v21 = &v20[24 * v120];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      v23 = ++v120;
      if (v116)
      {
        v113 = 3;
        v114 = ") so the rank of the result type is well-formed.";
        v115 = 48;
        v24 = &v113;
        v25 = v119;
        if (v23 >= v121)
        {
          if (v119 <= &v113 && v119 + 24 * v23 > &v113)
          {
            v104 = &v113 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v23 + 1, 24);
            v25 = v119;
            v24 = (v119 + v104);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v23 + 1, 24);
            v24 = &v113;
            v25 = v119;
          }
        }

        v26 = &v25[24 * v120];
        v27 = *v24;
        *(v26 + 2) = *(v24 + 2);
        *v26 = v27;
        ++v120;
      }
    }

    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
    if (v129 != v131)
    {
      free(v129);
    }

    if (v132 != v134)
    {
      free(v132);
    }

    if (v116)
    {
      mlir::InFlightDiagnostic::report(&v116);
    }

    if (v128 == 1)
    {
      if (v127 != &v128)
      {
        free(v127);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v126;
        v31 = __p;
        if (v126 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v126 = v29;
        operator delete(v31);
      }

      v32 = v123;
      if (!v123)
      {
        goto LABEL_112;
      }

      v33 = v124;
      v34 = v123;
      if (v124 == v123)
      {
LABEL_111:
        v124 = v32;
        operator delete(v34);
LABEL_112:
        if (v119 != v122)
        {
          free(v119);
        }

        return v28;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
LABEL_110:
      v34 = v123;
      goto LABEL_111;
    }
  }

  else
  {
    (*(a2 + 72))(&v116, a2, a1);
    v37 = v117;
    (*(a2 + 80))(&v132, a2, a1);
    v38 = v133;
    if (v132 != v134)
    {
      free(v132);
    }

    if (v116 != &v118)
    {
      free(v116);
    }

    if (v37 == v38)
    {
      v39 = (*(a2 + 40))(a2, a1);
      v41 = v40;
      v42 = (*(a2 + 16))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v42, v43);
      if (!mlir::verifyListOfOperandsOrIntegers(a1, "offset", 6, v4, v39, v41, v116, v117))
      {
        return 0;
      }

      v44 = (*(a2 + 48))(a2, a1);
      v46 = v45;
      v47 = (*(a2 + 24))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v47, v48);
      if (!mlir::verifyListOfOperandsOrIntegers(a1, "size", 4, HIDWORD(v4), v44, v46, v116, v117))
      {
        return 0;
      }

      v49 = (*(a2 + 56))(a2, a1);
      v51 = v50;
      v52 = (*(a2 + 32))(a2, a1);
      mlir::ValueRange::ValueRange(&v116, v52, v53);
      if (!mlir::verifyListOfOperandsOrIntegers(a1, "stride", 6, v6, v49, v51, v116, v117))
      {
        return 0;
      }

      v54 = (*(a2 + 40))(a2, a1);
      if (v55)
      {
        v56 = 8 * v55;
        while (1)
        {
          v57 = *v54;
          if (*v54 >= 0x8000000000000001)
          {
            break;
          }

          ++v54;
          v56 -= 8;
          if (!v56)
          {
            goto LABEL_55;
          }
        }

        v132 = "expected offsets to be non-negative, but got ";
        v135 = 259;
        mlir::Operation::emitError(a1, &v132, &v116);
        if (v116)
        {
          LODWORD(v129) = 2;
          v130 = v57;
          v86 = &v129;
          v87 = v119;
          if (v120 >= v121)
          {
            if (v119 <= &v129 && v119 + 24 * v120 > &v129)
            {
              v109 = &v129 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
              v87 = v119;
              v86 = v119 + v109;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
              v86 = &v129;
              v87 = v119;
            }
          }

          v88 = &v87[24 * v120];
          v89 = *v86;
          *(v88 + 2) = *(v86 + 2);
          *v88 = v89;
          ++v120;
        }

        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
        if (v116)
        {
          mlir::InFlightDiagnostic::report(&v116);
        }

        if (v128)
        {
          if (v127 != &v128)
          {
            free(v127);
          }

          v90 = __p;
          if (__p)
          {
            v91 = v126;
            v92 = __p;
            if (v126 != __p)
            {
              do
              {
                v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
              }

              while (v91 != v90);
              v92 = __p;
            }

            v126 = v90;
            operator delete(v92);
          }

          v32 = v123;
          if (!v123)
          {
            goto LABEL_112;
          }

          v93 = v124;
          v34 = v123;
          if (v124 == v123)
          {
            goto LABEL_111;
          }

          do
          {
            v95 = *--v93;
            v94 = v95;
            *v93 = 0;
            if (v95)
            {
              MEMORY[0x1AC55A040](v94, 0x1000C8077774924);
            }
          }

          while (v93 != v32);
          goto LABEL_110;
        }
      }

      else
      {
LABEL_55:
        v58 = (*(a2 + 48))(a2, a1);
        if (v59)
        {
          v60 = 8 * v59;
          v28 = 1;
          while (1)
          {
            v61 = *v58;
            if (*v58 >= 0x8000000000000001)
            {
              break;
            }

            ++v58;
            v60 -= 8;
            if (!v60)
            {
              return v28;
            }
          }

          v132 = "expected sizes to be non-negative, but got ";
          v135 = 259;
          mlir::Operation::emitError(a1, &v132, &v116);
          if (v116)
          {
            LODWORD(v129) = 2;
            v130 = v61;
            v97 = &v129;
            v98 = v119;
            if (v120 >= v121)
            {
              if (v119 <= &v129 && v119 + 24 * v120 > &v129)
              {
                v110 = &v129 - v119;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v98 = v119;
                v97 = v119 + v110;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v97 = &v129;
                v98 = v119;
              }
            }

            v99 = &v98[24 * v120];
            v100 = *v97;
            *(v99 + 2) = *(v97 + 2);
            *v99 = v100;
            ++v120;
          }

          v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
          if (v116)
          {
            mlir::InFlightDiagnostic::report(&v116);
          }

          if (v128 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v117);
          }
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      v111[0] = "expected mixed sizes rank to match mixed strides rank (";
      v112 = 259;
      mlir::Operation::emitError(a1, v111, &v116);
      (*(a2 + 72))(&v132, a2, a1);
      if (v116)
      {
        LODWORD(v129) = 5;
        v130 = v133;
        v62 = &v129;
        v63 = v119;
        if (v120 >= v121)
        {
          if (v119 <= &v129 && v119 + 24 * v120 > &v129)
          {
            v105 = &v129 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v63 = v119;
            v62 = v119 + v105;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v62 = &v129;
            v63 = v119;
          }
        }

        v64 = &v63[24 * v120];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        v66 = ++v120;
        if (v116)
        {
          LODWORD(v129) = 3;
          v130 = " vs ";
          v131[0] = 4;
          v67 = &v129;
          v68 = v119;
          if (v66 >= v121)
          {
            if (v119 <= &v129 && v119 + 24 * v66 > &v129)
            {
              v107 = &v129 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v66 + 1, 24);
              v68 = v119;
              v67 = v119 + v107;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v66 + 1, 24);
              v67 = &v129;
              v68 = v119;
            }
          }

          v69 = &v68[24 * v120];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          ++v120;
        }
      }

      (*(a2 + 80))(&v129, a2, a1);
      if (v116)
      {
        v113 = 5;
        v114 = v130;
        v71 = &v113;
        v72 = v119;
        if (v120 >= v121)
        {
          if (v119 <= &v113 && v119 + 24 * v120 > &v113)
          {
            v106 = &v113 - v119;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v72 = v119;
            v71 = (v119 + v106);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
            v71 = &v113;
            v72 = v119;
          }
        }

        v73 = &v72[24 * v120];
        v74 = *v71;
        *(v73 + 2) = *(v71 + 2);
        *v73 = v74;
        v75 = ++v120;
        if (v116)
        {
          v113 = 3;
          v114 = ") so the rank of the result type is well-formed.";
          v115 = 48;
          v76 = &v113;
          v77 = v119;
          if (v75 >= v121)
          {
            if (v119 <= &v113 && v119 + 24 * v75 > &v113)
            {
              v108 = &v113 - v119;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v75 + 1, 24);
              v77 = v119;
              v76 = (v119 + v108);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v75 + 1, 24);
              v76 = &v113;
              v77 = v119;
            }
          }

          v78 = &v77[24 * v120];
          v79 = *v76;
          *(v78 + 2) = *(v76 + 2);
          *v78 = v79;
          ++v120;
        }
      }

      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
      if (v129 != v131)
      {
        free(v129);
      }

      if (v132 != v134)
      {
        free(v132);
      }

      if (v116)
      {
        mlir::InFlightDiagnostic::report(&v116);
      }

      if (v128 == 1)
      {
        if (v127 != &v128)
        {
          free(v127);
        }

        v80 = __p;
        if (__p)
        {
          v81 = v126;
          v82 = __p;
          if (v126 != __p)
          {
            do
            {
              v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
            }

            while (v81 != v80);
            v82 = __p;
          }

          v126 = v80;
          operator delete(v82);
        }

        v32 = v123;
        if (!v123)
        {
          goto LABEL_112;
        }

        v83 = v124;
        v34 = v123;
        if (v124 == v123)
        {
          goto LABEL_111;
        }

        do
        {
          v85 = *--v83;
          v84 = v85;
          *v83 = 0;
          if (v85)
          {
            MEMORY[0x1AC55A040](v84, 0x1000C8077774924);
          }
        }

        while (v83 != v32);
        goto LABEL_110;
      }
    }
  }

  return v28;
}

llvm::raw_ostream *mlir::printDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v30[0] = a3;
  v30[1] = a4;
  v29[0] = a7;
  v29[1] = a8;
  v32[0] = a9;
  v32[1] = a10;
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
      v28 = 0;
      v31[0] = v29;
      v31[1] = &v28;
      v31[2] = a1;
      v31[3] = v30;
      v31[4] = &v28 + 4;
      v31[5] = v32;
      mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, *a5);
      if (a6 != 1)
      {
        v19 = 8 * a6;
        v20 = a5 + 1;
        v21 = v19 - 8;
        do
        {
          while (1)
          {
            v23 = (*(*a1 + 16))(a1);
            v24 = v23[4];
            if (v23[3] - v24 > 1uLL)
            {
              break;
            }

            llvm::raw_ostream::write(v23, ", ", 2uLL);
            v22 = *v20++;
            mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v22);
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_8;
            }
          }

          *v24 = 8236;
          v23[4] += 2;
          v25 = *v20++;
          mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(v31, v25);
          v21 -= 8;
        }

        while (v21);
      }

LABEL_8:
      result = (*(*a1 + 16))(a1);
      v27 = *(result + 4);
      if (v27 >= *(result + 3))
      {
        return llvm::raw_ostream::write(result, v16);
      }

      goto LABEL_12;
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
  v27 = *(result + 4);
  if (v27 < *(result + 3))
  {
LABEL_12:
    *(result + 4) = v27 + 1;
    *v27 = v16;
    return result;
  }

  return llvm::raw_ostream::write(result, v16);
}

BOOL mlir::parseDynamicIndexList(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v36 = a5;
  v51 = v53;
  v52 = 0x400000000;
  v34 = xmmword_1A7598A10;
  v28 = a1;
  v29 = &v33;
  v30 = a2;
  v31 = &v51;
  v32 = &v36;
  v33 = &v35;
  if ((*(*a1 + 392))())
  {
    v8 = (*(*a1 + 32))(a1);
    *a3 = mlir::Builder::getDenseI64ArrayAttr(v8, v51, v52);
    v9 = (*(*a1 + 32))(a1);
    *a4 = mlir::Builder::getDenseBoolArrayAttr(v9, v33, v34);
    v10 = 1;
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    v27 = 257;
    (*(*a1 + 24))(v40, a1, v11, v26);
    if (v40[0])
    {
      v37 = 3;
      v38 = "expected SSA value or integer";
      v39 = 29;
      v12 = &v37;
      v13 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v25 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v13 = v41;
          v12 = (v41 + v25);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v12 = &v37;
          v13 = v41;
        }
      }

      v14 = &v13[24 * v42];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v42;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v48;
        v18 = __p;
        if (v48 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v48 = v16;
        operator delete(v18);
      }

      v19 = v45;
      if (v45)
      {
        v20 = v46;
        v21 = v45;
        if (v46 != v45)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v45;
        }

        v46 = v19;
        operator delete(v21);
      }

      if (v41 != v44)
      {
        free(v41);
      }
    }
  }

  if (v33 != &v35)
  {
    free(v33);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  return v10;
}

uint64_t mlir::detail::sameOffsetsSizesAndStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v64[4] = *MEMORY[0x1E69E9840];
  (*(a2 + 40))(a2, a1);
  v13 = v12;
  (*(a4 + 40))(a4, a3);
  if (v13 != v14)
  {
    return 0;
  }

  (*(a2 + 48))(a2, a1);
  v16 = v15;
  (*(a4 + 48))(a4, a3);
  if (v16 != v17)
  {
    return 0;
  }

  (*(a2 + 56))(a2, a1);
  v19 = v18;
  (*(a4 + 56))(a4, a3);
  if (v19 != v20)
  {
    return 0;
  }

  (*(a2 + 64))(&__src, a2, a1);
  (*(a4 + 64))(&v53, a4, a3);
  __dst = v61;
  v60 = 0x400000000;
  v21 = v57;
  if (v57)
  {
    if (__src == v58)
    {
      v23 = v57;
      if (v57 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v61, v57, 8), (v23 = v57) != 0))
      {
        memcpy(__dst, __src, 8 * v23);
      }

      LODWORD(v60) = v21;
    }

    else
    {
      __dst = __src;
      v60 = v57;
      __src = v58;
      HIDWORD(v57) = 0;
    }

    LODWORD(v57) = 0;
  }

  v62 = v64;
  v63 = 0x400000000;
  v24 = v54;
  v25 = v53;
  if (v54)
  {
    if (v53 != v55)
    {
      v62 = v53;
      v63 = v54;
      v53 = v55;
      HIDWORD(v54) = 0;
      v25 = v55;
LABEL_23:
      LODWORD(v54) = 0;
      goto LABEL_24;
    }

    if (v54 < 5)
    {
      v26 = v54;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v54, 8);
      v26 = v54;
      v25 = v53;
      if (!v54)
      {
        goto LABEL_22;
      }
    }

    memcpy(v62, v25, 8 * v26);
    v25 = v53;
LABEL_22:
    LODWORD(v63) = v24;
    goto LABEL_23;
  }

LABEL_24:
  if (v25 != v55)
  {
    free(v25);
  }

  if (__src != v58)
  {
    free(__src);
  }

  v27 = v62;
  result = 1;
  if (v60 && v63)
  {
    v28 = __dst;
    v29 = 8 * v63 - 8;
    v30 = 8 * v60 - 8;
    do
    {
      result = a5(a6, *v28, *v27);
      if (!result)
      {
        break;
      }

      if (!v30)
      {
        break;
      }

      ++v28;
      ++v27;
      v31 = v29;
      v29 -= 8;
      v30 -= 8;
    }

    while (v31);
    v27 = v62;
  }

  if (v27 != v64)
  {
    v32 = result;
    free(v27);
    result = v32;
  }

  if (__dst != v61)
  {
    v33 = result;
    free(__dst);
    result = v33;
  }

  if (result)
  {
    (*(a2 + 72))(&__src, a2, a1);
    (*(a4 + 72))(&v53, a4, a3);
    __dst = v61;
    v60 = 0x400000000;
    v34 = v57;
    if (v57)
    {
      if (__src == v58)
      {
        v35 = v57;
        if (v57 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v61, v57, 8), (v35 = v57) != 0))
        {
          memcpy(__dst, __src, 8 * v35);
        }

        LODWORD(v60) = v34;
      }

      else
      {
        __dst = __src;
        v60 = v57;
        __src = v58;
        HIDWORD(v57) = 0;
      }

      LODWORD(v57) = 0;
    }

    v62 = v64;
    v63 = 0x400000000;
    v36 = v54;
    v37 = v53;
    if (!v54)
    {
      goto LABEL_58;
    }

    if (v53 != v55)
    {
      v62 = v53;
      v63 = v54;
      v53 = v55;
      HIDWORD(v54) = 0;
      v37 = v55;
LABEL_57:
      LODWORD(v54) = 0;
LABEL_58:
      if (v37 != v55)
      {
        free(v37);
      }

      if (__src != v58)
      {
        free(__src);
      }

      v39 = v62;
      result = 1;
      if (v60 && v63)
      {
        v40 = __dst;
        v41 = 8 * v63 - 8;
        v42 = 8 * v60 - 8;
        do
        {
          result = a5(a6, *v40, *v39);
          if (!result)
          {
            break;
          }

          if (!v42)
          {
            break;
          }

          ++v40;
          ++v39;
          v43 = v41;
          v41 -= 8;
          v42 -= 8;
        }

        while (v43);
        v39 = v62;
      }

      if (v39 != v64)
      {
        v44 = result;
        free(v39);
        result = v44;
      }

      if (__dst != v61)
      {
        v45 = result;
        free(__dst);
        result = v45;
      }

      if (result)
      {
        (*(a2 + 80))(&__src, a2, a1);
        (*(a4 + 80))(&v53, a4, a3);
        __dst = v61;
        v60 = 0x400000000;
        if (v57)
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&__dst, &__src);
        }

        v62 = v64;
        v63 = 0x400000000;
        if (v54)
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&v62, &v53);
        }

        if (v53 != v55)
        {
          free(v53);
        }

        if (__src != v58)
        {
          free(__src);
        }

        v46 = v62;
        result = 1;
        if (v60 && v63)
        {
          v47 = __dst;
          v48 = 8 * v60 - 8;
          v49 = 8 * v63 - 8;
          do
          {
            result = a5(a6, *v47, *v46);
            if (!result)
            {
              break;
            }

            if (!v48)
            {
              break;
            }

            ++v47;
            ++v46;
            v48 -= 8;
            v50 = v49;
            v49 -= 8;
          }

          while (v50);
          v46 = v62;
        }

        if (v46 != v64)
        {
          v51 = result;
          free(v46);
          result = v51;
        }

        if (__dst != v61)
        {
          v52 = result;
          free(__dst);
          return v52;
        }
      }

      return result;
    }

    if (v54 < 5)
    {
      v38 = v54;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v54, 8);
      v38 = v54;
      v37 = v53;
      if (!v54)
      {
        goto LABEL_56;
      }
    }

    memcpy(v62, v37, 8 * v38);
    v37 = v53;
LABEL_56:
    LODWORD(v63) = v36;
    goto LABEL_57;
  }

  return result;
}

uint64_t mlir::detail::getNumDynamicEntriesUpToIdx(int64x2_t *a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 < 7)
  {
    LODWORD(v4) = 0;
    v5 = a1;
    do
    {
LABEL_8:
      v18 = v5->i64[0];
      v5 = (v5 + 8);
      if (v18 == 0x8000000000000000)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }
    }

    while (v5 != (a1 + 8 * a3));
    return v4;
  }

  v7 = v3 + 1;
  v8 = (v3 + 1) & 0x3FFFFFFFFFFFFFF8;
  v5 = (a1 + 8 * v8);
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = vnegq_f64(0);
  v12 = v8;
  v13 = 0uLL;
  do
  {
    v14 = v9[-2];
    v15 = v9[-1];
    v16 = *v9;
    v17 = v9[1];
    v9 += 4;
    v10 = vsubq_s32(v10, vuzp1q_s32(vceqq_s64(v14, v11), vceqq_s64(v15, v11)));
    v13 = vsubq_s32(v13, vuzp1q_s32(vceqq_s64(v16, v11), vceqq_s64(v17, v11)));
    v12 -= 8;
  }

  while (v12);
  v4 = vaddvq_s32(vaddq_s32(v13, v10));
  if (v7 != v8)
  {
    goto LABEL_8;
  }

  return v4;
}

llvm::raw_ostream *mlir::printDynamicIndexList(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<BOOL>,mlir::TypeRange,mlir::AsmParser::Delimiter)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  if (!*(*a1 + 8) || *(**a1 + **(a1 + 8)) != 1)
  {
LABEL_5:
    v6 = *(a1 + 16);
    if (a2 == 0x8000000000000000)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = (*(*v6 + 16))(v6);
    result = llvm::raw_ostream::operator<<(v13, a2);
    v12 = *a1;
    if (!*(*a1 + 8))
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 91;
    ++v4[4];
    goto LABEL_5;
  }

  llvm::raw_ostream::write(v4, "[", 1uLL);
  v6 = *(a1 + 16);
  if (a2 != 0x8000000000000000)
  {
    goto LABEL_14;
  }

LABEL_6:
  result = (*(*v6 + 160))(v6, *(**(a1 + 24) + 32 * **(a1 + 32) + 24));
  if (*(*(a1 + 40) + 8))
  {
    v8 = *(a1 + 16);
    v9 = (*(*v8 + 16))(v8);
    v10 = v9[4];
    if ((v9[3] - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 14880;
      v9[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " : ", 3uLL);
    }

    v11 = mlir::TypeRange::dereference_iterator(**(a1 + 40), **(a1 + 32));
    result = (*(*v8 + 32))(v8, v11);
  }

  ++**(a1 + 32);
  v12 = *a1;
  if (*(*a1 + 8))
  {
LABEL_15:
    if (*(*v12 + **(a1 + 8)) == 1)
    {
      result = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v14 = *(result + 4);
      if (*(result + 3) == v14)
      {
        result = llvm::raw_ostream::write(result, "]", 1uLL);
      }

      else
      {
        *v14 = 93;
        ++*(result + 4);
      }
    }
  }

LABEL_19:
  ++**(a1 + 8);
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::parseDynamicIndexList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<long long> &,mlir::detail::DenseArrayAttrImpl<BOOL> &,llvm::SmallVectorImpl<mlir::Type> *,mlir::AsmParser::Delimiter)::$_0>(uint64_t *a1)
{
  memset(v28, 0, 24);
  v2 = (*(**a1 + 712))(*a1, v28, 1);
  v3 = a1[1];
  v4 = (*(**a1 + 320))();
  v5 = v3[1];
  if ((v5 + 1) > v3[2])
  {
    v23 = v4;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v3, v3 + 3, v5 + 1, 1);
    v4 = v23;
    v5 = v3[1];
  }

  *(*v3 + v5) = v4 & 1;
  ++v3[1];
  if (v2 & 0x100) != 0 && (v2)
  {
    v6 = a1[2];
    v7 = *(v6 + 8);
    v8 = *v6;
    v9 = v28;
    if (v7 >= *(v6 + 12))
    {
      if (v8 <= v28 && v8 + 32 * v7 > v28)
      {
        v26 = v28 - v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1[2], (v6 + 16), v7 + 1, 32);
        v8 = *v6;
        v9 = &v26[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1[2], (v6 + 16), v7 + 1, 32);
        v8 = *v6;
        v9 = v28;
      }
    }

    v10 = (v8 + 32 * *(v6 + 8));
    v11 = *(v9 + 1);
    *v10 = *v9;
    v10[1] = v11;
    ++*(v6 + 8);
    v12 = a1[3];
    v13 = *(v12 + 8);
    if (v13 >= *(v12 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1[3], (v12 + 16), v13 + 1, 8);
      LODWORD(v13) = *(v12 + 8);
    }

    *(*v12 + 8 * v13) = 0x8000000000000000;
    ++*(v12 + 8);
    v14 = *a1[4];
    if (v14)
    {
      v15 = *a1;
      v16 = *(v14 + 2);
      if (v16 >= *(v14 + 3))
      {
        v24 = *a1;
        v25 = llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(*a1[4]);
        if (((*(*v24 + 576))(v24, v25) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v17 = *v14;
        *(*v14 + 8 * v16) = 0;
        v18 = v16 + 1;
        *(v14 + 2) = v18;
        if (((*(*v15 + 576))(v15, v17 + 8 * v18 - 8) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  else
  {
    v27 = 0;
    if ((mlir::AsmParser::parseInteger<long long>(*a1, &v27) & 1) == 0)
    {
      return 0;
    }

    v19 = a1[3];
    v20 = v27;
    v21 = *(v19 + 8);
    if (v21 >= *(v19 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1[3], (v19 + 16), v21 + 1, 8);
      LODWORD(v21) = *(v19 + 8);
    }

    *(*v19 + 8 * v21) = v20;
    ++*(v19 + 8);
    if (*(*a1[1] + *(a1[1] + 8) - 1) != 1)
    {
      return 1;
    }
  }

  return ((*(**a1 + 336))(*a1) & 1) != 0;
}

mlir::MPSToANECTypeConverter *mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(mlir::MPSToANECTypeConverter *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 264) = 0u;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  v2 = this + 232;
  *(this + 168) = 0u;
  *this = &unk_1F1A0C130;
  *(this + 1) = this + 24;
  *(this + 2) = 0x400000000;
  *(this + 19) = this + 168;
  *(this + 41) = 2;
  *(this + 29) = this + 248;
  *(this + 61) = 2;
  *(this + 39) = this + 328;
  *(this + 81) = 2;
  *(this + 49) = this + 408;
  *(this + 101) = 2;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  *this = &unk_1F1A0C110;
  v6 = &unk_1F1A0C150;
  v7 = mlir::MPSToANECTypeConverter::canonicalizeType;
  v8 = &v6;
  mlir::TypeConverter::registerConversion(this, &v6);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F1A0C198;
  v7 = mlir::MPSToANECTypeConverter::tensorToMemRef;
  v8 = &v6;
  mlir::TypeConverter::registerConversion(this, &v6);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F1A0C1E0;
  v7 = mlir::MPSToANECTypeConverter::materializeTypeChange;
  v8 = &v6;
  v3 = *(this + 60);
  if (v3 >= *(this + 61))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(v2, &v6);
  }

  else
  {
    *(*(this + 29) + 32 * v3 + 24) = *(this + 29) + 32 * v3;
    (*(*v8 + 3))(v8);
    ++*(this + 60);
  }

  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v6 = &unk_1F1A0C1E0;
  v7 = mlir::MPSToANECTypeConverter::materializeTypeChangeWithPromotion;
  v8 = &v6;
  v4 = *(this + 80);
  if (v4 >= *(this + 81))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(this + 312, &v6);
  }

  else
  {
    *(*(this + 39) + 32 * v4 + 24) = *(this + 39) + 32 * v4;
    (*(*v8 + 3))(v8);
    ++*(this + 80);
  }

  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  return this;
}

uint64_t mlir::MPSToANECTypeConverter::canonicalizeType(uint64_t result)
{
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::MPSToANECTypeConverter::canonicalizeIntegerType(result);
  }

  return result;
}

uint64_t mlir::MPSToANECTypeConverter::tensorToMemRef(uint64_t a1)
{
  v12 = a1;
  ElementType = mlir::TensorType::getElementType(&v12);
  v2 = ElementType;
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = mlir::MPSToANECTypeConverter::canonicalizeIntegerType(ElementType);
  }

  if (!mlir::TensorType::hasRank(&v12))
  {
    return mlir::UnrankedMemRefType::get(v2, 0);
  }

  LOBYTE(v13[0]) = 0;
  v14 = 0;
  v3 = mlir::TensorType::cloneWith(&v12, v13, v2);
  if (v3)
  {
    v4 = v3;
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  v13[0] = mlir::getRankPromotionTypeForANE(v3, v5);
  v13[1] = v7;
  Shape = mlir::ShapedType::getShape(v13);
  v10 = v9;
  isSplat = mlir::ElementsAttr::isSplat(v13);
  return mlir::MemRefType::get(Shape, v10, isSplat, 0, 0, 0);
}

uint64_t mlir::MPSToANECTypeConverter::materializeTypeChange(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10[0] = a3;
  v10[1] = a4;
  v8 = mlir::ValueRange::dereference_iterator(v10, 0);
  return mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(a1, a5, &v9, &v8) - 16;
}

uint64_t mlir::MPSToANECTypeConverter::materializeTypeChangeWithPromotion(mlir::OpBuilder *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = a4;
  if (a2)
  {
    a2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  }

  v11[0] = mlir::getRankPromotionTypeForANE(v6, a2);
  v11[1] = v8;
  v10 = mlir::ValueRange::dereference_iterator(v12, 0);
  return mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(a1, a5, v11, &v10) - 16;
}

void sub_1A6E50F44()
{

  JUMPOUT(0x1AC55A070);
}

void mlir::TypeConverter::~TypeConverter(pthread_rwlock_t **this)
{
  mlir::TypeConverter::~TypeConverter(this);
}

{
  *this = &unk_1F1A0C130;
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 65);
  v2 = *(this + 128);
  v3 = this[62];
  if (v2)
  {
    v4 = v3 + 24;
    v5 = 40 * v2;
    do
    {
      if ((*(v4 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v4 - 2);
        if (v4 != v6)
        {
          free(v6);
        }
      }

      v4 += 40;
      v5 -= 40;
    }

    while (v5);
    v3 = this[62];
    v7 = 40 * *(this + 128);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void sub_1A6E50F80()
{

  JUMPOUT(0x1AC55A070);
}

void mlir::TypeConverter::registerConversion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= *(a1 + 20))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(a1 + 8, a2);
    v6 = *(a1 + 480);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(a1 + 8) + 32 * v3;
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
        LODWORD(v3) = *(a1 + 16);
      }

      else
      {
        *(v4 + 24) = v5;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      *(v4 + 24) = 0;
    }

    *(a1 + 16) = v3 + 1;
    v6 = *(a1 + 480);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  if (!*(a1 + 484))
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = *(a1 + 488);
  if (v7 > 4 * v6 && v7 >= 0x41)
  {
    llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(a1 + 472);
LABEL_12:
    v8 = *(a1 + 504);
    if (v8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7)
  {
    v9 = *(a1 + 472);
    v10 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v13 = (v9 + 16 * v12);
      v14 = (v9 + 16);
      v15 = v12;
      do
      {
        *(v14 - 2) = -4096;
        *v14 = -4096;
        v14 += 4;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *(a1 + 472);
    }

    v16 = (v9 + 16 * v7);
    do
    {
      *v13 = -4096;
      v13 += 2;
    }

    while (v13 != v16);
  }

LABEL_23:
  *(a1 + 480) = 0;
  v8 = *(a1 + 504);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (!*(a1 + 508))
  {
    return;
  }

LABEL_25:
  v17 = *(a1 + 512);
  if (v17 <= 4 * v8 || v17 < 0x41)
  {
    if (!v17)
    {
LABEL_38:
      *(a1 + 504) = 0;
      return;
    }

    v18 = *(a1 + 496) + 24;
    v19 = 40 * v17;
    while (1)
    {
      v20 = *(v18 - 24);
      if (v20 != -8192)
      {
        if (v20 == -4096)
        {
          goto LABEL_33;
        }

        v21 = *(v18 - 16);
        if (v18 != v21)
        {
          free(v21);
        }
      }

      *(v18 - 24) = -4096;
LABEL_33:
      v18 += 40;
      v19 -= 40;
      if (!v19)
      {
        goto LABEL_38;
      }
    }
  }

  llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(a1 + 496);
}

char *llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v22);
  v6 = *(a1 + 8);
  v7 = &v5[32 * v6];
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 3) = v7;
      (*(**(a2 + 24) + 24))(*(a2 + 24));
      v6 = *(a1 + 8);
      v9 = *a1;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v7 + 3) = v8;
      *(a2 + 24) = 0;
      v9 = *a1;
      if (!v6)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *(v7 + 3) = 0;
    v9 = *a1;
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v10 = 32 * v6;
  v11 = v5;
  do
  {
    v12 = v9[3];
    if (v12)
    {
      if (v9 == v12)
      {
        *(v11 + 3) = v11;
        (*(*v9[3] + 24))(v9[3], v11);
      }

      else
      {
        *(v11 + 3) = v12;
        v9[3] = 0;
      }
    }

    else
    {
      *(v11 + 3) = 0;
    }

    v11 += 32;
    v9 += 4;
    v10 -= 32;
  }

  while (v10);
  v9 = *a1;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = 4 * v13;
    v15 = &v9[v14 - 4];
    v16 = -(v14 * 8);
    v17 = v15;
    do
    {
      v18 = *(v17 + 24);
      if (v17 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v17 -= 32;
      v15 -= 32;
      v16 += 32;
    }

    while (v16);
    v9 = *a1;
  }

LABEL_23:
  v19 = v22;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v5;
  v20 = (*(a1 + 8) + 1);
  *(a1 + 8) = v20;
  *(a1 + 12) = v19;
  return &v5[32 * v20 - 32];
}

uint64_t llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (16 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = (v5 + 16 * v8);
      v10 = (v5 + 16);
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
        return result;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = (v5 + 16 * v1);
    do
    {
      *v9 = -4096;
      v9 = (v9 + 16);
    }

    while (v9 != v12);
  }

  return result;
}

void llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 5 * v2;
  if (v2)
  {
    v5 = *a1 + 24;
    v6 = 40 * v2;
    do
    {
      if ((*(v5 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v8 = 64;
  }

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v4));
  }

  *(a1 + 8) = 0;
  if (v9)
  {
    v10 = *a1;
    v11 = 40 * v9 - 40;
    if (v11 < 0x28)
    {
      v12 = *a1;
LABEL_20:
      v16 = (v10 + 40 * v9);
      do
      {
        *v12 = -4096;
        v12 = (v12 + 40);
      }

      while (v12 != v16);
      return;
    }

    v13 = v11 / 0x28 + 1;
    v12 = (v10 + 40 * (v13 & 0xFFFFFFFFFFFFFFELL));
    v14 = *a1;
    v15 = v13 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      *(v14 + 5) = -4096;
      v14 = (v14 + 80);
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_PFS5_S5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSE_15SmallVectorImplIS5_EEEEEE4typeEOSA_EUlS5_SJ_E_EENS9_IXsr3stdE14is_invocable_vISA_SB_SJ_EESL_E4typeESO_EUlS5_SJ_E_NS_9allocatorISS_EESK_E7__cloneEPNS0_6__baseISK_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A0C150;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_PFS5_S5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSE_15SmallVectorImplIS5_EEEEEE4typeEOSA_EUlS5_SJ_E_EENS9_IXsr3stdE14is_invocable_vISA_SB_SJ_EESL_E4typeESO_EUlS5_SJ_E_NS_9allocatorISS_EESK_EclEOS5_SJ_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = (*(a1 + 8))();
  if (v4)
  {
    v5 = *(a3 + 8);
    if (v5 >= *(a3 + 12))
    {
      v7 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5 + 1, 8);
      v4 = v7;
      LODWORD(v5) = *(a3 + 8);
    }

    *(*a3 + 8 * v5) = v4;
    ++*(a3 + 8);
  }

  return (v4 != 0) | 0x100u;
}

uint64_t mlir::MPSToANECTypeConverter::canonicalizeIntegerType(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::getIntOrFloatBitWidth(&v5) == 4 && mlir::Type::isSignedInteger(&v5))
  {
    Context = mlir::Attribute::getContext(&v5);
    Width = 4;
  }

  else if (mlir::Type::getIntOrFloatBitWidth(&v5) > 7)
  {
    if (mlir::IntegerType::getSignedness(&v5))
    {
      return v5;
    }

    v4 = mlir::Attribute::getContext(&v5);
    Width = mlir::IntegerType::getWidth(&v5);
    Context = v4;
  }

  else
  {
    Context = mlir::Attribute::getContext(&v5);
    Width = 8;
  }

  return mlir::IntegerType::get(Context, Width, 1u);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_10TensorTypeEZNKS3_12wrapCallbackIS5_PFNS_8optionalINS2_4TypeEEES5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS7_IN4llvm13LogicalResultEEES8_RNSG_15SmallVectorImplIS8_EEEEEE4typeEOSD_EUlS5_SL_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SL_EESN_E4typeESQ_EUlS8_SL_E_NS_9allocatorISU_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A0C198;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_10TensorTypeEZNKS3_12wrapCallbackIS5_PFNS_8optionalINS2_4TypeEEES5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS7_IN4llvm13LogicalResultEEES8_RNSG_15SmallVectorImplIS8_EEEEEE4typeEOSD_EUlS5_SL_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SL_EESN_E4typeESQ_EUlS8_SL_E_NS_9allocatorISU_EESM_EclEOS8_SL_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(**a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v4 && (v6 = (*(a1 + 8))(), (v7 & 1) != 0))
  {
    if (v6)
    {
      v8 = a3;
      v9 = a3[2];
      if (v9 >= a3[3])
      {
        v13 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v9 + 1, 8);
        v6 = v13;
        v8 = a3;
        LODWORD(v9) = a3[2];
      }

      *(*v8 + 8 * v9) = v6;
      ++v8[2];
    }

    v10 = v6 != 0;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return v10 | (v11 << 8);
}

char *llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v22);
  v6 = *(a1 + 8);
  v7 = &v5[32 * v6];
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 3) = v7;
      (*(**(a2 + 24) + 24))(*(a2 + 24));
      v6 = *(a1 + 8);
      v9 = *a1;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v7 + 3) = v8;
      *(a2 + 24) = 0;
      v9 = *a1;
      if (!v6)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *(v7 + 3) = 0;
    v9 = *a1;
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v10 = 32 * v6;
  v11 = v5;
  do
  {
    v12 = v9[3];
    if (v12)
    {
      if (v9 == v12)
      {
        *(v11 + 3) = v11;
        (*(*v9[3] + 24))(v9[3], v11);
      }

      else
      {
        *(v11 + 3) = v12;
        v9[3] = 0;
      }
    }

    else
    {
      *(v11 + 3) = 0;
    }

    v11 += 32;
    v9 += 4;
    v10 -= 32;
  }

  while (v10);
  v9 = *a1;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = 4 * v13;
    v15 = &v9[v14 - 4];
    v16 = -(v14 * 8);
    v17 = v15;
    do
    {
      v18 = *(v17 + 24);
      if (v17 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v17 -= 32;
      v15 -= 32;
      v16 += 32;
    }

    while (v16);
    v9 = *a1;
  }

LABEL_23:
  v19 = v22;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v5;
  v20 = (*(a1 + 8) + 1);
  *(a1 + 8) = v20;
  *(a1 + 12) = v19;
  return &v5[32 * v20 - 32];
}

uint64_t std::__function::__func<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>(std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&>,std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A0C1E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>(std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&>,std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::operator()(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3)
  {
    return (*(a1 + 8))(a2, *a3, *a4, a4[1], *a5);
  }

  else
  {
    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::UnrealizedConversionCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::UnrealizedConversionCast,mlir::Type &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::UnrealizedConversionCast,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t std::__function::__func<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0,std::allocator<mlir::MPSToANECOpCreator::MPSToANECOpCreator(mlir::MLIRContext *,mlir::anec::Family,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,unsigned int,long long,long long,llvm::StringRef,BOOL)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(*a2))
  {
    v5 = 0;
    InterfaceFor = 0;
LABEL_6:
    FunctionType = 1;
    return FunctionType | 0x100u;
  }

  if (!v2)
  {
    v5 = 0;
    InterfaceFor = 0;
    goto LABEL_6;
  }

  v5 = v2;
  InterfaceFor = mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(v2);
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v5);
  return FunctionType | 0x100u;
}

uint64_t mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::silc::BufferizationInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::silc::BufferizationInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::silc::BufferizationInterface,mlir::silc::detail::BufferizationInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}