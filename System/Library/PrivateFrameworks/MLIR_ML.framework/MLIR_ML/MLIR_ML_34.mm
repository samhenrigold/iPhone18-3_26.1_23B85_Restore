void anonymous namespace::CreateOperationRewrite::rollback(_anonymous_namespace_::CreateOperationRewrite *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = v3[11];
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((&v3[4 * ((v4 >> 23) & 1) + 17] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v3[10]);
    v6 = &v5[3 * (v4 & 0x7FFFFF)];
    do
    {
      while (*v5 != v5)
      {
        v7 = v5[1];
        if (v7)
        {
          v8 = v7 - 8;
        }

        else
        {
          v8 = 0;
        }

        llvm::ilist_traits<mlir::Block>::removeNodeFromList(v5, v8);
        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
        *v10 = v9;
        *(v9 + 8) = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
      }

      v5 += 3;
    }

    while (v5 != v6);
    v3 = *(this + 3);
  }

  v11 = v3[9];
  if (v11)
  {
    v12 = (v3 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, i);
      while (1)
      {
        v15 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v16 = v15[1];
        if (v16)
        {
          v17 = *v15;
          *v16 = *v15;
          if (v17)
          {
            *(v17 + 8) = v16;
          }
        }

        *v15 = 0;
        v15[1] = 0;
        v15[3] = 0;
      }
    }

    v3 = *(this + 3);
  }

  mlir::Operation::erase(v3, a2);
}

uint64_t anonymous namespace::CreateOperationRewrite::commit(_anonymous_namespace_::CreateOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), 0, 0);
  }

  return result;
}

void anonymous namespace::MoveOperationRewrite::rollback(_anonymous_namespace_::MoveOperationRewrite *this)
{
  if (*(this + 5))
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    v3 = v2;
    v4 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    v3 = (v4 + 32);
  }

  v5 = *(*(this + 3) + 16);
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
  v7 = *(v6 + 8);
  if (v6 != v3 && v7 != v3)
  {
    v9 = v6;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v4 + 32, v5 + 32, v6, v7);
    if (v7 != v9)
    {
      v10 = *v7;
      v11 = *v9;
      *(v11 + 8) = v7;
      *v7 = v11;
      v12 = *v3;
      *(v10 + 8) = v3;
      *v9 = v12;
      *(v12 + 8) = v9;
      *v3 = v10;
    }
  }
}

uint64_t anonymous namespace::MoveOperationRewrite::commit(_anonymous_namespace_::MoveOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

unint64_t anonymous namespace::ReplaceOperationRewrite::rollback(unint64_t this)
{
  v1 = *(this + 24);
  v2 = *(v1 + 36);
  v3 = v1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = this;
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
      v11 = *(v5 + 16);
      v12 = v11[15].i32[0];
      if (v12)
      {
        v13 = v11[13];
        v14 = 0x9DDFEA08EB382D69 * ((8 * this - 0xAE502812AA7333) ^ HIDWORD(this));
        v15 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v14 >> 47) ^ v14);
        LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
        v16 = v12 - 1;
        v9 = v14 & (v12 - 1);
        v10 = *(*&v13 + 16 * v9);
        if (v10 == this)
        {
LABEL_8:
          *(*&v13 + 16 * v9) = -8192;
          v11[14] = vadd_s32(v11[14], 0x1FFFFFFFFLL);
        }

        else
        {
          v8 = 1;
          while (v10 != -4096)
          {
            v7 = v9 + v8++;
            v9 = v7 & v16;
            v10 = *(*&v13 + 16 * v9);
            if (v10 == this)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return this;
}

void anonymous namespace::ReplaceOperationRewrite::commit(_anonymous_namespace_::ReplaceOperationRewrite *this, mlir::RewriterBase *a2)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2);
  if (v4)
  {
    if (mlir::RewriterBase::Listener::classof(*(a2 + 2)))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 3);
  v7 = *(v6 + 36);
  if (v7)
  {
    v8 = v6 - 16;
  }

  else
  {
    v8 = 0;
  }

  v43 = v45;
  v44 = 0x600000000;
  v41 = v5;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
      v12 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v10 == NextResultAtOffset || v12 && (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != v12)
      {
        v10 = 0;
      }

      v45[i] = v10;
    }

    v5 = v41;
    v6 = *(this + 3);
    v13 = (v44 + v7);
    LODWORD(v44) = v44 + v7;
    if (v41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    LODWORD(v44) = 0;
    if (v5)
    {
LABEL_20:
      mlir::ValueRange::ValueRange(v42, v43, v13);
      (*(*v5 + 56))(v5, v6, v42[0], v42[1]);
      v6 = *(this + 3);
    }
  }

  v14 = *(v6 + 36);
  if (v14)
  {
    v15 = v6 - 16;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = 0;
    v17 = v43;
    do
    {
      v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v16);
      v19 = *v17;
      if (*v17)
      {
        v20 = *v18;
        if (*v18)
        {
          do
          {
            v21 = *v20;
            v22 = v20[2];
            (*(*a2 + 40))(a2, v22);
            v23 = v20[1];
            if (v23)
            {
              v24 = *v20;
              *v23 = *v20;
              if (v24)
              {
                v24[1] = v23;
              }
            }

            v20[3] = v19;
            v20[1] = v19;
            v25 = *v19;
            *v20 = *v19;
            if (v25)
            {
              *(v25 + 8) = v20;
            }

            *v19 = v20;
            (*(*a2 + 48))(a2, v22);
            v20 = v21;
          }

          while (v21);
        }
      }

      ++v16;
      ++v17;
    }

    while (v16 != v14);
  }

  v26 = *(*(*(this + 2) + 376) + 16);
  if (v26)
  {
    v27 = v26[2].i32[0];
    if (v27)
    {
      v28 = *v26;
      v29 = *(this + 3);
      v30 = v27 - 1;
      v31 = ((v29 >> 4) ^ (v29 >> 9)) & (v27 - 1);
      v32 = *(*v26 + 8 * v31);
      if (v29 == v32)
      {
LABEL_39:
        *(*&v28 + 8 * v31) = -8192;
        v26[1] = vadd_s32(v26[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v39 = 1;
        while (v32 != -4096)
        {
          v40 = v31 + v39++;
          v31 = v40 & v30;
          v32 = *(*&v28 + 8 * v31);
          if (v29 == v32)
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  v33 = *(this + 3);
  if (v41)
  {
    v42[0] = &v41;
    v33 = *(this + 3);
  }

  v34 = *(v33 + 2);
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v34 + 32, v35);
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
  v37 = *v36;
  v38 = v36[1];
  *v38 = *v36;
  *(v37 + 8) = v38;
  *v36 = 0;
  v36[1] = 0;
  if (v43 != v45)
  {
    free(v43);
  }
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(mlir::Operation *,mlir::ValueRange)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 280), &v5, v6);
  if (v6[16] == 1)
  {
    v4 = *(v2 + 312);
    if (v4 >= *(v2 + 316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 304) + 8 * v4) = v5;
    ++*(v2 + 312);
  }

  return result;
}

void anonymous namespace::EraseBlockRewrite::~EraseBlockRewrite(_anonymous_namespace_::EraseBlockRewrite *this)
{
  *this = &unk_286866428;
}

{
  *this = &unk_286866428;
  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::EraseBlockRewrite::rollback(_anonymous_namespace_::EraseBlockRewrite *this)
{
  v4 = this + 32;
  v2 = *(this + 4);
  v3 = *(v4 + 1);
  v5 = *(this + 3);
  if (v3)
  {
    v6 = (v3 + 8);
  }

  else
  {
    v6 = v2;
  }

  result = llvm::ilist_traits<mlir::Block>::addNodeToList(v2, *(this + 3));
  v8 = *v6;
  *(v5 + 8) = *v6;
  *(v5 + 16) = v6;
  v9 = v5 + 8;
  *(v8 + 8) = v9;
  *v6 = v9;
  *(this + 3) = 0;
  return result;
}

uint64_t anonymous namespace::EraseBlockRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = this;
    this = mlir::RewriterBase::Listener::classof(*(a2 + 2));
    if (this)
    {
      v4 = *(v3 + 24);
      v5 = *(*v2 + 32);

      return v5(v2, v4);
    }
  }

  return this;
}

mlir::Block *anonymous namespace::EraseBlockRewrite::cleanup(mlir::Block **this, mlir::RewriterBase *a2)
{
  mlir::Block::dropAllDefinedValueUses(this[3]);
  result = this[3];
  if (result)
  {
    mlir::Block::~Block(result);
    result = MEMORY[0x259C63180]();
  }

  this[3] = 0;
  return result;
}

void anonymous namespace::CreateBlockRewrite::rollback(_anonymous_namespace_::CreateBlockRewrite *this)
{
  v2 = *(this + 3);
  v3 = v2 + 32;
  if (*(v2 + 4) != (v2 + 32))
  {
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v3, v4);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
      v6 = *v5;
      v7 = v5[1];
      *v7 = *v5;
      *(v6 + 8) = v7;
      *v5 = 0;
      v5[1] = 0;
    }

    while (*(v2 + 4) != v3);
    v2 = *(this + 3);
  }

  v8 = *v2;
  if (*v2)
  {
    do
    {
      v11 = v8[1];
      if (v11)
      {
        v12 = *v8;
        *v11 = *v8;
        if (v12)
        {
          *(v12 + 8) = v11;
        }
      }

      *v8 = 0;
      v8[1] = 0;
      v8[3] = 0;
      v8 = *v2;
    }

    while (*v2);
    Parent = mlir::Block::getParent(*(this + 3));
    v10 = *(this + 3);
    if (Parent)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = mlir::Block::getParent(v2);
    v10 = *(this + 3);
    if (v9)
    {
LABEL_6:

      mlir::Block::erase(v10);
      return;
    }
  }

  if (v10)
  {
    mlir::Block::~Block(v10);

    JUMPOUT(0x259C63180);
  }
}

uint64_t anonymous namespace::CreateBlockRewrite::commit(_anonymous_namespace_::CreateBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::rollback(_anonymous_namespace_::MoveBlockRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (v2 + 8);
    v4 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    v3 = v4;
  }

  result = mlir::Block::getParent(*(this + 3));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[1];
  if (v7 != v3 && v8 != v3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(v4, result, v7, v7[1]);
    if (v8 != v7)
    {
      v10 = *v8;
      v11 = *v7;
      *(v11 + 8) = v8;
      *v8 = v11;
      v12 = *v3;
      *(v10 + 8) = v3;
      *v7 = v12;
      *(v12 + 8) = v7;
      *v3 = v10;
    }
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::commit(_anonymous_namespace_::MoveBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

void anonymous namespace::ModifyOperationRewrite::~ModifyOperationRewrite(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  *this = &unk_286866518;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }
}

{
  *this = &unk_286866518;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ModifyOperationRewrite::rollback(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(this + 3) + 24) = *(this + 5);
  mlir::Operation::setAttrs(*(this + 3), *(this + 6));
  v2 = *(this + 3);
  mlir::ValueRange::ValueRange(&v8, *(this + 7), *(this + 16));
  mlir::Operation::setOperands(v2, v8, v9);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 17);
    v6 = 8 * v3;
    do
    {
      mlir::Operation::setSuccessor(*(this + 3), *(v5 + 8 * v4), v4);
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    mlir::Operation::copyProperties(*(this + 3), *(this + 21));
    (*(**(this + 4) + 128))(*(this + 4), v7);
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

void anonymous namespace::ModifyOperationRewrite::commit(_anonymous_namespace_::ModifyOperationRewrite *this, mlir::RewriterBase *a2)
{
  v3 = *(a2 + 2);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a2 + 2)))
  {
    (*(*v3 + 40))(v3, *(this + 3));
  }

  if (*(this + 21))
  {
    (*(**(this + 4) + 128))(*(this + 4));
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

uint64_t mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v9)
  {
    goto LABEL_77;
  }

  v10 = Iterable;
  v11 = (Iterable + 24 * v9);
  do
  {
    mlir::ForwardDominanceIterator<false>::makeIterable(v10, &v62);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v54, &v58, &v62);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if (v65 != v64)
    {
      if (((v65 - v64) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_84;
    }

    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v48, &v50, &v66);
    __p = 0;
    v52 = 0;
    v53 = 0;
    if (v69 != v68)
    {
      if (((v69 - v68) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_84:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 0;
    v13 = v59;
    v14 = v60;
    if (v60 != v59)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (v13 != v14)
    {
      v15 = v12 + 16;
      v16 = (v13 + 2);
      do
      {
        v17 = v16 - 16;
        if (*(v16 - 2) != *(v15 - 2))
        {
          goto LABEL_21;
        }

        v18 = v16[8];
        v19 = v15[8];
        if (v18 != v19 || v18 == 0)
        {
          if (v18 != v19)
          {
            goto LABEL_21;
          }
        }

        else if (*v16 != *v15)
        {
LABEL_21:
          while (2)
          {
            v21 = *(v14 - 4);
            v22 = *(v21 + 40);
            v23 = v21 + 32;
            while (v22 != v23)
            {
              v24 = *(v22 + 8);
              llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
              v26 = mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v25, a2, a3, a4);
              v22 = v24;
              if (!v26)
              {
                v46 = 0;
                v12 = __p;
                if (__p)
                {
                  goto LABEL_57;
                }

                goto LABEL_58;
              }
            }

            v14 = v60;
LABEL_27:
            v27 = *(v14 - 4);
            if ((*(v14 - 1) & 1) == 0)
            {
              mlir::SuccessorRange::SuccessorRange(v70, *(v14 - 4));
              *(v14 - 3) = v70[0];
              *(v14 - 2) = 0;
              *(v14 - 8) = 1;
            }

            while (1)
            {
              mlir::SuccessorRange::SuccessorRange(v70, v27);
              v29 = *(v14 - 2);
              if (v29 == v70[1])
              {
                v14 = v60 - 4;
                v60 = v14;
                if (v59 == v14)
                {
                  goto LABEL_54;
                }

                goto LABEL_27;
              }

              v30 = *(v14 - 3);
              *(v14 - 2) = (v29 + 1);
              v31 = *(v30 + 32 * v29 + 24);
              if (v55 == v54)
              {
                v32 = v57;
                if (v57)
                {
                  v33 = 8 * v57;
                  v34 = v54;
                  while (*v34 != v31)
                  {
                    ++v34;
                    v33 -= 8;
                    if (!v33)
                    {
                      goto LABEL_29;
                    }
                  }

                  continue;
                }

LABEL_29:
                if (v57 < v56)
                {
                  break;
                }
              }

              llvm::SmallPtrSetImplBase::insert_imp_big(&v54, v31);
              if (v28)
              {
                goto LABEL_39;
              }
            }

            ++v57;
            v54[v32] = v31;
LABEL_39:
            v35 = v60;
            if (v60 < v61)
            {
              *v60 = v31;
              *(v35 + 8) = 0;
              v14 = v35 + 4;
              *(v35 + 24) = 0;
              goto LABEL_53;
            }

            v36 = v59;
            v37 = v60 - v59;
            v38 = (v60 - v59) >> 5;
            v39 = v38 + 1;
            if ((v38 + 1) >> 59)
            {
              goto LABEL_84;
            }

            v40 = v11;
            v41 = v61 - v59;
            if ((v61 - v59) >> 4 > v39)
            {
              v39 = v41 >> 4;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFE0)
            {
              v42 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v39;
            }

            if (v42)
            {
              if (!(v42 >> 59))
              {
                operator new();
              }

              std::string::__throw_length_error[abi:nn200100]();
            }

            v43 = (v60 - v59) >> 5;
            v44 = 32 * v38;
            *v44 = v31;
            *(v44 + 8) = 0;
            *(v44 + 24) = 0;
            v14 = (32 * v38 + 32);
            v45 = (v44 - 32 * v43);
            memcpy(v45, v36, v37);
            v59 = v45;
            v60 = v14;
            v61 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v11 = v40;
LABEL_53:
            v60 = v14;
LABEL_54:
            v12 = __p;
            v13 = v59;
            if (v14 - v59 != v52 - __p)
            {
              continue;
            }

            goto LABEL_11;
          }
        }

        v15 += 32;
        v16 += 32;
      }

      while (v17 + 32 != v14);
    }

    v46 = 1;
    if (v12)
    {
LABEL_57:
      v52 = v12;
      operator delete(v12);
    }

LABEL_58:
    if (v49 != v48)
    {
      free(v49);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v55 != v54)
    {
      free(v55);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v67 != v66)
    {
      free(v67);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v63 != v62)
    {
      free(v63);
    }

    if ((v46 & 1) == 0)
    {
      return 0;
    }

    v10 += 3;
  }

  while (v10 != v11);
LABEL_77:
  if (a4 == 1)
  {
    return (a2)(a3, a1);
  }

  return 1;
}

void mlir::ForwardDominanceIterator<false>::makeIterable(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = v3 - 8;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    llvm::depth_first<mlir::Block *>(&v5);
  }

  v18 = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v14 = &v17[8];
  v15 = &v17[8];
  v16 = 8;
  v20 = 0;
  v21 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = v9 + 8;
  v7 = v9 + 8;
  v8 = 8;
  v10 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  llvm::make_range<llvm::df_iterator<llvm::DomTreeNodeBase<mlir::Block> *,llvm::df_iterator_default_set<llvm::DomTreeNodeBase<mlir::Block> *,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> *>>>(&v14, &v6, &v22);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v22, a2);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v27 != v26)
  {
    free(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v23 != v22)
  {
    free(v23);
  }
}

void llvm::depth_first<mlir::Block *>(uint64_t *a1)
{
  v2 = *a1;
  v3 = v7;
  v4 = v7;
  v6 = 0;
  v8 = 0u;
  v5 = 0x100000008;
  v7[8] = 0;
  v7[0] = v2;
  operator new();
}

void llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(llvm::SmallPtrSetImplBase *a1@<X0>, uint64_t a2@<X8>)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, &v20, a1);
  v21 = 0uLL;
  v22 = 0;
  v5 = *(a1 + 12);
  v4 = *(a1 + 13);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_28;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v18);
  v31 = v21;
  v32 = v22;
  v22 = 0;
  v21 = 0uLL;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v23, &v25, 8, &v28);
  v26 = v31;
  v27 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, (a1 + 120));
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v7 = *(a1 + 27);
  v6 = *(a1 + 28);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_28:
    std::string::__throw_length_error[abi:nn200100]();
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v8);
  v31 = *v11;
  v32 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v13, &v15, 8, &v28);
  __p = v31;
  v17 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::make_range<llvm::df_iterator<llvm::DomTreeNodeBase<mlir::Block> *,llvm::df_iterator_default_set<llvm::DomTreeNodeBase<mlir::Block> *,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> *>>>(&v23, &v13, a2);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v14 != v13)
  {
    free(v14);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  if (v24 != v23)
  {
    free(v24);
  }

  if (v21)
  {
    *(&v21 + 1) = v21;
    operator delete(v21);
  }

  if (v19 != v18)
  {
    free(v19);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>(mlir::ConversionTarget **a1, mlir::Operation *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (v3 >= *(*a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = a2;
  ++v2[2];
  isLegal = mlir::ConversionTarget::isLegal(a1[1], a2);
  if (isLegal & 0x100) != 0 && (isLegal)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(uint64_t a1, int a2)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
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

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x200000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

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

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        v17[2] = 0x200000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v17 + 1), v4 + 1);
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

uint64_t _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  while (v6 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    v9 = &unk_286866560;
    do
    {
      while (1)
      {
        v11 = *(v9 - 1);
        v12 = (a1 + (*v9 >> 1));
        if (*v9)
        {
          break;
        }

        v9 += 2;
        v10 = v11(v12);
        if (v10)
        {
          goto LABEL_16;
        }
      }

      v9 += 2;
      v10 = (*(*v12 + v11))();
    }

    while (!v10);
LABEL_16:
    v13 = *v10;
    v14 = *a3;
    v18 = v20;
    v19 = 0x100000000;
    v15 = 0;
    if (mlir::TypeConverter::convertType(v14, v13, &v18) && v19 == 1)
    {
      v15 = *v18;
    }

    if (v18 != v20)
    {
      free(v18);
    }

    if (v15 != v13)
    {
      return 0;
    }

    v6 = *a1;
    if (*a1 == a1[2])
    {
      v16 = a1[1];
      if (v16 != a1[3])
      {
        a1[1] = v16 + 8;
      }
    }

    else
    {
      v6 += 8;
      *a1 = v6;
    }
  }

  return 1;
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<1ul>(uint64_t a1)
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

void anonymous namespace::FunctionOpInterfaceSignatureConversion::~FunctionOpInterfaceSignatureConversion(_anonymous_namespace_::FunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FunctionOpInterfaceSignatureConversion::matchAndRewrite(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, mlir::MLIRContext **a5)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v8 = *(a1 + 96);

  return convertFuncOpTypes(v6, InterfaceFor, v8, a5);
}

uint64_t convertFuncOpTypes(uint64_t a1, uint64_t a2, const mlir::TypeConverter *a3, mlir::MLIRContext **a4)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v29);
  if (*(*FunctionType + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v7 = FunctionType;
  }

  else
  {
    v7 = 0;
  }

  v28 = v7;
  if (!v7)
  {
    return 0;
  }

  NumInputs = mlir::FunctionType::getNumInputs(&v28);
  v37 = v39;
  v38 = 0x400000000;
  if (NumInputs)
  {
    if (NumInputs >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v39;
    if (32 * NumInputs == 32)
    {
      goto LABEL_32;
    }

    v11 = ((32 * NumInputs - 32) >> 5) + 1;
    v10 = &v39[2 * (v11 & 0xFFFFFFFFFFFFFFELL)];
    v12 = &v40;
    v13 = v11 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v12 - 32) = 0;
      *v12 = 0;
      *(v12 - 8) = 0;
      *(v12 + 24) = 0;
      v12 += 8;
      v13 -= 2;
    }

    while (v13);
    if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        *v10 = 0;
        *(v10 + 24) = 0;
        v10 += 2;
      }

      while (v10 != &v39[2 * NumInputs]);
    }

    LODWORD(v38) = NumInputs;
  }

  v41 = v43;
  v42 = 0x400000000;
  v34 = &v36;
  v35 = 0x100000000;
  Inputs = mlir::FunctionType::getInputs(&v28);
  mlir::TypeRange::TypeRange(&v32, Inputs, v15);
  if (mlir::TypeConverter::convertSignatureArgs(a3, v32, v33, &v37, 0))
  {
    Results = mlir::FunctionType::getResults(&v28);
    mlir::TypeRange::TypeRange(&v32, Results, v17);
    v18 = v33;
    if (v33)
    {
      v19 = 0;
      v20 = v32;
      while (1)
      {
        v21 = mlir::TypeRange::dereference_iterator(v20, v19);
        if (!mlir::TypeConverter::convertType(a3, v21, &v34))
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(a4[5], a4, (((v29 + 16 * ((*(v29 + 44) >> 23) & 1) + ((*(v29 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 40)), a3, &v37);
      if (v22)
      {
        v23 = a4[1];
        mlir::TypeRange::TypeRange(&v32, v41, v42);
        mlir::TypeRange::TypeRange(v31, v34, v35);
        v24 = mlir::FunctionType::get(v23, v32, v33, v31[0], v31[1]);
        v25 = v29;
        (*(*a4 + 5))(a4, v29);
        mlir::function_interface_impl::setFunctionType(v29, v30, v24);
        (*(*a4 + 6))(a4, v25);
        v9 = 1;
        v26 = v34;
        if (v34 == &v36)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

  v9 = 0;
  v26 = v34;
  if (v34 != &v36)
  {
LABEL_24:
    free(v26);
  }

LABEL_25:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return v9;
}

void anonymous namespace::AnyFunctionOpInterfaceSignatureConversion::~AnyFunctionOpInterfaceSignatureConversion(_anonymous_namespace_::AnyFunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpInterfaceConversionPattern<mlir::FunctionOpInterface>::rewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 64);

  return v3();
}

uint64_t mlir::OpInterfaceConversionPattern<mlir::FunctionOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 72);

  return v3();
}

uint64_t *llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
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
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[2] = 0;
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  result[1] = 0;
  v6 = *(result + 4);
  if (v6)
  {
    v7 = *result;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *result;
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
    v11 = *result;
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
      if ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_12;
      }

      v15 = *(v5 + 16);
      if (v15)
      {
        v16 = v15 - 1;
        v17 = (v15 - 1) & ((v14 >> 4) ^ (v14 >> 9));
        v18 = (*v5 + 40 * v17);
        v19 = *v18;
        if (v14 != *v18)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v18;
            }

            v23 = v17 + v21++;
            v17 = v23 & v16;
            v18 = (*v5 + 40 * (v23 & v16));
            v19 = *v18;
            if (v14 == *v18)
            {
              goto LABEL_26;
            }
          }

          if (v20)
          {
            v18 = v20;
          }

          *v18 = v14;
          v24 = v18 + 1;
          v25 = v4 + 1;
          v26 = v4[4];
          if (!v26)
          {
LABEL_33:
            v18[4] = 0;
            result = v4[4];
            ++*(v5 + 8);
            if (result != v25)
            {
LABEL_34:
              if (result)
              {
                result = (*(*result + 40))(result);
              }

              goto LABEL_12;
            }

            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_26:
      *v18 = v14;
      v24 = v18 + 1;
      v25 = v4 + 1;
      v26 = v4[4];
      if (!v26)
      {
        goto LABEL_33;
      }

LABEL_27:
      if (v26 == v25)
      {
        v18[4] = v24;
        (*(*v4[4] + 24))(v4[4]);
        result = v4[4];
        ++*(v5 + 8);
        if (result != v25)
        {
          goto LABEL_34;
        }

LABEL_29:
        result = (*(*result + 32))(result);
        goto LABEL_12;
      }

      v18[4] = v26;
      v4[4] = 0;
      ++*(v5 + 8);
LABEL_12:
      v4 += 5;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
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

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866680;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = **a4;
  pdllConvertValues(&v12, a2, &v11, 1uLL, a5, a6);
  if (v13[48] != 1)
  {
    return 0;
  }

  v7 = *v12;
  if (v12 != v13)
  {
    free(v12);
  }

  v8 = *(a3 + 8);
  if (v8 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (*a3 + 16 * v8);
  *v9 = v7;
  v9[1] = 4;
  ++*(a3 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void pdllConvertValues(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[6] = *MEMORY[0x277D85DE8];
  __src = v12;
  v11 = 0x600000000;
  if (a4)
  {
    if ((mlir::detail::ConversionPatternRewriterImpl::remapValues(*(a2 + 40), "value", 5, 0, 0, a6, a3, a4, &__src) & 1) == 0)
    {
      v8 = 0;
      *a1 = 0;
      goto LABEL_14;
    }

    v7 = v11;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v8 = 1;
    if (!v7 || &__src == a1)
    {
      goto LABEL_14;
    }

    if (__src == v12)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a1, __src, 8 * v7);
      *(a1 + 8) = v7;
    }

    else
    {
      *a1 = __src;
      v9 = HIDWORD(v11);
      *(a1 + 8) = v7;
      *(a1 + 12) = v9;
      __src = v12;
      HIDWORD(v11) = 0;
    }

    LODWORD(v11) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  v8 = 1;
LABEL_14:
  *(a1 + 64) = v8;
  if (__src != v12)
  {
    free(__src);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866710;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4, uint64_t a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  pdllConvertValues(&__src, a2, ***a4, (**a4)[1], a5, a6);
  if (v13[48] == 1)
  {
    v14 = v16;
    v15 = 0x600000000;
    v7 = v12;
    if (v12)
    {
      v8 = __src;
      if (__src == v13)
      {
        if (v12 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v12;
        memcpy(v16, __src, 8 * v12);
        v7 = v10;
        LODWORD(v15) = v10;
        v8 = v14;
      }

      else
      {
        v14 = __src;
        v15 = v12;
        __src = v13;
        HIDWORD(v12) = 0;
      }

      LODWORD(v12) = 0;
    }

    else
    {
      v7 = 0;
      v8 = v16;
    }

    mlir::ValueRange::ValueRange(v17, v8, v7);
    mlir::PDLResultList::push_back(a3, v17[0], v17[1]);
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866790;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 40) + 344);
  v6 = **a4;
  if (v5)
  {
    v11 = v13;
    v12 = 0x100000000;
    v7 = mlir::TypeConverter::convertType(v5, v6, &v11);
    v6 = 0;
    if (v7 && v12 == 1)
    {
      v6 = *v11;
    }

    if (v11 != v13)
    {
      free(v11);
    }

    if (!v6)
    {
      return 0;
    }
  }

  v8 = *(a3 + 8);
  if (v8 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (*a3 + 16 * v8);
  *v9 = v6;
  v9[1] = 2;
  ++*(a3 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866810;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 40) + 344);
  v6 = **a4;
  v8 = *v6;
  v7 = v6[1];
  if (!v5)
  {
    __src = v26;
    v25 = 0x600000000;
    if (v7 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v26[i] = mlir::TypeRange::dereference_iterator(v8, i);
      }

      v14 = v25;
      v15 = __src;
    }

    else
    {
      v14 = 0;
      v15 = v26;
    }

    __dst = v22;
    v21 = 0x600000000;
    v16 = v14 + v7;
    LODWORD(v25) = v16;
    if (v16)
    {
      if (v15 == v26)
      {
        if (v16 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v22, v15, 8 * v16);
        v15 = __src;
        LODWORD(v21) = v16;
      }

      else
      {
        __dst = v15;
        v21 = __PAIR64__(HIDWORD(v25), v16);
        __src = v26;
        HIDWORD(v25) = 0;
        v15 = v26;
      }

      LODWORD(v25) = 0;
    }

    v23 = 1;
    if (v15 == v26)
    {
      goto LABEL_34;
    }

    v12 = v15;
    goto LABEL_33;
  }

  __src = v26;
  v25 = 0x600000000;
  if (v7)
  {
    v9 = 0;
    while (1)
    {
      v10 = mlir::TypeRange::dereference_iterator(v8, v9);
      if (!mlir::TypeConverter::convertType(v5, v10, &__src))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v11 = v25;
        __dst = v22;
        v21 = 0x600000000;
        if (v25)
        {
          if (__src == v26)
          {
            if (v25 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v22, __src, 8 * v25);
            LODWORD(v21) = v11;
          }

          else
          {
            __dst = __src;
            v21 = v25;
            __src = v26;
            HIDWORD(v25) = 0;
          }

          LODWORD(v25) = 0;
        }

        goto LABEL_32;
      }
    }

    LOBYTE(__dst) = 0;
    v23 = 0;
    v12 = __src;
    if (__src != v26)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  __dst = v22;
  v21 = 0x600000000;
LABEL_32:
  v23 = 1;
  v12 = __src;
  if (__src != v26)
  {
LABEL_33:
    free(v12);
  }

LABEL_34:
  if (v23 == 1)
  {
    __src = v26;
    v25 = 0x600000000;
    v17 = v21;
    if (v21)
    {
      v18 = __dst;
      if (__dst == v22)
      {
        if (v21 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v26, __dst, 8 * v21);
        v17 = v21;
        LODWORD(v25) = v21;
        v18 = __src;
      }

      else
      {
        __src = __dst;
        v25 = v21;
      }
    }

    else
    {
      v17 = 0;
      v18 = v26;
    }

    mlir::TypeRange::TypeRange(v27, v18, v17);
    mlir::PDLResultList::push_back(a3, v27[0], v27[1]);
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::OperationFolder::tryToFold(mlir::OperationFolder *this, mlir::Operation *a2, BOOL *a3)
{
  v35[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v6 + 40 * v8);
    if (v9 == a2)
    {
LABEL_5:
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      if (v10 != a2)
      {
        if (*(*(a2 + 2) + 40) == a2)
        {
          v11 = 0;
          v12 = *(this + 12);
          if (!v12)
          {
LABEL_37:
            llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
            mlir::Operation::moveBefore(a2, v29);
            result = 0;
            *(a2 + 3) = *this;
            return result;
          }
        }

        else
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v12 = *(this + 12);
          if (!v12)
          {
            goto LABEL_37;
          }
        }

        v13 = *(this + 4);
        v14 = v12 - 1;
        v15 = ((v11 >> 4) ^ (v11 >> 9)) & v14;
        v16 = *(v13 + 40 * v15);
        if (v16 != v11)
        {
          v26 = v11;
          v27 = 1;
          while (v16 != -4096)
          {
            result = 0;
            v28 = v15 + v27++;
            v15 = v28 & v14;
            v16 = *(v13 + 40 * v15);
            if (v16 == v26)
            {
              return result;
            }
          }

          goto LABEL_37;
        }
      }

      return 0;
    }

    v18 = 1;
    while (v9 != -4096)
    {
      v19 = v8 + v18++;
      v8 = v19 & v7;
      v9 = *(v6 + 40 * v8);
      if (v9 == a2)
      {
        goto LABEL_5;
      }
    }
  }

  v30 = v32;
  v31 = 0x800000000;
  v33 = v35;
  v34 = 0x800000000;
  if ((mlir::Operation::fold(a2) & 1) == 0)
  {
    v21 = 1;
    v22 = v33;
    if (v33 == v35)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = mlir::OperationFolder::processFoldResults(this, a2, &v30, v33, v34) ^ 1;
  v22 = v33;
  if (v33 != v35)
  {
LABEL_20:
    free(v22);
  }

LABEL_21:
  if (v21)
  {
    result = 0;
    v23 = v30;
    if (v30 == v32)
    {
      return result;
    }

LABEL_27:
    v24 = result;
    free(v23);
    return v24;
  }

  if (v31)
  {
    mlir::OperationFolder::notifyRemoval(this, a2);
    mlir::ValueRange::ValueRange(&v33, v30, v31);
    mlir::RewriterBase::replaceOp(this + 14, a2, v33, v34);
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v25 = *(this + 16);
    if (v25)
    {
      if (mlir::RewriterBase::Listener::classof(v25))
      {
        (*(*v25 + 40))(v25, a2);
      }
    }
  }

  result = 1;
  v23 = v30;
  if (v30 != v32)
  {
    goto LABEL_27;
  }

  return result;
}

BOOL mlir::OperationFolder::isFolderOwnedConstant(mlir::OperationFolder *this, Operation *a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 4);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 40 * v5);
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
    v6 = *(v3 + 40 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

uint64_t mlir::OperationFolder::tryToFold(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v8[8] = *MEMORY[0x277D85DE8];
  if (mlir::Operation::fold(a2))
  {
    return mlir::OperationFolder::processFoldResults(a1, a2, a3, v8, 0) & 1;
  }

  else
  {
    return 0;
  }
}

int32x2_t mlir::OperationFolder::notifyRemoval(int32x2_t *this, mlir::Block **a2)
{
  v2 = this[4];
  v3 = this[6].u32[0];
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *&v2 + 40 * v4;
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *&v2 + 40 * v4;
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = *&v2 + 40 * v3;
LABEL_8:
  if (v5 != *&v2 + 40 * v3)
  {
    v22 = 0;
    v21[0] = &v22;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(v21, a2);
    v11 = a2;
    v21[0] = getInsertionRegion(&this[7], a2[2]);
    v12 = this;
    v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&this[1], v21);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    if (v15)
    {
      v16 = v13;
      v17 = (*(v11 - 1) & 0xFFFFFFFFFFFFFFF8);
      v18 = 8 * v15;
      do
      {
        v19 = *v14++;
        v21[0] = v19;
        v21[1] = v22;
        v21[2] = v17;
        llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(v16, v21);
        v18 -= 8;
      }

      while (v18);
      v14 = *(v5 + 8);
    }

    if (v14 != (v5 + 24))
    {
      free(v14);
    }

    *v5 = -8192;
    result = vadd_s32(v12[5], 0x1FFFFFFFFLL);
    v12[5] = result;
  }

  return result;
}

uint64_t mlir::OperationFolder::insertKnownConstant(int32x2_t *a1, mlir::Operation *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v53 = a2;
  v54 = a3;
  v5 = *(a2 + 2);
  v7 = a1 + 4;
  v6 = a1[4];
  v8 = a1[6].i32[0];
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v9 & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*&v6 + 40 * v10);
    if (v11 == a2)
    {
LABEL_3:
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      if (v12 != a2)
      {
        if (*(*(a2 + 2) + 40) == a2)
        {
          v13 = 0;
          v14 = a1[6].i32[0];
          if (!v14)
          {
LABEL_13:
            llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
            mlir::Operation::moveBefore(a2, v22);
            *(a2 + 3) = *a1;
            return 1;
          }
        }

        else
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v14 = a1[6].i32[0];
          if (!v14)
          {
            goto LABEL_13;
          }
        }

        v15 = a1[4];
        v16 = v14 - 1;
        v17 = ((v13 >> 4) ^ (v13 >> 9)) & (v14 - 1);
        v18 = *(*&v15 + 40 * v17);
        if (v18 != v13)
        {
          v19 = 1;
          while (v18 != -4096)
          {
            v20 = v17 + v19++;
            v17 = v20 & v16;
            v18 = *(*&v15 + 40 * (v20 & v16));
            v21 = 1;
            if (v18 == v13)
            {
              return v21;
            }
          }

          goto LABEL_13;
        }
      }

      return 1;
    }

    v24 = 1;
    while (v11 != -4096)
    {
      v25 = v10 + v24++;
      v10 = v25 & v9;
      v11 = *(*&v6 + 40 * v10);
      if (v11 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  if (!a3)
  {
    v56 = &v54;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(&v56, a2);
  }

  InsertionRegion = getInsertionRegion(&a1[7], v5);
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  v27 = *(a2 + 6);
  if (*(v27 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v56 = *(v27 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v56);
  }

  else
  {
    ReferencedDialect = *(v27 + 24);
  }

  v29 = *(a2 + 9);
  v30 = a2 - 16;
  if (!v29)
  {
    v30 = 0;
  }

  v55[0] = v30;
  v55[1] = v29;
  mlir::ResultRange::getTypes(&v56, v55);
  v31 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v56, v57) + 8) & 0xFFFFFFFFFFFFFFF8;
  v56 = ReferencedDialect;
  v57 = v54;
  v58 = v31;
  v32 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](v26, &v56);
  v33 = *v32 == 0;
  if (*v32)
  {
    mlir::OperationFolder::notifyRemoval(a1, a2);
    v34 = (*v32)[4].u32[1];
    if (v34)
    {
      v35 = &(*v32)[-2];
    }

    else
    {
      v35 = 0;
    }

    mlir::ValueRange::ValueRange(&v56, v35, v34);
    mlir::RewriterBase::replaceOp(&a1[14], a2, v56, v57);
    v21 = v33;
    (*v32)[3] = *a1;
    return v21;
  }

  v36 = *(InsertionRegion + 8);
  if (v36)
  {
    v37 = (v36 - 8);
  }

  else
  {
    v37 = 0;
  }

  if (v5 == v37)
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if (v42 == a2)
    {
      goto LABEL_37;
    }

    if (*(*(a2 + 2) + 40) == a2)
    {
      v43 = 0;
    }

    else
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    }

    v45 = a1[6].i32[0];
    if (v45)
    {
      v46 = a1[4];
      v47 = v45 - 1;
      v48 = ((v43 >> 4) ^ (v43 >> 9)) & v47;
      v49 = *(*&v46 + 40 * v48);
      if (v49 == v43)
      {
        goto LABEL_37;
      }

      v50 = 1;
      while (v49 != -4096)
      {
        v51 = v48 + v50++;
        v48 = v51 & v47;
        v49 = *(*&v46 + 40 * v48);
        if (v49 == v43)
        {
          goto LABEL_37;
        }
      }
    }
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  mlir::Operation::moveBefore(a2, v38);
  *(a2 + 3) = *a1;
LABEL_37:
  *v32 = a2;
  v39 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](v7, &v53);
  v40 = *(v53 + 6);
  if (*(v40 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v56 = *(v40 + 8);
    v41 = mlir::StringAttr::getReferencedDialect(&v56);
  }

  else
  {
    v41 = *(v40 + 24);
  }

  v44 = *(v39 + 2);
  v21 = v33;
  if (v44 >= *(v39 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v39 + 8 * v44) = v41;
  ++*(v39 + 2);
  return v21;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = *a1 + 32 * v3;
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = *a1 + 32 * v3;
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 8;
      }
    }

    if (v9)
    {
      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v8 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = v8;
  *(v4 + 24) = 0;
  return v4 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](uint64_t *a1, uint64_t a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 != -4096)
      {
LABEL_5:
        --*(a1 + 3);
LABEL_6:
        *v5 = *a2;
        *(v5 + 8) = *(a2 + 8);
        *(v5 + 24) = 0;
        return v5 + 24;
      }

LABEL_10:
      if (*(v5 + 8) == -4096 && *(v5 + 16) == -4096)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 2);
    if (*v5 != -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return v5 + 24;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](uint64_t a1, void *a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  v5[2] = 0x200000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(int32x2_t *a1, void *a2)
{
  v2 = a1[2].i32[0];
  if (v2)
  {
    v3 = a2[1];
    v4 = a2[2];
    v5 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v4 >> 4) ^ (v4 >> 9))) | (((v3 >> 4) ^ (v3 >> 9)) << 32));
    v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ v5 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = v2 - 1;
    v8 = v7 & ((v6 >> 31) ^ v6);
    v9 = 1;
    v10 = *a1 + 32 * v8;
    v11 = *v10;
    if (*a2 != *v10)
    {
      goto LABEL_7;
    }

LABEL_3:
    if (v3 == *(v10 + 8) && v4 == *(v10 + 16))
    {
      *v10 = -8192;
      *(v10 + 8) = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
      return 1;
    }

LABEL_7:
    while (v11 != -4096 || *(v10 + 8) != -4096 || *(v10 + 16) != -4096)
    {
      v13 = v8 + v9++;
      v8 = v13 & v7;
      v10 = *a1 + 32 * v8;
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

void mlir::OperationFolder::clear(mlir::OperationFolder *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(this + 2))
  {
    v5 = *(this + 6);
    if (v5 <= 4 * *(this + 4) || v5 < 0x41)
    {
      if (v5)
      {
        v7 = *(this + 1);
        v8 = 32 * v5;
        do
        {
          if (*v7 == -8192)
          {
            *v7 = -4096;
          }

          else if (*v7 != -4096)
          {
            llvm::deallocate_buffer(*(v7 + 8), (32 * *(v7 + 24)));
          }

          v7 += 32;
          v8 -= 32;
        }

        while (v8);
      }

      *(this + 2) = 0;
      v6 = *(this + 10);
      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::shrink_and_clear(this + 8, a2, a3, a4);
  }

  v6 = *(this + 10);
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (!*(this + 11))
  {
    return;
  }

LABEL_16:
  v9 = *(this + 12);
  if (v9 <= 4 * v6 || v9 < 0x41)
  {
    if (!v9)
    {
LABEL_29:
      *(this + 5) = 0;
      return;
    }

    v10 = *(this + 4) + 24;
    v11 = 40 * v9;
    while (1)
    {
      v12 = *(v10 - 24);
      if (v12 != -8192)
      {
        if (v12 == -4096)
        {
          goto LABEL_24;
        }

        v13 = *(v10 - 16);
        if (v10 != v13)
        {
          free(v13);
        }
      }

      *(v10 - 24) = -4096;
LABEL_24:
      v10 += 40;
      v11 -= 40;
      if (!v11)
      {
        goto LABEL_29;
      }
    }
  }

  llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::shrink_and_clear(this + 32, a2, a3, a4);
}

int32x2_t *mlir::OperationFolder::tryGetOrCreateConstant(int32x2_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v12 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](a2, v35);
  result = *v12;
  if (*v12)
  {
    if (*&result[3] != a6)
    {
      result[3] = *a1;
      return *v12;
    }

    return result;
  }

  result = (*(*a3 + 24))(a3, a1 + 15, a4, a5, a6);
  *v12 = result;
  if (!result)
  {
    return result;
  }

  v14 = result[6];
  if (*(*&v14 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    ReferencedDialect = *(*&v14 + 24);
    if (ReferencedDialect != a3)
    {
      goto LABEL_7;
    }

LABEL_26:
    v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v12);
    v30 = *(v29 + 2);
    if (v30 >= *(v29 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v29 + 8 * v30) = a3;
    ++*(v29 + 2);
    return *v12;
  }

  v32[0] = *(*&v14 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(v32);
  if (ReferencedDialect == a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v16 = *(a2 + 4);
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = 0xBF58476D1CE4E5B9 * ((969526130 * ((a5 >> 4) ^ (a5 >> 9))) | (((a4 >> 4) ^ (a4 >> 9)) << 32));
  v18 = 0xBF58476D1CE4E5B9 * ((v17 >> 31) ^ v17 | (((ReferencedDialect >> 4) ^ (ReferencedDialect >> 9)) << 32));
  v19 = v16 - 1;
  v20 = v19 & ((v18 >> 31) ^ v18);
  v21 = 1;
  v22 = (*a2 + 32 * v20);
  v23 = *v22;
  if (ReferencedDialect != *v22)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v22[1] != a4 || v22[2] != a5)
  {
LABEL_13:
    while (v23 != -4096 || v22[1] != -4096 || v22[2] != -4096)
    {
      v25 = v20 + v21++;
      v20 = v25 & v19;
      v22 = (*a2 + 32 * v20);
      v23 = *v22;
      if (ReferencedDialect == *v22)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_23;
  }

  v32[0] = v22[3];
  if (!v32[0])
  {
LABEL_23:
    v28 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v12);
    *(v28 + 2) = 0;
    if (*(v28 + 3) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = *v28;
    *v31 = a3;
    v31[1] = ReferencedDialect;
    *(v28 + 2) += 2;
    v32[0] = ReferencedDialect;
    v32[1] = a4;
    v32[2] = a5;
    v33 = *v12;
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::try_emplace<mlir::Operation *>(a2, v32, &v33, v34);
    return *(v34[0] + 24);
  }

  mlir::OperationFolder::notifyRemoval(a1, *v12);
  mlir::RewriterBase::eraseOp(&a1[14], *v12);
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v32);
  v27 = *(v26 + 2);
  if (v27 >= *(v26 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v26 + 8 * v27) = a3;
  ++*(v26 + 2);
  result = v32[0];
  if (*(v32[0] + 24) != a6)
  {
    *(v32[0] + 24) = *a1;
  }

  *v12 = result;
  return result;
}

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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v73);
    v18 = *(a2 + 36);
    if (!v18)
    {
      return 1;
    }
  }

  else
  {
    ReferencedDialect = *(v17 + 24);
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
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a3, v73);
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
LABEL_23:
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

  Constant = mlir::OperationFolder::tryGetOrCreateConstant(a1, v69, ReferencedDialect, v23, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8, *a1);
  if (Constant)
  {
    v29 = Constant;
    if (*(a2 + 16) == *&Constant[2])
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      if (v30 != v29)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        mlir::Operation::moveBefore(v29, v31);
      }
    }

    v32 = *(a3 + 8);
    if (v32 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v32) = v29 - 16;
    v26 = *(a3 + 8) + 1;
    goto LABEL_23;
  }

  v33 = *(*&v67 + 40);
  v34 = a1[18];
  if (v33 != *&v34)
  {
    v70 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
    while (1)
    {
      v36 = *(v33 + 8);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v38 = a1[4];
      v39 = a1[6].u32[0];
      if (v39)
      {
        v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v39 - 1);
        v35 = *&v38 + 40 * v40;
        v41 = *v35;
        if (*v35 == v37)
        {
          goto LABEL_32;
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
            goto LABEL_32;
          }
        }
      }

      v35 = *&v38 + 40 * v39;
LABEL_32:
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
                goto LABEL_48;
              }

LABEL_44:
              if (v63[1] == v56 && v63[2] == v52)
              {
                *v63 = -8192;
                *(v63 + 1) = v70;
                v55 = vadd_s32(v55, 0x1FFFFFFFFLL);
                v47[1] = v55;
              }

              else
              {
LABEL_48:
                while (v64 != -4096 || v63[1] != -4096 || v63[2] != -4096)
                {
                  v66 = v61 + v62++;
                  v61 = v66 & v54;
                  v63 = (*&v53 + 32 * v61);
                  v64 = *v63;
                  if (*v59 == *v63)
                  {
                    goto LABEL_44;
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

uint64_t llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::shrink_and_clear(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(result + 16);
  v5 = *(result + 8);
  v6 = (32 * v4);
  if (v4)
  {
    v7 = *result;
    v8 = 32 * v4;
    do
    {
      if ((*v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::deallocate_buffer(*(v7 + 1), (32 * *(v7 + 6)));
      }

      v7 = (v7 + 32);
      v8 -= 32;
    }

    while (v8);
  }

  if (!v5)
  {
    if (!*(result + 16))
    {
      *(result + 8) = 0;
      return result;
    }

LABEL_17:
    llvm::deallocate_buffer(*result, v6);
  }

  v9 = 1 << (33 - __clz(v5 - 1));
  if (v9 <= 64)
  {
    v10 = 64;
  }

  else
  {
    v10 = v9;
  }

  if (v10 != *(result + 16))
  {
    goto LABEL_17;
  }

  *(result + 8) = 0;
  v11 = *result;
  v12 = (v10 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v15 = *result;
LABEL_20:
    v18 = (v11 + 32 * v10);
    do
    {
      *v15 = -4096;
      v15 = (v15 + 32);
    }

    while (v15 != v18);
    return result;
  }

  v13 = v12 + 1;
  v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
  v15 = (v11 + 32 * v14);
  v16 = (v11 + 32);
  v17 = v14;
  do
  {
    *(v16 - 4) = -4096;
    *v16 = -4096;
    v16 += 8;
    v17 -= 2;
  }

  while (v17);
  if (v13 != v14)
  {
    goto LABEL_20;
  }

  return result;
}

void llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::shrink_and_clear(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 5 * v5;
  if (v5)
  {
    v8 = *a1 + 24;
    v9 = 40 * v5;
    do
    {
      if ((*(v8 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v10 = *(v8 - 16);
        if (v8 != v10)
        {
          free(v10);
        }
      }

      v8 += 40;
      v9 -= 40;
    }

    while (v9);
  }

  v11 = 1 << (33 - __clz(v6 - 1));
  if (v11 <= 64)
  {
    v11 = 64;
  }

  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v7));
  }

  *(a1 + 8) = 0;
  if (v12)
  {
    v13 = *a1;
    v14 = 40 * v12 - 40;
    if (v14 < 0x28)
    {
      v15 = *a1;
LABEL_20:
      v19 = (v13 + 40 * v12);
      do
      {
        *v15 = -4096;
        v15 = (v15 + 40);
      }

      while (v15 != v19);
      return;
    }

    v16 = v14 / 0x28 + 1;
    v15 = (v13 + 40 * (v16 & 0xFFFFFFFFFFFFFFELL));
    v17 = *a1;
    v18 = v16 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v17 = -4096;
      *(v17 + 5) = -4096;
      v17 = (v17 + 80);
      v18 -= 2;
    }

    while (v18);
    if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
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

void mlir::applyPatternsAndFoldGreedily(mlir::Region **this, const mlir::FrozenRewritePatternSet *a2, uint64_t a3, _BYTE *a4)
{
  v7[34] = *MEMORY[0x277D85DE8];
  if (!*(a3 + 24))
  {
    *(a3 + 24) = this;
  }

  Context = mlir::Region::getContext(this);
}

void sub_2565FB644(int a1, int a2, int a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, llvm *a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, llvm *a57, int a58)
{
  if ((a56 & 1) == 0)
  {
    llvm::deallocate_buffer(a57, (8 * a58));
  }

  llvm::deallocate_buffer(a47, (16 * a49));
}

uint64_t sub_2565FB674()
{
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  mlir::RewriterBase::~RewriterBase(&v2);
  return v1;
}

void anonymous namespace::RegionPatternRewriteDriver::~RegionPatternRewriteDriver(_anonymous_namespace_::RegionPatternRewriteDriver *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_2565FB704(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void *sub_2565FB734()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

uint64_t mlir::applyOpPatternsAndFold(mlir::Operation **a1, uint64_t a2, const mlir::FrozenRewritePatternSet *a3, uint64_t a4, _BYTE *a5, BOOL *a6)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = a2;
    v10 = *a1;
    if (!*(a4 + 24))
    {
      ParentRegion = *(v10 + 16);
      if (a2 == 1)
      {
        if (ParentRegion)
        {
          Parent = mlir::Block::getParent(ParentRegion);
        }

        else
        {
          Parent = 0;
        }
      }

      else
      {
        if (ParentRegion)
        {
          ParentRegion = mlir::Block::getParent(ParentRegion);
        }

        v13 = v8 - 1;
        v14 = (v8 + 62) >> 6;
        __b = v42;
        v41 = 6;
        v38 = a3;
        if ((v8 + 62) >= 0x1C0)
        {
          v40 = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if ((v8 + 62) >= 0x40)
        {
          v15 = ParentRegion;
          memset(v42, 255, 8 * v14);
          ParentRegion = v15;
        }

        v40 = (v8 + 62) >> 6;
        LODWORD(v43) = v8 - 1;
        if ((v13 & 0x3F) != 0)
        {
          v42[v14 - 1] &= ~(-1 << (v13 & 0x3F));
        }

        if (ParentRegion)
        {
          if (v8 == 1)
          {
            while (v40)
            {
              v34 = __b;
              v35 = 8 * v40;
              while (!*v34)
              {
                ++v34;
                v35 -= 8;
                if (!v35)
                {
                  goto LABEL_61;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v16 = (v8 - 2) >> 6;
            while (1)
            {
              v17 = 0;
              do
              {
                v18 = v17 >> 6;
                v19 = __b;
                if (v18 > v16)
                {
                  goto LABEL_47;
                }

                v21 = v17 & 0x3F;
                v20 = v21 == 0;
                v22 = 0xFFFFFFFFFFFFFFFFLL >> -v21;
                if (v20)
                {
                  v23 = -1;
                }

                else
                {
                  v23 = ~v22;
                }

                if (v18 == v16)
                {
                  v24 = 0xFFFFFFFFFFFFFFFFLL >> ~(v8 - 2);
                }

                else
                {
                  v24 = -1;
                }

                v25 = v24 & v23 & *(__b + v18);
                if (v25)
                {
                  v26 = __clz(__rbit64(v25));
                  v27 = v26 | (v18 << 6);
                  if (v27 == -1)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v18 + 1 == v16 + 1)
                  {
                    goto LABEL_47;
                  }

                  v29 = 0;
                  while (1)
                  {
                    v30 = v29 == -1 ? v23 : -1;
                    v31 = v16 - v18 - 1 == v29 ? 0xFFFFFFFFFFFFFFFFLL >> ~(v8 - 2) : -1;
                    v32 = v30 & v31 & *(__b + v18 + v29 + 1);
                    if (v32)
                    {
                      break;
                    }

                    if (v16 - v18 == ++v29)
                    {
                      goto LABEL_47;
                    }
                  }

                  LODWORD(v18) = v18 + v29 + 1;
                  v26 = __clz(__rbit64(v32));
                  v27 = v26 | (v18 << 6);
                  if (v27 == -1)
                  {
                    goto LABEL_47;
                  }
                }

                v28 = ParentRegion;
                if (mlir::Region::findAncestorOpInRegion(ParentRegion, a1[v27 + 1]))
                {
                  *(__b + v18) &= ~(1 << v26);
                }

                v17 = v27 + 1;
                ParentRegion = v28;
              }

              while (v27 + 1 != v13);
              v19 = __b;
LABEL_47:
              if (!v40)
              {
                break;
              }

              v33 = 8 * v40;
              while (!*v19)
              {
                ++v19;
                v33 -= 8;
                if (!v33)
                {
                  goto LABEL_61;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_61:
          Parent = ParentRegion;
        }

        else
        {
          Parent = 0;
        }

LABEL_62:
        if (__b != v42)
        {
          free(__b);
        }

        a3 = v38;
      }

      *(a4 + 24) = Parent;
      v10 = *a1;
    }

    v44 = 1;
    v45 = -4096;
    v46 = -4096;
    v47 = -4096;
    v48 = -4096;
    Context = mlir::Attribute::getContext((v10 + 24));
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
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_2565FBD70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void *sub_2565FBDA0()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

void anonymous namespace::GreedyPatternRewriteDriver::GreedyPatternRewriteDriver(uint64_t a1, uint64_t a2, const mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_286866930;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = &unk_2868669A0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  operator new();
}

void sub_2565FBF48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_2565FBF78()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationInserted(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v6 = a2;
    (*(*v5 + 16))(v5);
    a2 = v6;
  }

  if (*(this + 34) == 1)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 38, &v7, v8, &v9, a4);
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

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockErased(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 32))();
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
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192), a2, a3, a4);
}

void sub_2565FC1AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void *sub_2565FC1DC()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

void sub_2565FC238(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_2565FC268()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
}

void mlir::PatternRewriter::~PatternRewriter(mlir::PatternRewriter *this)
{
  mlir::RewriterBase::~RewriterBase(this);

  JUMPOUT(0x259C63180);
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
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v21, v20, &v22);
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

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v5 = result;
  v59[3] = *MEMORY[0x277D85DE8];
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
  v10[8] = *MEMORY[0x277D85DE8];
  v9 = 0;
  while (1)
  {
    if (v9 >= 8uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10[v9] = a2;
    v3 = ++v9;
    v4 = a2[2];
    if (!v4)
    {
      break;
    }

    Parent = mlir::Block::getParent(v4);
    if (*(this + 16) == Parent)
    {
      v3 = v9;
      if (!v9)
      {
        return;
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

    return;
  }

  if (!*(this + 16) && v3)
  {
LABEL_13:
    v6 = v10;
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v7 -= 8;
    }

    while (v7);
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_1>(uint64_t a1, mlir::Operation *a2)
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
  v7[0] = &unk_286866A08;
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
  v113[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = v113;
  v8 = &v110;
  v9 = &v104;
  v10 = &v108;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
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
          v92 = 1;
          while (v21 != -4096)
          {
            v93 = v20 + v92++;
            v20 = v93 & v19;
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

      v101 = v15;
      isOpTriviallyDead = mlir::isOpTriviallyDead(v15, a2);
      v24 = v101;
      if (!isOpTriviallyDead)
      {
        break;
      }

      mlir::RewriterBase::eraseOp((this + 16), v101);
      v5 = 1;
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }
    }

    {
      v94 = v24;
      v24 = v94;
    }

    if ((*(**(v24 + 6) + 32))(*(v24 + 6), p_opt_class_meths[233]))
    {
      goto LABEL_56;
    }

    v111 = v7;
    v112 = 0x600000000;
    if ((mlir::Operation::fold(v101) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v112)
    {
      (*(*this + 40))(this, v101);
      v5 = 1;
      v42 = 2;
      goto LABEL_51;
    }

    v100 = *(this + 40);
    v26 = *(v101 + 2);
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
    *(this + 5) = v26;
    *(this + 6) = v27;
    v108 = v8;
    v109 = 0x600000000;
    v28 = *(v101 + 9);
    v29 = v101 - 16;
    if (!v28)
    {
      v29 = 0;
    }

    v102[0] = v29;
    v102[1] = v28;
    mlir::ResultRange::getTypes(&v103, v102);
    if (!v112)
    {
      v41 = v109;
      goto LABEL_46;
    }

    v97 = v10;
    v98 = v9;
    v99 = v8;
    v96 = v7;
    v30 = v103;
    v31 = v104;
    v32 = 8 * v112;
    v33 = v111;
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

      v37 = v101;
      v38 = *(v101 + 6);
      if (*(v38 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v103 = *(v38 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v103);
        v37 = v101;
      }

      else
      {
        ReferencedDialect = *(v38 + 24);
      }

      v40 = (*(*ReferencedDialect + 24))(ReferencedDialect, this + 24, *v33 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, *(v37 + 3));
      if (!v40)
      {
        break;
      }

      v36 = v40 - 16;
LABEL_40:
      if (v109 >= HIDWORD(v109))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v108 + v109) = v36;
      v41 = v109 + 1;
      LODWORD(v109) = v109 + 1;
      ++v33;
      v31 = (v31 + 1);
      v32 -= 8;
      if (!v32)
      {
        v7 = v96;
        v10 = v97;
        v9 = v98;
        v8 = v99;
LABEL_46:
        v43 = v101;
        mlir::ValueRange::ValueRange(&v103, v108, v41);
        mlir::RewriterBase::replaceOp(this + 2, v43, v103, v104);
        v42 = 2;
        v44 = 1;
        v5 = 1;
        v45 = v100;
        v46 = v108;
        if (v108 == v8)
        {
          goto LABEL_48;
        }

LABEL_47:
        free(v46);
        v45 = v100;
        goto LABEL_48;
      }
    }

    v103 = 1;
    v104 = -4096;
    v105 = -4096;
    v106 = -4096;
    v107 = -4096;
    v45 = v100;
    if (!v109)
    {
      v81 = 1;
      v9 = v98;
      v8 = v99;
      v10 = v97;
LABEL_127:
      v85 = v104;
      v86 = v105;
      if (v81)
      {
        v87 = v10;
      }

      else
      {
        v87 = (v104 + 8 * v105);
      }

      if (v81)
      {
        v88 = v9;
      }

      else
      {
        v88 = v104;
      }

      if (v81)
      {
        v89 = 4;
      }

      else
      {
        v89 = v105;
      }

      v82 = (v88 + 8 * v89);
      v84 = v81;
      goto LABEL_137;
    }

    v53 = v108;
    v54 = (v108 + 8 * v109);
    v9 = v98;
    v8 = v99;
    v10 = v97;
    while (2)
    {
      v102[0] = *v53;
      DefiningOp = mlir::Value::getDefiningOp(v102);
      v64 = v103;
      v65 = v103 & 1;
      if (v103)
      {
        v55 = 4;
        v56 = v9;
        goto LABEL_72;
      }

      v55 = v105;
      if (!v105)
      {
        LODWORD(a2) = 0;
        goto LABEL_98;
      }

      v56 = v104;
LABEL_72:
      v45 = v100;
      v57 = v55 - 1;
      v58 = v57 & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
      v59 = (v56 + 8 * v58);
      v60 = *v59;
      if (DefiningOp != *v59)
      {
        v66 = 0;
        v67 = 1;
        while (v60 != -4096)
        {
          if (v66)
          {
            v68 = 0;
          }

          else
          {
            v68 = v60 == -8192;
          }

          if (v68)
          {
            v66 = v59;
          }

          v69 = v58 + v67++;
          v58 = v69 & v57;
          v59 = (v56 + 8 * v58);
          v60 = *v59;
          if (DefiningOp == *v59)
          {
            goto LABEL_73;
          }
        }

        if (v66)
        {
          v70 = v66;
        }

        else
        {
          v70 = v59;
        }

        if (v103)
        {
          a2 = 4;
        }

        else
        {
          a2 = v105;
        }

        if (4 * (v103 >> 1) + 4 < 3 * a2)
        {
          if (a2 + ~(v103 >> 1) - HIDWORD(v103) <= a2 >> 3)
          {
            goto LABEL_99;
          }
        }

        else
        {
LABEL_98:
          LODWORD(a2) = 2 * a2;
LABEL_99:
          v71 = DefiningOp;
          llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(&v103, a2, v62, v63);
          v64 = v103;
          if (v103)
          {
            v72 = 4;
            v73 = v98;
            goto LABEL_103;
          }

          v72 = v105;
          if (v105)
          {
            v73 = v104;
LABEL_103:
            v65 = v103 & 1;
            v74 = v72 - 1;
            v75 = (v72 - 1) & ((v71 >> 4) ^ (v71 >> 9));
            v70 = (v73 + 8 * v75);
            v76 = *v70;
            if (v71 != *v70)
            {
              v77 = 0;
              v78 = 1;
              while (v76 != -4096)
              {
                if (v77)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = v76 == -8192;
                }

                if (v79)
                {
                  v77 = v70;
                }

                v80 = v75 + v78++;
                v75 = v80 & v74;
                v70 = (v73 + 8 * (v80 & v74));
                v76 = *v70;
                if (v71 == *v70)
                {
                  goto LABEL_104;
                }
              }

              if (v77)
              {
                v70 = v77;
              }
            }
          }

          else
          {
            v65 = 0;
            v70 = 0;
          }

LABEL_104:
          DefiningOp = v71;
          v9 = v98;
          v8 = v99;
          v10 = v97;
          v45 = v100;
        }

        LODWORD(v103) = (v64 & 0xFFFFFFFE | v65) + 2;
        if (*v70 != -4096)
        {
          --HIDWORD(v103);
        }

        *v70 = DefiningOp;
      }

LABEL_73:
      if (++v53 != v54)
      {
        continue;
      }

      break;
    }

    v81 = v103;
    if (v103 <= 1)
    {
      goto LABEL_127;
    }

    v82 = v10;
    v83 = v9;
    if ((v103 & 1) != 0 || (v83 = v104, v82 = (v104 + 8 * v105), v105))
    {
      v84 = v103 & 1;
      while ((*v83 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v83 = (v83 + 8);
        if (v83 == v82)
        {
          v83 = v82;
          break;
        }
      }

      v85 = v104;
      v86 = v105;
      v87 = v83;
LABEL_137:
      if (v84)
      {
        v90 = v10;
        if (v87 == v10)
        {
          goto LABEL_151;
        }

        do
        {
LABEL_145:
          v91 = *v87++;
          mlir::RewriterBase::eraseOp((this + 16), v91);
          if (v87 == v82)
          {
            v45 = v100;
          }

          else
          {
            v45 = v100;
            do
            {
              if ((*v87 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              ++v87;
            }

            while (v87 != v82);
          }
        }

        while (v87 != v90);
        LOBYTE(v81) = v103;
      }

      else
      {
        v90 = (v85 + 8 * v86);
        if (v87 != v90)
        {
          goto LABEL_145;
        }
      }
    }

LABEL_151:
    if ((v81 & 1) == 0)
    {
      llvm::deallocate_buffer(v104, (8 * v105));
    }

    v44 = 0;
    v42 = 0;
    v7 = v96;
    v46 = v108;
    if (v108 != v8)
    {
      goto LABEL_47;
    }

LABEL_48:
    if (v45)
    {
      *(this + 40) = v45;
      if ((v44 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *(this + 5) = 0;
      *(this + 6) = 0;
      if ((v44 & 1) == 0)
      {
LABEL_50:
        v42 = 0;
      }
    }

LABEL_51:
    if (v111 != v7)
    {
      free(v111);
    }

    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    if (v42)
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
    v111 = this;
    v112 = &v101;
    v108 = this;
    v103 = this;
    v47 = *(this + 18);
    v48 = v47 == 0;
    if (v47)
    {
    }

    else
    {
      v49 = 0;
    }

    if (v47)
    {
    }

    else
    {
      v50 = 0;
    }

    if (v48)
    {
      v51 = 0;
    }

    else
    {
    }

    v52 = mlir::PatternApplicator::matchAndRewrite(this + 192, v101, this + 16, v51, &v111, v49, &v108, v25, v50, &v103);
    v6 += v52 & 1;
    v5 |= v52;
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

void sub_2565FD904(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(v4 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v4 + 160), (8 * *(v4 + 168)));
  }

  llvm::deallocate_buffer(*(v4 + 80), (16 * *(v4 + 96)));
}

void sub_2565FD934()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
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

uint64_t mlir::Inliner::Impl::optimizeSCCAsync(uint64_t *a1, mlir::CallGraphNode **a2, uint64_t a3, mlir::MLIRContext *this)
{
  v23 = *MEMORY[0x277D85DE8];
  NumThreads = mlir::MLIRContext::getNumThreads(this);
  if (*(a1 + 4) < NumThreads)
  {
    if (*(a1 + 5) < NumThreads)
    {
      v22 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize((a1 + 1), NumThreads, (*(*a1 + 64) + 32));
  }

  if (a3)
  {
    v9 = 8 * a3;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v12 = *a1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v11);
      mlir::AnalysisManager::nest((v12 + 24), *(CallableRegion + 16));
      v9 -= 8;
    }

    while (v9);
  }

  if (*(a1 + 4))
  {
    operator new();
  }

  v21 = a2;
  v20 = a3;
  if (!a3)
  {
    return 1;
  }

  isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(this);
  if (a3 != 1 && (isMultithreadingEnabled & 1) != 0)
  {
    mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v19, this);
  }

  v15 = &a2[a3];
  while (1)
  {
    v16 = mlir::Inliner::Impl::optimizeCallable(a1, *a2, a1[1]);
    atomic_store(0, 0);
    if ((v16 & 1) == 0)
    {
      break;
    }

    a2 = v21 + 1;
    v21 = a2;
    if (a2 == v15)
    {
      return 1;
    }
  }

  return 0;
}

void llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a2;
  if (v3 != a2)
  {
    if (v3 <= a2)
    {
      v16 = a2 - v3;
      v17 = *a1;
      if (*(a1 + 12) < a2)
      {
        if (v17 > a3 || v17 + 24 * v3 <= a3)
        {
          llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(a1, a2);
        }

        llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow(a1, a2);
      }

      v18 = *(a1 + 8);
      if (v16)
      {
        v19 = (v17 + 24 * v18);
        do
        {
          v19 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(v19, a3) + 24);
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
  Value = mlir::StringAttr::getValue(&v27);
  v8 = v7;
  v11 = llvm::StringMapImpl::hash(Value, v7, v9, v10);
  Key = llvm::StringMapImpl::FindKey(a3, Value, v8, v11);
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

  mlir::OpPassManager::OpPassManager(&v27, Value, v8, 1);
  v15 = *(v14 + 24);
  if (v15)
  {
    (*(*v15 + 48))(v15, &v27);
    v18 = llvm::StringMapImpl::hash(Value, v8, v16, v17);
    v19 = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(a3, Value, v8, v18, &v27);
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

    v28 = *(ParentOp + 6);
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
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
        v28 = *(v31 + 6);
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
  v39[6] = *MEMORY[0x277D85DE8];
  v38[34] = this;
  v38[35] = v39;
  v38[36] = 0x200000000;
  Context = mlir::Attribute::getContext((*this + 24));
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v2 = *(this + 1);
  mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(v33, Context);
  v33[0] = &unk_286866B08;
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
  *this = &unk_286866B08;
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
  *this = &unk_286866B08;
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

void sub_2565FEE10()
{

  JUMPOUT(0x259C63180);
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
  v50[16] = *MEMORY[0x277D85DE8];
  v48 = v50;
  v49 = 0x800000000;
  *&v45 = a3;
  if (a1 != a2)
  {
    do
    {
      while (1)
      {
        v9 = a1 ? a1 - 8 : 0;
        *&v44 = v9;
        v10 = v49;
        if (v49 >= HIDWORD(v49))
        {
          break;
        }

        v11 = (v48 + 16 * v49);
        *v11 = v9;
        v11[1] = v45;
        LODWORD(v49) = v10 + 1;
        a1 = *(a1 + 8);
        if (a1 == a2)
        {
          goto LABEL_9;
        }
      }

      v12 = a1;
      v13 = a2;
      llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(&v48, &v44, &v45);
      a2 = v13;
      a1 = *(v12 + 8);
    }

    while (a1 != v13);
LABEL_9:
    v14 = v49;
    if (v49)
    {
      while (1)
      {
        v15 = v48 + 16 * v14;
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        LODWORD(v49) = --v14;
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
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v22 = v21;
        if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v21))
        {
          break;
        }

        InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v22);
        *&v44 = v22;
        *(&v44 + 1) = InterfaceFor;
        if (!v22)
        {
          goto LABEL_33;
        }

        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v44);
        if ((CallableForCallee & 4) != 0)
        {
          goto LABEL_27;
        }

        v25 = CallableForCallee & 0xFFFFFFFFFFFFFFF8;
        if ((CallableForCallee & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          goto LABEL_27;
        }

        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v25 = 0;
        }

        *&v45 = v25;
        if (v25)
        {
          mlir::SymbolRefAttr::getNestedReferences(&v45);
          if (!v26)
          {
LABEL_27:
            v27 = mlir::CallGraph::resolveCallable(a4, v44, *(&v44 + 1), a5);
            if (!mlir::CallGraphNode::isExternal(v27))
            {
              v28 = *(a6 + 2);
              if (v28 >= *(a6 + 3))
              {
                v45 = v44;
                v46 = v17;
                v47 = v27;
                if (*a6 > &v45 || *a6 + 32 * v28 <= &v45)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v20 = *a6 + 32 * v28;
              *v20 = v44;
              *(v20 + 16) = v17;
              *(v20 + 24) = v27;
              ++*(a6 + 2);
            }
          }
        }

LABEL_18:
        v19 = *(v19 + 8);
        if (v19 == v18)
        {
          v14 = v49;
          goto LABEL_14;
        }
      }

      v44 = 0uLL;
LABEL_33:
      v29 = *(v22 + 44);
      if ((v29 & 0x7FFFFF) != 0)
      {
        v30 = v22 + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 32 * *(v22 + 40) + 64;
        v31 = v30 + 24 * (v29 & 0x7FFFFF);
        if (a7)
        {
          do
          {
            v32 = mlir::CallGraph::lookupNode(a4, v30);
            if (v32)
            {
              v33 = v32;
            }

            else
            {
              v33 = v17;
            }

            v34 = *(v30 + 8);
            if (v34 != v30)
            {
              v35 = v49;
              do
              {
                if (v34)
                {
                  v36 = v34 - 8;
                }

                else
                {
                  v36 = 0;
                }

                if (v35 >= HIDWORD(v49))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v37 = v48 + 16 * v35;
                *v37 = v36;
                v37[1] = v33;
                LODWORD(v49) = ++v35;
                v34 = *(v34 + 8);
              }

              while (v34 != v30);
            }

            v30 += 24;
          }

          while (v30 != v31);
        }

        else
        {
          do
          {
            if (!mlir::CallGraph::lookupNode(a4, v30))
            {
              v38 = *(v30 + 8);
              if (v38 != v30)
              {
                v39 = v49;
                do
                {
                  if (v38)
                  {
                    v40 = v38 - 8;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (v39 >= HIDWORD(v49))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v41 = v48 + 16 * v39;
                  *v41 = v40;
                  v41[1] = v17;
                  LODWORD(v49) = ++v39;
                  v38 = *(v38 + 8);
                }

                while (v38 != v30);
              }
            }

            v30 += 24;
          }

          while (v30 != v31);
        }
      }

      goto LABEL_18;
    }
  }

LABEL_10:
  if (v48 != v50)
  {
    free(v48);
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*a1 + 16 * v4);
  *v5 = *a2;
  v5[1] = v3;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

void anonymous namespace::CGUseList::recomputeUses(_anonymous_namespace_::CGUseList *this, mlir::CallGraphNode *a2, mlir::CallGraph *a3)
{
  v5 = a2;
  mlir::CallGraphNode::getCallableRegion(a2);
  llvm::deallocate_buffer(*v4, (8 * *(v4 + 16)));
}

void sub_2565FF404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  llvm::deallocate_buffer(*(v4 + 24), (16 * *(v4 + 40)));
}

void sub_2565FF420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  llvm::deallocate_buffer(0, 0);
}

void sub_2565FF448(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, llvm *a12, uint64_t a13, int a14, int a15, char a16)
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
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
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
      CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v22);
      v21 = mlir::CallGraph::lookupNode(v12, CallableRegion);
      if (!v21)
      {
        goto LABEL_3;
      }

      InherentAttr = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
      if (!InherentAttr)
      {
        goto LABEL_14;
      }

      if (*(v10 + 47))
      {
        InherentAttr = mlir::Operation::getInherentAttr(v10, "sym_name", 8);
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

      if (mlir::DictionaryAttr::contains(v10 + 56, "sym_name", 8uLL))
      {
LABEL_16:
        v16 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
        v19 = v10;
        v20 = v16;
        if ((a3 & 1) != 0 || mlir::SymbolOpInterface::isPrivate(&v19))
        {
          if (mlir::SymbolOpInterface::canDiscardOnUseEmpty(&v19))
          {
            v18 = 0;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v5, &v21, &v18, v17);
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

void walkReferencedSymbolNodes(mlir::Block **a1, mlir::Operation *a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  mlir::SymbolTable::getSymbolUses(&__p, a1);
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
      llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(a4, &v21, &v22, &v23);
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
        CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v21);
        *(v15 + 8) = mlir::CallGraph::lookupNode(a2, CallableRegion);
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v3, &v15);
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v3, i);
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
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[]((v7 + 3), &v11);
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

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(uint64_t a1)
{
  *(a1 + 64) = *(a1 + 56);
  if (*(a1 + 80) != *(a1 + 88))
  {
    while (1)
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(a1);
      v3 = *(a1 + 80);
      v2 = *(a1 + 88);
      v40 = *(v2 - 32);
      v4 = *(v2 - 8);
      *(a1 + 88) = v2 - 32;
      if (v3 != v2 - 32 && *(v2 - 40) > v4)
      {
        *(v2 - 40) = v4;
      }

      if (v4 == *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 8, &v40))
      {
        break;
      }

      if (*(a1 + 80) == *(a1 + 88))
      {
        return;
      }
    }

    v5 = *(a1 + 64);
    while (1)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      if (v5 >= v13)
      {
        v14 = *(a1 + 56);
        v15 = v5 - v14;
        v16 = (v5 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v18 = v13 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = *(v12 - 8);
        v23 = &v21[-v20];
        *v21 = v22;
        v5 = (v21 + 1);
        memcpy(v23, v14, v15);
        *(a1 + 56) = v23;
        *(a1 + 64) = v5;
        *(a1 + 72) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = *(v12 - 8);
        v5 += 8;
      }

      *(a1 + 64) = v5;
      *(a1 + 40) -= 8;
      v24 = *(a1 + 24);
      if (!v24)
      {
        goto LABEL_42;
      }

      v6 = *(a1 + 8);
      v7 = *(v5 - 1);
      v8 = v24 - 1;
      v9 = ((v7 >> 4) ^ (v7 >> 9)) & (v24 - 1);
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      if (v7 != *v10)
      {
        break;
      }

LABEL_10:
      *(v10 + 2) = -1;
      if (v7 == v40)
      {
        return;
      }
    }

    v25 = 0;
    v26 = 1;
    while (v11 != -4096)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v11 == -8192;
      }

      if (v27)
      {
        v25 = v10;
      }

      v28 = v9 + v26++;
      v9 = v28 & v8;
      v10 = (v6 + 16 * (v28 & v8));
      v11 = *v10;
      if (v7 == *v10)
      {
        goto LABEL_10;
      }
    }

    if (v25)
    {
      v10 = v25;
    }

    v29 = *(a1 + 16);
    if (4 * v29 + 4 < 3 * v24)
    {
      if (v24 + ~v29 - *(a1 + 20) > v24 >> 3)
      {
        *(a1 + 16) = v29 + 1;
        if (*v10 == -4096)
        {
LABEL_29:
          *v10 = *(v5 - 1);
          *(v10 + 2) = 0;
          v5 = *(a1 + 64);
          v7 = *(v5 - 1);
          goto LABEL_10;
        }

LABEL_28:
        --*(a1 + 20);
        goto LABEL_29;
      }
    }

    else
    {
LABEL_42:
      v24 *= 2;
    }

    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1 + 8, v24);
    v30 = *(a1 + 24);
    if (v30)
    {
      v31 = *(a1 + 8);
      v32 = *(v5 - 1);
      v33 = v30 - 1;
      v34 = ((v32 >> 4) ^ (v32 >> 9)) & (v30 - 1);
      v10 = (v31 + 16 * v34);
      v35 = *v10;
      if (v32 != *v10)
      {
        v36 = 0;
        v37 = 1;
        while (v35 != -4096)
        {
          if (v36)
          {
            v38 = 0;
          }

          else
          {
            v38 = v35 == -8192;
          }

          if (v38)
          {
            v36 = v10;
          }

          v39 = v34 + v37++;
          v34 = v39 & v33;
          v10 = (v31 + 16 * (v39 & v33));
          v35 = *v10;
          if (v32 == *v10)
          {
            goto LABEL_55;
          }
        }

        if (v36)
        {
          v10 = v36;
        }
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_55:
    ++*(a1 + 16);
    if (*v10 == -4096)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }
}

void std::vector<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement,std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(int *a1)
{
  v2 = *(a1 + 11);
  while (1)
  {
    result = *(v2 - 24);
    if (result == *(*(v2 - 32) + 48) + 8 * *(*(v2 - 32) + 56))
    {
      return result;
    }

    v7 = *(v2 - 16);
    *(v2 - 24) = result + 8;
    v8 = v7();
    v9 = a1[6];
    if (!v9)
    {
      goto LABEL_2;
    }

    v10 = *(a1 + 1);
    v11 = ((v8 >> 4) ^ (v8 >> 9)) & (v9 - 1);
    v12 = *(v10 + 16 * v11);
    if (v12 == v8)
    {
LABEL_6:
      if (v11 == v9)
      {
        goto LABEL_2;
      }

      v13 = *(v10 + 16 * v11 + 8);
      v2 = *(a1 + 11);
      if (*(v2 - 8) > v13)
      {
        *(v2 - 8) = v13;
      }
    }

    else
    {
      v14 = 1;
      while (v12 != -4096)
      {
        v15 = v11 + v14++;
        v11 = v15 & (v9 - 1);
        v12 = *(v10 + 16 * v11);
        if (v12 == v8)
        {
          goto LABEL_6;
        }
      }

LABEL_2:
      v19 = v8;
      v3 = *a1 + 1;
      *a1 = v3;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[]((a1 + 2), &v19) = v3;
      std::vector<mlir::Operation *>::push_back[abi:nn200100]((a1 + 8), &v19);
      v4 = *(v19 + 48);
      v5 = *a1;
      *&v16 = v19;
      *(&v16 + 1) = v4;
      v17 = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
      v18 = v5;
      std::vector<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement,std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>::push_back[abi:nn200100]((a1 + 20), &v16);
      v2 = *(a1 + 11);
    }
  }
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
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
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

void llvm::ThreadPoolInterface::asyncImpl<void>(std::future<void> *a3@<X8>, uint64_t x1_0@<X1>)
{
  v7 = *MEMORY[0x277D85DE8];
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
  v9 = *MEMORY[0x277D85DE8];
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

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_286866BA8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286866BA8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(v3);
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if ((v4 & 1) == 0)
  {
    v5(v6);
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(*v6 + v5))();
  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
LABEL_5:
    v9 = MEMORY[0x259C62E00]();
    MEMORY[0x259C63180](v9, 0x20C4093837F09);
  }

LABEL_6:
  MEMORY[0x259C63180](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_286866BF0;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286866BF0;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

std::shared_future<void> *std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286866C38;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286866C38;
  std::shared_future<void>::~shared_future(a1 + 1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286866C38;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286866CC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::operator()(uint64_t result)
{
  v1 = atomic_load(*(result + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(result + 16), 1u);
      if (add >= **(result + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(result + 32), add);
      v5 = *(**(result + 48) + 8 * add);
      v6 = *(result + 40);
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
        atomic_store(1u, *(result + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(result + 32));
      v3 = atomic_load(*(result + 8));
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

uint64_t *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, uint64_t *a5)
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

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::CallGraphSCC &)>::callback_fn<mlir::Inliner::doInlining(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v97[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v88 = *a1;
  v6 = *(a1 + 16);
  v87 = **(a1 + 24);
  v89 = *(v5 + 424);
  v7 = *a2;
  v8 = *(a2 + 8);
  v90 = v92;
  *v91 = 0x400000000;
  if (v7 == v8)
  {
LABEL_19:
    v94 = 0;
    v93 = 0u;
    v95 = v97;
    v96 = 0x100000000;
    if (v7 == v8)
    {
LABEL_20:
      v90 = v92;
      *v91 = 0x800000000;
      if (*(v5 + 160))
      {
        operator new();
      }

      if (!v96)
      {
LABEL_152:
        *(v5 + 160) = 0;
        if (v90 != v92)
        {
          free(v90);
        }

        if (v95 != v97)
        {
          free(v95);
        }

        llvm::deallocate_buffer(v93, (8 * v94));
      }

      v27 = v95;
      v28 = &v95[8 * v96];
LABEL_53:
      v29 = *v27;
      v31 = *a2;
      v30 = *(a2 + 8);
      if (*a2 != v30)
      {
        while (*v31 != v29)
        {
          if (++v31 == v30)
          {
            goto LABEL_67;
          }
        }
      }

      if (v31 == v30)
      {
        goto LABEL_67;
      }

      v32 = v30 - (v31 + 1);
      if (v30 != v31 + 1)
      {
        v33 = *v27;
        memmove(v31, v31 + 1, v30 - (v31 + 1));
        v29 = v33;
      }

      *(a2 + 8) = v31 + v32;
      v34 = *(a2 + 24);
      v36 = &v34[1];
      v35 = v34[1];
      v37 = v34[3].u32[0];
      v38 = v29 >> 4;
      if (!v37)
      {
        goto LABEL_115;
      }

      v39 = v37 - 1;
      v40 = (v37 - 1) & (v38 ^ (v29 >> 9));
      v41 = &v35[2 * v40];
      v42 = *v41;
      if (v29 == *v41)
      {
        v43 = *(v41 + 2);
        v44 = *v35;
        if (*v35)
        {
          goto LABEL_80;
        }

        goto LABEL_63;
      }

      v59 = 0;
      v60 = 1;
      while (v42 != -4096)
      {
        if (v59)
        {
          v61 = 0;
        }

        else
        {
          v61 = v42 == -8192;
        }

        if (v61)
        {
          v59 = v41;
        }

        v62 = v40 + v60++;
        v40 = v62 & v39;
        v41 = &v35[2 * v40];
        v42 = *v41;
        if (v29 == *v41)
        {
          v43 = *(v41 + 2);
LABEL_79:
          v39 = v37 - 1;
          v44 = *v35;
          if (*v35)
          {
LABEL_80:
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v45 = v35;
            while (v44 != -4096)
            {
              if (v55)
              {
                v57 = 0;
              }

              else
              {
                v57 = v44 == -8192;
              }

              if (v57)
              {
                v55 = v45;
              }

              v58 = v54 + v56++;
              v54 = v58 & v39;
              v45 = &v35[2 * (v58 & v39)];
              v44 = *v45;
              if (!*v45)
              {
                goto LABEL_64;
              }
            }

            if (v55)
            {
              v45 = v55;
            }

            goto LABEL_102;
          }

LABEL_63:
          v45 = v35;
LABEL_64:
          *(v45 + 2) = v43;
          v46 = v34[3].i32[0];
          if (v46)
          {
            v47 = v46 - 1;
            v48 = (v46 - 1) & (v38 ^ (v29 >> 9));
            v49 = v35[2 * v48];
            if (v29 == v49)
            {
LABEL_66:
              v35[2 * v48] = -8192;
              v34[2] = vadd_s32(v34[2], 0x1FFFFFFFFLL);
            }

            else
            {
              v64 = 1;
              while (v49 != -4096)
              {
                v65 = v48 + v64++;
                v48 = v65 & v47;
                v49 = v35[2 * v48];
                if (v29 == v49)
                {
                  goto LABEL_66;
                }
              }
            }
          }

LABEL_67:
          v50 = *(v5 + 56);
          if (*(v5 + 64) != v50)
          {
            goto LABEL_51;
          }

          v51 = *(v5 + 76);
          if (!v51)
          {
LABEL_72:
            if (v51 < *(v5 + 72))
            {
              *(v5 + 76) = v51 + 1;
              *(v50 + 8 * v51) = v29;
              goto LABEL_52;
            }

LABEL_51:
            llvm::SmallPtrSetImplBase::insert_imp_big((v5 + 56), v29);
            goto LABEL_52;
          }

          v52 = 8 * v51;
          v53 = *(v5 + 56);
          while (*v53 != v29)
          {
            ++v53;
            v52 -= 8;
            if (!v52)
            {
              goto LABEL_72;
            }
          }

LABEL_52:
          if (++v27 == v28)
          {
            goto LABEL_152;
          }

          goto LABEL_53;
        }
      }

      v66 = v59 ? v59 : v41;
      v67 = v34[2].i32[0];
      if (4 * v67 + 4 < 3 * v37)
      {
        if (v37 + ~v67 - v34[2].i32[1] > v37 >> 3)
        {
          v34[2].i32[0] = v67 + 1;
          if (*v66 == -4096)
          {
LABEL_78:
            v43 = 0;
            *v66 = v29;
            *(v66 + 2) = 0;
            v37 = v34[3].u32[0];
            if (v37)
            {
              goto LABEL_79;
            }

            v45 = 0;
LABEL_102:
            v63 = v34[2].i32[0];
            if (4 * v63 + 4 >= 3 * v37)
            {
              v37 *= 2;
            }

            else if (v37 + ~v63 - v34[2].i32[1] > v37 >> 3)
            {
              v34[2].i32[0] = v63 + 1;
              if (*v45 == -4096)
              {
LABEL_106:
                *v45 = 0;
                *(v45 + 2) = 0;
                goto LABEL_64;
              }

LABEL_105:
              --v34[2].i32[1];
              goto LABEL_106;
            }

            v77 = v29;
            llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(v36, v37);
            v35 = v34[1];
            v78 = v34[3].i32[0];
            if (v78)
            {
              v79 = *v35;
              v45 = v34[1];
              if (*v35)
              {
                v80 = 0;
                v81 = 0;
                v82 = v78 - 1;
                v83 = 1;
                v45 = v34[1];
                while (v79 != -4096)
                {
                  if (v81)
                  {
                    v84 = 0;
                  }

                  else
                  {
                    v84 = v79 == -8192;
                  }

                  if (v84)
                  {
                    v81 = v45;
                  }

                  v85 = v80 + v83++;
                  v80 = v85 & v82;
                  v45 = &v35[2 * (v85 & v82)];
                  v79 = *v45;
                  if (!*v45)
                  {
                    goto LABEL_144;
                  }
                }

                if (v81)
                {
                  v45 = v81;
                }
              }
            }

            else
            {
              v45 = 0;
            }

LABEL_144:
            v29 = v77;
            ++v34[2].i32[0];
            if (*v45 == -4096)
            {
              goto LABEL_106;
            }

            goto LABEL_105;
          }

LABEL_77:
          --v34[2].i32[1];
          goto LABEL_78;
        }
      }

      else
      {
LABEL_115:
        v37 *= 2;
      }

      v68 = v29;
      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(v36, v37);
      v35 = v34[1];
      v69 = v34[3].i32[0];
      if (v69)
      {
        v29 = v68;
        v70 = v69 - 1;
        v71 = v70 & (v38 ^ (v68 >> 9));
        v66 = &v35[2 * v71];
        v72 = *v66;
        if (v68 == *v66)
        {
          goto LABEL_129;
        }

        v73 = 0;
        v74 = 1;
        while (v72 != -4096)
        {
          if (v73)
          {
            v75 = 0;
          }

          else
          {
            v75 = v72 == -8192;
          }

          if (v75)
          {
            v73 = v66;
          }

          v76 = v71 + v74++;
          v71 = v76 & v70;
          v66 = &v35[2 * (v76 & v70)];
          v72 = *v66;
          v29 = v68;
          if (v68 == *v66)
          {
            goto LABEL_129;
          }
        }

        if (v73)
        {
          v66 = v73;
        }
      }

      else
      {
        v66 = 0;
      }

      v29 = v68;
LABEL_129:
      ++v34[2].i32[0];
      if (*v66 == -4096)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    while (1)
    {
      v90 = *v7;
      if (mlir::CallGraphNode::isExternal(v90))
      {
        goto LABEL_23;
      }

      v14 = v90;
      v15 = *(mlir::CallGraphNode::getCallableRegion(v90) + 16);
      if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v15))
      {
LABEL_35:
        if (mlir::isMemoryEffectFree(v15, v16))
        {
          v22 = *(v15 + 36);
          if (v22)
          {
            v23 = v15 - 16;
          }

          else
          {
            v23 = 0;
          }

          if (!v22)
          {
            goto LABEL_43;
          }

          v24 = 0;
          while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v24))
          {
            if (v22 == ++v24)
            {
              goto LABEL_43;
            }
          }
        }

        goto LABEL_22;
      }

      if (*(v15 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(v15, "sym_name", 8), (v16 & 1) != 0))
      {
        if (!InherentAttr)
        {
          goto LABEL_35;
        }
      }

      else if ((mlir::DictionaryAttr::contains(v15 + 56, "sym_name", 8uLL) & 1) == 0)
      {
        goto LABEL_35;
      }

      v18 = v6[4];
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *v6;
      v20 = (v18 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v21 = *(*v6 + 16 * v20);
      if (v21 != v14)
      {
        v25 = 1;
        while (v21 != -4096)
        {
          v26 = v20 + v25++;
          v20 = v26 & (v18 - 1);
          v21 = *(v19 + 16 * v20);
          if (v21 == v14)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_22;
      }

LABEL_31:
      if (v20 == v18 || *(v19 + 16 * v20 + 8))
      {
LABEL_22:
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v90);
        collectCallOps(*(CallableRegion + 8), CallableRegion, v90, v89, *(v5 + 432), (v5 + 152), 0);
LABEL_23:
        if (++v7 == v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_43:
        llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(&v93, &v90);
        if (++v7 == v8)
        {
          goto LABEL_20;
        }
      }
    }
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
        if (v91[0] >= v91[1])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v90 + v91[0]++) = v9;
      }
    }

    ++v7;
  }

  while (v7 != v8);
  v11 = v90;
  if (!v91[0])
  {
    v12 = 0;
    if (v90 == v92)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = v90;
  if (mlir::Inliner::Impl::optimizeSCCAsync(v88, v90, v91[0], v87))
  {
  }

  v12 = 1;
  if (v90 != v92)
  {
LABEL_16:
    free(v11);
  }

LABEL_17:
  if ((v12 & 1) == 0)
  {
    v89 = *(v5 + 424);
    v7 = *a2;
    v8 = *(a2 + 8);
    goto LABEL_19;
  }

  return 0;
}