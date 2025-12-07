uint64_t *foldSwitchToBool(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    do
    {
      v3 = *(v1 + 40);
      result = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID();
      if (v3 == result)
      {
        v7 = *(v1 + 80);
        if (v7)
        {
          v8 = 16 * v7;
          v9 = *(v1 + 72) + 8;
          do
          {
            result = foldSwitchToBool(v9);
            v9 += 16;
            v8 -= 16;
          }

          while (v8);
          if (*(v1 + 80) == 1)
          {
            operator new();
          }
        }
      }

      else
      {
        v4 = *v2;
        v5 = *(*v2 + 40);
        result = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID();
        if (v4)
        {
          v6 = v5 == result;
        }

        else
        {
          v6 = 0;
        }

        if (v6)
        {
          result = foldSwitchToBool(v4 + 56);
        }
      }

      v10 = *v2;
      v11 = *(v10 + 24);
      v2 = v10 + 24;
      v1 = v11;
    }

    while (v11);
  }

  return result;
}

void mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(mlir::pdl_to_pdl_interp::MatcherNode *this)
{
  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);

  JUMPOUT(0x25F891040);
}

{
  *this = &unk_286E843C8;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

void mlir::pdl_to_pdl_interp::BoolNode::~BoolNode(mlir::pdl_to_pdl_interp::BoolNode *this)
{
  *this = &unk_286E843E8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);
}

{
  *this = &unk_286E843E8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);

  JUMPOUT(0x25F891040);
}

void mlir::pdl_to_pdl_interp::SuccessNode::~SuccessNode(mlir::pdl_to_pdl_interp::SuccessNode *this)
{
  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);

  JUMPOUT(0x25F891040);
}

void mlir::pdl_to_pdl_interp::SwitchNode::~SwitchNode(char ***this)
{
  *this = &unk_286E84428;
  llvm::SmallVector<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,0u>::~SmallVector(this + 9);
  MEMORY[0x25F891030](this[6], 8);

  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);
}

{
  *this = &unk_286E84428;
  llvm::SmallVector<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,0u>::~SmallVector(this + 9);
  MEMORY[0x25F891030](this[6], 8);
  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);

  JUMPOUT(0x25F891040);
}

void getTreePredicates(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v90 = a5;
    v91 = a2;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>(&v88, a4, &v91, &v90);
    if ((v89 & 1) == 0)
    {
      if ((~*(v8 + 8) & 7) != 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v18 + 8) & 7;
      if (v19 == 6)
      {
        v20 = v18 + 24 * *(v18 + 16) + 120;
      }

      else
      {
        v20 = v18 + 16 * v19 + 16;
      }

      v21 = *(*(v20 + 48) + 16);
      if (v21 != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
      {
        return;
      }

      v26 = *(v88 + 8);
      while (!v26 || *(v26 + 16))
      {
        v26 = *(v26 + 8);
        if (!v26)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v26) = *(v26 + 32);
LABEL_37:
      v27 = v5;
      while (!v27 || *(v27 + 16))
      {
        v27 = *(v27 + 8);
        if (!v27)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v27) = *(v27 + 32);
LABEL_43:
      if (v26 >= v27)
      {
        v28 = (v88 + 8);
      }

      else
      {
        v28 = &v90;
      }

      if (v26 >= v27)
      {
        v29 = v5;
      }

      else
      {
        v29 = *(v88 + 8);
      }

      EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(v7, v29);
      v32 = EqualTo;
      v33 = v31;
      v35 = *(v9 + 8);
      v34 = *(v9 + 16);
      if (v35 >= v34)
      {
        v37 = *v9;
        v38 = v35 - *v9;
        v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3) + 1;
        if (v39 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_122;
        }

        v40 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v37) >> 3);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0x555555555555555)
        {
          v41 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v41);
        }

        v51 = (8 * (v38 >> 3));
        *v51 = *v28;
        v51[1] = v32;
        v51[2] = v33;
        v36 = v51 + 3;
        v52 = v51 - v38;
        memcpy(v51 - v38, v37, v38);
        v53 = *v9;
        *v9 = v52;
        *(v9 + 8) = v36;
        *(v9 + 16) = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v35 = *v28;
        v35[1] = EqualTo;
        v35[2] = v31;
        v36 = v35 + 3;
      }

      *(v9 + 8) = v36;
      return;
    }

    v10 = *(v5 + 16);
    if (!v5 || v10 != 3)
    {
      if (v5 && !v10)
      {

        getTreePredicates(v9, v8, v7, v6, v5, 0);
        return;
      }

      if (v10 != 7)
      {

        getOperandTreePredicates(v9, v8, v7, v6, v5);
        return;
      }

      if ((~*(v8 + 8) & 7) != 0)
      {
        v42 = v8;
      }

      else
      {
        v42 = 0;
      }

      if (!v42)
      {
        return;
      }

      v43 = *(v42 + 8) & 7;
      if (v43 == 6)
      {
        v44 = v42 + 24 * *(v42 + 16);
        v45 = v44 + 120;
        if (v44 == -120 || *(*(v44 + 168) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
        {
          v45 = v42 + 24 * *(v42 + 16) + 120;
          if (v42 + 24 * *(v42 + 16) == -120)
          {
            return;
          }

LABEL_105:
          if (*(*(v45 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id)
          {
            return;
          }
        }
      }

      else
      {
        v74 = v42 + 16 * v43;
        v45 = v74 + 16;
        if (*(*(v74 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id)
        {
          goto LABEL_105;
        }
      }

      v75 = *(v45 + 16 * ((*(v45 + 44) >> 23) & 1) + 64);
      if (!v75)
      {
        return;
      }

      TypeConstraint = mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(v7, v75);
      v73 = v76;
LABEL_108:
      v78 = *(v9 + 8);
      v77 = *(v9 + 16);
      if (v78 < v77)
      {
        *v78 = v5;
        v78[1] = TypeConstraint;
        v79 = v78 + 3;
        v78[2] = v73;
LABEL_120:
        *(v9 + 8) = v79;
        return;
      }

      v80 = *v9;
      v81 = v78 - *v9;
      v82 = 0xAAAAAAAAAAAAAAABLL * (v81 >> 3) + 1;
      if (v82 <= 0xAAAAAAAAAAAAAAALL)
      {
        v83 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v80) >> 3);
        if (2 * v83 > v82)
        {
          v82 = 2 * v83;
        }

        if (v83 >= 0x555555555555555)
        {
          v84 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v84 = v82;
        }

        if (v84)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v84);
        }

        v85 = (8 * (v81 >> 3));
        *v85 = v5;
        v85[1] = TypeConstraint;
        v85[2] = v73;
        v79 = v85 + 3;
        v86 = v85 - v81;
        memcpy(v85 - v81, v80, v81);
        v87 = *v9;
        *v9 = v86;
        *(v9 + 8) = v79;
        *(v9 + 16) = 0;
        if (v87)
        {
          operator delete(v87);
        }

        goto LABEL_120;
      }

LABEL_122:
      std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>::__throw_length_error[abi:nn200100]();
    }

    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v7);
    v13 = IsNotNull;
    v14 = v12;
    v16 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (v16 >= v15)
    {
      v46 = *v9;
      v47 = v16 - *v9;
      v48 = 0xAAAAAAAAAAAAAAABLL * (v47 >> 3) + 1;
      if (v48 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_122;
      }

      v49 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v46) >> 3);
      if (2 * v49 > v48)
      {
        v48 = 2 * v49;
      }

      if (v49 >= 0x555555555555555)
      {
        v50 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v50);
      }

      v54 = (8 * (v47 >> 3));
      *v54 = v5;
      v54[1] = v13;
      v54[2] = v14;
      v17 = v54 + 3;
      v55 = v54 - v47;
      memcpy(v54 - v47, v46, v47);
      v56 = *v9;
      *v9 = v55;
      *(v9 + 8) = v17;
      *(v9 + 16) = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v16 = v5;
      v16[1] = IsNotNull;
      v17 = v16 + 3;
      v16[2] = v12;
    }

    *(v9 + 8) = v17;
    if ((~*(v8 + 8) & 7) != 0)
    {
      v57 = v8;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v57 + 8) & 7;
    if (v58 == 6)
    {
      v59 = v57 + 24 * *(v57 + 16) + 120;
    }

    else
    {
      v59 = v57 + 16 * v58 + 16;
    }

    if (v59)
    {
      v60 = *(*(v59 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id;
    }

    else
    {
      v60 = 0;
    }

    if (!v60)
    {
      return;
    }

    v61 = *(v59 + 44);
    if ((v61 & 0x800000) == 0)
    {
      break;
    }

    if (!*(v59 + 68))
    {
      break;
    }

    v62 = *(*(v59 + 72) + 24);
    if (!v62)
    {
      break;
    }

    v63 = *v7;
    v64 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID();
    a5 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v63, v64, v5);
    a1 = v9;
    a2 = v62;
    a3 = v7;
    a4 = v6;
  }

  v65 = *(v59 + 16 * ((v61 >> 23) & 1) + 64);
  if (v65)
  {
    v66 = *v7;
    v67 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID();
    v68 = *v66;
    v95[0] = v67;
    TypeConstraint = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v68 + 232), v95);
    v70 = *v7;
    v71 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID();
    v72 = *v70;
    v95[0] = 0;
    v95[1] = 0;
    v93 = &v94;
    v94 = v65;
    v92[0] = &v94;
    v92[1] = v95;
    v73 = mlir::detail::StorageUniquerImpl::getOrCreate(v72, v71, (v65 >> 4) ^ (v65 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v93, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v92);
    goto LABEL_108;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v8);
    v6 = *a2;
    *(v5 + 6) = 0;
    *v5 = v6;
    v5[1] = 0;
    v5[2] = 0;
  }

  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
    v5[2] = 0;
  }

  return v5 + 1;
}

void std::deque<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (!(v8 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
}

void std::__split_buffer<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *,std::allocator<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *>>::emplace_back<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::Entry *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>,mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (a1 + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
      v9 = 1;
    }

    else
    {
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
        v6 = v14 & (a2 - 1);
        v7 = (a1 + 32 * v6);
        v8 = *v7;
        v9 = 1;
        if (*v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      if (v11)
      {
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

LABEL_5:
  *a4 = v7;
  return v9;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 24 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
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
        v8 = (a1 + 24 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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

void llvm::SmallVectorTemplateBase<std::pair<mlir::Value,llvm::SmallVector<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::RootDepth,1u>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 40, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4 + 8;
    v8 = 40 * v6;
    v9 = v5 + 8;
    do
    {
      *(v7 - 8) = *(v9 - 8);
      v7 += 40;
      v9 += 40;
      v8 -= 40;
    }

    while (v8);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = v5 + 40 * v10 - 16;
      v12 = -40 * v10;
      do
      {
        v13 = *(v11 - 16);
        if (v11 != v13)
        {
          free(v13);
        }

        v11 -= 40;
        v12 += 40;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

uint64_t llvm::SmallVector<buildCostGraph(llvm::ArrayRef<mlir::Value>,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>> &,llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,anonymous namespace::OpIndex,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::OpIndex>>>> &)::RootDepth,1u>::SmallVector(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = *a2;
      if (*a2 != a2 + 16)
      {
        *a1 = v6;
        v7 = *(a2 + 12);
        *(a1 + 8) = v5;
        *(a1 + 12) = v7;
        *a2 = a2 + 16;
        *(a2 + 12) = 0;
LABEL_11:
        *(a2 + 8) = 0;
        return a1;
      }

      if (v5 < 2)
      {
        v9 = 16;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 16);
        v8 = *(a2 + 8);
        if (!v8)
        {
LABEL_10:
          *(a1 + 8) = v5;
          goto LABEL_11;
        }

        v6 = *a2;
        v3 = *a1;
        v9 = 16 * v8;
      }

      memcpy(v3, v6, v9);
      goto LABEL_10;
    }
  }

  return a1;
}

uint64_t *llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::copyFrom(unsigned int *a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::destroyAll(a1);
  result = MEMORY[0x25F891030](*a1, 8);
  v5 = *(a2 + 4);
  a1[4] = v5;
  if (v5)
  {
    result = llvm::allocate_buffer((32 * v5), 8uLL);
    *a1 = result;
    *(a1 + 1) = a2[1];
    v6 = a1[4];
    if (v6)
    {
      v7 = result;
      v8 = 0;
      v9 = *a2;
      do
      {
        v10 = &v7[4 * v8];
        v11 = v9 + 32 * v8;
        v12 = *v11;
        *v10 = *v11;
        if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v10[1] = 0;
          v10[2] = 0;
          *(v10 + 6) = 0;
          result = MEMORY[0x25F891030](0, 8);
          v13 = *(v11 + 24);
          *(v10 + 6) = v13;
          if (v13)
          {
            result = llvm::allocate_buffer((24 * v13), 8uLL);
            v10[1] = result;
            v10[2] = *(v11 + 16);
            v14 = *(v10 + 6);
            if (v14)
            {
              v15 = (*(v11 + 8) + 8);
              v16 = result + 1;
              do
              {
                v17 = *(v15 - 1);
                *(v16 - 1) = v17;
                if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
                {
                  *v16 = *v15;
                }

                v15 = (v15 + 24);
                v16 += 3;
                --v14;
              }

              while (v14);
            }
          }

          else
          {
            v10[1] = 0;
            v10[2] = 0;
          }
        }

        ++v8;
      }

      while (v8 != v6);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = MEMORY[0x25F891030](*v3, 8);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::try_emplace<mlir::pdl_to_pdl_interp::Position *&>(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(*a2, *(a2 + 16), *a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::InsertIntoBucketImpl<mlir::Value>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID();
  v6 = *v4;
  v15[0] = 0;
  v15[1] = 0;
  v13 = &v14;
  v14 = a2;
  v12[0] = &v14;
  v12[1] = v15;
  v7 = mlir::detail::StorageUniquerImpl::getOrCreate(v6, v5, (a2 >> 4) ^ (a2 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v8 = *a1;
  v9 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID();
  v10 = *v8;
  v15[0] = v9;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v10 + 232), v15);
  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
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
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, unint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::grow(uint64_t a1, int a2)
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
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::EqualToQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::EqualToQuestion *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 20;
  *(v4 + 8) = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(uint64_t **this)
{
  v2 = *this;
  v3 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID();
  v4 = *v2;
  v10 = v3;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &v10);
  v6 = *this;
  v7 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID();
  v8 = *v6;
  v10 = v7;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), &v10);
  return v5;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = a3;
  v4[0] = &v6;
  v4[1] = v7;
  v5 = &v6;
  return mlir::detail::StorageUniquerImpl::getOrCreate(a1, a2, (a3 >> 4) ^ (a3 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v5, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *(v4 + 8) = 0;
  *(v4 + 16) = 7;
  v5 = *v3;
  *(v4 + 24) = *v3;
  *v4 = &unk_286E84448;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 22;
  *(v4 + 8) = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

void getTreePredicates(const void **a1, uint64_t a2, uint64_t **this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = this;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(a5 + 32))
  {
    IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
    v13 = IsNotNull;
    v14 = v12;
    v16 = a1[1];
    v15 = a1[2];
    if (v16 >= v15)
    {
      v18 = *a1;
      v19 = v16 - *a1;
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3) + 1;
      if (v20 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_127;
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v22);
      }

      v23 = (8 * (v19 >> 3));
      *v23 = a5;
      v23[1] = v13;
      v23[2] = v14;
      v17 = v23 + 3;
      v24 = v23 - v19;
      memcpy(v23 - v19, v18, v19);
      v25 = *a1;
      *a1 = v24;
      a1[1] = v17;
      a1[2] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v16 = a5;
      *(v16 + 1) = IsNotNull;
      v17 = v16 + 24;
      *(v16 + 2) = v12;
    }

    a1[1] = v17;
  }

  v26 = v10 + 64;
  v27 = *(v10 + 44);
  v28 = (v27 >> 23) & 1;
  v29 = *(v10 + 64 + 16 * v28 + 8);
  v186 = a1;
  if (v29)
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = *v6;
    v33 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID();
    v34 = *v32;
    v190 = v33;
    v35 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v34 + 232), &v190);
    v36 = *v6;
    mlir::OperationName::OperationName(&v194, v30, v31, v6[1]);
    v37 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID();
    v38 = *v36;
    v190 = 0;
    v191 = 0;
    v195[0] = v194;
    v193[0] = v195;
    v196 = v195;
    v197 = &v190;
    v39 = mlir::detail::StorageUniquerImpl::getOrCreate(v38, v37, (LODWORD(v195[0]) >> 4) ^ (LODWORD(v195[0]) >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v193, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v196);
    v40 = v39;
    v42 = v186[1];
    v41 = v186[2];
    if (v42 >= v41)
    {
      v44 = *v186;
      v45 = v42 - *v186;
      v46 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 3) + 1;
      if (v46 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_127;
      }

      v47 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v44) >> 3);
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      if (v47 >= 0x555555555555555)
      {
        v48 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v48);
      }

      v49 = (8 * (v45 >> 3));
      *v49 = a5;
      v49[1] = v35;
      v49[2] = v40;
      v43 = v49 + 3;
      v50 = v49 - v45;
      memcpy(v49 - v45, v44, v45);
      v51 = *v186;
      *v186 = v50;
      v186[1] = v43;
      v186[2] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v42 = a5;
      *(v42 + 1) = v35;
      v43 = v42 + 24;
      *(v42 + 2) = v39;
    }

    v186[1] = v43;
    v27 = *(v10 + 44);
    v28 = (v27 >> 23) & 1;
  }

  v52 = *(v26 + 16 * v28 + 16);
  if ((v27 & 0x800000) != 0)
  {
    v53 = *(v10 + 72);
  }

  else
  {
    v53 = 0;
  }

  v182 = v53;
  NumNonRangeValues = getNumNonRangeValues(v53 & 0xFFFFFFFFFFFFFFF9 | 2, v52);
  if (v52 == NumNonRangeValues)
  {
    v55 = *v6;
    v56 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID();
    v57 = *v55;
    v190 = v56;
    v58 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v57 + 232), &v190);
    v59 = *v6;
    v60 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID();
    v190 = 0;
    v191 = 0;
    LODWORD(v193[0]) = v52;
    v61 = 37 * v52;
LABEL_44:
    v195[0] = v193;
    v196 = v193;
    v197 = &v190;
    v66 = mlir::detail::StorageUniquerImpl::getOrCreate(*v59, v60, v61, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v195, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v196);
    v67 = v66;
    v69 = v186[1];
    v68 = v186[2];
    if (v69 >= v68)
    {
      v71 = *v186;
      v72 = v69 - *v186;
      v73 = 0xAAAAAAAAAAAAAAABLL * (v72 >> 3) + 1;
      if (v73 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_127;
      }

      v74 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v71) >> 3);
      if (2 * v74 > v73)
      {
        v73 = 2 * v74;
      }

      if (v74 >= 0x555555555555555)
      {
        v75 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v75 = v73;
      }

      if (v75)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v75);
      }

      v76 = (8 * (v72 >> 3));
      *v76 = a5;
      v76[1] = v58;
      v76[2] = v67;
      v70 = v76 + 3;
      v77 = v76 - v72;
      memcpy(v76 - v72, v71, v72);
      v78 = *v186;
      *v186 = v77;
      v186[1] = v70;
      v186[2] = 0;
      if (v78)
      {
        operator delete(v78);
      }
    }

    else
    {
      *v69 = a5;
      *(v69 + 1) = v58;
      v70 = v69 + 24;
      *(v69 + 2) = v66;
    }

    v186[1] = v70;
    goto LABEL_57;
  }

  v62 = NumNonRangeValues;
  if (NumNonRangeValues)
  {
    v63 = *v6;
    v64 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID();
    v65 = *v63;
    v190 = v64;
    v58 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v65 + 232), &v190);
    v59 = *v6;
    v60 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID();
    v190 = 0;
    v191 = 0;
    LODWORD(v193[0]) = v62;
    v61 = 37 * v62;
    goto LABEL_44;
  }

LABEL_57:
  v79 = *(v10 + 44);
  v80 = (v26 + 16 * ((v79 >> 23) & 1));
  v81 = (v80[5] + v80[4]);
  v82 = v80[6];
  if ((v79 & 0x800000) != 0)
  {
    v83 = *(v10 + 72);
  }

  else
  {
    v83 = 0;
  }

  v84 = (v82 + v81) - v81;
  v181 = v83 + 32 * v81;
  v85 = getNumNonRangeValues(v181 & 0xFFFFFFFFFFFFFFF9 | 2, v84);
  if (v84 == v85)
  {
    v87 = *v6;
    v88 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID();
    v89 = *v87;
    v190 = v88;
    v90 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v89 + 232), &v190);
    v91 = *v6;
    v92 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID();
    v190 = 0;
    v191 = 0;
    LODWORD(v193[0]) = v84;
    v93 = 37 * v84;
  }

  else
  {
    v94 = v85;
    if (!v85)
    {
      goto LABEL_76;
    }

    v95 = *v6;
    v96 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID();
    v97 = *v95;
    v190 = v96;
    v90 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v97 + 232), &v190);
    v91 = *v6;
    v92 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID();
    v190 = 0;
    v191 = 0;
    LODWORD(v193[0]) = v94;
    v93 = 37 * v94;
  }

  v195[0] = v193;
  v196 = v193;
  v197 = &v190;
  v98 = mlir::detail::StorageUniquerImpl::getOrCreate(*v91, v92, v93, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v195, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v196);
  v99 = v98;
  v101 = v186[1];
  v100 = v186[2];
  if (v101 >= v100)
  {
    v103 = *v186;
    v104 = v101 - *v186;
    v105 = 0xAAAAAAAAAAAAAAABLL * (v104 >> 3) + 1;
    if (v105 <= 0xAAAAAAAAAAAAAAALL)
    {
      v106 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v103) >> 3);
      if (2 * v106 > v105)
      {
        v105 = 2 * v106;
      }

      if (v106 >= 0x555555555555555)
      {
        v107 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v107 = v105;
      }

      if (v107)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v107);
      }

      v108 = (8 * (v104 >> 3));
      *v108 = a5;
      v108[1] = v90;
      v108[2] = v99;
      v102 = v108 + 3;
      v109 = v108 - v104;
      memcpy(v108 - v104, v103, v104);
      v110 = *v186;
      *v186 = v109;
      v186[1] = v102;
      v186[2] = 0;
      if (v110)
      {
        operator delete(v110);
      }

      goto LABEL_75;
    }

LABEL_127:
    std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>::__throw_length_error[abi:nn200100]();
  }

  *v101 = a5;
  *(v101 + 1) = v90;
  v102 = v101 + 24;
  *(v101 + 2) = v98;
LABEL_75:
  v186[1] = v102;
LABEL_76:
  v183 = v52;
  v111 = *(v10 + 44);
  v112 = v26 + 16 * ((v111 >> 23) & 1);
  v113 = *v112;
  v185 = v84;
  if ((v111 & 0x800000) != 0)
  {
    v114 = *(v10 + 72);
  }

  else
  {
    v114 = 0;
  }

  v115 = *(v113 + 16);
  v189 = v6;
  if (v115)
  {
    v116 = *(v112 + 20);
    if (v116)
    {
      v117 = *(v112 + 16);
      v118 = *(v113 + 8);
      v119 = ~v117 + (v116 + v117);
      v120 = (v114 + 32 * v117 + 24);
      v121 = 8 * v115 - 8;
      do
      {
        v123 = *v120;
        v120 += 4;
        v122 = v123;
        v124 = *v118++;
        v126 = *(v124 + 16);
        v125 = *(v124 + 24);
        v127 = *v189;
        v128 = v189[1];
        v192 = 261;
        v190 = v126;
        v191 = v125;
        v129 = mlir::StringAttr::get(v128, &v190, v86);
        v130 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID();
        v131 = *v127;
        v196 = 0;
        v197 = 0;
        v195[0] = a5;
        v195[1] = v129;
        v132 = 0xBF58476D1CE4E5B9 * ((((a5 >> 4) ^ (a5 >> 9)) << 32) | (v129 >> 4) ^ (v129 >> 9));
        v194 = v195;
        v193[0] = v195;
        v193[1] = &v196;
        v133 = mlir::detail::StorageUniquerImpl::getOrCreate(v131, v130, (v132 >> 31) ^ v132, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v194, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v193);
        v134 = v122;
        v6 = v189;
        getTreePredicates(v186, v134, v189, a4, v133);
        v136 = v119-- != 0;
        if (!v121)
        {
          break;
        }

        v121 -= 8;
      }

      while (v136);
    }
  }

  v137 = v185;
  if (v183)
  {
    if (v183 == 1 && (v138 = *(v182 + 24), *(*(*(v138 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
    {
      if (!*(a5 + 32) || (v175 = *(a5 + 8)) != 0 && (*(v175 + 16) - 1) <= 1)
      {
        OperandGroup = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandGroup(*v6, a5, 0, 1);
        getTreePredicates(v186, v138, v6, a4, OperandGroup);
      }
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v141 = (v182 + 24);
      do
      {
        v142 = *v141;
        v143 = *(*(*(*v141 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v139 |= v143 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
        if ((a6 & 0x100000000) == 0 || a6 != v140)
        {
          if (v139)
          {
            v144 = mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandGroup(*v6, a5, v140 | 0x100000000, v143 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
          }

          else
          {
            v145 = *v6;
            v146 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID();
            v144 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v145, v146, a5, v140);
          }

          getTreePredicates(v186, v142, v6, a4, v144);
        }

        ++v140;
        v141 += 4;
      }

      while (v183 != v140);
    }
  }

  if (v185)
  {
    if (v185 == 1 && (v147 = *(v181 + 24), *(*(*(v147 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id))
    {
      ResultGroup = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultGroup(*v6, a5, 0, 1);
      v178 = *v6;
      v179 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID();
      v180 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v178, v179, ResultGroup);
      getTreePredicates(v186, v147, v6, a4, v180);
    }

    else
    {
      v148 = 0;
      v149 = 0;
      v150 = (v181 + 24);
      do
      {
        v151 = *v150;
        v152 = *(*(*(*v150 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v148 |= v152 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
        if (v148)
        {
          v153 = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultGroup(*v6, a5, v149 | 0x100000000, v152 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
        }

        else
        {
          v154 = *v6;
          v155 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID();
          v153 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v154, v155, a5, v149);
        }

        v156 = v153;
        v157 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(v6);
        v159 = v157;
        v160 = v158;
        v162 = v186[1];
        v161 = v186[2];
        if (v162 >= v161)
        {
          v164 = *v186;
          v165 = v162 - *v186;
          v166 = 0xAAAAAAAAAAAAAAABLL * (v165 >> 3) + 1;
          if (v166 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_127;
          }

          v167 = 0xAAAAAAAAAAAAAAABLL * ((v161 - v164) >> 3);
          if (2 * v167 > v166)
          {
            v166 = 2 * v167;
          }

          if (v167 >= 0x555555555555555)
          {
            v168 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v168 = v166;
          }

          if (v168)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v168);
          }

          v169 = (8 * (v165 >> 3));
          *v169 = v156;
          v169[1] = v159;
          v169[2] = v160;
          v163 = v169 + 3;
          v170 = v169 - v165;
          memcpy(v169 - v165, v164, v165);
          v171 = *v186;
          *v186 = v170;
          v186[1] = v163;
          v186[2] = 0;
          if (v171)
          {
            operator delete(v171);
          }

          v6 = v189;
          v137 = v185;
        }

        else
        {
          *v162 = v156;
          v162[1] = v157;
          v163 = v162 + 3;
          v162[2] = v158;
          v6 = v189;
        }

        v186[1] = v163;
        v172 = *v6;
        v173 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID();
        v174 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v172, v173, v156);
        getTreePredicates(v186, v151, v6, a4, v174);
        ++v149;
        v150 += 4;
      }

      while (v137 != v149);
    }
  }
}

uint64_t getNumNonRangeValues(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    if (*(*(*(mlir::ValueRange::dereference_iterator(&v6, v3) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    v7 = ++v3;
  }

  while (a2 != v3);
  return v4;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandGroup(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID();
  v15[0] = 0;
  v15[1] = 0;
  v12 = a2;
  v13 = a3;
  v14[0] = a4;
  memset(v17, 0, sizeof(v17));
  v18 = 0xFF51AFD7ED558CCDLL;
  v16 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<std::optional<unsigned int>,BOOL>(&v16, v17, &v17[3] + 8, &v13, v14);
  v11 = &v12;
  v16 = &v12;
  *&v17[0] = v15;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, v8, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v16);
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getResultGroup(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID();
  v15[0] = 0;
  v15[1] = 0;
  v12 = a2;
  v13 = a3;
  v14[0] = a4;
  memset(v17, 0, sizeof(v17));
  v18 = 0xFF51AFD7ED558CCDLL;
  v16 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<std::optional<unsigned int>,BOOL>(&v16, v17, &v17[3] + 8, &v13, v14);
  v11 = &v12;
  v16 = &v12;
  *&v17[0] = v15;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, v8, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationNameAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameAnswer *)>,mlir::TypeID,mlir::OperationName &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 24;
  *(v4 + 8) = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

_DWORD *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UnsignedAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UnsignedAnswer *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 27;
  v4[2] = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributePosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributePosition,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributePosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 3;
  *v4 = &unk_286E84368;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E84308;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<std::optional<unsigned int>,BOOL>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *a2, char *a3, uint64_t a4, char *a5)
{
  v13 = 0;
  v9 = llvm::hash_value<unsigned int>(a4);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, a2, a3, v9);
  v14 = v13;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v14, v10, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v14, v11, a3);
}

unint64_t llvm::hash_value<unsigned int>(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4) != 1)
  {
    return 0xB2B24F688DC4164DLL;
  }

  v2 = 1;
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v5 = 0;
  v6 = 0xFF51AFD7ED558CCDLL;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,unsigned int>(v3, 0, v3, v4, &v2, a1);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

_BYTE *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(uint64_t a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v14, a1, *(a1 + 120), v9, v10);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 1 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 1 - v8);
      a1 += 1 - v8;
    }
  }

  return a1;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 36);
  v4 = *(v2 + 12);
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a2 + 32);
    v4 = *(v2 + 2);
  }

  return v3 == v4 && *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *(v4 + 16) = 2;
  *v4 = &unk_286E843A8;
  *(v4 + 8) = 0;
  v5 = *v3;
  *(v4 + 40) = *(v3 + 2);
  *(v4 + 24) = v5;
  v6 = *v3;
  *v4 = &unk_286E84348;
  *(v4 + 8) = v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 1), v4);
  }

  return v4;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = a4;
  v4 = 0xBF58476D1CE4E5B9 * ((37 * a4) | (((a3 >> 4) ^ (a3 >> 9)) << 32));
  v7 = &v8;
  v8 = a3;
  v6[0] = &v8;
  v6[1] = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(a1, a2, (v4 >> 31) ^ v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperandPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 1;
  *v4 = &unk_286E84388;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E84328;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 24) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 36);
  v4 = *(v2 + 12);
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a2 + 32);
    v4 = *(v2 + 2);
  }

  return v3 == v4 && *(a2 + 40) == *(v2 + 16);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultGroupPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultGroupPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *(v4 + 16) = 6;
  *v4 = &unk_286E84488;
  *(v4 + 8) = 0;
  v5 = *v3;
  *(v4 + 40) = *(v3 + 2);
  *(v4 + 24) = v5;
  v6 = *v3;
  *v4 = &unk_286E84468;
  *(v4 + 8) = v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 1), v4);
  }

  return v4;
}

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v9 = a4;
  v4 = 0xBF58476D1CE4E5B9 * ((37 * a4) | (((a3 >> 4) ^ (a3 >> 9)) << 32));
  v7 = &v8;
  v8 = a3;
  v6[0] = &v8;
  v6[1] = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(a1, a2, (v4 >> 31) ^ v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v6);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ResultPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 5;
  *v4 = &unk_286E844C8;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E844A8;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

uint64_t mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID();
  v6 = *v4;
  v15[0] = v5;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v15);
  v8 = *a1;
  v9 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID();
  v10 = *v8;
  v15[0] = 0;
  v15[1] = 0;
  v13 = &v14;
  v14 = a2;
  v12[0] = &v14;
  v12[1] = v15;
  mlir::detail::StorageUniquerImpl::getOrCreate(v10, v9, (a2 >> 4) ^ (a2 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  return v7;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeAnswer * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeAnswer *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 26;
  *(v4 + 8) = *v3;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

void getOperandTreePredicates(const void **a1, uint64_t a2, uint64_t **this, uint64_t a4, uint64_t a5)
{
  if ((~*(a2 + 8) & 7) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return;
  }

  v10 = *(v5 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v5 + 24 * *(v5 + 16) + 120;
  }

  else
  {
    v11 = v5 + 16 * v10 + 16;
  }

  v12 = *(*(v11 + 48) + 16);
  if (v11)
  {
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_29;
  }

  if (v11)
  {
    v14 = v12 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    if (v11)
    {
      v15 = v12 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v123 = v11;
      Index = mlir::pdl::ResultOp::getIndex(&v123);
      IsNotNull = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
      v40 = IsNotNull;
      v41 = v39;
      v43 = a1[1];
      v42 = a1[2];
      if (v43 >= v42)
      {
        v52 = *a1;
        v53 = v43 - *a1;
        v54 = 0xAAAAAAAAAAAAAAABLL * (v53 >> 3) + 1;
        if (v54 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_117;
        }

        v55 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v52) >> 3);
        if (2 * v55 > v54)
        {
          v54 = 2 * v55;
        }

        if (v55 >= 0x555555555555555)
        {
          v56 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v56);
        }

        v57 = (8 * (v53 >> 3));
        *v57 = a5;
        v57[1] = v40;
        v57[2] = v41;
        v44 = v57 + 3;
        v58 = v57 - v53;
        memcpy(v57 - v53, v52, v53);
        v59 = *a1;
        *a1 = v58;
        a1[1] = v44;
        a1[2] = 0;
        if (v59)
        {
          operator delete(v59);
        }
      }

      else
      {
        *v43 = a5;
        *(v43 + 1) = IsNotNull;
        v44 = v43 + 24;
        *(v43 + 2) = v39;
      }

      a1[1] = v44;
      v60 = mlir::pdl_to_pdl_interp::OperationPosition::get(*this, a5);
      v61 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
      v63 = v61;
      v64 = v62;
      v66 = a1[1];
      v65 = a1[2];
      if (v66 >= v65)
      {
        v68 = *a1;
        v69 = v66 - *a1;
        v70 = 0xAAAAAAAAAAAAAAABLL * (v69 >> 3) + 1;
        if (v70 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_117;
        }

        v71 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v68) >> 3);
        if (2 * v71 > v70)
        {
          v70 = 2 * v71;
        }

        if (v71 >= 0x555555555555555)
        {
          v72 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v72 = v70;
        }

        if (v72)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v72);
        }

        v73 = (8 * (v69 >> 3));
        *v73 = v60;
        v73[1] = v63;
        v73[2] = v64;
        v67 = v73 + 3;
        v74 = v73 - v69;
        memcpy(v73 - v69, v68, v69);
        v75 = *a1;
        *a1 = v74;
        a1[1] = v67;
        a1[2] = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *v66 = v60;
        *(v66 + 1) = v61;
        v67 = v66 + 24;
        *(v66 + 2) = v62;
      }

      a1[1] = v67;
      v76 = *this;
      v77 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID();
      ResultGroup = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>(*v76, v77, v60, Index);
      EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(this, a5);
      v81 = v80;
      v83 = a1[1];
      v82 = a1[2];
      if (v83 < v82)
      {
LABEL_105:
        *v83 = ResultGroup;
        *(v83 + 1) = EqualTo;
        v115 = v83 + 24;
        *(v83 + 2) = v81;
LABEL_115:
        a1[1] = v115;
        getTreePredicates(a1, *(*(v11 + 72) + 24), this, a4, v60);
        return;
      }

      v84 = *a1;
      v85 = v83 - *a1;
      v86 = 0xAAAAAAAAAAAAAAABLL * (v85 >> 3);
      v87 = v86 + 1;
      if (v86 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v88 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v84) >> 3);
        if (2 * v88 > v87)
        {
          v87 = 2 * v88;
        }

        if (v88 >= 0x555555555555555)
        {
          v89 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v89 = v87;
        }

        if (!v89)
        {
          goto LABEL_113;
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v11)
      {
        v16 = v12 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        return;
      }

      v122 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      v123 = v11;
      v17 = mlir::pdl::ResultsOp::getIndex(&v123);
      if ((v17 & 0x100000000) != 0)
      {
        v18 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
        v20 = v18;
        v21 = v19;
        v23 = a1[1];
        v22 = a1[2];
        if (v23 >= v22)
        {
          v90 = *a1;
          v91 = v23 - *a1;
          v92 = 0xAAAAAAAAAAAAAAABLL * (v91 >> 3) + 1;
          if (v92 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_117;
          }

          v93 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v90) >> 3);
          if (2 * v93 > v92)
          {
            v92 = 2 * v93;
          }

          if (v93 >= 0x555555555555555)
          {
            v94 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v94 = v92;
          }

          if (v94)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v94);
          }

          v95 = (8 * (v91 >> 3));
          *v95 = a5;
          v95[1] = v20;
          v95[2] = v21;
          v24 = v95 + 3;
          v96 = v95 - v91;
          memcpy(v95 - v91, v90, v91);
          v97 = *a1;
          *a1 = v96;
          a1[1] = v24;
          a1[2] = 0;
          if (v97)
          {
            operator delete(v97);
          }
        }

        else
        {
          *v23 = a5;
          *(v23 + 1) = v18;
          v24 = v23 + 24;
          *(v23 + 2) = v19;
        }

        a1[1] = v24;
      }

      v60 = mlir::pdl_to_pdl_interp::OperationPosition::get(*this, a5);
      v98 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
      v100 = v98;
      v101 = v99;
      v103 = a1[1];
      v102 = a1[2];
      if (v103 >= v102)
      {
        v105 = *a1;
        v106 = v103 - *a1;
        v107 = 0xAAAAAAAAAAAAAAABLL * (v106 >> 3) + 1;
        if (v107 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_117;
        }

        v108 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v105) >> 3);
        if (2 * v108 > v107)
        {
          v107 = 2 * v108;
        }

        if (v108 >= 0x555555555555555)
        {
          v109 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v109 = v107;
        }

        if (v109)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v109);
        }

        v110 = (8 * (v106 >> 3));
        *v110 = v60;
        v110[1] = v100;
        v110[2] = v101;
        v104 = v110 + 3;
        v111 = v110 - v106;
        memcpy(v110 - v106, v105, v106);
        v112 = *a1;
        *a1 = v111;
        a1[1] = v104;
        a1[2] = 0;
        if (v112)
        {
          operator delete(v112);
        }
      }

      else
      {
        *v103 = v60;
        *(v103 + 1) = v98;
        v104 = v103 + 24;
        *(v103 + 2) = v99;
      }

      a1[1] = v104;
      ResultGroup = mlir::pdl_to_pdl_interp::PredicateBuilder::getResultGroup(*this, v60, v17 & 0xFFFFFFFFFFLL, v122 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
      EqualTo = mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo(this, a5);
      v81 = v113;
      v83 = a1[1];
      v114 = a1[2];
      if (v83 < v114)
      {
        goto LABEL_105;
      }

      v84 = *a1;
      v85 = v83 - *a1;
      v86 = 0xAAAAAAAAAAAAAAABLL * (v85 >> 3);
      v116 = v86 + 1;
      if (v86 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v117 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v84) >> 3);
        if (2 * v117 > v116)
        {
          v116 = 2 * v117;
        }

        if (v117 >= 0x555555555555555)
        {
          v89 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v89 = v116;
        }

        if (!v89)
        {
LABEL_113:
          v118 = (v89 + 24 * v86);
          v119 = v89;
          *v118 = ResultGroup;
          v118[1] = EqualTo;
          v118[2] = v81;
          v115 = v118 + 3;
          v120 = v118 - v85;
          memcpy(v118 - v85, v84, v85);
          v121 = *a1;
          *a1 = v120;
          a1[1] = v115;
          a1[2] = v119;
          if (v121)
          {
            operator delete(v121);
          }

          goto LABEL_115;
        }

LABEL_80:
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v89);
      }
    }

LABEL_117:
    std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>::__throw_length_error[abi:nn200100]();
  }

  if (*(a5 + 36))
  {
LABEL_29:
    v25 = mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull(this);
    v27 = v25;
    v28 = v26;
    v30 = a1[1];
    v29 = a1[2];
    if (v30 >= v29)
    {
      v32 = *a1;
      v33 = v30 - *a1;
      v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1;
      if (v34 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_117;
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x555555555555555)
      {
        v36 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::PositionalPredicate>>(v36);
      }

      v45 = (8 * (v33 >> 3));
      *v45 = a5;
      v45[1] = v27;
      v45[2] = v28;
      v31 = v45 + 3;
      v46 = v45 - v33;
      memcpy(v45 - v33, v32, v33);
      v47 = *a1;
      *a1 = v46;
      a1[1] = v31;
      a1[2] = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v30 = a5;
      *(v30 + 1) = v25;
      v31 = v30 + 24;
      *(v30 + 2) = v26;
    }

    a1[1] = v31;
  }

  if ((*(v11 + 46) & 0x80) != 0)
  {
    if (*(v11 + 68))
    {
      v48 = *(*(v11 + 72) + 24);
      if (v48)
      {
        v49 = *this;
        v50 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID();
        v51 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(*v49, v50, a5);

        getTreePredicates(a1, v48, this, a4, v51);
      }
    }
  }
}

uint64_t mlir::pdl_to_pdl_interp::OperationPosition::get(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  while (!v4 || *(v4 + 16))
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      v5 = 1;
      goto LABEL_7;
    }
  }

  v5 = *(v4 + 32) + 1;
LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID();
  v12[0] = 0;
  v12[1] = 0;
  v10 = a2;
  v11 = v5;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,unsigned int>(v13, 0, v13, v14, &v10, &v11);
  v9 = &v10;
  *&v13[0] = &v10;
  *(&v13[0] + 1) = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, v6, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 0;
  *v4 = &unk_286E842E8;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E842C8;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 32 * v8);
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
        v9 = (v4 + 32 * v8);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(a1, v4, v4 + 32 * v3);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 32);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 4) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::LookupBucketFor<mlir::Value>(v5, a2, &v17);
      *v17 = *a2;
      v14 = v17;
      *(v17 + 24) = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(v14 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      v15 = *(v14 + 20);
      *(v14 + 20) = *(a2 + 20);
      *(a2 + 20) = v15;
      v16 = *(v14 + 24);
      *(v14 + 24) = *(a2 + 24);
      *(a2 + 24) = v16;
      ++*(v5 + 8);
      result = MEMORY[0x25F891030](0, 8);
    }

    a2 += 32;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 24 * v8);
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
        v9 = (v4 + 24 * (v15 & v7));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::moveFromOldBuckets(a1, v4, v4 + 24 * v3);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 24 * v6 - 24;
    v10 = vdupq_n_s64(v9 / 0x18);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[3] = -4096;
      }

      v7 += 2;
      v8 += 6;
    }

    while (((v9 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v12 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::LookupBucketFor<mlir::Value>(v5, a2, &v12);
      *v12 = *a2;
      *(v12 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 24;
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::UsersPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UsersPosition,mlir::pdl_to_pdl_interp::Position *&,BOOL &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::UsersPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 10;
  *v4 = &unk_286E84508;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E844E8;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ForEachPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ForEachPosition,mlir::pdl_to_pdl_interp::Position *&,unsigned int &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ForEachPosition *)>,mlir::TypeID,mlir::pdl_to_pdl_interp::Position *&,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 11;
  *v4 = &unk_286E84548;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E84528;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](uint64_t a1, unint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5 + 1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::AttributeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *(v4 + 8) = 0;
  *(v4 + 16) = 8;
  *(v4 + 24) = *v3;
  *v4 = &unk_286E84568;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::pdl_to_pdl_interp::Position *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>,BOOL>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int **a5, char *a6)
{
  v14 = a2;
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Type const*>(*a5, &(*a5)[2 * a5[1]], a3, a4);
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, a3, a4, v10);
  v15 = v14;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v15, v11, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v15, v12, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Type const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
    return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    for (i = 0; i <= 0x38; i += 8)
    {
      v7 = i + 8;
      v8 = *v5;
      v5 += 2;
      *&__src[i] = (v8 >> 4) ^ (v8 >> 9);
      if (v5 == a2)
      {
        return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
      }
    }

    v17[0] = xmmword_25D0A0610;
    v17[1] = xmmword_25D0A0620;
    v17[2] = xmmword_25D0A0630;
    v18 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v17, __src, a3, a4);
    v10 = 64;
    while (v5 != a2)
    {
      v11 = 0;
      do
      {
        v12 = *v5;
        v5 += 2;
        v13 = v11 + 8;
        *&__src[v11] = (v12 >> 4) ^ (v12 >> 9);
        if (v5 == a2)
        {
          break;
        }

        v14 = v11 >= 0x31;
        v11 += 8;
      }

      while (!v14);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v20);
      llvm::hashing::detail::hash_state::mix(v17, __src, v15, v16);
      v10 += v13;
    }

    return llvm::hashing::detail::hash_state::finalize(v17, v10);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (v4 == *(*a1 + 8) && (!v4 || !memcmp(*(a2 + 8), *v3, v4)) && (v5 = *(a2 + 32), v5 == *(v3 + 24)) && !memcmp(*(a2 + 24), *(v3 + 16), 8 * v5) && (v6 = *(a2 + 48), v6 == *(v3 + 40)))
  {
    if (v6)
    {
      v7 = *(a2 + 40);
      v8 = *(v3 + 32);
      v9 = 8 * v6 - 8;
      do
      {
        v11 = *v8++;
        v10 = v11;
        v12 = *v7++;
        v14 = v12 == v10;
        v13 = v12 == v10;
        v14 = !v14 || v9 == 0;
        v9 -= 8;
      }

      while (!v14);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return *(a2 + 56) == *(v3 + 48) && v13;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintQuestion * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintQuestion *)>,mlir::TypeID,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 48);
  v9 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v11 = v10;
  if (v4)
  {
    v22 = v8;
    v12 = 8 * v4;
    v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v14 = v13;
    do
    {
      v15 = *v5++;
      *v14++ = v15;
      v12 -= 8;
    }

    while (v12);
    v8 = v22;
  }

  else
  {
    v13 = 0;
  }

  v16 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, v6, v7);
  v18 = v17;
  v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x40uLL, 3);
  *v19 = 21;
  *(v19 + 8) = v9;
  *(v19 + 16) = v11;
  *(v19 + 24) = v13;
  *(v19 + 32) = v4;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  *(v19 + 56) = v8;
  v20 = *(a1 + 8);
  if (*v20)
  {
    (*v20)(*(v20 + 8), v19);
  }

  return v19;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::ConstraintPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintPosition,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int>>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ConstraintPosition *)>,mlir::TypeID,std::pair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *(v4 + 16) = 4;
  *v4 = &unk_286E845A8;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  *v4 = &unk_286E84588;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

uint64_t getTypePredicates(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v16 = a1;
  v20[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::LookupBucketFor<mlir::Value>(*a5, *(a5 + 16), a1, v20);
  v11 = v20[0];
  if (result)
  {
    if (v20[0][1])
    {
      return result;
    }
  }

  else
  {
    v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::InsertIntoBucketImpl<mlir::Value>(a5, &v16, v20[0]);
    *v11 = a1;
    v11[1] = 0;
  }

  v12 = a2(a3);
  v13 = *a4;
  v14 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID();
  v15 = *v13;
  v20[0] = 0;
  v20[1] = 0;
  v18 = &v19;
  v19 = v12;
  v17[0] = &v19;
  v17[1] = v20;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(v15, v14, (v12 >> 4) ^ (v12 >> 9), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  v11[1] = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::TypeLiteralPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeLiteralPosition *)>,mlir::TypeID,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *(v4 + 8) = 0;
  *(v4 + 16) = 9;
  *(v4 + 24) = *v3;
  *v4 = &unk_286E845C8;
  v5 = *(a1 + 8);
  if (*v5)
  {
    (*v5)(*(v5 + 8), v4);
  }

  return v4;
}

void llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>,anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>::initEmpty(uint64_t *a1)
{
  a1[1] = 0;
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 56 * v2;
    do
    {
      *v3 = -4096;
      *(v3 + 8) = -4096;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      MEMORY[0x25F891030](0, 8);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      v3 += 56;
    }

    while (v3 != v4);
    v1 = vars8;
  }

  JUMPOUT(0x25F891030);
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,false>::grow(char **a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 2);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 16, &v14);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v4;
    v8 = *a1;
    do
    {
      v9 = *v8;
      *(v8 + 1) = 0;
      *v7++ = v9;
      v8 += 16;
    }

    while (v8 != &v5[16 * v6]);
    v10 = v5 - 8;
    v11 = 16 * v6;
    do
    {
      v12 = *&v10[v11];
      *&v10[v11] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v11 -= 16;
    }

    while (v11);
    v5 = *a1;
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v13;
}

void mlir::pdl_to_pdl_interp::ExitNode::~ExitNode(mlir::pdl_to_pdl_interp::ExitNode *this)
{
  mlir::pdl_to_pdl_interp::MatcherNode::~MatcherNode(this);

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::PatternPredicates,false>::growAndEmplaceBack<mlir::pdl::PatternOp &,mlir::Value&,std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate>>(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v24 = 0;
  v8 = (a1 + 16);
  v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v24);
  v10 = &v9[40 * *(a1 + 8)];
  v11 = *a2;
  v12 = *a3;
  v13 = *(a4 + 2);
  v14 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *v10 = v11;
  *(v10 + 1) = v12;
  *(v10 + 1) = v14;
  *(v10 + 4) = v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = &v15[40 * v16];
    v18 = v9;
    do
    {
      *v18 = *v15;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      *(v18 + 2) = 0;
      *(v18 + 1) = *(v15 + 1);
      *(v18 + 4) = *(v15 + 4);
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = 0;
      v18 += 40;
      v15 += 40;
    }

    while (v15 != v17);
    v15 = *a1;
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = &v15[40 * v19 - 24];
      v21 = -40 * v19;
      do
      {
        v22 = *v20;
        if (*v20)
        {
          *(v20 + 8) = v22;
          operator delete(v22);
        }

        v20 -= 40;
        v21 += 40;
      }

      while (v21);
      v15 = *a1;
    }
  }

  v23 = v24;
  if (v15 != v8)
  {
    free(v15);
  }

  *a1 = v9;
  ++*(a1 + 8);
  *(a1 + 12) = v23;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>,anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>>::LookupBucketFor<anonymous namespace::OrderedPredicate>(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    v27 = 0;
    v28 = 0xFF51AFD7ED558CCDLL;
    v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,mlir::pdl_to_pdl_interp::Qualifier *>(v25, v25, v26, *a3, a3 + 1);
    v9 = a2 - 1;
    v10 = (a2 - 1) & v8;
    v11 = *a3;
    v12 = a3[1];
    v13 = (a1 + 56 * v10);
    v14 = *v13;
    v15 = v13[1];
    if (*a3 == *v13 && v12 == v15)
    {
      v20 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 1;
      v20 = 1;
      while (v14 != -4096 || v15 != -4096)
      {
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15 == -8192;
        }

        if (v21 && v14 == -8192)
        {
          v18 = v13;
        }

        v23 = v10 + v19++;
        v10 = v23 & v9;
        v13 = (a1 + 56 * (v23 & v9));
        v14 = *v13;
        v15 = v13[1];
        if (v11 == *v13 && v12 == v15)
        {
          goto LABEL_8;
        }
      }

      v20 = 0;
      if (v18)
      {
        v13 = v18;
      }
    }

LABEL_8:
    *a4 = v13;
    MEMORY[0x25F891030](0, 8);
    MEMORY[0x25F891030](0, 8);
  }

  else
  {
    v20 = 0;
    *a4 = 0;
  }

  return v20;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,mlir::pdl_to_pdl_interp::Qualifier *>(uint64_t a1, void *__dst, char *a3, uint64_t a4, uint64_t *a5)
{
  v17 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::Position *>(a1, &v17, __dst, a3, a4);
  v9 = v17;
  v10 = *a5;
  __src = *a5;
  v11 = v8 + 8;
  if (v8 + 8 <= a3)
  {
    *v8 = v10;
  }

  else
  {
    v12 = (a3 - v8);
    memcpy(v8, &__src, a3 - v8);
    if (v9)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v13, v14);
      v9 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v18, a1, *(a1 + 120), v13, v14);
      v15 = v18[1];
      *(a1 + 64) = v18[0];
      *(a1 + 80) = v15;
      *(a1 + 96) = v18[2];
      *(a1 + 112) = v19;
      v9 = 64;
    }

    v11 = (a1 + 8 - v12);
    if (v11 > a3)
    {
      v11 = a1;
    }

    else
    {
      memcpy(a1, &__src + v12, 8 - v12);
    }
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v11, a3);
}

void llvm::DenseMapIterator<anonymous namespace::OrderedPredicate,llvm::detail::DenseSetEmpty,anonymous namespace::OrderedPredicateDenseInfo,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate>,false>::AdvancePastEmptyBuckets(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  while (v2 != v1)
  {
    v3 = v2[1];
    if ((*v2 != -4096 || v3 != -4096) && (*v2 != -8192 || v3 != -8192))
    {
      break;
    }

    v2 += 7;
    *a1 = v2;
  }

  MEMORY[0x25F891030](0, 8);

  JUMPOUT(0x25F891030);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>,mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::pdl_to_pdl_interp::Qualifier *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *std::__split_buffer<anonymous namespace::OrderedPredicateList>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = 0;
  a1[1] = 40 * a3;
  a1[2] = 40 * a3;
  a1[3] = 0;
  return a1;
}

uint64_t *std::vector<anonymous namespace::OrderedPredicateList>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v7 + 24) = 0;
      v9 = *(v8 + 28);
      *(v8 + 28) = *(v7 + 28);
      *(v7 + 28) = v9;
      v10 = *(v8 + 32);
      *(v8 + 32) = *(v7 + 32);
      *(v7 + 32) = v10;
      v7 += 40;
      v8 += 40;
    }

    while (v7 != v5);
    do
    {
      result = MEMORY[0x25F891030](*(v4 + 16), 8);
      v4 += 40;
    }

    while (v4 != v5);
    v4 = *v3;
  }

  a2[1] = v6;
  *v3 = v6;
  v3[1] = v4;
  a2[1] = v4;
  v11 = v3[1];
  v3[1] = a2[2];
  a2[2] = v11;
  v12 = v3[2];
  v3[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<anonymous namespace::OrderedPredicateList>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    MEMORY[0x25F891030](*(i - 24), 8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::OrderedPredicate *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<anonymous namespace::OrderedPredicate *,void>,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate *>>,anonymous namespace::OrderedPredicate *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<anonymous namespace::OrderedPredicate *,void>,llvm::detail::DenseSetPair<anonymous namespace::OrderedPredicate *>>::LookupBucketFor<anonymous namespace::OrderedPredicate *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
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
        v6 = (a1 + 8 * (v13 & v4));
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,false>(uint64_t result, uint64_t **a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v296 = a2 - 2;
    v297 = a2 - 1;
    v295 = a2 - 3;
    v7 = v6;
    v301 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = a2 - v7;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

              case 4:

              case 5:
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              v135 = *(a2 - 1);
              v136 = *v7;
              v137 = **v7;
              while (!v137 || *(v137 + 16))
              {
                v137 = *(v137 + 8);
                if (!v137)
                {
                  goto LABEL_372;
                }
              }

              LODWORD(v137) = *(v137 + 32);
LABEL_372:
              v261 = *(**v7 + 16);
              v262 = *v136[1];
              v309 = v135[2];
              v310 = v137;
              v311 = v261;
              v263 = *(v136 + 6);
              v312 = v262;
              v313 = v263;
              v264 = *v135;
              while (!v264 || *(v264 + 16))
              {
                v264 = *(v264 + 8);
                if (!v264)
                {
                  goto LABEL_378;
                }
              }

              LODWORD(v264) = *(v264 + 32);
LABEL_378:
              v265 = *(*v135 + 16);
              v266 = *v135[1];
              v304 = v136[2];
              v305 = v264;
              v306 = v265;
              v267 = *(v135 + 6);
              v307 = v266;
              v308 = v267;
              result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
              if (result)
              {
                v268 = *v7;
                *v7 = *(a2 - 1);
                *(a2 - 1) = v268;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v138 = v7 + 1;
                if (v7 + 1 != a2)
                {
                  v139 = v7;
                  do
                  {
                    v140 = v139;
                    v139 = v138;
                    v142 = *v140;
                    v141 = v140[1];
                    v143 = **v140;
                    while (!v143 || *(v143 + 16))
                    {
                      v143 = *(v143 + 8);
                      if (!v143)
                      {
                        goto LABEL_224;
                      }
                    }

                    LODWORD(v143) = *(v143 + 32);
LABEL_224:
                    v144 = *(**v140 + 16);
                    v145 = *v142[1];
                    v309 = v141[2];
                    v310 = v143;
                    v311 = v144;
                    v146 = *(v142 + 6);
                    v312 = v145;
                    v313 = v146;
                    v147 = *v141;
                    while (!v147 || *(v147 + 16))
                    {
                      v147 = *(v147 + 8);
                      if (!v147)
                      {
                        goto LABEL_230;
                      }
                    }

                    LODWORD(v147) = *(v147 + 32);
LABEL_230:
                    v148 = *(*v141 + 16);
                    v149 = *v141[1];
                    v304 = v142[2];
                    v305 = v147;
                    v306 = v148;
                    v150 = *(v141 + 6);
                    v307 = v149;
                    v308 = v150;
                    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                    if (result)
                    {
                      v151 = *v139;
                      v152 = v139;
                      while (1)
                      {
                        *v152 = *v140;
                        if (v140 == v7)
                        {
                          break;
                        }

                        v152 = v140;
                        v154 = *--v140;
                        v153 = v154;
                        v155 = *v154;
                        v156 = *v154;
                        while (!v156 || *(v156 + 16))
                        {
                          v156 = *(v156 + 8);
                          if (!v156)
                          {
                            goto LABEL_239;
                          }
                        }

                        LODWORD(v156) = *(v156 + 32);
LABEL_239:
                        v157 = *(v155 + 16);
                        v158 = *v153[1];
                        v309 = v151[2];
                        v310 = v156;
                        v311 = v157;
                        v159 = *(v153 + 6);
                        v312 = v158;
                        v313 = v159;
                        v160 = *v151;
                        while (!v160 || *(v160 + 16))
                        {
                          v160 = *(v160 + 8);
                          if (!v160)
                          {
                            goto LABEL_245;
                          }
                        }

                        LODWORD(v160) = *(v160 + 32);
LABEL_245:
                        v161 = *(*v151 + 16);
                        v162 = *v151[1];
                        v304 = v153[2];
                        v305 = v160;
                        v306 = v161;
                        v163 = *(v151 + 6);
                        v307 = v162;
                        v308 = v163;
                        result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                        if ((result & 1) == 0)
                        {
                          goto LABEL_248;
                        }
                      }

                      v152 = v7;
LABEL_248:
                      *v152 = v151;
                    }

                    v138 = v139 + 1;
                  }

                  while (v139 + 1 != a2);
                }
              }
            }

            else if (v7 != a2)
            {
              while (v8 + 1 != a2)
              {
                v269 = v8++;
                v271 = *v269;
                v270 = v269[1];
                v272 = **v269;
                while (!v272 || *(v272 + 16))
                {
                  v272 = *(v272 + 8);
                  if (!v272)
                  {
                    goto LABEL_388;
                  }
                }

                LODWORD(v272) = *(v272 + 32);
LABEL_388:
                v273 = *(**v269 + 16);
                v274 = *v271[1];
                v309 = v270[2];
                v310 = v272;
                v311 = v273;
                v275 = *(v271 + 6);
                v312 = v274;
                v313 = v275;
                v276 = *v270;
                while (!v276 || *(v276 + 16))
                {
                  v276 = *(v276 + 8);
                  if (!v276)
                  {
                    goto LABEL_394;
                  }
                }

                LODWORD(v276) = *(v276 + 32);
LABEL_394:
                v277 = *(*v270 + 16);
                v278 = *v270[1];
                v304 = v271[2];
                v305 = v276;
                v306 = v277;
                v279 = *(v270 + 6);
                v307 = v278;
                v308 = v279;
                result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                if (result)
                {
                  v280 = *v8;
                  v281 = (*v8)[2];
                  v282 = *(*v8 + 6);
                  v283 = v8;
                  do
                  {
                    v284 = v283;
                    v283 = v269;
                    *v284 = *v269;
                    v286 = *--v269;
                    v285 = v286;
                    v287 = *v286;
                    v288 = *v286;
                    while (!v288 || *(v288 + 16))
                    {
                      v288 = *(v288 + 8);
                      if (!v288)
                      {
                        goto LABEL_402;
                      }
                    }

                    LODWORD(v288) = *(v288 + 32);
LABEL_402:
                    v289 = *(v287 + 16);
                    v290 = *v285[1];
                    v309 = v281;
                    v310 = v288;
                    v311 = v289;
                    v291 = *(v285 + 6);
                    v312 = v290;
                    v313 = v291;
                    v292 = *v280;
                    while (!v292 || *(v292 + 16))
                    {
                      v292 = *(v292 + 8);
                      if (!v292)
                      {
                        goto LABEL_408;
                      }
                    }

                    LODWORD(v292) = *(v292 + 32);
LABEL_408:
                    v293 = *(*v280 + 16);
                    v294 = *v280[1];
                    v304 = v285[2];
                    v305 = v292;
                    v306 = v293;
                    v307 = v294;
                    v308 = v282;
                    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                  }

                  while ((result & 1) != 0);
                  *v283 = v280;
                }
              }
            }

            return result;
          }

          v302 = v7;
          if (!a3)
          {
            if (v7 != a2)
            {
              v164 = v10 >> 1;
              v165 = v10 >> 1;
              do
              {
                v166 = v165;
                if (v164 >= v165)
                {
                  v167 = (2 * v165) | 1;
                  v168 = &v7[v167];
                  if (2 * v165 + 2 < v9)
                  {
                    v169 = *v168;
                    v170 = v168[1];
                    v171 = *v170;
                    while (!v171 || *(v171 + 16))
                    {
                      v171 = *(v171 + 8);
                      if (!v171)
                      {
                        goto LABEL_261;
                      }
                    }

                    LODWORD(v171) = *(v171 + 32);
LABEL_261:
                    v172 = *(*v170 + 16);
                    v173 = *v170[1];
                    v309 = v169[2];
                    v310 = v171;
                    v311 = v172;
                    v174 = *(v170 + 6);
                    v312 = v173;
                    v313 = v174;
                    v175 = *v169;
                    while (!v175 || *(v175 + 16))
                    {
                      v175 = *(v175 + 8);
                      if (!v175)
                      {
                        goto LABEL_267;
                      }
                    }

                    LODWORD(v175) = *(v175 + 32);
LABEL_267:
                    v176 = *(*v169 + 16);
                    v177 = *v169[1];
                    v304 = v170[2];
                    v305 = v175;
                    v306 = v176;
                    v178 = *(v169 + 6);
                    v307 = v177;
                    v308 = v178;
                    if (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309))
                    {
                      ++v168;
                      v167 = 2 * v166 + 2;
                    }
                  }

                  v179 = &v7[v166];
                  v180 = *v168;
                  v181 = *v179;
                  v182 = **v179;
                  while (!v182 || *(v182 + 16))
                  {
                    v182 = *(v182 + 8);
                    if (!v182)
                    {
                      goto LABEL_275;
                    }
                  }

                  LODWORD(v182) = *(v182 + 32);
LABEL_275:
                  v183 = *(**v179 + 16);
                  v184 = *v181[1];
                  v309 = v180[2];
                  v310 = v182;
                  v311 = v183;
                  v185 = *(v181 + 6);
                  v312 = v184;
                  v313 = v185;
                  v186 = *v180;
                  while (!v186 || *(v186 + 16))
                  {
                    v186 = *(v186 + 8);
                    if (!v186)
                    {
                      goto LABEL_281;
                    }
                  }

                  LODWORD(v186) = *(v186 + 32);
LABEL_281:
                  v187 = *(*v180 + 16);
                  v188 = *v180[1];
                  v304 = v181[2];
                  v305 = v186;
                  v306 = v187;
                  v189 = *(v180 + 6);
                  v307 = v188;
                  v308 = v189;
                  result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                  if ((result & 1) == 0)
                  {
                    v190 = *v179;
                    do
                    {
                      v191 = v168;
                      *v179 = *v168;
                      if (v164 < v167)
                      {
                        break;
                      }

                      v192 = (2 * v167) | 1;
                      v168 = &v7[v192];
                      v167 = 2 * v167 + 2;
                      if (v167 >= v9)
                      {
                        v167 = v192;
                      }

                      else
                      {
                        v193 = *v168;
                        v194 = v168[1];
                        v195 = *v194;
                        while (!v195 || *(v195 + 16))
                        {
                          v195 = *(v195 + 8);
                          if (!v195)
                          {
                            goto LABEL_292;
                          }
                        }

                        LODWORD(v195) = *(v195 + 32);
LABEL_292:
                        v196 = *(*v194 + 16);
                        v197 = *v194[1];
                        v309 = v193[2];
                        v310 = v195;
                        v311 = v196;
                        v198 = *(v194 + 6);
                        v312 = v197;
                        v313 = v198;
                        v199 = *v193;
                        while (!v199 || *(v199 + 16))
                        {
                          v199 = *(v199 + 8);
                          if (!v199)
                          {
                            goto LABEL_298;
                          }
                        }

                        LODWORD(v199) = *(v199 + 32);
LABEL_298:
                        v200 = *(*v193 + 16);
                        v201 = *v193[1];
                        v304 = v194[2];
                        v305 = v199;
                        v306 = v200;
                        v202 = *(v193 + 6);
                        v307 = v201;
                        v308 = v202;
                        if (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309))
                        {
                          ++v168;
                        }

                        else
                        {
                          v167 = v192;
                        }
                      }

                      v203 = *v168;
                      v204 = *v190;
                      while (!v204 || *(v204 + 16))
                      {
                        v204 = *(v204 + 8);
                        if (!v204)
                        {
                          goto LABEL_307;
                        }
                      }

                      LODWORD(v204) = *(v204 + 32);
LABEL_307:
                      v205 = *(*v190 + 16);
                      v206 = *v190[1];
                      v309 = v203[2];
                      v310 = v204;
                      v311 = v205;
                      v207 = *(v190 + 6);
                      v312 = v206;
                      v313 = v207;
                      v208 = *v203;
                      while (!v208 || *(v208 + 16))
                      {
                        v208 = *(v208 + 8);
                        if (!v208)
                        {
                          goto LABEL_313;
                        }
                      }

                      LODWORD(v208) = *(v208 + 32);
LABEL_313:
                      v209 = *(*v203 + 16);
                      v210 = *v203[1];
                      v304 = v190[2];
                      v305 = v208;
                      v306 = v209;
                      v211 = *(v203 + 6);
                      v307 = v210;
                      v308 = v211;
                      result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                      v179 = v191;
                    }

                    while (!result);
                    *v191 = v190;
                  }
                }

                v165 = v166 - 1;
              }

              while (v166);
              v212 = v301;
              v213 = v7;
              do
              {
                v214 = v212;
                v215 = 0;
                v216 = *v213;
                v217 = v213;
                do
                {
                  v218 = &v217[v215];
                  v219 = v218 + 1;
                  v220 = (2 * v215) | 1;
                  v221 = 2 * v215 + 2;
                  if (v221 >= v9)
                  {
                    v215 = (2 * v215) | 1;
                  }

                  else
                  {
                    v224 = v218[2];
                    v223 = v218 + 2;
                    v222 = v224;
                    v225 = *(v223 - 1);
                    v226 = *v224;
                    v227 = *v224;
                    while (!v227 || *(v227 + 16))
                    {
                      v227 = *(v227 + 8);
                      if (!v227)
                      {
                        goto LABEL_326;
                      }
                    }

                    LODWORD(v227) = *(v227 + 32);
LABEL_326:
                    v228 = *(v226 + 16);
                    v229 = *v222[1];
                    v309 = v225[2];
                    v310 = v227;
                    v311 = v228;
                    v230 = *(v222 + 6);
                    v312 = v229;
                    v313 = v230;
                    v231 = *v225;
                    while (!v231 || *(v231 + 16))
                    {
                      v231 = *(v231 + 8);
                      if (!v231)
                      {
                        goto LABEL_332;
                      }
                    }

                    LODWORD(v231) = *(v231 + 32);
LABEL_332:
                    v232 = *(*v225 + 16);
                    v233 = *v225[1];
                    v304 = v222[2];
                    v305 = v231;
                    v306 = v232;
                    v234 = *(v225 + 6);
                    v307 = v233;
                    v308 = v234;
                    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                    if (result)
                    {
                      v219 = v223;
                      v215 = v221;
                    }

                    else
                    {
                      v215 = v220;
                    }
                  }

                  *v217 = *v219;
                  v217 = v219;
                }

                while (v215 <= ((v9 - 2) >> 1));
                v212 = v214 - 1;
                if (v219 == v214 - 1)
                {
                  *v219 = v216;
                  v213 = v302;
                }

                else
                {
                  *v219 = *v212;
                  *v212 = v216;
                  v213 = v302;
                  v235 = (v219 - v302 + 8) >> 3;
                  v236 = v235 < 2;
                  v237 = v235 - 2;
                  if (!v236)
                  {
                    v238 = v237 >> 1;
                    v239 = &v302[v237 >> 1];
                    v240 = *v239;
                    v241 = *v219;
                    v242 = **v219;
                    while (!v242 || *(v242 + 16))
                    {
                      v242 = *(v242 + 8);
                      if (!v242)
                      {
                        goto LABEL_345;
                      }
                    }

                    LODWORD(v242) = *(v242 + 32);
LABEL_345:
                    v243 = *(**v219 + 16);
                    v244 = *v241[1];
                    v309 = v240[2];
                    v310 = v242;
                    v311 = v243;
                    v245 = *(v241 + 6);
                    v312 = v244;
                    v313 = v245;
                    v246 = *v240;
                    while (!v246 || *(v246 + 16))
                    {
                      v246 = *(v246 + 8);
                      if (!v246)
                      {
                        goto LABEL_351;
                      }
                    }

                    LODWORD(v246) = *(v246 + 32);
LABEL_351:
                    v247 = *(*v240 + 16);
                    v248 = *v240[1];
                    v304 = v241[2];
                    v305 = v246;
                    v306 = v247;
                    v249 = *(v240 + 6);
                    v307 = v248;
                    v308 = v249;
                    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                    if (result)
                    {
                      v250 = *v219;
                      do
                      {
                        v251 = v239;
                        *v219 = *v239;
                        if (!v238)
                        {
                          break;
                        }

                        v238 = (v238 - 1) >> 1;
                        v239 = &v302[v238];
                        v252 = *v239;
                        v253 = *v250;
                        while (!v253 || *(v253 + 16))
                        {
                          v253 = *(v253 + 8);
                          if (!v253)
                          {
                            goto LABEL_360;
                          }
                        }

                        LODWORD(v253) = *(v253 + 32);
LABEL_360:
                        v254 = *(*v250 + 16);
                        v255 = *v250[1];
                        v309 = v252[2];
                        v310 = v253;
                        v311 = v254;
                        v256 = *(v250 + 6);
                        v312 = v255;
                        v313 = v256;
                        v257 = *v252;
                        while (!v257 || *(v257 + 16))
                        {
                          v257 = *(v257 + 8);
                          if (!v257)
                          {
                            goto LABEL_366;
                          }
                        }

                        LODWORD(v257) = *(v257 + 32);
LABEL_366:
                        v258 = *(*v252 + 16);
                        v259 = *v252[1];
                        v304 = v250[2];
                        v305 = v257;
                        v306 = v258;
                        v260 = *(v252 + 6);
                        v307 = v259;
                        v308 = v260;
                        result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
                        v219 = v251;
                      }

                      while ((result & 1) != 0);
                      *v251 = v250;
                    }
                  }
                }

                v236 = v9-- <= 2;
              }

              while (!v236);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
          }

          else
          {
            v13 = *v8;
            *v8 = *v12;
            *v12 = v13;
          }

          v14 = a3 - 1;
          if (a4)
          {
            break;
          }

          v15 = *(v8 - 1);
          v16 = *v8;
          v17 = **v8;
          while (!v17 || *(v17 + 16))
          {
            v17 = *(v17 + 8);
            if (!v17)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v17) = *(v17 + 32);
LABEL_22:
          v18 = *(**v8 + 16);
          v19 = *v16[1];
          v309 = v15[2];
          v310 = v17;
          v311 = v18;
          v20 = *(v16 + 6);
          v312 = v19;
          v313 = v20;
          v21 = *v15;
          while (!v21 || *(v21 + 16))
          {
            v21 = *(v21 + 8);
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          LODWORD(v21) = *(v21 + 32);
LABEL_28:
          v22 = *(*v15 + 16);
          v23 = *v15[1];
          v304 = v16[2];
          v305 = v21;
          v306 = v22;
          v24 = *(v15 + 6);
          v307 = v23;
          v308 = v24;
          if (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309))
          {
            break;
          }

          v75 = *v8;
          v76 = *v297;
          v77 = **v297;
          while (!v77 || *(v77 + 16))
          {
            v77 = *(v77 + 8);
            if (!v77)
            {
              goto LABEL_115;
            }
          }

          LODWORD(v77) = *(v77 + 32);
LABEL_115:
          v78 = *(**v297 + 16);
          v79 = *v76[1];
          v80 = *(v75 + 4);
          v81 = *(v75 + 5);
          v309 = __PAIR64__(v81, v80);
          v310 = v77;
          v311 = v78;
          v82 = *(v76 + 6);
          v312 = v79;
          v313 = v82;
          v83 = *v75;
          v84 = *v75;
          while (!v84 || *(v84 + 16))
          {
            v84 = *(v84 + 8);
            if (!v84)
            {
              goto LABEL_121;
            }
          }

          LODWORD(v84) = *(v84 + 32);
LABEL_121:
          v85 = *(v83 + 16);
          v86 = *v75[1];
          v304 = v76[2];
          v305 = v84;
          v306 = v85;
          v87 = v75;
          v88 = *(v75 + 6);
          v307 = v86;
          v308 = v88;
          result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
          v7 = v302;
          if (result)
          {
            v7 = v302;
            do
            {
              v90 = v7[1];
              ++v7;
              v89 = v90;
              v91 = *v90;
              v92 = *v90;
              while (!v92 || *(v92 + 16))
              {
                v92 = *(v92 + 8);
                if (!v92)
                {
                  goto LABEL_129;
                }
              }

              LODWORD(v92) = *(v92 + 32);
LABEL_129:
              v93 = *(v91 + 16);
              v94 = *v89[1];
              v309 = __PAIR64__(v81, v80);
              v310 = v92;
              v311 = v93;
              v95 = *(v89 + 6);
              v312 = v94;
              v313 = v95;
              v96 = v83;
              while (!v96 || *(v96 + 16))
              {
                v96 = *(v96 + 8);
                if (!v96)
                {
                  goto LABEL_135;
                }
              }

              LODWORD(v96) = *(v96 + 32);
LABEL_135:
              v304 = v89[2];
              v305 = v96;
              v306 = v85;
              v307 = v86;
              v308 = v88;
              result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
            }

            while ((result & 1) == 0);
          }

          else
          {
            do
            {
              if (++v7 >= v301)
              {
                break;
              }

              v97 = *v7;
              v98 = **v7;
              while (!v98 || *(v98 + 16))
              {
                v98 = *(v98 + 8);
                if (!v98)
                {
                  goto LABEL_144;
                }
              }

              LODWORD(v98) = *(v98 + 32);
LABEL_144:
              v99 = *(**v7 + 16);
              v100 = *v97[1];
              v309 = __PAIR64__(v81, v80);
              v310 = v98;
              v311 = v99;
              v101 = *(v97 + 6);
              v312 = v100;
              v313 = v101;
              v102 = v83;
              while (!v102 || *(v102 + 16))
              {
                v102 = *(v102 + 8);
                if (!v102)
                {
                  goto LABEL_150;
                }
              }

              LODWORD(v102) = *(v102 + 32);
LABEL_150:
              v304 = v97[2];
              v305 = v102;
              v306 = v85;
              v307 = v86;
              v308 = v88;
              result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
            }

            while (!result);
          }

          v103 = v301;
          if (v7 < v301)
          {
            v103 = v301;
            do
            {
              v105 = *--v103;
              v104 = v105;
              v106 = *v105;
              v107 = *v105;
              while (!v107 || *(v107 + 16))
              {
                v107 = *(v107 + 8);
                if (!v107)
                {
                  goto LABEL_159;
                }
              }

              LODWORD(v107) = *(v107 + 32);
LABEL_159:
              v108 = *(v106 + 16);
              v109 = *v104[1];
              v309 = __PAIR64__(v81, v80);
              v310 = v107;
              v311 = v108;
              v110 = *(v104 + 6);
              v312 = v109;
              v313 = v110;
              v111 = v83;
              while (!v111 || *(v111 + 16))
              {
                v111 = *(v111 + 8);
                if (!v111)
                {
                  goto LABEL_165;
                }
              }

              LODWORD(v111) = *(v111 + 32);
LABEL_165:
              v304 = v104[2];
              v305 = v111;
              v306 = v85;
              v307 = v86;
              v308 = v88;
              result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
            }

            while ((result & 1) != 0);
          }

          v112 = v14;
          v113 = v87;
          while (v7 < v103)
          {
            v114 = *v7;
            *v7 = *v103;
            *v103 = v114;
            v115 = *v113;
            v116 = *(*v113 + 16);
            v117 = *v113[1];
            do
            {
              v119 = v7[1];
              ++v7;
              v118 = v119;
              v120 = *v119;
              v121 = *v119;
              while (!v121 || *(v121 + 16))
              {
                v121 = *(v121 + 8);
                if (!v121)
                {
                  goto LABEL_175;
                }
              }

              LODWORD(v121) = *(v121 + 32);
LABEL_175:
              v122 = *(v120 + 16);
              v123 = *v118[1];
              v309 = __PAIR64__(v81, v80);
              v310 = v121;
              v311 = v122;
              v124 = *(v118 + 6);
              v312 = v123;
              v313 = v124;
              v125 = v115;
              while (!v125 || *(v125 + 16))
              {
                v125 = *(v125 + 8);
                if (!v125)
                {
                  goto LABEL_181;
                }
              }

              LODWORD(v125) = *(v125 + 32);
LABEL_181:
              v304 = v118[2];
              v305 = v125;
              v306 = v116;
              v307 = v117;
              v308 = v88;
            }

            while (!std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
            do
            {
              v127 = *--v103;
              v126 = v127;
              v128 = *v127;
              v129 = *v127;
              while (!v129 || *(v129 + 16))
              {
                v129 = *(v129 + 8);
                if (!v129)
                {
                  goto LABEL_188;
                }
              }

              LODWORD(v129) = *(v129 + 32);
LABEL_188:
              v130 = *(v128 + 16);
              v131 = *v126[1];
              v309 = __PAIR64__(v81, v80);
              v310 = v129;
              v311 = v130;
              v132 = *(v126 + 6);
              v312 = v131;
              v313 = v132;
              v133 = v115;
              while (!v133 || *(v133 + 16))
              {
                v133 = *(v133 + 8);
                if (!v133)
                {
                  goto LABEL_194;
                }
              }

              LODWORD(v133) = *(v133 + 32);
LABEL_194:
              v304 = v126[2];
              v305 = v133;
              v306 = v116;
              v307 = v117;
              v308 = v88;
              result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309);
            }

            while ((result & 1) != 0);
          }

          v134 = v7 - 1;
          if (v7 - 1 != v302)
          {
            *v302 = *v134;
          }

          a4 = 0;
          *v134 = v113;
          a2 = v301;
          a3 = v112;
        }

        v299 = v14;
        v25 = **v8;
        v26 = *(v25 + 16);
        v27 = *(*v8)[1];
        v28 = *(*v8 + 5);
        v29 = *(*v8 + 6);
        v30 = *(*v8 + 4);
        v303 = *v8;
        do
        {
          v31 = v8;
          v33 = v8[1];
          ++v8;
          v32 = v33;
          v34 = v25;
          while (!v34 || *(v34 + 16))
          {
            v34 = *(v34 + 8);
            if (!v34)
            {
              goto LABEL_36;
            }
          }

          LODWORD(v34) = *(v34 + 32);
LABEL_36:
          v309 = v32[2];
          v310 = v34;
          v311 = v26;
          v312 = v27;
          v313 = v29;
          v35 = *v32;
          while (!v35 || *(v35 + 16))
          {
            v35 = *(v35 + 8);
            if (!v35)
            {
              goto LABEL_42;
            }
          }

          LODWORD(v35) = *(v35 + 32);
LABEL_42:
          v36 = *(*v32 + 16);
          v37 = *v32[1];
          v304 = __PAIR64__(v28, v30);
          v305 = v35;
          v306 = v36;
          v38 = *(v32 + 6);
          v307 = v37;
          v308 = v38;
        }

        while (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
        v39 = v301;
        if (v31 == v302)
        {
          v39 = v301;
          do
          {
            if (v8 >= v39)
            {
              break;
            }

            v48 = *--v39;
            v47 = v48;
            v49 = v25;
            while (!v49 || *(v49 + 16))
            {
              v49 = *(v49 + 8);
              if (!v49)
              {
                goto LABEL_66;
              }
            }

            LODWORD(v49) = *(v49 + 32);
LABEL_66:
            v309 = v47[2];
            v310 = v49;
            v311 = v26;
            v312 = v27;
            v313 = v29;
            v50 = *v47;
            while (!v50 || *(v50 + 16))
            {
              v50 = *(v50 + 8);
              if (!v50)
              {
                goto LABEL_72;
              }
            }

            LODWORD(v50) = *(v50 + 32);
LABEL_72:
            v51 = *(*v47 + 16);
            v52 = *v47[1];
            v304 = __PAIR64__(v28, v30);
            v305 = v50;
            v306 = v51;
            v53 = *(v47 + 6);
            v307 = v52;
            v308 = v53;
          }

          while (!std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
        }

        else
        {
          do
          {
            v41 = *--v39;
            v40 = v41;
            v42 = v25;
            while (!v42 || *(v42 + 16))
            {
              v42 = *(v42 + 8);
              if (!v42)
              {
                goto LABEL_50;
              }
            }

            LODWORD(v42) = *(v42 + 32);
LABEL_50:
            v309 = v40[2];
            v310 = v42;
            v311 = v26;
            v312 = v27;
            v313 = v29;
            v43 = *v40;
            while (!v43 || *(v43 + 16))
            {
              v43 = *(v43 + 8);
              if (!v43)
              {
                goto LABEL_56;
              }
            }

            LODWORD(v43) = *(v43 + 32);
LABEL_56:
            v44 = *(*v40 + 16);
            v45 = *v40[1];
            v304 = __PAIR64__(v28, v30);
            v305 = v43;
            v306 = v44;
            v46 = *(v40 + 6);
            v307 = v45;
            v308 = v46;
          }

          while (!std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
        }

        v300 = v39;
        if (v8 < v39)
        {
          v54 = v8;
          v55 = v39;
          do
          {
            v56 = *v54;
            *v54 = *v55;
            *v55 = v56;
            v57 = *v303;
            v58 = *(*v303 + 16);
            v59 = *v303[1];
            do
            {
              v31 = v54;
              v61 = v54[1];
              ++v54;
              v60 = v61;
              v62 = v57;
              while (!v62 || *(v62 + 16))
              {
                v62 = *(v62 + 8);
                if (!v62)
                {
                  goto LABEL_82;
                }
              }

              LODWORD(v62) = *(v62 + 32);
LABEL_82:
              v309 = v60[2];
              v310 = v62;
              v311 = v58;
              v312 = v59;
              v313 = v29;
              v63 = *v60;
              while (!v63 || *(v63 + 16))
              {
                v63 = *(v63 + 8);
                if (!v63)
                {
                  goto LABEL_88;
                }
              }

              LODWORD(v63) = *(v63 + 32);
LABEL_88:
              v64 = *(*v60 + 16);
              v65 = *v60[1];
              v304 = __PAIR64__(v28, v30);
              v305 = v63;
              v306 = v64;
              v66 = *(v60 + 6);
              v307 = v65;
              v308 = v66;
            }

            while (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
            do
            {
              v68 = *--v55;
              v67 = v68;
              v69 = v57;
              while (!v69 || *(v69 + 16))
              {
                v69 = *(v69 + 8);
                if (!v69)
                {
                  goto LABEL_95;
                }
              }

              LODWORD(v69) = *(v69 + 32);
LABEL_95:
              v309 = v67[2];
              v310 = v69;
              v311 = v58;
              v312 = v59;
              v313 = v29;
              v70 = *v67;
              while (!v70 || *(v70 + 16))
              {
                v70 = *(v70 + 8);
                if (!v70)
                {
                  goto LABEL_101;
                }
              }

              LODWORD(v70) = *(v70 + 32);
LABEL_101:
              v71 = *(*v67 + 16);
              v72 = *v67[1];
              v304 = __PAIR64__(v28, v30);
              v305 = v70;
              v306 = v71;
              v73 = *(v67 + 6);
              v307 = v72;
              v308 = v73;
            }

            while (!std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v304, &v309));
          }

          while (v54 < v55);
        }

        a2 = v301;
        v6 = v302;
        if (v31 != v302)
        {
          *v302 = *v31;
        }

        *v31 = v303;
        a3 = v299;
        if (v8 >= v300)
        {
          break;
        }

LABEL_108:
        a4 = 0;
        v7 = v31 + 1;
      }

      v7 = v31 + 1;
      if (result)
      {
        break;
      }

      if (!v74)
      {
        goto LABEL_108;
      }
    }

    a2 = v31;
    if (!v74)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a1;
  while (!v6 || *(v6 + 16))
  {
    v6 = *(v6 + 8);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  LODWORD(v6) = *(v6 + 32);
LABEL_7:
  v7 = *(**a1 + 16);
  v8 = *v5[1];
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v59 = __PAIR64__(v10, v9);
  v60 = v6;
  v61 = v7;
  v11 = *(v5 + 6);
  v62 = v8;
  v63 = v11;
  v12 = *v4;
  v13 = *v4;
  v50 = v11;
  while (!v13 || *(v13 + 16))
  {
    v13 = *(v13 + 8);
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  LODWORD(v13) = *(v13 + 32);
LABEL_13:
  v14 = *(v12 + 16);
  v15 = *v4[1];
  v16 = *(v5 + 5);
  v49 = *(v5 + 4);
  v54 = __PAIR64__(v16, v49);
  v55 = v13;
  v56 = v14;
  v17 = *(v4 + 6);
  v57 = v15;
  v58 = v17;
  v18 = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v54, &v59);
  v53 = a3;
  v19 = *a3;
  if (v18)
  {
    while (*(v12 + 16))
    {
      v12 = *(v12 + 8);
      if (!v12)
      {
        v20 = 0;
        goto LABEL_21;
      }
    }

    v20 = *(v12 + 32);
LABEL_21:
    v59 = v19[2];
    v60 = v20;
    v61 = v14;
    v62 = v15;
    v63 = v17;
    v22 = *v19;
    while (!v22 || *(v22 + 16))
    {
      v22 = *(v22 + 8);
      if (!v22)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v22) = *(v22 + 32);
LABEL_33:
    v24 = *(*v19 + 16);
    v25 = *v19[1];
    v54 = __PAIR64__(v10, v9);
    v55 = v22;
    v56 = v24;
    v26 = *(v19 + 6);
    v57 = v25;
    v58 = v26;
    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v54, &v59);
    if (result)
    {
      *a1 = v19;
LABEL_65:
      *v53 = v5;
      return result;
    }

    *a1 = v4;
    *a2 = v5;
    v34 = *v53;
    v35 = *v5;
    while (!v35 || *(v35 + 16))
    {
      v35 = *(v35 + 8);
      if (!v35)
      {
        goto LABEL_54;
      }
    }

    LODWORD(v35) = *(v35 + 32);
LABEL_54:
    v40 = *(*v5 + 16);
    v41 = *v5[1];
    v59 = v34[2];
    v60 = v35;
    v61 = v40;
    v62 = v41;
    v63 = v50;
    v42 = *v34;
    while (!v42 || *(v42 + 16))
    {
      v42 = *(v42 + 8);
      if (!v42)
      {
        goto LABEL_63;
      }
    }

    LODWORD(v42) = *(v42 + 32);
LABEL_63:
    v46 = *(*v34 + 16);
    v47 = *v34[1];
    v54 = __PAIR64__(v16, v49);
    v55 = v42;
    v56 = v46;
    v48 = *(v34 + 6);
    v57 = v47;
    v58 = v48;
    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v54, &v59);
    if (result)
    {
      *a2 = v34;
      goto LABEL_65;
    }
  }

  else
  {
    while (*(v12 + 16))
    {
      v12 = *(v12 + 8);
      if (!v12)
      {
        v21 = 0;
        goto LABEL_27;
      }
    }

    v21 = *(v12 + 32);
LABEL_27:
    v59 = v19[2];
    v60 = v21;
    v61 = v14;
    v62 = v15;
    v63 = v17;
    v23 = *v19;
    while (!v23 || *(v23 + 16))
    {
      v23 = *(v23 + 8);
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v23) = *(v23 + 32);
LABEL_36:
    v28 = *(*v19 + 16);
    v29 = *v19[1];
    v54 = __PAIR64__(v10, v9);
    v55 = v23;
    v56 = v28;
    v30 = *(v19 + 6);
    v57 = v29;
    v58 = v30;
    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v54, &v59);
    if (result)
    {
      *a2 = v19;
      *v53 = v4;
      v31 = *a2;
      v32 = *a1;
      v33 = **a1;
      while (!v33 || *(v33 + 16))
      {
        v33 = *(v33 + 8);
        if (!v33)
        {
          goto LABEL_48;
        }
      }

      LODWORD(v33) = *(v33 + 32);
LABEL_48:
      v36 = *(**a1 + 16);
      v37 = *v32[1];
      v59 = v31[2];
      v60 = v33;
      v61 = v36;
      v38 = *(v32 + 6);
      v62 = v37;
      v63 = v38;
      v39 = *v31;
      while (!v39 || *(v39 + 16))
      {
        v39 = *(v39 + 8);
        if (!v39)
        {
          goto LABEL_60;
        }
      }

      LODWORD(v39) = *(v39 + 32);
LABEL_60:
      v43 = *(*v31 + 16);
      v44 = *v31[1];
      v54 = v32[2];
      v55 = v39;
      v56 = v43;
      v45 = *(v31 + 6);
      v57 = v44;
      v58 = v45;
      result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v54, &v59);
      if (result)
      {
        *a1 = v31;
        *a2 = v32;
      }
    }
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v8 = *a4;
  v9 = *a3;
  v10 = **a3;
  while (!v10 || *(v10 + 16))
  {
    v10 = *(v10 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  LODWORD(v10) = *(v10 + 32);
LABEL_7:
  v11 = *(**a3 + 16);
  v12 = *v9[1];
  v44 = v8[2];
  v45 = v10;
  v46 = v11;
  v13 = *(v9 + 6);
  v47 = v12;
  v48 = v13;
  v14 = *v8;
  while (!v14 || *(v14 + 16))
  {
    v14 = *(v14 + 8);
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  LODWORD(v14) = *(v14 + 32);
LABEL_13:
  v15 = *(*v8 + 16);
  v16 = *v8[1];
  v39 = v9[2];
  v40 = v14;
  v41 = v15;
  v17 = *(v8 + 6);
  v42 = v16;
  v43 = v17;
  result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v39, &v44);
  if (result)
  {
    *a3 = v8;
    *a4 = v9;
    v19 = *a3;
    v20 = *a2;
    v21 = **a2;
    while (!v21 || *(v21 + 16))
    {
      v21 = *(v21 + 8);
      if (!v21)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v21) = *(v21 + 32);
LABEL_20:
    v22 = *(**a2 + 16);
    v23 = *v20[1];
    v44 = v19[2];
    v45 = v21;
    v46 = v22;
    v24 = *(v20 + 6);
    v47 = v23;
    v48 = v24;
    v25 = *v19;
    while (!v25 || *(v25 + 16))
    {
      v25 = *(v25 + 8);
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    LODWORD(v25) = *(v25 + 32);
LABEL_26:
    v26 = *(*v19 + 16);
    v27 = *v19[1];
    v39 = v20[2];
    v40 = v25;
    v41 = v26;
    v28 = *(v19 + 6);
    v42 = v27;
    v43 = v28;
    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v39, &v44);
    if (result)
    {
      *a2 = v19;
      *a3 = v20;
      v29 = *a2;
      v30 = *a1;
      v31 = **a1;
      while (!v31 || *(v31 + 16))
      {
        v31 = *(v31 + 8);
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      LODWORD(v31) = *(v31 + 32);
LABEL_33:
      v32 = *(**a1 + 16);
      v33 = *v30[1];
      v44 = v29[2];
      v45 = v31;
      v46 = v32;
      v34 = *(v30 + 6);
      v47 = v33;
      v48 = v34;
      v35 = *v29;
      while (!v35 || *(v35 + 16))
      {
        v35 = *(v35 + 8);
        if (!v35)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v35) = *(v35 + 32);
LABEL_39:
      v36 = *(*v29 + 16);
      v37 = *v29[1];
      v39 = v30[2];
      v40 = v35;
      v41 = v36;
      v38 = *(v29 + 6);
      v42 = v37;
      v43 = v38;
      result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v39, &v44);
      if (result)
      {
        *a1 = v29;
        *a2 = v30;
      }
    }
  }

  return result;
}

BOOL std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t **a5)
{
  v10 = *a5;
  v11 = *a4;
  v12 = **a4;
  while (!v12 || *(v12 + 16))
  {
    v12 = *(v12 + 8);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  LODWORD(v12) = *(v12 + 32);
LABEL_7:
  v13 = *(**a4 + 16);
  v14 = *v11[1];
  v56 = v10[2];
  v57 = v12;
  v58 = v13;
  v15 = *(v11 + 6);
  v59 = v14;
  v60 = v15;
  v16 = *v10;
  while (!v16 || *(v16 + 16))
  {
    v16 = *(v16 + 8);
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  LODWORD(v16) = *(v16 + 32);
LABEL_13:
  v17 = *(*v10 + 16);
  v18 = *v10[1];
  v51 = v11[2];
  v52 = v16;
  v53 = v17;
  v19 = *(v10 + 6);
  v54 = v18;
  v55 = v19;
  result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v51, &v56);
  if (result)
  {
    *a4 = v10;
    *a5 = v11;
    v21 = *a4;
    v22 = *a3;
    v23 = **a3;
    while (!v23 || *(v23 + 16))
    {
      v23 = *(v23 + 8);
      if (!v23)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v23) = *(v23 + 32);
LABEL_20:
    v24 = *(**a3 + 16);
    v25 = *v22[1];
    v56 = v21[2];
    v57 = v23;
    v58 = v24;
    v26 = *(v22 + 6);
    v59 = v25;
    v60 = v26;
    v27 = *v21;
    while (!v27 || *(v27 + 16))
    {
      v27 = *(v27 + 8);
      if (!v27)
      {
        goto LABEL_26;
      }
    }

    LODWORD(v27) = *(v27 + 32);
LABEL_26:
    v28 = *(*v21 + 16);
    v29 = *v21[1];
    v51 = v22[2];
    v52 = v27;
    v53 = v28;
    v30 = *(v21 + 6);
    v54 = v29;
    v55 = v30;
    result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v51, &v56);
    if (result)
    {
      *a3 = v21;
      *a4 = v22;
      v31 = *a3;
      v32 = *a2;
      v33 = **a2;
      while (!v33 || *(v33 + 16))
      {
        v33 = *(v33 + 8);
        if (!v33)
        {
          goto LABEL_33;
        }
      }

      LODWORD(v33) = *(v33 + 32);
LABEL_33:
      v34 = *(**a2 + 16);
      v35 = *v32[1];
      v56 = v31[2];
      v57 = v33;
      v58 = v34;
      v36 = *(v32 + 6);
      v59 = v35;
      v60 = v36;
      v37 = *v31;
      while (!v37 || *(v37 + 16))
      {
        v37 = *(v37 + 8);
        if (!v37)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v37) = *(v37 + 32);
LABEL_39:
      v38 = *(*v31 + 16);
      v39 = *v31[1];
      v51 = v32[2];
      v52 = v37;
      v53 = v38;
      v40 = *(v31 + 6);
      v54 = v39;
      v55 = v40;
      result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v51, &v56);
      if (result)
      {
        *a2 = v31;
        *a3 = v32;
        v41 = *a2;
        v42 = *a1;
        v43 = **a1;
        while (!v43 || *(v43 + 16))
        {
          v43 = *(v43 + 8);
          if (!v43)
          {
            goto LABEL_46;
          }
        }

        LODWORD(v43) = *(v43 + 32);
LABEL_46:
        v44 = *(**a1 + 16);
        v45 = *v42[1];
        v56 = v41[2];
        v57 = v43;
        v58 = v44;
        v46 = *(v42 + 6);
        v59 = v45;
        v60 = v46;
        v47 = *v41;
        while (!v47 || *(v47 + 16))
        {
          v47 = *(v47 + 8);
          if (!v47)
          {
            goto LABEL_52;
          }
        }

        LODWORD(v47) = *(v47 + 32);
LABEL_52:
        v48 = *(*v41 + 16);
        v49 = *v41[1];
        v51 = v42[2];
        v52 = v47;
        v53 = v48;
        v50 = *(v41 + 6);
        v54 = v49;
        v55 = v50;
        result = std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v51, &v56);
        if (result)
        {
          *a1 = v41;
          *a2 = v42;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree(mlir::ModuleOp,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &)::$_0 &,anonymous namespace::OrderedPredicate **>(uint64_t **a1, uint64_t **a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = **a1;
        while (!v7 || *(v7 + 16))
        {
          v7 = *(v7 + 8);
          if (!v7)
          {
            goto LABEL_51;
          }
        }

        LODWORD(v7) = *(v7 + 32);
LABEL_51:
        v34 = *(**a1 + 16);
        v35 = *v6[1];
        v47 = v5[2];
        v48 = v7;
        v49 = v34;
        v36 = *(v6 + 6);
        v50 = v35;
        v51 = v36;
        v37 = *v5;
        while (!v37 || *(v37 + 16))
        {
          v37 = *(v37 + 8);
          if (!v37)
          {
            goto LABEL_57;
          }
        }

        LODWORD(v37) = *(v37 + 32);
LABEL_57:
        v38 = *(*v5 + 16);
        v39 = *v5[1];
        v42 = v6[2];
        v43 = v37;
        v44 = v38;
        v40 = *(v5 + 6);
        v45 = v39;
        v46 = v40;
        if (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v42, &v47))
        {
          *a1 = v5;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_14;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_14:
  v8 = a1 + 2;
  v9 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *v9;
    v12 = *v8;
    v13 = **v8;
    while (!v13 || *(v13 + 16))
    {
      v13 = *(v13 + 8);
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v13) = *(v13 + 32);
LABEL_22:
    v14 = *(**v8 + 16);
    v15 = *v12[1];
    v16 = *(v11 + 4);
    v17 = *(v11 + 5);
    v47 = __PAIR64__(v17, v16);
    v48 = v13;
    v49 = v14;
    v18 = *(v12 + 6);
    v50 = v15;
    v51 = v18;
    v19 = *v11;
    while (!v19 || *(v19 + 16))
    {
      v19 = *(v19 + 8);
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    LODWORD(v19) = *(v19 + 32);
LABEL_28:
    v20 = *(*v11 + 16);
    v21 = *v11[1];
    v42 = v12[2];
    v43 = v19;
    v44 = v20;
    v22 = *(v11 + 6);
    v45 = v21;
    v46 = v22;
    if (std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v42, &v47))
    {
      v23 = v9;
      while (1)
      {
        *v23 = *v8;
        if (v8 == a1)
        {
          break;
        }

        v23 = v8;
        v25 = *--v8;
        v24 = v25;
        v26 = *v25;
        v27 = *v25;
        while (!v27 || *(v27 + 16))
        {
          v27 = *(v27 + 8);
          if (!v27)
          {
            goto LABEL_37;
          }
        }

        LODWORD(v27) = *(v27 + 32);
LABEL_37:
        v28 = *(v26 + 16);
        v29 = *v24[1];
        v47 = __PAIR64__(v17, v16);
        v48 = v27;
        v49 = v28;
        v30 = *(v24 + 6);
        v50 = v29;
        v51 = v30;
        v31 = *v11;
        while (!v31 || *(v31 + 16))
        {
          v31 = *(v31 + 8);
          if (!v31)
          {
            goto LABEL_43;
          }
        }

        LODWORD(v31) = *(v31 + 32);
LABEL_43:
        v32 = *(*v11 + 16);
        v33 = *v11[1];
        v42 = v24[2];
        v43 = v31;
        v44 = v32;
        v45 = v33;
        v46 = v22;
        if (!std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(&v42, &v47))
        {
          goto LABEL_46;
        }
      }

      v23 = a1;
LABEL_46:
      *v23 = v11;
      if (++v10 == 8)
      {
        return v9 + 1 == a2;
      }
    }

    v8 = v9++;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__tuple_less<6ul>::operator()[abi:nn200100]<std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>,std::tuple<unsigned int,unsigned int,unsigned int,mlir::pdl_to_pdl_interp::Predicates::Kind,mlir::pdl_to_pdl_interp::Predicates::Kind,unsigned int>>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9 < v10)
  {
    return 1;
  }

  if (v10 < v9)
  {
    return 0;
  }

  return a1[5] < a2[5];
}

const void **std::__stable_partition_impl<std::_ClassicAlgPolicy,void stableTopologicalSort<std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *)>(std::__wrap_iter<anonymous namespace::OrderedPredicate **>,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,BOOL (*)(anonymous namespace::OrderedPredicate *,anonymous namespace::OrderedPredicate *))::{lambda(std::__wrap_iter<anonymous namespace::OrderedPredicate **> const&)#2} &,std::__wrap_iter<anonymous namespace::OrderedPredicate **>,long,std::pair<anonymous namespace::OrderedPredicate **,long>>(uint64_t a1, const void **a2, llvm::SmallPtrSetImplBase **a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v11 = (a1 + 8);
    if (!llvm::SmallPtrSetImplBase::contains_imp(*a3, *(a1 + 8)))
    {
      v19 = v8->i64[1];
      v8->i64[1] = *a2;
      *a2 = v19;
      *v8 = vextq_s8(*v8, *v8, 8uLL);
      return v11;
    }

    v12 = *v8;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
    v8->i64[1] = *a2;
    *a2 = v12.i64[0];
    return a2;
  }

  if (a4 == 2)
  {
    v10 = *a1;
    *a1 = *a2;
    *a2 = v10;
    return a2;
  }

  v14 = a5;
  if (a6 >= a4)
  {
    v11 = (a1 + 8);
    *a5 = *a1;
    v20 = a5 + 1;
    if ((a1 + 8) == a2)
    {
      *a1 = *(a1 + 8);
    }

    else
    {
      do
      {
        v21 = llvm::SmallPtrSetImplBase::contains_imp(*a3, *v11);
        v22 = *v11;
        if (v21)
        {
          v8->i64[0] = v22;
          v8 = (v8 + 8);
        }

        else
        {
          *v20++ = v22;
        }

        ++v11;
      }

      while (v11 != a2);
      v8->i64[0] = *v11;
      v11 = &v8->i64[1];
      if (v20 <= v14)
      {
        return v11;
      }
    }

    v32 = v11;
    do
    {
      v33 = *v14++;
      *v32++ = v33;
    }

    while (v14 < v20);
    return v11;
  }

  v15 = a4 / 2;
  v16 = (a1 + 8 * (a4 / 2));
  v17 = v16 - 1;
  if (llvm::SmallPtrSetImplBase::contains_imp(*a3, *(v16 - 1)))
  {
    v18 = a4 / 2;
LABEL_22:
  }

  else
  {
    v23 = 8 - 8 * v15;
    v24 = a4 / 2;
    while (v23)
    {
      v18 = v24 - 1;
      v25 = llvm::SmallPtrSetImplBase::contains_imp(*a3, v8[-1].i64[v24]);
      v23 += 8;
      v24 = v18;
      if (v25)
      {
        v17 = (v8 - v23);
        goto LABEL_22;
      }
    }
  }

  v26 = a4 - v15;
  if (llvm::SmallPtrSetImplBase::contains_imp(*a3, *v16))
  {
    v11 = a2 + 1;
    v27 = v16 + 1;
    v28 = v16;
    while (v27 != a2)
    {
      --v26;
      v29 = *v27++;
      v28 += 8;
      if (!llvm::SmallPtrSetImplBase::contains_imp(*a3, v29))
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v28 = v16;
LABEL_29:
  }

  if (v8 != v16)
  {
    if (v16 == v11)
    {
      return v8;
    }

    else if (&v8->u64[1] == v16)
    {
      v30 = v8->i64[0];
      v31 = v11 - v16;
      memmove(v8, v16, v31);
      v11 = (v8->i64 + v31);
      *v11 = v30;
    }

    else if (v16 + 1 == v11)
    {
      v34 = (v11 - 1);
      v35 = *(v11 - 1);
      v11 = &v8->i64[1];
      if (v34 != v8)
      {
        memmove(&v8->u64[1], v8, v34 - v8);
      }

      v8->i64[0] = v35;
    }

    else
    {
      v36 = (v16 - v8) >> 3;
      v37 = v11 - v16;
      if (v36 == v11 - v16)
      {
        v38 = &v8->i64[1];
        v39 = v16 + 1;
        do
        {
          v40 = *(v38 - 1);
          *(v38 - 1) = *(v39 - 1);
          *(v39 - 1) = v40;
          if (v38 == v16)
          {
            break;
          }

          ++v38;
        }

        while (v39++ != v11);
        return v16;
      }

      else
      {
        v42 = v37 >> 3;
        v43 = (v16 - v8) >> 3;
        do
        {
          v44 = v43;
          v43 = v42;
          v42 = v44 % v42;
        }

        while (v42);
        v45 = (v8 + 8 * v43);
        do
        {
          v47 = v45[-1].i64[1];
          v45 = (v45 - 8);
          v46 = v47;
          v48 = (v45->i64 + v16 - v8);
          v49 = v45;
          do
          {
            v50 = v48;
            *v49 = *v48;
            v51 = &v48[v36];
            v52 = __OFSUB__(v36, (v11 - v48) >> 3);
            v54 = v36 - ((v11 - v48) >> 3);
            v53 = (v54 < 0) ^ v52;
            v48 = &v8->i64[v54];
            if (v53)
            {
              v48 = v51;
            }

            v49 = v50;
          }

          while (v48 != v45);
          *v50 = v46;
        }

        while (v45 != v8);
        return (v8 + v37);
      }
    }
  }

  return v11;
}

char ***llvm::SmallVector<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,std::unique_ptr<mlir::pdl_to_pdl_interp::MatcherNode>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 1;
    v5 = 2 * v3;
    do
    {
      v6 = v4[v5];
      v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 2;
    }

    while (v5 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::pdl_to_pdl_interp::OptimalBranching::solve(int32x2_t *this)
{
  v141[6] = *MEMORY[0x277D85DE8];
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::clear(&this[4]);
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&this[4], &this[3]) = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v3 = this[1].i32[0];
  if (!v3)
  {
    goto LABEL_86;
  }

  v4 = (4 * v3 / 3u + 1) | ((4 * v3 / 3u + 1) >> 1);
  v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
  llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v128, (((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8)) + 1, v2);
  if (!this[1].i32[0])
  {
    goto LABEL_86;
  }

  v6 = this[2].u32[0];
  if (v6)
  {
    v7 = 32 * v6;
    v8 = *this;
    while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v8 += 4;
      v7 -= 32;
      if (!v7)
      {
        goto LABEL_86;
      }
    }
  }

  else
  {
    v8 = *this;
  }

  v9 = *this + 32 * v6;
  if (v8 == v9)
  {
LABEL_86:
    v10 = 0;
    goto LABEL_87;
  }

  v10 = 0;
LABEL_11:
  v127 = *v8;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(&this[4], &v127))
  {
    goto LABEL_81;
  }

  if (v129)
  {
    v11 = v130;
    if (v130 <= 4 * v129)
    {
      v12 = xmmword_25D0A0500;
    }

    else
    {
      v12 = xmmword_25D0A0500;
      if (v130 >= 0x41)
      {
        v13 = 1 << (33 - __clz(v129 - 1));
        if (v13 <= 64)
        {
          v14 = 64;
        }

        else
        {
          v14 = v13;
        }

LABEL_21:
        if (v14 == v11)
        {
          v15 = 0;
          v129 = 0;
          v16 = v11 + 0xFFFFFFFFFFFFFFFLL;
          v17 = v16 & 0xFFFFFFFFFFFFFFFLL;
          v18 = (v16 & 0xFFFFFFFFFFFFFFFLL) - (v16 & 1) + 2;
          v19 = vdupq_n_s64(v17);
          v20 = v128 + 2;
          do
          {
            v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v15), v12)));
            if (v21.i8[0])
            {
              *(v20 - 2) = -4096;
            }

            if (v21.i8[4])
            {
              *v20 = -4096;
            }

            v15 += 2;
            v20 += 4;
          }

          while (v18 != v15);
        }

        else
        {
          MEMORY[0x25F891030](v128, 8);
          if (v14)
          {
            v22 = (4 * v14 / 3u + 1) | ((4 * v14 / 3u + 1) >> 1);
            v23 = v22 | (v22 >> 2) | ((v22 | (v22 >> 2)) >> 4);
            v130 = (((v23 | (v23 >> 8)) >> 16) | v23 | (v23 >> 8)) + 1;
            buffer = llvm::allocate_buffer((16 * v130), 8uLL);
            v128 = buffer;
            v129 = 0;
            if (v130)
            {
              v25 = 0;
              v26 = ((v130 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v130 - 1) & 1) + 2;
              v27 = vdupq_n_s64((v130 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
              v28 = buffer + 2;
              do
              {
                v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
                if (v29.i8[0])
                {
                  *(v28 - 2) = -4096;
                }

                if (v29.i8[4])
                {
                  *v28 = -4096;
                }

                v25 += 2;
                v28 += 4;
              }

              while (v26 != v25);
            }
          }

          else
          {
            v128 = 0;
            v129 = 0;
            v130 = 0;
          }
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
    v12 = xmmword_25D0A0500;
    if (!HIDWORD(v129))
    {
      goto LABEL_47;
    }

    v11 = v130;
    if (v130 > 0x40)
    {
      v14 = 0;
      goto LABEL_21;
    }
  }

  if (v11)
  {
    v30 = 0;
    v31 = v11 + 0xFFFFFFFFFFFFFFFLL;
    v32 = v31 & 0xFFFFFFFFFFFFFFFLL;
    v33 = (v31 & 0xFFFFFFFFFFFFFFFLL) - (v31 & 1) + 2;
    v34 = vdupq_n_s64(v32);
    v35 = v128 + 2;
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v30), v12)));
      if (v36.i8[0])
      {
        *(v35 - 2) = -4096;
      }

      if (v36.i8[4])
      {
        *v35 = -4096;
      }

      v30 += 2;
      v35 += 4;
    }

    while (v33 != v30);
  }

  v129 = 0;
  do
  {
LABEL_47:
    v37 = *this;
    v38 = this[2].u32[0];
    if (!v38)
    {
      goto LABEL_54;
    }

    v39 = 0x9DDFEA08EB382D69 * ((8 * v127 - 0xAE502812AA7333) ^ HIDWORD(v127));
    v40 = 0x9DDFEA08EB382D69 * (HIDWORD(v127) ^ (v39 >> 47) ^ v39);
    v41 = (-348639895 * ((v40 >> 47) ^ v40)) & (v38 - 1);
    v42 = v37[4 * v41];
    if (v42 != v127)
    {
      v44 = 1;
      while (v42 != -4096)
      {
        v45 = v41 + v44++;
        v41 = v45 & (v38 - 1);
        v42 = v37[4 * v41];
        if (v42 == v127)
        {
          goto LABEL_49;
        }
      }

LABEL_54:
      v43 = 0;
      goto LABEL_55;
    }

LABEL_49:
    v43 = &v37[4 * v41];
LABEL_55:
    v46 = &v37[4 * v38];
    if (v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v46;
    }

    v48 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&this[4], &v127);
    v49 = v48;
    if (!*(v47 + 4))
    {
      goto LABEL_78;
    }

    v50 = *(v47 + 6);
    if (v50)
    {
      v51 = 24 * v50;
      v52 = v47[1];
      while ((*v52 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v52 += 24;
        v51 -= 24;
        if (!v51)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v52 = v47[1];
    }

    v53 = v47[1] + 24 * v50;
    if (v52 == v53)
    {
LABEL_78:
      v55 = 0;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v56 = *v48;
      do
      {
        v57 = *(v52 + 8);
        if (!v56 || v57 < v55)
        {
          v58 = *(v52 + 12);
LABEL_73:
          v56 = *v52;
          *v48 = *v52;
          v55 = v57;
          v54 = v58;
          goto LABEL_74;
        }

        if (v55 >= v57)
        {
          v58 = *(v52 + 12);
          if (v58 < v54)
          {
            goto LABEL_73;
          }
        }

        do
        {
LABEL_74:
          v52 += 24;
          if (v52 == v53)
          {
            goto LABEL_79;
          }
        }

        while ((*v52 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v52 != v53);
    }

LABEL_79:
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](&v128, &v127) = v55;
    v127 = *v49;
    v10 = v55 + v10;
  }

  while (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(&this[4], &v127));
  if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(&v128, &v127))
  {
LABEL_81:
    while (1)
    {
      v8 += 4;
      if (v8 == v9)
      {
        goto LABEL_87;
      }

      if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (v8 != v9)
        {
          goto LABEL_11;
        }

        goto LABEL_87;
      }
    }
  }

  v60 = v127;
  v139 = v141;
  v140 = 0x600000000;
  v136 = v127;
  v61 = v127;
  do
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v139, v61);
    v62 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(&this[4], &v136);
    if (v62)
    {
      v61 = *(v62 + 8);
    }

    else
    {
      v61 = 0;
    }

    v136 = v61;
  }

  while (v61 != v60);
  v125[0] = 0;
  v125[1] = 0;
  v126 = 0;
  v123[0] = 0;
  v123[1] = 0;
  v124 = 0;
  v63 = v139;
  v64 = v140;
  v135 = *v139;
  v65 = 1 << -__clz(v140 - 1);
  if (v140)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::init(v133, v66);
  if (v64)
  {
    v67 = 8 * v64;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v133, v63++, &v136);
      v67 -= 8;
    }

    while (v67);
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  if (!this[1].i32[0])
  {
    goto LABEL_170;
  }

  v68 = this[2].u32[0];
  if (v68)
  {
    v69 = 32 * v68;
    v70 = *this;
    while ((*v70 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v70 += 4;
      v69 -= 32;
      if (!v69)
      {
        goto LABEL_170;
      }
    }
  }

  else
  {
    v70 = *this;
  }

  v71 = *this + 32 * v68;
  if (v70 == v71)
  {
    goto LABEL_170;
  }

  v72 = *v70;
LABEL_108:
  v132 = v72;
  v73 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(v133, &v132);
  if (v73 && v73 != v133[0] + 8 * v134)
  {
    v74 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(&v128, &v132);
    if (v74)
    {
      v75 = *(v74 + 8);
    }

    else
    {
      v75 = 0;
    }

    v79 = v70[1];
    if (*(v70 + 4))
    {
      v80 = *(v70 + 6);
      v81 = v70[1];
      if (v80)
      {
        v82 = 24 * v80;
        v81 = v70[1];
        while ((*v81 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v81 += 24;
          v82 -= 24;
          if (!v82)
          {
            goto LABEL_166;
          }
        }
      }

      v83 = v79 + 24 * v80;
      if (v81 != v83)
      {
        v84 = *v81;
        do
        {
          v131 = v84;
          v85 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(v133, &v131);
          if (!v85 || v85 == v133[0] + 8 * v134)
          {
            v122 = *(v81 + 12);
            v86 = *(v81 + 8) - v75;
            v87 = v136;
            v88 = v138;
            v89 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::doFind<mlir::Value>(v136, v138, v131);
            v90 = !v89 || v89 == (v87 + 24 * v88);
            if (v90 || (v91 = *(v89 + 2), v86 < v91) || v91 >= v86 && *(v89 + 3) > v122)
            {
              v92 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v123, &v131);
              *v92 = v132;
              v93 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](&v136, &v131);
              *v93 = v86;
              v93[1] = v122;
            }
          }

          do
          {
            v81 += 24;
            if (v81 == v83)
            {
              goto LABEL_165;
            }

            v84 = *v81;
          }

          while ((*v81 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v81 != v83);
LABEL_165:
        v79 = v70[1];
      }
    }

LABEL_166:
    MEMORY[0x25F891030](v79, 8);
    *v70 = -8192;
    this[1] = vadd_s32(this[1], 0x1FFFFFFFFLL);
    goto LABEL_167;
  }

  if (!*(v70 + 4))
  {
    goto LABEL_167;
  }

  v76 = *(v70 + 6);
  if (v76)
  {
    v77 = 24 * v76;
    v78 = v70[1];
    while ((*v78 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v78 += 3;
      v77 -= 24;
      if (!v77)
      {
        goto LABEL_167;
      }
    }
  }

  else
  {
    v78 = v70[1];
  }

  v94 = v70[1] + 24 * v76;
  if (v78 == v94)
  {
    goto LABEL_167;
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  while (2)
  {
    v131 = *v78;
    v98 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(v133, &v131);
    if (!v98 || v98 == v133[0] + 8 * v134)
    {
      do
      {
        v78 += 3;
      }

      while (v78 != v94 && (*v78 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    else
    {
      v99 = *(v78 + 2);
      if (v97 && v99 >= v95)
      {
        if (v95 < v99)
        {
          goto LABEL_157;
        }

        v100 = *(v78 + 3);
        if (v100 >= v96)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v100 = *(v78 + 3);
      }

      v97 = v131;
      v96 = v100;
      v95 = *(v78 + 2);
LABEL_157:
        ;
      }

      *v78 = -8192;
      v70[2] = vadd_s32(v70[2], 0x1FFFFFFFFLL);
      v78 = i;
    }

    if (v78 != v94)
    {
      continue;
    }

    break;
  }

  if (v97)
  {
    v102 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::operator[](v70 + 1, &v135);
    *v102 = v95;
    v102[1] = v96;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v125, &v132) = v97;
  }

LABEL_167:
  while (1)
  {
    v70 += 4;
    if (v70 == v71)
    {
      break;
    }

    v72 = *v70;
    if ((*v70 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (v70 != v71)
      {
        goto LABEL_108;
      }

      break;
    }
  }

LABEL_170:
  v103 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>,mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>>>::operator[](this, &v135);
  MEMORY[0x25F891030](*v103, 8);
  *v103 = 0;
  v103[1] = 0;
  *(v103 + 4) = 0;
  *v103 = v136;
  v103[1] = v137;
  v136 = 0;
  v137 = 0;
  *(v103 + 4) = v138;
  v138 = 0;
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](v133[0], 8);
  v10 = mlir::pdl_to_pdl_interp::OptimalBranching::solve(this);
  if (this[5].i32[0])
  {
    v104 = this[6].u32[0];
    if (v104)
    {
      v105 = 16 * v104;
      v106 = this[4];
      while ((*v106 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v106 += 2;
        v105 -= 16;
        if (!v105)
        {
          goto LABEL_175;
        }
      }
    }

    else
    {
      v106 = this[4];
    }

    v119 = *&this[4] + 16 * v104;
LABEL_194:
    if (v106 != v119)
    {
      if (v106[1] == v127)
      {
        v120 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v125, v106);
        if (v120)
        {
          v121 = *(v120 + 8);
        }

        else
        {
          v121 = 0;
        }

        v106[1] = v121;
      }

      while (1)
      {
        v106 += 2;
        if (v106 == v119)
        {
          break;
        }

        if ((*v106 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_194;
        }
      }
    }
  }

LABEL_175:
  v107 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(&this[4], &v127);
  if (v107)
  {
    v108 = *(v107 + 8);
  }

  else
  {
    v108 = 0;
  }

  v136 = v108;
  v109 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v123, &v136);
  if (v109)
  {
    v110 = *(v109 + 8);
  }

  else
  {
    v110 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v139, v127);
  v111 = v140 - 1;
  if (v140 != 1)
  {
    v112 = 0;
    do
    {
      v113 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(&v128, v139 + v112);
      if (v113)
      {
        v114 = *(v113 + 8);
      }

      else
      {
        v114 = 0;
      }

      v115 = v139 + v112;
      v116 = &this[4];
      if (*(v139 + v112) == v110)
      {
        v117 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v116, v139 + v112);
        v118 = v136;
      }

      else
      {
        v117 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v116, v139 + v112);
        v118 = *(v115 + 1);
      }

      *v117 = v118;
      v10 = (v114 + v10);
      v112 += 8;
      --v111;
    }

    while (v111);
  }

  MEMORY[0x25F891030](v123[0], 8);
  MEMORY[0x25F891030](v125[0], 8);
  if (v139 != v141)
  {
    free(v139);
  }

LABEL_87:
  MEMORY[0x25F891030](v128, 8);
  return v10;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::clear(uint64_t *result)
{
  if (result[1])
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(result);
    }
  }

  return result;
}

void mlir::pdl_to_pdl_interp::OptimalBranching::preOrderTraversal(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  if (a3)
  {
    v6 = (a1 + 24);
    v8 = 8 * a3;
    while (1)
    {
      v26 = *a2;
      if (*v6 != v26)
      {
        v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>((a1 + 32), &v26);
        if (v9)
        {
          v10 = *(v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        v25 = v10;
        v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](v27, &v25);
        v12 = v11;
        v14 = v11[1];
        v13 = v11[2];
        if (v14 >= v13)
        {
          v16 = (v14 - *v11) >> 3;
          if ((v16 + 1) >> 61)
          {
            std::vector<mlir::Value>::__throw_length_error[abi:nn200100]();
          }

          v17 = v13 - *v11;
          v18 = v17 >> 2;
          if (v17 >> 2 <= (v16 + 1))
          {
            v18 = v16 + 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(v11, v19);
          }

          v20 = (8 * v16);
          *v20 = v26;
          v15 = 8 * v16 + 8;
          v21 = v11[1] - *v11;
          v22 = v20 - v21;
          memcpy(v20 - v21, *v11, v21);
          v23 = *v12;
          *v12 = v22;
          v12[1] = v15;
          v12[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v14 = v26;
          v15 = (v14 + 1);
        }

        v12[1] = v15;
      }

      ++a2;
      v8 -= 8;
      if (!v8)
      {
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        if (!(a3 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(a3);
        }

        std::vector<std::pair<mlir::Value,mlir::Value>>::__throw_length_error[abi:nn200100]();
      }
    }
  }

  a4[1] = 0;
  a4[2] = 0;
  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(1uLL);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::operator[](void *a1, unint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v9);
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
    llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v10);
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

uint64_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::init(uint64_t *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((8 * v4), 8uLL);
    *v2 = result;
    v2[1] = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 1;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>,mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::RootOrderingEntry>>::doFind<mlir::Value>(uint64_t a1, int a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = a2 - 1;
  v6 = (-348639895 * ((v4 >> 47) ^ v4)) & (a2 - 1);
  v7 = (a1 + 24 * v6);
  v8 = *v7;
  if (*v7 != a3)
  {
    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = (a1 + 24 * (v10 & v5));
      v8 = *v7;
      if (*v7 == a3)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::init(uint64_t *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = llvm::allocate_buffer((16 * v4), 8uLL);
    *v2 = result;
    v2[1] = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 2;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t *llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result[1] = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x25F891030](*result, 8);

    return llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::init(v1, v5);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v7 = (a1 + 32 * v6);
    v8 = *v7;
    if (*v7 == a3)
    {
      v9 = 1;
    }

    else
    {
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
        v6 = v14 & (a2 - 1);
        v7 = (a1 + 32 * v6);
        v8 = *v7;
        v9 = 1;
        if (*v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      if (v11)
      {
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

LABEL_5:
  *a4 = v7;
  return v9;
}

uint64_t *llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>,mlir::Value,std::vector<mlir::Value>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::vector<mlir::Value>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v31);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<mlir::Value,mlir::Value>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void mlir::PassManager::enableIRPrinting(uint64_t a1, uint64_t *a2, BOOL a3)
{
  if (*(*a2 + 8) == 1 && *(**(a1 + 8) + 41) == 1)
  {
    llvm::report_fatal_error("IR printing can't be setup on a pass-manager without disabling multi-threading first.", 1, a3);
  }

  operator new();
}

void anonymous namespace::IRPrinterInstrumentation::~IRPrinterInstrumentation(_anonymous_namespace_::IRPrinterInstrumentation *this)
{
  *this = &unk_286E84608;
  MEMORY[0x25F891030](*(this + 2), 8);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_286E84608;
  MEMORY[0x25F891030](*(this + 2), 8);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x25F891040);
}

__guard anonymous namespace::IRPrinterInstrumentation::runBeforePass(_anonymous_namespace_::IRPrinterInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v14 = a3;
  v15 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 != result)
  {
    v8 = *(this + 1);
    if (v8[9] != 1)
    {
LABEL_10:
      v13[0] = &v15;
      v13[1] = &v14;
      v13[2] = this;
    }

    v9 = *(this + 2);
    v16 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(v9, *(this + 8), a2, &v16))
    {
LABEL_9:
      v8 = *(this + 1);
      goto LABEL_10;
    }

    v10 = v16;
    v13[0] = v16;
    v11 = *(this + 6);
    v12 = *(this + 8);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(this + 7) > v12 >> 3)
    {
LABEL_6:
      *(this + 6) = v11 + 1;
      if (*v10 != -4096)
      {
        --*(this + 7);
      }

      *v10 = a2;
      mlir::OperationFingerPrint::OperationFingerPrint((v10 + 1), a3, 1);
      goto LABEL_9;
    }

    llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(this + 16, v12);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(*(this + 2), *(this + 8), a2, v13);
    v11 = *(this + 6);
    v10 = v13[0];
    goto LABEL_6;
  }

  return result;
}

mlir::OperationFingerPrint *anonymous namespace::IRPrinterInstrumentation::runAfterPass(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 == result)
  {
    return result;
  }

  result = this[1];
  if (*(result + 10))
  {
    return result;
  }

  if (*(result + 9) != 1)
  {
LABEL_23:
    v21 = &v20;
    v22 = &v19;
    v23 = this;
  }

  v8 = this[2];
  v9 = this[4].u32[0];
  if (v9)
  {
    v10 = (v9 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*&v8 + 32 * v10);
    if (v11 == a2)
    {
LABEL_6:
      v12 = *&v8 + 32 * v10;
      goto LABEL_12;
    }

    v13 = 1;
    while (v11 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v9 - 1);
      v11 = *(*&v8 + 32 * v10);
      if (v11 == a2)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = 0;
LABEL_12:
  v15 = *&v8 + 32 * v9;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  result = mlir::OperationFingerPrint::OperationFingerPrint(&v21, a3, 1);
  v18 = *(v16 + 8) == v21 && *(v16 + 16) == v22 && *(v16 + 24) == v23;
  *v16 = -8192;
  this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
  if (!v18)
  {
    result = this[1];
    goto LABEL_23;
  }

  return result;
}

__guard anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v17 = a3;
  v18 = a2;
  v6 = *(a2 + 1);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v6 != result)
  {
    v8 = this[1];
    if (v8[9] == 1)
    {
      v9 = this[4].i32[0];
      if (v9)
      {
        v10 = this[2];
        v11 = v9 - 1;
        v12 = (v9 - 1) & ((a2 >> 4) ^ (a2 >> 9));
        v13 = *(*&v10 + 32 * v12);
        if (v13 == a2)
        {
LABEL_5:
          *(*&v10 + 32 * v12) = -8192;
          this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
          v8 = this[1];
        }

        else
        {
          v14 = 1;
          while (v13 != -4096)
          {
            v15 = v12 + v14++;
            v12 = v15 & v11;
            v13 = *(*&v10 + 32 * v12);
            if (v13 == a2)
            {
              goto LABEL_5;
            }
          }
        }
      }
    }

    v16[0] = &v18;
    v16[1] = &v17;
    v16[2] = this;
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
      mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[144];
}

uint64_t llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>()
{
  {
    llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>();
    *algn_27FC19498 = v1;
  }

  return llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::OpToOpPassAdaptor]";
  v6 = 93;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>,mlir::Pass *,mlir::OperationFingerPrint,llvm::DenseMapInfo<mlir::Pass *,void>,llvm::detail::DenseMapPair<mlir::Pass *,mlir::OperationFingerPrint>>::LookupBucketFor<mlir::Pass *>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          *v31 = *v19;
          v22 = *(v19 + 24);
          *(v21 + 1) = *(v19 + 8);
          *(v21 + 6) = v22;
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

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runBeforePass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x19uLL)
  {
    qmemcpy(v5, "// -----// IR Dump Before ", 26);
    *(this + 4) += 26;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump Before ", 0x1AuLL);
  }

  v7 = (*(***a1 + 16))(**a1);
  v9 = llvm::raw_ostream::operator<<(v6, v7, v8);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 10272;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v14 = llvm::raw_ostream::operator<<(v10, v12, v13);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++*(v14 + 4);
  }

  v16 = *a1[1];
  v17 = v4[1];
  v18 = *(v17 + 8);
  v19 = *(v17 + 32);
  v20[0] = *(v17 + 16);
  v20[1] = v19;
  v20[2] = *(v17 + 48);
  printIR(v16, v18, this, v20);
}

void printIR(mlir::Operation *a1, char a2, llvm::raw_ostream *a3, const mlir::OpPrintingFlags *a4)
{
  v5 = a3;
  v7 = *(a3 + 4);
  v8 = *(a3 + 3) - v7;
  if (a2)
  {
    if (v8 > 2)
    {
      *(v7 + 2) = 39;
      *v7 = 10272;
      *(a3 + 4) += 3;
      v9 = a3;
    }

    else
    {
      v9 = llvm::raw_ostream::write(a3, " ('", 3uLL);
    }

    llvm::raw_ostream::operator<<(v9, *(*(*(a1 + 6) + 8) + 16), *(*(*(a1 + 6) + 8) + 24));
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 0xA)
    {
      *(v10 + 7) = 1852795252;
      *v10 = *"' operation";
      *(v9 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v9, "' operation", 0xBuLL);
    }

    Attr = mlir::Operation::getAttr(a1, "sym_name", 8uLL);
    if (Attr)
    {
      v13 = Attr;
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v14 = *(v5 + 4);
        if ((*(v5 + 3) - v14) > 2)
        {
          *(v14 + 2) = 64;
          *v14 = 8250;
          *(v5 + 4) += 3;
          v15 = v5;
        }

        else
        {
          v15 = llvm::raw_ostream::write(v5, ": @", 3uLL);
        }

        llvm::raw_ostream::operator<<(v15, *(v13 + 16), *(v13 + 24));
      }
    }

    v16 = *(v5 + 4);
    if (*(v5 + 3) - v16 > 0xCuLL)
    {
      qmemcpy(v16, ") //----- //\n", 13);
      *(v5 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v5, ") //----- //\n", 0xDuLL);
    }

    do
    {
      v11 = a1;
      v17 = *(a1 + 2);
      if (!v17)
      {
        break;
      }

      v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v18)
      {
        break;
      }

      a1 = *(v18 + 16);
    }

    while (a1);
  }

  else
  {
    if (v8 > 0xB)
    {
      *(v7 + 8) = 170864416;
      *v7 = *" //----- //\n";
      *(a3 + 4) += 12;
    }

    else
    {
      v5 = llvm::raw_ostream::write(a3, " //----- //\n", 0xCuLL);
    }

    if (*(a1 + 2))
    {
      *(a4 + 20) |= 0x20u;
    }

    v11 = a1;
  }

  mlir::Operation::print(v11, v5, a4);
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPass(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 0x18uLL)
  {
    qmemcpy(v5, "// -----// IR Dump After ", 25);
    *(this + 4) += 25;
    v6 = this;
  }

  else
  {
    v6 = llvm::raw_ostream::write(this, "// -----// IR Dump After ", 0x19uLL);
  }

  v7 = (*(***a1 + 16))(**a1);
  v9 = llvm::raw_ostream::operator<<(v6, v7, v8);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 10272;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, " (", 2uLL);
  }

  v12 = (*(***a1 + 32))(**a1);
  v14 = llvm::raw_ostream::operator<<(v10, v12, v13);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++*(v14 + 4);
  }

  v16 = *a1[1];
  v17 = v4[1];
  v18 = *(v17 + 8);
  v19 = *(v17 + 32);
  v20[0] = *(v17 + 16);
  v20[1] = v19;
  v20[2] = *(v17 + 48);
  printIR(v16, v18, this, v20);
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::IRPrinterInstrumentation::runAfterPassFailed(mlir::Pass *,mlir::Operation *)::$_0>(void **a1, llvm::raw_ostream *a2)
{
  v4 = a1[2];
  v5 = (*(***a1 + 16))(**a1);
  v7 = v6;
  v8 = (*(***a1 + 32))(**a1);
  *&v14 = "// -----// IR Dump After {0} Failed ({1})";
  *(&v14 + 1) = 41;
  *&v15 = v20;
  *(&v15 + 1) = 2;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = &unk_286E84750;
  v17 = v5;
  v18 = v7;
  v19[0] = &unk_286E84750;
  v19[1] = v8;
  v19[2] = v9;
  v20[0] = &v16 + 8;
  v20[1] = v19;
  llvm::formatv_object_base::format(&v14, a2);
  v10 = *a1[1];
  v11 = v4[1];
  v12 = *(v11 + 8);
  v13 = *(v11 + 32);
  v14 = *(v11 + 16);
  v15 = v13;
  v16 = *(v11 + 48);
  printIR(v10, v12, a2, &v14);
}

llvm::raw_ostream *llvm::format_provider<llvm::StringRef,void>::format(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v11 = 0;
    v12 = a3;
    v13 = a4;
    v6 = llvm::consumeUnsignedInteger(&v12, 0xA, &v11, a4);
    if (v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = -1;
  }

  if (*(a1 + 8) >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  return llvm::raw_ostream::operator<<(a2, *a1, v9);
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void anonymous namespace::BasicIRPrinterConfig::~BasicIRPrinterConfig(_anonymous_namespace_::BasicIRPrinterConfig *this)
{
  *this = &unk_286E84660;
  v1 = this + 64;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v1);
}

{
  *this = &unk_286E84660;
  v1 = this + 64;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v8 = *(a1 + 128);

      return a4(a5, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::BasicIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v8 = *(a1 + 128);

      return a4(a5, v8);
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void anonymous namespace::FileTreeIRPrinterConfig::~FileTreeIRPrinterConfig(_anonymous_namespace_::FileTreeIRPrinterConfig *this)
{
  *this = &unk_286E84690;
  MEMORY[0x25F891030](*(this + 19), 8);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 64);
}

{
  *this = &unk_286E84690;
  MEMORY[0x25F891030](*(this + 19), 8);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](this + 64);

  JUMPOUT(0x25F891040);
}

_BYTE **anonymous namespace::FileTreeIRPrinterConfig::printBeforeIfEnabled(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 88);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v13;
      }

      if (v16 >= 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = *(v14 + 8);
      }

      createTreePrinterOutputPath(&v22, a3, v12, v11, v17, v18, (v14 + 24));
      v21 = v22;
      if (v22)
      {
        a4(a5, *(v22 + 17));
        v21[24] = 1;
      }

      return std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](&v22, v19, v20);
    }
  }

  return result;
}

_BYTE **anonymous namespace::FileTreeIRPrinterConfig::printAfterIfEnabled(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  result = *(a1 + 120);
  if (result)
  {
    result = std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(result, a2, a3);
    if (result)
    {
      v12 = (*(*a2 + 32))(a2);
      v15 = *(a1 + 128);
      v14 = a1 + 128;
      v13 = v15;
      v16 = *(v14 + 23);
      if (v16 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v13;
      }

      if (v16 >= 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = *(v14 + 8);
      }

      createTreePrinterOutputPath(&v22, a3, v12, v11, v17, v18, (v14 + 24));
      v21 = v22;
      if (v22)
      {
        a4(a5, *(v22 + 17));
        v21[24] = 1;
      }

      return std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](&v22, v19, v20);
    }
  }

  return result;
}

uint64_t createTreePrinterOutputPath(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t *a7)
{
  v110[5] = *MEMORY[0x277D85DE8];
  v68[0] = a3;
  v68[1] = a4;
  v66 = a2;
  v67 = a2;
  v108 = v110;
  v109 = 0x100000000;
  v104 = v106;
  v105 = 0xC00000000;
  *v94 = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a7, &v67, v94);
  v11 = *v94;
  if (v10)
  {
    v12 = *(*v94 + 8) + 1;
  }

  else
  {
    v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a7, &v67, *v94);
    v12 = 0;
    *v11 = v67;
    *(v11 + 2) = -1;
  }

  *(v11 + 2) = v12;
  if (a2)
  {
    do
    {
      while (1)
      {
        v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::operator[](a7, &v66);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v104, *v13);
        Attr = mlir::Operation::getAttr(v66, "sym_name", 8uLL);
        if (Attr)
        {
          v15 = *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? Attr : 0;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(*(v66 + 48) + 8);
        v17 = *(v16 + 16);
        v61 = v15;
        if (v17)
        {
          v18 = *(v16 + 24);
          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v18 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v64) = *(v16 + 24);
          if (v18)
          {
            memmove(&__dst, v17, v18);
          }

          *(&__dst + v18) = 0;
          v21 = HIBYTE(v64);
          p_dst = __dst;
          v19 = v63;
        }

        else
        {
          v19 = 0;
          p_dst = 0;
          v21 = 0;
          __dst = 0;
          v63 = 0;
          v64 = 0;
        }

        v101[0] = 46;
        if ((v21 & 0x80u) != 0)
        {
          v21 = v19;
        }

        else
        {
          p_dst = &__dst;
        }

        *&v101[8] = 0;
        *&v101[16] = 0;
        *&v101[24] = p_dst;
        *&v101[32] = v21;
        *&v102 = v101;
        *(&v102 + 1) = 1;
        llvm::StringRef::split(&v101[24], v101, 1uLL, __sz);
        *&v101[8] = *__sz;
        *&v101[24] = *&__sz[16];
        __sz[0] = 46;
        memset(&__sz[8], 0, 32);
        *&v92 = __sz;
        *(&v92 + 1) = 1;
        llvm::StringRef::split(&__sz[24], __sz, 1uLL, v89);
        *&__sz[8] = *v89;
        *&__sz[24] = *&v89[16];
        v22 = v101[0];
        v94[0] = v101[0];
        *&v94[8] = *&v101[8];
        v95 = *&v101[24];
        v96 = v102;
        if (v102 == v101)
        {
          *&v96 = v94;
          *(&v96 + 1) = 1;
        }

        LOBYTE(v97) = __sz[0];
        v98 = *&__sz[8];
        v99 = *&__sz[24];
        v100 = v92;
        if (v92 == __sz)
        {
          *&v100 = &v97;
          *(&v100 + 1) = 1;
        }

        v73 = v101[0];
        v74 = *&v94[8];
        v75 = v95;
        v76 = v96;
        if (v96 == v94)
        {
          *&v76 = &v73;
          *(&v76 + 1) = 1;
        }

        v69 = __sz[0];
        v70 = v98;
        v71 = v99;
        v72 = v100;
        if (v100 == &v97)
        {
          *&v72 = &v69;
          *(&v72 + 1) = 1;
        }

        LOBYTE(__p) = v101[0];
        v82 = *&v94[8];
        v83 = v95;
        v84 = v76;
        if (v76 == &v73)
        {
          *&v84 = &__p;
          *(&v84 + 1) = 1;
        }

        v77 = __sz[0];
        v78 = v98;
        v79 = v99;
        v80 = v72;
        if (v72 == &v69)
        {
          *&v80 = &v77;
          *(&v80 + 1) = 1;
        }

        memset(&v65, 0, sizeof(v65));
        if (v82 != v78)
        {
          v89[0] = v101[0];
          *&v89[8] = *&v94[8];
          *&v89[24] = v95;
          v90 = v84;
          v23 = v84;
          if (v84 == &__p)
          {
            *&v90 = v89;
            *(&v90 + 1) = 1;
          }

          v85[0] = __sz[0];
          v86 = v98;
          v87 = v99;
          v88 = v80;
          if (v80 == &v77)
          {
            *&v88 = v85;
            *(&v88 + 1) = 1;
          }

          *&v101[8] = *&v94[8];
          *&v101[24] = v95;
          v102 = v90;
          if (v90 == v89)
          {
            *&v102 = v101;
            *(&v102 + 1) = 1;
          }

          *&__sz[8] = v98;
          *&__sz[24] = v99;
          v92 = v88;
          if (v88 == v85)
          {
            *&v92 = __sz;
            *(&v92 + 1) = 1;
          }

          v24 = -1;
          if (*&v101[8] != *&__sz[8])
          {
            do
            {
              llvm::StringRef::split(&v101[24], v102, *(&v102 + 1), v93);
              *&v101[8] = v93[0];
              *&v101[24] = v93[1];
              ++v24;
            }

            while (v93[0].n128_u64[0] != *&__sz[8]);
            v22 = __p;
            v23 = v84;
          }

          v101[0] = v22;
          *&v101[8] = v82;
          *&v101[24] = v83;
          v102 = v84;
          if (v23 == &__p)
          {
            *&v102 = v101;
            *(&v102 + 1) = 1;
          }

          while (*&v101[8] != v78)
          {
            v24 += *&v101[16];
            llvm::StringRef::split(&v101[24], v102, *(&v102 + 1), __sz);
            *&v101[8] = *__sz;
            *&v101[24] = *&__sz[16];
          }

          std::string::reserve(&v65, v24);
          while (1)
          {
            std::string::append(&v65, v82, *(&v82 + 1));
            llvm::StringRef::split(&v83, v84, *(&v84 + 1), v101);
            v82 = *v101;
            v83 = *&v101[16];
            if (*v101 == v78)
            {
              break;
            }

            std::string::append(&v65, "_", 1uLL);
          }
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(__dst);
        }

        if (v61)
        {
          v25 = *(v61 + 16);
          v26 = *(v61 + 24);
        }

        else
        {
          v25 = "no-symbol-name";
          v26 = 14;
        }

        *v94 = v25;
        *&v94[8] = v26;
        if (v109 >= HIDWORD(v109))
        {
          llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::growAndEmplaceBack<std::string&,llvm::StringRef>(&v108, &v65, v94);
        }

        else
        {
          v27 = &v108[5 * v109];
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v27, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
          }

          else
          {
            v28 = *&v65.__r_.__value_.__l.__data_;
            v27[2] = *(&v65.__r_.__value_.__l + 2);
            *v27 = v28;
          }

          *(v27 + 3) = *v94;
          LODWORD(v109) = v109 + 1;
        }

        v29 = *(v66 + 16);
        if (v29)
        {
          v29 = *(v29 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v29)
          {
            v29 = *(v29 + 16);
          }
        }

        v66 = v29;
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (!v29)
        {
          goto LABEL_72;
        }
      }

      operator delete(v65.__r_.__value_.__l.__data_);
    }

    while (v66);
  }

LABEL_72:
  v30 = v104;
  if (v105)
  {
    v31 = v104 + 4 * v105 - 4;
    if (v31 > v104)
    {
      v32 = &v104->__r_.__value_.__s.__data_[4];
      do
      {
        v33 = *(v32 - 1);
        *(v32 - 1) = *v31;
        *v31 = v33;
        v31 -= 4;
        v34 = v32 >= v31;
        v32 += 4;
      }

      while (!v34);
    }
  }

  v35 = v108;
  v36 = &v108[5 * v109 - 5];
  if (v109)
  {
    v37 = v36 > v108;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    do
    {
      v38 = v35[2];
      v39 = *v35;
      v40 = *(v36 + 16);
      *v35 = *v36;
      v35[2] = v40;
      *v36 = v39;
      *(v36 + 16) = v38;
      v41 = *(v35 + 3);
      *(v35 + 3) = *(v36 + 24);
      *(v36 + 24) = v41;
      v35 += 5;
      v36 -= 40;
    }

    while (v35 < v36);
    v30 = v104;
  }

  *v94 = "{0:$[_]}_{1}.mlir";
  *&v94[8] = 17;
  *&v94[16] = &v99;
  v95.n128_u64[0] = 2;
  v95.n128_u8[8] = 1;
  *&v96 = &unk_286E846C0;
  *(&v96 + 1) = v30;
  v97 = &v30[4 * v105];
  *&v98 = &unk_286E84720;
  *(&v98 + 1) = v68;
  *&v99 = &v96;
  *(&v99 + 1) = &v98;
  llvm::formatv_object_base::str(v94, __sz);
  v42 = &v101[16];
  *v101 = &v101[16];
  *&v101[8] = 0x100000000;
  v43 = v109;
  if (v109)
  {
    if (v109 == 1)
    {
      v44 = v108;
      v45 = v108 + 5;
    }

    else
    {
      *v94 = 0;
      v46 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v101, &v101[16], v109, 40, v94);
      llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(v101, v46);
      v47 = *v94;
      if (*v101 != &v101[16])
      {
        free(*v101);
      }

      *v101 = v46;
      *&v101[12] = v47;
      if (!v109)
      {
        goto LABEL_95;
      }

      v44 = v108;
      v45 = &v108[5 * v109];
      v42 = v46;
    }

    do
    {
      if (*(v44 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v42, *v44, v44[1]);
      }

      else
      {
        v48 = *v44;
        *(v42 + 2) = v44[2];
        *v42 = v48;
      }

      *(v42 + 24) = *(v44 + 3);
      v44 += 5;
      v42 += 40;
    }

    while (v44 != v45);
LABEL_95:
    *&v101[8] = v43;
  }

  if ((__sz[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v103, *__sz, *&__sz[8]);
    v50 = a6;
    v49 = a5;
    if ((__sz[23] & 0x80000000) != 0)
    {
      operator delete(*__sz);
    }
  }

  else
  {
    v103 = *__sz;
    v50 = a6;
    v49 = a5;
  }

  if (v104 != v106)
  {
    free(v104);
  }

  llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(&v108);
  *v94 = &v95;
  *&v94[8] = xmmword_25D0A05A0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(v94, v49, &v49[v50]);
  if (createDirectoryOrPrintErr(*v94, *&v94[8]))
  {
    if (!*&v101[8])
    {
LABEL_120:
      v107 = 260;
      v104 = &v103;
      *&__sz[32] = 257;
      *&v89[32] = 257;
      WORD4(v87) = 257;
      llvm::sys::path::append(v94, 0, &v104, __sz, v89, v85);
      v104 = 0;
      v105 = 0;
      v106[0] = 0;
      mlir::openOutputFile(*v94, *&v94[8]);
    }

    v51 = 40 * *&v101[8];
    v52 = *v101;
    while (1)
    {
      if (*(v52 + 23) >= 0)
      {
        v53 = *(v52 + 23);
      }

      else
      {
        v53 = v52[1];
      }

      std::string::basic_string[abi:nn200100](&__p, v53 + 1);
      if (v82 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v53)
      {
        if (*(v52 + 23) >= 0)
        {
          v55 = v52;
        }

        else
        {
          v55 = *v52;
        }

        memmove(p_p, v55, v53);
      }

      *&p_p[v53] = 95;
      v56 = v52[3];
      v57 = v52[4];
      v104 = &__p;
      v106[0] = v56;
      v106[1] = v57;
      v107 = 1284;
      *&__sz[32] = 257;
      *&v89[32] = 257;
      WORD4(v87) = 257;
      llvm::sys::path::append(v94, 0, &v104, __sz, v89, v85);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(__p);
      }

      if ((createDirectoryOrPrintErr(*v94, *&v94[8]) & 1) == 0)
      {
        break;
      }

      v52 += 5;
      v51 -= 40;
      if (!v51)
      {
        goto LABEL_120;
      }
    }
  }

  *a1 = 0;
  if (*v94 != &v95)
  {
    free(*v94);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  return llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(v101);
}