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
  v24 = 261;
  v23[0] = "sym_name";
  v23[1] = 8;
  v6 = mlir::StringAttr::get(Context, v23);
  v7 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + 32;
  v10 = *(v8 + 40);
  if (v10 != v8 + 32)
  {
    v11 = v6;
    do
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v13 = v12;
      v23[0] = v11;
      v14 = v11;
      if (*(v12 + 47))
      {
        AttrData = mlir::OpaqueAttr::getAttrData(v23);
        v17 = v16;
        v25.var0 = AttrData;
        v25.var1 = v17;
        InherentAttr = mlir::Operation::getInherentAttr(v13, v25);
        if (v19)
        {
          goto LABEL_11;
        }

        v14 = v23[0];
      }

      InherentAttr = mlir::DictionaryAttr::get(v13 + 56, v14);
LABEL_11:
      if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v21 = InherentAttr;
        v22 = v13;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(v4, &v21, &v22, v23);
      }

      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }

  return this;
}

int32x2_t mlir::SymbolTable::remove(int32x2_t *this, mlir::Operation *a2)
{
  if (!*(a2 + 47) || (v15.var0 = "sym_name", v15.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v15), (v6 & 1) == 0))
  {
    v16.var0 = "sym_name";
    v16.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v16);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v7 = InherentAttr;
    }

    else
    {
      v7 = 0;
    }

    v8 = this[3].u32[0];
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v8 = this[3].u32[0];
    if (!v8)
    {
      return result;
    }
  }

  v9 = this[1];
  v10 = ((v7 >> 4) ^ (v7 >> 9)) & (v8 - 1);
  v11 = *(*&v9 + 16 * v10);
  if (v11 == v7)
  {
LABEL_12:
    if (v10 != v8)
    {
      v12 = *&v9 + 16 * v10;
      if (*(v12 + 8) == a2)
      {
        *v12 = -8192;
        result = vadd_s32(this[2], 0x1FFFFFFFFLL);
        this[2] = result;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v11 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v8 - 1);
      v11 = *(*&v9 + 16 * v10);
      if (v11 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void mlir::SymbolTable::erase(int32x2_t *this, mlir::Operation *a2)
{
  mlir::SymbolTable::remove(this, a2);

  mlir::Operation::erase(a2, v3);
}

std::string::size_type mlir::SymbolTable::insert(uint64_t a1, std::string::size_type a2, uint64_t *a3)
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
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        {
          v48 = v11;
          mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
          v11 = v48;
        }

        if ((*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v10 = *v9;
        }
      }
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v9, a2);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v12 = *v10;
    *v13 = *v10;
    v13[1] = v10;
    *(v12 + 8) = v13;
    *v10 = v13;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    if (!*(a2 + 47))
    {
      goto LABEL_17;
    }

LABEL_16:
    v60.var0 = "sym_name";
    v60.var1 = 8;
    InherentAttr = mlir::Operation::getInherentAttr(a2, v60);
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
  v61.var0 = "sym_name";
  v61.var1 = 8;
  InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v61);
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
  v58 = xmmword_1E0971D70;
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
  if (!*(a2 + 47) || (v62.var0 = "sym_name", v62.var1 = 8, v44 = mlir::Operation::getInherentAttr(a2, v62), (v45 & 1) == 0))
  {
    v63.var0 = "sym_name";
    v63.var1 = 8;
    v44 = mlir::DictionaryAttr::get((a2 + 56), v63);
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
  if (!*(this + 47) || (v5.var0 = "sym_name", v5.var1 = 8, result = mlir::Operation::getInherentAttr(this, v5), (v4 & 1) == 0))
  {
    v6.var0 = "sym_name";
    v6.var1 = 8;
    result = mlir::DictionaryAttr::get((this + 56), v6);
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
  v25 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v18 = mlir::SymbolRefAttr::get(a2);
  collectSymbolScopes(&v20, a1, a3);
  v5 = v20;
  if (v21)
  {
    v17 = *v20;
    NewRefAttr = generateNewRefAttr(v17, v18);
    v15 = 0;
    v13 = 0u;
    *v14 = 0u;
    *v11 = 0u;
    *__p = 0u;
    v6 = operator new(0x28uLL);
    *v6 = &unk_1F5AF8318;
    v6[1] = &v17;
    v6[2] = &NewRefAttr;
    v6[3] = &v19;
    v6[4] = &v18;
    v24 = v6;
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(v11, v23);
    if (v24 == v23)
    {
      (*(*v24 + 32))(v24);
      v23[0] = v11;
      v9 = v5[1];
      v8 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((v9 & 4) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 40))(v24);
      }

      v23[0] = v11;
      v7 = v5[1];
      v8 = v7 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }
    }

    if (v8)
    {
      walkSymbolTable(v8, 1, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult replaceAllSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::StringAttr,mlir::Operation *)::{lambda(mlir::Operation *)#1}>, v23);
      goto LABEL_11;
    }

LABEL_10:
    walkSymbolTable(v8, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult replaceAllSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::StringAttr,mlir::Operation *)::{lambda(mlir::Operation *)#1}>, v23);
LABEL_11:
    llvm::deallocate_buffer(v14[0], (16 * v15));
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  return 1;
}

uint64_t mlir::SymbolTable::getSymbolVisibility(mlir::SymbolTable *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (v12.var0 = "sym_visibility", v12.var1 = 14, result = mlir::Operation::getInherentAttr(this, v12), (v4 & 1) == 0))
  {
    v13.var0 = "sym_visibility";
    v13.var1 = 14;
    result = mlir::DictionaryAttr::get((this + 56), v13);
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
  v13[9] = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (*(a1 + 47) && (AttrData = mlir::OpaqueAttr::getAttrData(&v11), v5 = v4, v14.var0 = AttrData, v14.var1 = v5, InherentAttr = mlir::Operation::getInherentAttr(a1, v14), (v7 & 1) != 0))
  {
    v8 = InherentAttr;
    mlir::Operation::setInherentAttr(a1, v11, 0);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v12, *(a1 + 56));
    v8 = mlir::NamedAttrList::erase(v12, v11);
    if (v8)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v12, Context);
    }

    if (v12[0] != v13)
    {
      free(v12[0]);
    }
  }

  return v8;
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

uint64_t mlir::SymbolTable::walkSymbolTables(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  {
    mlir::SymbolTable::walkSymbolTables();
  }

  result = (*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id);
  v8 = result;
  if (!result)
  {
    v11 = 1;
    v12 = *(a1 + 44);
    v13 = v12 & 0x7FFFFF;
    if ((v12 & 0x7FFFFF) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    goto LABEL_15;
  }

  if (*(a1 + 47) && (v24.var0 = "sym_name", v24.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a1, v24), (v10 & 1) != 0))
  {
    if (!InherentAttr)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25.var0 = "sym_name";
    v25.var1 = 8;
    if (!mlir::DictionaryAttr::contains((a1 + 56), v25))
    {
      goto LABEL_15;
    }
  }

  InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (a1)
  {
    result = (*(InterfaceFor + 32))();
    v11 = result | a2;
    v12 = *(a1 + 44);
    v13 = v12 & 0x7FFFFF;
    if ((v12 & 0x7FFFFF) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = 1;
  v11 = a2 | 1u;
  v12 = *(a1 + 44);
  v13 = v12 & 0x7FFFFF;
  if ((v12 & 0x7FFFFF) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v15 = ((a1 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  v16 = v15 + 24 * v13;
  i = *(v15 + 8);
  if (i != v15)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v15 += 24;
    if (v15 == v16)
    {
      break;
    }

    for (i = *(v15 + 8); i != v15; i = *(i + 8))
    {
LABEL_19:
      v18 = i - 8;
      if (!i)
      {
        v18 = 0;
      }

      v19 = v18 + 32;
      v20 = *(v18 + 40);
      if (v20 != v18 + 32)
      {
        do
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          result = mlir::SymbolTable::walkSymbolTables(v21, v11, a3, a4);
          v20 = *(v20 + 8);
        }

        while (v20 != v19);
      }
    }
  }

LABEL_25:
  if (v8)
  {

    return a3(a4, a1, v11);
  }

  return result;
}

mlir::Operation *mlir::SymbolTable::lookupSymbolIn(unsigned int *a1, uint64_t a2)
{
  v2 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v2 != v2)
  {
    Context = mlir::Attribute::getContext((a1 + 6));
    v22 = 261;
    v21[0] = "sym_name";
    v21[1] = 8;
    v5 = mlir::StringAttr::get(Context, v21);
    v6 = v2[1];
    v7 = v6 ? v6 - 8 : 0;
    v8 = v7 + 32;
    v9 = *(v7 + 40);
    if (v9 != v7 + 32)
    {
      v10 = v5;
      do
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v12 = v11;
        v21[0] = v10;
        v13 = v10;
        if (*(v11 + 47))
        {
          AttrData = mlir::OpaqueAttr::getAttrData(v21);
          v16 = v15;
          v23.var0 = AttrData;
          v23.var1 = v16;
          InherentAttr = mlir::Operation::getInherentAttr(v12, v23);
          if (v18)
          {
            goto LABEL_13;
          }

          v13 = v21[0];
        }

        InherentAttr = mlir::DictionaryAttr::get(v12 + 56, v13);
LABEL_13:
        if (InherentAttr)
        {
          if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v19 = InherentAttr;
          }

          else
          {
            v19 = 0;
          }

          if (v19 == a2)
          {
            return v12;
          }
        }

        else if (!a2)
        {
          return v12;
        }

        v9 = *(v9 + 8);
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

BOOL mlir::detail::verifySymbolTable(mlir::Block **this, mlir::Operation *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) == 1)
  {
    v4 = ((&this[2 * ((v3 >> 23) & 1) + 8] + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = *(v4 + 8);
    if (v5 != v4 && *(v5 + 8) == v4)
    {
      v72 = 0;
      v71[0] = 0;
      v71[1] = 0;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v31 = i - 8;
        if (!i)
        {
          v31 = 0;
        }

        v32 = v31 + 32;
        for (j = *(v31 + 40); j != v32; j = *(j + 8))
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          v35 = v34;
          if (!*(v34 + 47) || (v92.var0 = "sym_name", v92.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(v34, v92), (v37 & 1) == 0))
          {
            v93.var0 = "sym_name";
            v93.var1 = 8;
            InherentAttr = mlir::DictionaryAttr::get((v35 + 7), v93);
          }

          if (InherentAttr)
          {
            v38 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
            v70 = v38;
            if (v38)
            {
              v78 = v35[3];
              llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(v71, &v70, &v78, &v68);
              if ((v69 & 1) == 0)
              {
                v74 = 257;
                mlir::Operation::emitError(v35, v73, &v78);
                v67[0] = mlir::OpaqueAttr::getAttrData(&v70);
                v67[1] = v39;
                if (v78)
                {
                  mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(&v79, "redefinition of symbol named '", v67, "'");
                }

                v40 = mlir::Diagnostic::attachNote(&v79, *(v68 + 8), 1);
                v41 = *(v40 + 16);
                v75 = 3;
                v76 = "see existing symbol definition here";
                v77 = 35;
                v42 = *(v40 + 24);
                v43 = &v75;
                if (v42 >= *(v40 + 28))
                {
                  if (v41 <= &v75 && v41 + 24 * v42 > &v75)
                  {
                    v65 = &v75 - v41;
                    v66 = v40;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v40 + 16, (v40 + 32), v42 + 1, 24);
                    v40 = v66;
                    v41 = *(v66 + 16);
                    v43 = &v65[v41];
                  }

                  else
                  {
                    v62 = v40;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v40 + 16, (v40 + 32), v42 + 1, 24);
                    v40 = v62;
                    v41 = *(v62 + 16);
                    v43 = &v75;
                  }
                }

                v44 = v41 + 24 * *(v40 + 24);
                v45 = *v43;
                *(v44 + 16) = *(v43 + 2);
                *v44 = v45;
                ++*(v40 + 24);
                getEnumTag for MPSGraphDelegateKernelError();
                if (v78)
                {
                  mlir::InFlightDiagnostic::report(&v78);
                }

                if (v90 == 1)
                {
                  if (v89 != &v90)
                  {
                    free(v89);
                  }

                  v46 = __p;
                  if (__p)
                  {
                    v47 = v88;
                    v48 = __p;
                    if (v88 != __p)
                    {
                      do
                      {
                        v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
                      }

                      while (v47 != v46);
                      v48 = __p;
                    }

                    v88 = v46;
                    operator delete(v48);
                  }

                  v49 = v85;
                  if (v85)
                  {
                    v50 = v86;
                    v51 = v85;
                    if (v86 != v85)
                    {
                      do
                      {
                        v53 = *--v50;
                        v52 = v53;
                        *v50 = 0;
                        if (v53)
                        {
                          operator delete[](v52);
                        }
                      }

                      while (v50 != v49);
                      v51 = v85;
                    }

                    v86 = v49;
                    operator delete(v51);
                  }

                  if (v81 != v84)
                  {
                    free(v81);
                  }
                }

                llvm::deallocate_buffer(v71[0], (16 * v72));
              }
            }
          }
        }
      }

      v78 = 0;
      v79 = 0;
      v80 = 0;
      v73[0] = &v78;
      v54 = *(this + 11);
      v55 = v54 & 0x7FFFFF;
      if ((v54 & 0x7FFFFF) != 0)
      {
        v56 = ((&this[2 * ((v54 >> 23) & 1) + 8] + ((v54 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }

      walkSymbolTable(v56, v55, llvm::function_ref<std::optional<mlir::WalkResult> ()(mlir::Operation *)>::callback_fn<mlir::detail::verifySymbolTable(mlir::Operation *)::$_0>, v73);
      v57 = v78;
      if (v80)
      {
        v58 = (v78 + 8);
        v59 = 16 * v80;
        do
        {
          if ((*(v58 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v60 = *v58;
            *v58 = 0;
            if (v60)
            {
              llvm::deallocate_buffer(*(v60 + 8), (16 * *(v60 + 24)));
            }
          }

          v58 += 2;
          v59 -= 16;
        }

        while (v59);
        v57 = v78;
        v61 = (16 * v80);
      }

      else
      {
        v61 = 0;
      }

      llvm::deallocate_buffer(v57, v61);
    }

    v74 = 257;
    mlir::Operation::emitOpError(this, v73, &v78);
    if (v78)
    {
      v75 = 3;
      v76 = "Operations with a 'SymbolTable' must have exactly one block";
      v77 = 59;
      v6 = &v75;
      v7 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v75 && v81 + 24 * v82 > &v75)
        {
          v64 = &v75 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v7 = v81;
          v6 = (v81 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v6 = &v75;
          v7 = v81;
        }
      }

      v8 = &v7[24 * v82];
      v9 = *v6;
      *(v8 + 2) = *(v6 + 2);
      *v8 = v9;
      ++v82;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v90 == 1)
    {
      if (v89 != &v90)
      {
        free(v89);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v88;
        v13 = __p;
        if (v88 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v88 = v11;
        operator delete(v13);
      }

      v14 = v85;
      if (!v85)
      {
        goto LABEL_44;
      }

      v15 = v86;
      v16 = v85;
      if (v86 == v85)
      {
LABEL_43:
        v86 = v14;
        operator delete(v16);
LABEL_44:
        if (v81 != v84)
        {
          free(v81);
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
          operator delete[](v17);
        }
      }

      while (v15 != v14);
LABEL_42:
      v16 = v85;
      goto LABEL_43;
    }
  }

  else
  {
    v74 = 257;
    mlir::Operation::emitOpError(this, v73, &v78);
    if (v78)
    {
      v75 = 3;
      v76 = "Operations with a 'SymbolTable' must have exactly one region";
      v77 = 60;
      v19 = &v75;
      v20 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v75 && v81 + 24 * v82 > &v75)
        {
          v63 = &v75 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v20 = v81;
          v19 = (v81 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v19 = &v75;
          v20 = v81;
        }
      }

      v21 = &v20[24 * v82];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v82;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v90 == 1)
    {
      if (v89 != &v90)
      {
        free(v89);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v88;
        v25 = __p;
        if (v88 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v88 = v23;
        operator delete(v25);
      }

      v14 = v85;
      if (!v85)
      {
        goto LABEL_44;
      }

      v26 = v86;
      v16 = v85;
      if (v86 == v85)
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
          operator delete[](v27);
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
    v16[-1] = vaddq_s64(v18, xmmword_1E0971D90);
    *v16 = vaddq_s64(v18, xmmword_1E0979E80);
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
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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
  if (!*(this + 47) || (v88.var0 = "sym_name", v88.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(this, v88), (v4 & 1) == 0))
  {
    v89.var0 = "sym_name";
    v89.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v89);
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
          operator delete[](v20);
        }
      }

      while (v18 != v17);
LABEL_92:
      v19 = v81;
      goto LABEL_93;
    }

    return v13;
  }

  if (!*(this + 47) || (v90.var0 = "sym_visibility", v90.var1 = 14, v22 = mlir::Operation::getInherentAttr(this, v90), (v23 & 1) == 0))
  {
    v91.var0 = "sym_visibility";
    v91.var1 = 14;
    v22 = mlir::DictionaryAttr::get((this + 56), v91);
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
          operator delete[](v48);
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
        operator delete[](v59);
      }
    }

    while (v58 != v17);
    goto LABEL_92;
  }

  return v13;
}

double mlir::SymbolTable::getSymbolUses@<D0>(mlir::SymbolTable *this@<X0>, uint64_t a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v5 = __p;
  if ((walkSymbolUses(this, llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>, &v5) & 0x100000000) != 0)
  {
    result = *__p;
    *a2 = *__p;
    *(a2 + 16) = v7;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    v4 = __p[0];
    *(a2 + 24) = 0;
    if (v4)
    {
      __p[1] = v4;
      operator delete(v4);
    }
  }

  return result;
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

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(mlir::SymbolTableCollection *a1, mlir::Operation *a2, uint64_t a3)
{
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(a1, a2);
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

uint64_t mlir::SymbolTableCollection::getSymbolTable(mlir::SymbolTableCollection *this, mlir::Operation *a2)
{
  v8 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::try_emplace<decltype(nullptr)>(this, &v8, &v6);
  if (v7 == 1)
  {
    v2 = operator new(0x28uLL);
    v3 = mlir::SymbolTable::SymbolTable(v2, v8);
    v4 = *(v6 + 8);
    *(v6 + 8) = v3;
    if (v4)
    {
      llvm::deallocate_buffer(*(v4 + 8), (16 * *(v4 + 24)));
    }
  }

  return *(v6 + 8);
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v8;
  v7 = 0x400000000;
  if (lookupSymbolInImpl(a2, a3, &v6, llvm::function_ref<mlir::Operation * ()(mlir::Operation *,mlir::StringAttr)>::callback_fn<mlir::SymbolTableCollection::lookupSymbolIn(mlir::Operation *,mlir::SymbolRefAttr,llvm::SmallVectorImpl<mlir::Operation *> &)::$_0>, &v5))
  {
    v3 = *(v6 + v7 - 1);
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v6 != v8)
  {
LABEL_5:
    free(v6);
  }

  return v3;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
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
  v11[0] = xmmword_1E86D2C48;
  v11[1] = *&off_1E86D2C58;
  v12 = xmmword_1E86D2C68;
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[249];
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[235];
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
  v13 = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v8[1] = a3;
  v7 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11[0] = &unk_1F5AF8278;
  v11[1] = v8;
  v11[2] = &v7;
  v12 = v11;
  *(&v9[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v9, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  mlir::AttrTypeWalker::walkImpl(v9, AttrDictionary, 0);
  mlir::AttrTypeWalker::~AttrTypeWalker(v9, v4, v5, v6);
}

uint64_t std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 4 > v5)
  {
    v5 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 32 * v4;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v11 + 24) = 0;
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * v4;
    if (v2 == v3)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (v9 >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v10 = operator new(32 * v9);
  v11 = &v10[32 * v4];
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v12 == a2)
  {
    *(v11 + 24) = v11;
    (*(*v12 + 24))(v12, v11);
    v2 = *a1;
    v3 = *(a1 + 8);
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * ((v3 - *a1) >> 5);
    if (*a1 == v3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(v11 + 24) = v12;
    *(a2 + 24) = 0;
    v13 = &v10[32 * v9];
    v14 = v11 + 32;
    v15 = v11 - 32 * v4;
    if (v2 == v3)
    {
      goto LABEL_31;
    }
  }

LABEL_17:
  v16 = v2;
  v17 = v15;
  do
  {
    v18 = v16[3];
    if (v18)
    {
      if (v16 == v18)
      {
        *(v17 + 24) = v17;
        (*(*v16[3] + 24))(v16[3], v17);
      }

      else
      {
        *(v17 + 24) = v18;
        v16[3] = 0;
      }
    }

    else
    {
      *(v17 + 24) = 0;
    }

    v16 += 4;
    v17 += 32;
  }

  while (v16 != v3);
  v19 = v2;
  do
  {
    v20 = v2[3];
    if (v2 == v20)
    {
      (*(*v20 + 32))(v20);
    }

    else if (v20)
    {
      (*(*v20 + 40))(v20);
    }

    v2 += 4;
    v19 += 4;
  }

  while (v2 != v3);
  v2 = *a1;
LABEL_31:
  *a1 = v15;
  *(a1 + 8) = v14;
  *(a1 + 16) = v13;
  if (v2)
  {
    operator delete(v2);
  }

  return v14;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5AF8278;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZL14walkSymbolRefsPNS2_9OperationEN4llvm12function_refIFNS2_10WalkResultENS2_11SymbolTable9SymbolUseEEEEE3__0NS2_13SymbolRefAttrENS2_9AttributeES9_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFS9_SG_EE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF8278;
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = (v8 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
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
      if (v11 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v12 = a2;
      v13 = a3;
      v14 = operator new(16 * v11);
      a3 = v13;
      a2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[16 * (v8 >> 4)];
    *v15 = a2;
    *(v15 + 1) = a3;
    v6 = v15 + 16;
    memcpy(v14, v7, v8);
    *v3 = v14;
    *(v3 + 8) = v6;
    *(v3 + 16) = &v14[16 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v6 = v5 + 2;
  }

  *(v3 + 8) = v6;
  return 1;
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

void collectSymbolScopes(mlir::Operation *a1, mlir::Block **this, unint64_t a3)
{
  v84[1] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v85.var0 = "sym_name", v85.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(this, v85), (v7 & 1) == 0))
  {
    v86.var0 = "sym_name";
    v86.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((this + 7), v86);
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

  v74 = v78;
  v75 = v78;
  v76 = 4;
  v77 = 0;
  v79 = v81;
  v80 = 0x400000000;
  ParentOp = a3;
  while (ParentOp != this)
  {
    if (v75 != v74)
    {
      goto LABEL_12;
    }

    v13 = HIDWORD(v76);
    if (HIDWORD(v76))
    {
      v14 = 8 * HIDWORD(v76);
      v15 = v74;
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
    if (HIDWORD(v76) < v76)
    {
      ++HIDWORD(v76);
      v74[v13] = ParentOp;
      v11 = v80;
      if (v80 >= HIDWORD(v80))
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_12:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v74, ParentOp);
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = v80;
      if (v80 >= HIDWORD(v80))
      {
LABEL_24:
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v11 + 1, 8);
        v11 = v80;
      }
    }

    *(v79 + v11) = ParentOp;
    LODWORD(v80) = v80 + 1;
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

    v68 = a3;
    v16 = this[2];
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
      v22 = v74;
      v23 = v75;
      if (v75 != v74)
      {
        break;
      }

      v26 = HIDWORD(v76);
      if (!HIDWORD(v76))
      {
LABEL_46:
        v24 = &v75[HIDWORD(v76)];
        v25 = v75;
LABEL_47:
        if (v25 == v23)
        {
          v30 = v26;
        }

        else
        {
          v30 = v76;
        }

        if (v24 != &v25[v30])
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      v29 = 8 * HIDWORD(v76);
      while (*v22 != v17)
      {
        v22 += 8;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_46;
        }
      }

      if (v22 != &v75[HIDWORD(v76)])
      {
        goto LABEL_57;
      }

LABEL_51:
      v31 = *(v17 + 16);
      if (!v31)
      {
        v17 = 0;
LABEL_57:
        v71 = v73;
        v72 = 0x200000001;
        Context = mlir::Attribute::getContext((this + 3));
        v33 = mlir::SymbolRefAttr::get(v8);
        v73[0] = v33;
        v34 = this[2];
        if (v34)
        {
          v35 = mlir::Block::getParentOp(v34);
          if (v35 != v17)
          {
            goto LABEL_59;
          }

LABEL_91:
          v58 = a3;
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
        v82 = v84;
        v84[0] = v33;
        v83 = 0x100000001;
        v70 = 261;
        v69[0] = "sym_name";
        v69[1] = 8;
        v36 = mlir::StringAttr::get(Context, v69);
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
            v56 = 0;
            v57 = v82;
            if (v82 == v84)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          v69[0] = v36;
          v37 = v36;
          if (*(v35 + 47))
          {
            AttrData = mlir::OpaqueAttr::getAttrData(v69);
            v40 = v39;
            v87.var0 = AttrData;
            v87.var1 = v40;
            v41 = mlir::Operation::getInherentAttr(v35, v87);
            if ((v42 & 1) == 0)
            {
              v37 = v69[0];
              goto LABEL_66;
            }
          }

          else
          {
LABEL_66:
            v41 = mlir::DictionaryAttr::get(v35 + 56, v37);
          }

          v43 = v41;
          if (!v41 || *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            goto LABEL_85;
          }

          v44 = mlir::SymbolRefAttr::get(v41, v82, v83);
          v45 = v72;
          if (v72 >= HIDWORD(v72))
          {
            v55 = v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
            v44 = v55;
            v45 = v72;
          }

          *(v71 + v45) = v44;
          LODWORD(v72) = v72 + 1;
          v46 = *(v35 + 16);
          if (v46)
          {
            v35 = mlir::Block::getParentOp(v46);
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
              v56 = 1;
              v57 = v82;
              if (v82 == v84)
              {
LABEL_87:
                v58 = v68;
                if (v17 != v68)
                {
                  if ((v56 & 1) == 0)
                  {
                    *a1 = a1 + 16;
                    *(a1 + 1) = 0x200000000;
                    goto LABEL_102;
                  }

LABEL_92:
                  *(a1 + 2) = *(v71 + v72 - 1);
                  *a1 = a1 + 16;
                  *(a1 + 3) = v58 & 0xFFFFFFFFFFFFFFFBLL;
                  *(a1 + 1) = 0x200000001;
LABEL_102:
                  if (v71 != v73)
                  {
                    free(v71);
                  }

                  v21 = v79;
                  if (v79 != v81)
                  {
LABEL_105:
                    free(v21);
                  }

                  goto LABEL_106;
                }

LABEL_93:
                *a1 = a1 + 16;
                *(a1 + 1) = 0x200000000;
                v59 = this[2];
                if (v59)
                {
                  v59 = mlir::Block::getParentOp(v59);
                }

                if (v72)
                {
                  v60 = 0;
                  v61 = 8 * v72;
                  do
                  {
                    v62 = *(v71 + v60);
                    v63 = *(v59 + 40);
                    v64 = *(v59 + 44);
                    v65 = *(a1 + 2);
                    if (v65 >= *(a1 + 3))
                    {
                      v67 = v59;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v65 + 1, 16);
                      v59 = v67;
                      v65 = *(a1 + 2);
                    }

                    v66 = (*a1 + 16 * v65);
                    *v66 = v62;
                    v66[1] = (((v59 + 16 * ((v64 >> 23) & 1) + ((v64 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v63) | 4;
                    ++*(a1 + 2);
                    v59 = *(v59 + 16);
                    if (v59)
                    {
                      v59 = mlir::Block::getParentOp(v59);
                    }

                    v60 += 8;
                  }

                  while (v61 != v60);
                }

                goto LABEL_102;
              }

LABEL_86:
              free(v57);
              goto LABEL_87;
            }
          }

          v47 = v82;
          v48 = mlir::SymbolRefAttr::get(v43);
          v49 = v82;
          v50 = v83;
          if (&v82[2 * v83] == v47)
          {
            if (v83 >= HIDWORD(v83))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
              v50 = v83;
              v49 = v82;
            }

            *&v49[8 * v50] = v48;
            LODWORD(v83) = v83 + 1;
            {
              continue;
            }
          }

          else
          {
            if (v83 >= HIDWORD(v83))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v83 + 1, 8);
              v51 = v82;
              v50 = v83;
            }

            else
            {
              v51 = v82;
            }

            v52 = (v51 + v47 - v49);
            *&v51[2 * v50] = *&v51[2 * v50 - 2];
            v53 = v83;
            v54 = &v82[2 * v83 - 2];
            if (v54 != v52)
            {
              memmove(v52 + 1, v52, v54 - v52);
              v53 = v83;
            }

            LODWORD(v83) = v53 + 1;
            *v52 = v48;
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

    v24 = llvm::SmallPtrSetImplBase::doFind(&v74, v17);
    v23 = v74;
    v25 = v75;
    v26 = HIDWORD(v76);
    if (!v24)
    {
      v27 = v76;
      if (v75 == v74)
      {
        v27 = HIDWORD(v76);
        v28 = HIDWORD(v76);
      }

      else
      {
        v28 = v76;
      }

      if (&v75[v27] != &v75[v28])
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
  v20 = this[2];
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
    v21 = v79;
    if (v79 != v81)
    {
      goto LABEL_105;
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 1) = 0x200000000;
    v21 = v79;
    if (v79 != v81)
    {
      goto LABEL_105;
    }
  }

LABEL_106:
  if (v75 != v74)
  {
    free(v75);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::SymbolTable::SymbolUse)>::callback_fn<std::optional<mlir::WalkResult> anonymous namespace::SymbolScope::walk<std::optional<mlir::SymbolTable::UseRange> getSymbolUsesImpl<mlir::Operation *,mlir::Operation>(mlir::Operation *,mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1},(void *)0>(mlir::Operation *)::{lambda(mlir::SymbolTable::SymbolUse)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (isReferencePrefixOf(**a1, a3))
  {
    v6 = *(a1 + 8);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v8 >= v7)
    {
      v10 = *v6;
      v11 = v8 - *v6;
      v12 = (v11 >> 4) + 1;
      if (v12 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 >> 60)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v15 = operator new(16 * v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = &v15[16 * (v11 >> 4)];
      *v16 = a2;
      *(v16 + 1) = a3;
      v9 = v16 + 16;
      memcpy(v15, v10, v11);
      *v6 = v15;
      *(v6 + 8) = v9;
      *(v6 + 16) = &v15[16 * v14];
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = a2;
      v8[1] = a3;
      v9 = v8 + 2;
    }

    *(v6 + 8) = v9;
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
      mlir::SymbolTable::walkSymbolTables();
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

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5AF8318;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL24replaceAllSymbolUsesImplIPNS2_9OperationES9_EN4llvm13LogicalResultET_NS2_10StringAttrEPT0_EUlNS2_13SymbolRefAttrEE_SH_NS2_9AttributeENS_4pairISJ_NS2_10WalkResultEEEEENS_9enable_ifIXoontsr3stdE9is_same_vISF_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINSK_ISO_SL_EEEEEEvE4typeEOSD_EUlSJ_E_NS_9allocatorISW_EEFNSQ_ISM_EESJ_EE7__cloneEPNS0_6__baseIS10_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF8318;
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
    v11 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(a1, v4, &v11[v4], v10);

    llvm::deallocate_buffer(v4, v11);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v12 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v16 = &result[2 * v15];
      v17 = result + 2;
      v18 = v15;
      do
      {
        *(v17 - 2) = -4096;
        *v17 = -4096;
        v17 += 4;
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

    v19 = &result[2 * v12];
    do
    {
      *v16 = -4096;
      v16 += 2;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v10 = &v6[2 * v9];
      v11 = v6 + 2;
      v12 = v9;
      do
      {
        *(v11 - 2) = -4096;
        *v11 = -4096;
        v11 += 4;
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

    v13 = &v6[2 * v5];
    do
    {
      *v10 = -4096;
      v10 += 2;
    }

    while (v10 != v13);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(result + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*result + 16 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v21 = 0;
          v22 = 1;
          while (v18 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v18 == -8192;
            }

            if (v23)
            {
              v21 = v17;
            }

            v24 = v16 + v22++;
            v16 = v24 & v15;
            v17 = (*result + 16 * (v24 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v17 = v21;
          }
        }

LABEL_15:
        v19 = v4[1];
        v4[1] = 0;
        *v17 = v14;
        v17[1] = v19;
        ++*(result + 8);
        v20 = v4[1];
        v4[1] = 0;
        if (v20)
        {
          llvm::deallocate_buffer(*(v20 + 8), (16 * *(v20 + 24)));
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
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
    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v6);
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(CallableForCallee);
    v4 = result;
    v7[0] = result;
    v7[1] = v5;
    if (result)
    {
      result = mlir::ElementsAttr::isSplat(v7);
    }

    if (!v4)
    {
      return CallableForCallee;
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
      if (!mlir::CallOpInterface::getArgOperands(v17) || !mlir::CallOpInterface::getArgOperands(v16))
      {
        return 1;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v17);
      v8 = v7;
      v9 = mlir::CallableOpInterface::getArgAttrsAttr(v16);
      if (v8 == v10)
      {
        if (v8)
        {
          for (i = 8 * v8 - 8; ; i -= 8)
          {
            v13 = i;
            if (*ArgAttrsAttr != 0x8000000000000000 && *v9 != 0x8000000000000000 && *ArgAttrsAttr != *v9)
            {
              break;
            }

            ++ArgAttrsAttr;
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
      if (mlir::CallOpInterface::getArgOperands(v73))
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

      while ((mlir::CallOpInterface::getArgOperands(v73) & 1) == 0);
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

      while ((mlir::CallOpInterface::getArgOperands(v73) & 1) == 0);
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

  mlir::CallableOpInterface::getArgAttrsAttr(v75);
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
          mlir::CallableOpInterface::getArgAttrsAttr(&v72);
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
            mlir::CallableOpInterface::getArgAttrsAttr(&v72);
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
            for (*v53 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v72) + 8 * v40); v46 != v43; v46 = (v46 + 16))
            {
              v72 = *v46;
              mlir::CallableOpInterface::getArgAttrsAttr(&v72);
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
    mlir::CallableOpInterface::getArgAttrsAttr(v73);
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

__n128 mlir::OperandRangeRange::getTypes@<Q0>(mlir::OperandRangeRange *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 6);
  v5 = operator new(0x28uLL);
  result = *this;
  v7 = *(this + 1);
  *(v5 + 8) = *this;
  *v5 = &unk_1F5AF8398;
  *(v5 + 24) = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = 1;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
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

__n128 std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5AF8398;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF8398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1},std::allocator<std::function<mlir::TypeRange ()(unsigned int)> mlir::TypeRangeRange::getRangeFn<mlir::OperandRangeRange>(mlir::OperandRangeRange const&)::{lambda(unsigned int)#1}>,mlir::TypeRange ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = mlir::OperandRangeRange::dereference((a1 + 8), *(a1 + 24) + *a2);
  mlir::ValueRange::ValueRange(v5, v2, v3);
  return v5[0];
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

uint64_t anonymous namespace::OperationVerifier::verifyOpAndDominance(_anonymous_namespace_::OperationVerifier *this, mlir::Operation *a2, uint64_t a3, unint64_t a4)
{
  v350 = *MEMORY[0x1E69E9840];
  v322 = v324;
  v324[0] = a2;
  v4 = 1;
  v323 = 0x600000001;
  while (1)
  {
    while (1)
    {
      v5 = v322 + 8 * v4;
      v6 = *(v5 - 1);
      *(v5 - 1) = v6 | 2;
      v7 = v6 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 2) == 0)
      {
        break;
      }

      if ((v6 & 4) == 0)
      {
        DiscardableAttrDictionary = &v327;
        v326 = 0x600000000;
        if (*this == 1)
        {
          v14 = *(v7 + 44);
          if ((v14 & 0x7FFFFF) != 0)
          {
            v15 = ((v7 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
            v16 = v15 + 24 * (v14 & 0x7FFFFF);
            do
            {
              for (i = *(v15 + 8); i != v15; i = *(i + 8))
              {
                v18 = i - 8;
                if (!i)
                {
                  v18 = 0;
                }

                v19 = v18 + 32;
                for (j = *(v18 + 40); j != v19; j = *(j + 8))
                {
                  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                  if ((*(v21 + 44) & 0x7FFFFF) != 0)
                  {
                    v22 = v21;
                    {
                    }

                    if ((*(**(v22 + 48) + 32))(*(v22 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v23 = v326;
                      if (v326 >= HIDWORD(v326))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&DiscardableAttrDictionary, &v327, v326 + 1, 8);
                        v23 = v326;
                      }

                      *(DiscardableAttrDictionary + v23) = v22;
                      LODWORD(v326) = v326 + 1;
                    }
                  }
                }
              }

              v15 += 24;
            }

            while (v15 != v16);
          }
        }

        Context = mlir::Attribute::getContext((v7 + 24));
        v52 = DiscardableAttrDictionary;
        v53 = v326;
        v311 = this;
        v312 = DiscardableAttrDictionary;
        v319 = v326;
        if (!v326)
        {
          goto LABEL_157;
        }

        v54 = Context;
        if (!mlir::MLIRContext::isMultithreadingEnabled(Context) || v319 <= 1)
        {
          v89 = &v52[8 * v53];
          v90 = v312;
          if (v312 == v89)
          {
            goto LABEL_157;
          }

          {
            v90 = v312 + 1;
            v312 = v90;
            if (v90 == v89)
            {
              goto LABEL_157;
            }
          }

LABEL_89:
          v44 = 0;
          goto LABEL_159;
        }

        mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(&v307, v54);
        v318 = 0;
        v317 = 0;
        MemorySpace = mlir::MemRefType::getMemorySpace(v54);
        v55 = (*(*MemorySpace + 5))(MemorySpace);
        if (v55 >= v319)
        {
          v56 = v319;
        }

        else
        {
          v56 = v55;
        }

        for (; v56; --v56)
        {
          v58 = MemorySpace;
          v59 = operator new(0x38uLL);
          *v59 = &unk_1F5AF8548;
          v59[1] = &v317;
          v59[2] = &v318;
          v59[3] = &v319;
          v59[4] = &v307;
          v59[5] = &v311;
          v59[6] = &v312;
          v340 = v59;
          llvm::ThreadPoolInterface::asyncImpl<void>(v58, &MemorySpace, &v316, &v338);
          if (v340 == &v338)
          {
            (*(*v340 + 32))(v340);
          }

          else if (v340)
          {
            (*(*v340 + 40))();
          }

          std::shared_future<void>::~shared_future(&v316);
        }

        (*(*MemorySpace + 4))(MemorySpace, &MemorySpace);
        v57 = atomic_load(&v317);
        (*(*MemorySpace + 4))(MemorySpace, &MemorySpace);
        mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(&v307);
        if (v57)
        {
          goto LABEL_89;
        }

LABEL_157:
        v91 = *(v7 + 48);
        if (*(v91 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v44 = (*(*v91 + 72))(v91, v7);
          goto LABEL_159;
        }

        *&v338 = *(v91 + 8);
        Values = mlir::SparseElementsAttr::getValues(&v338);
        if (Values)
        {
          if ((*(Values + 40) & 1) == 0)
          {
            v94 = Values;
            v307 = "unregistered operation '";
            v310 = 259;
            mlir::Operation::emitError(v7, &v307, &v338);
            if (v338)
            {
              mlir::Diagnostic::operator<<(&v338 + 8, *(v7 + 48));
              if (v338)
              {
                LODWORD(v312) = 3;
                v313 = "' found in dialect ('";
                v314 = 21;
                v95 = v340;
                if (v341 >= HIDWORD(v341))
                {
                  if (v340 <= &v312 && v340 + 24 * v341 > &v312)
                  {
                    v176 = &v312 - v340;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                    v95 = v340;
                    v96 = (v340 + v176);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                    v96 = &v312;
                    v95 = v340;
                  }
                }

                else
                {
                  v96 = &v312;
                }

                v97 = &v95[24 * v341];
                v98 = *v96;
                *(v97 + 2) = v96[2];
                *v97 = v98;
                LODWORD(v341) = v341 + 1;
                if (v338)
                {
                  v99 = *(v94 + 8);
                  v100 = *(v94 + 16);
                  v315 = 261;
                  v312 = v99;
                  v313 = v100;
                  mlir::Diagnostic::operator<<(&v338 + 8, &v312);
                  if (v338)
                  {
                    LODWORD(v312) = 3;
                    v313 = "') that does not allow unknown operations";
                    v314 = 41;
                    v101 = v340;
                    if (v341 >= HIDWORD(v341))
                    {
                      if (v340 <= &v312 && v340 + 24 * v341 > &v312)
                      {
                        v179 = &v312 - v340;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                        v101 = v340;
                        v102 = (v340 + v179);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                        v102 = &v312;
                        v101 = v340;
                      }
                    }

                    else
                    {
                      v102 = &v312;
                    }

                    v103 = &v101[24 * v341];
                    v104 = *v102;
                    *(v103 + 2) = v102[2];
                    *v103 = v104;
                    LODWORD(v341) = v341 + 1;
                  }
                }
              }
            }

            v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
            if (v338)
            {
              mlir::InFlightDiagnostic::report(&v338);
            }

            if (v349[0] == 1)
            {
              if (__dst != v349)
              {
                free(__dst);
              }

              v105 = __p;
              if (__p)
              {
                v106 = *(&__p + 1);
                v107 = __p;
                if (*(&__p + 1) != __p)
                {
                  do
                  {
                    v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
                  }

                  while (v106 != v105);
                  v107 = __p;
                }

                *(&__p + 1) = v105;
                operator delete(v107);
              }

              v108 = v343;
              if (v343)
              {
                v109 = *(&v343 + 1);
                v110 = v343;
                if (*(&v343 + 1) == v343)
                {
                  goto LABEL_308;
                }

                do
                {
                  v112 = *--v109;
                  v111 = v112;
                  *v109 = 0;
                  if (v112)
                  {
                    operator delete[](v111);
                  }
                }

                while (v109 != v108);
LABEL_307:
                v110 = v343;
                goto LABEL_308;
              }

              goto LABEL_309;
            }

            goto LABEL_159;
          }
        }

        else
        {
          v150 = mlir::Attribute::getContext((v7 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v150) & 1) == 0)
          {
            v315 = 257;
            mlir::Operation::emitOpError(v7, &v312, &v338);
            if (v338)
            {
              LODWORD(v307) = 3;
              v308 = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v309 = 178;
              v151 = v340;
              if (v341 >= HIDWORD(v341))
              {
                if (v340 <= &v307 && v340 + 24 * v341 > &v307)
                {
                  v177 = &v307 - v340;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                  v151 = v340;
                  v152 = (v340 + v177);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                  v152 = &v307;
                  v151 = v340;
                }
              }

              else
              {
                v152 = &v307;
              }

              v153 = &v151[24 * v341];
              v154 = *v152;
              *(v153 + 2) = v152[2];
              *v153 = v154;
              LODWORD(v341) = v341 + 1;
            }

            v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
            if (v338)
            {
              mlir::InFlightDiagnostic::report(&v338);
            }

            if (v349[0] == 1)
            {
              if (__dst != v349)
              {
                free(__dst);
              }

              v155 = __p;
              if (__p)
              {
                v156 = *(&__p + 1);
                v157 = __p;
                if (*(&__p + 1) != __p)
                {
                  do
                  {
                    v156 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v156 - 1);
                  }

                  while (v156 != v155);
                  v157 = __p;
                }

                *(&__p + 1) = v155;
                operator delete(v157);
              }

              v108 = v343;
              if (v343)
              {
                v158 = *(&v343 + 1);
                v110 = v343;
                if (*(&v343 + 1) != v343)
                {
                  do
                  {
                    v160 = *--v158;
                    v159 = v160;
                    *v158 = 0;
                    if (v160)
                    {
                      operator delete[](v159);
                    }
                  }

                  while (v158 != v108);
                  goto LABEL_307;
                }

LABEL_308:
                *(&v343 + 1) = v108;
                operator delete(v110);
              }

LABEL_309:
              if (v340 != v342)
              {
                free(v340);
              }
            }

LABEL_159:
            v92 = DiscardableAttrDictionary;
            if (DiscardableAttrDictionary == &v327)
            {
              goto LABEL_161;
            }

            goto LABEL_160;
          }
        }

        v44 = 1;
        goto LABEL_159;
      }

      mlir::SuccessorRange::SuccessorRange(&v338, (v6 & 0xFFFFFFFFFFFFFFF8));
      v37 = *(&v338 + 1);
      if (*(&v338 + 1))
      {
        v38 = (v338 + 24);
        while (1)
        {
          Parent = mlir::Block::getParent(*v38);
          if (Parent != mlir::Block::getParent(v7))
          {
            break;
          }

          v38 += 4;
          if (!--v37)
          {
            goto LABEL_62;
          }
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        DiscardableAttrDictionary = "branching to block of a different region";
        LOWORD(v329) = 259;
        mlir::Operation::emitOpError(v76, &DiscardableAttrDictionary, &v338);
        v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
        if (v338)
        {
          mlir::InFlightDiagnostic::report(&v338);
        }

        if (v349[0])
        {
          if (__dst != v349)
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

          v48 = v343;
          if (v343)
          {
            v80 = *(&v343 + 1);
            v50 = v343;
            if (*(&v343 + 1) != v343)
            {
              do
              {
                v82 = *--v80;
                v81 = v82;
                *v80 = 0;
                if (v82)
                {
                  operator delete[](v81);
                }
              }

              while (v80 != v48);
              goto LABEL_283;
            }

LABEL_284:
            *(&v343 + 1) = v48;
            operator delete(v50);
          }

          goto LABEL_285;
        }

        goto LABEL_161;
      }

LABEL_62:
      if ((mayBeValidWithoutTerminator(v7) & 1) == 0)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v41 = v40;
        {
          v42 = v40[6];
          if (v42[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v42 = *(v41 + 6);
          if (v42[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_162;
          }
        }

        if (((*(*v42 + 4))(v42, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          DiscardableAttrDictionary = "block with no terminator, has ";
          LOWORD(v329) = 259;
          mlir::Operation::emitError(v43, &DiscardableAttrDictionary, &v338);
          if (v338)
          {
            mlir::Diagnostic::operator<<((&v338 + 8), v41);
          }

          v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
          if (v338)
          {
            mlir::InFlightDiagnostic::report(&v338);
          }

          if (v349[0] != 1)
          {
            goto LABEL_161;
          }

          if (__dst != v349)
          {
            free(__dst);
          }

          v45 = __p;
          if (__p)
          {
            v46 = *(&__p + 1);
            v47 = __p;
            if (*(&__p + 1) != __p)
            {
              do
              {
                v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
              }

              while (v46 != v45);
              v47 = __p;
            }

            *(&__p + 1) = v45;
            operator delete(v47);
          }

          v48 = v343;
          if (v343)
          {
            v49 = *(&v343 + 1);
            v50 = v343;
            if (*(&v343 + 1) == v343)
            {
              goto LABEL_284;
            }

            do
            {
              v61 = *--v49;
              v60 = v61;
              *v49 = 0;
              if (v61)
              {
                operator delete[](v60);
              }
            }

            while (v49 != v48);
LABEL_283:
            v50 = v343;
            goto LABEL_284;
          }

LABEL_285:
          v92 = v340;
          if (v340 == v342)
          {
LABEL_161:
            if ((v44 & 1) == 0)
            {
              goto LABEL_360;
            }

            goto LABEL_162;
          }

LABEL_160:
          free(v92);
          goto LABEL_161;
        }
      }

LABEL_162:
      v4 = v323 - 1;
      LODWORD(v323) = v4;
      if (!v4)
      {
        goto LABEL_393;
      }
    }

    if ((v6 & 4) == 0)
    {
      break;
    }

    v24 = *(v7 + 48);
    v25 = *(v7 + 56);
    if (v24 != v25)
    {
      while (*(*v24 + 16) == v7)
      {
        v24 += 8;
        if (v24 == v25)
        {
          goto LABEL_39;
        }
      }

      v69 = *(*v24 + 32);
      DiscardableAttrDictionary = "block argument not owned by block";
      LOWORD(v329) = 259;
      mlir::emitError(v69, &DiscardableAttrDictionary, &v338);
      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
      if (v338)
      {
        mlir::InFlightDiagnostic::report(&v338);
      }

      if (v349[0])
      {
        if (__dst != v349)
        {
          free(__dst);
        }

        v70 = __p;
        if (__p)
        {
          v71 = *(&__p + 1);
          v72 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
            }

            while (v71 != v70);
            v72 = __p;
          }

          *(&__p + 1) = v70;
          operator delete(v72);
        }

        v34 = v343;
        if (v343)
        {
          v73 = *(&v343 + 1);
          v36 = v343;
          if (*(&v343 + 1) == v343)
          {
            goto LABEL_209;
          }

          do
          {
            v75 = *--v73;
            v74 = v75;
            *v73 = 0;
            if (v75)
            {
              operator delete[](v74);
            }
          }

          while (v73 != v34);
          goto LABEL_208;
        }

        goto LABEL_210;
      }

      goto LABEL_212;
    }

LABEL_39:
    if (*(v7 + 32) != v7 + 32)
    {
      for (k = *(v7 + 40); ; k = *(k + 8))
      {
        if (k == v7 + 32)
        {
          goto LABEL_213;
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        if (*(v27 + 40))
        {
          v28 = v27;
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          if (v28 != v29)
          {
            break;
          }
        }
      }

      DiscardableAttrDictionary = "operation with block successors must terminate its parent block";
      LOWORD(v329) = 259;
      mlir::Operation::emitError(v28, &DiscardableAttrDictionary, &v338);
      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
      if (v338)
      {
        mlir::InFlightDiagnostic::report(&v338);
      }

      if (v349[0] == 1)
      {
        if (__dst != v349)
        {
          free(__dst);
        }

        v31 = __p;
        if (__p)
        {
          v32 = *(&__p + 1);
          v33 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          *(&__p + 1) = v31;
          operator delete(v33);
        }

        v34 = v343;
        if (v343)
        {
          v35 = *(&v343 + 1);
          v36 = v343;
          if (*(&v343 + 1) == v343)
          {
            goto LABEL_209;
          }

          do
          {
            v63 = *--v35;
            v62 = v63;
            *v35 = 0;
            if (v63)
            {
              operator delete[](v62);
            }
          }

          while (v35 != v34);
          goto LABEL_208;
        }

        goto LABEL_210;
      }

      goto LABEL_212;
    }

    if ((mayBeValidWithoutTerminator((v6 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
    {
      v113 = mlir::Block::getParent((v6 & 0xFFFFFFFFFFFFFFF8));
      Loc = mlir::Region::getLoc(v113);
      DiscardableAttrDictionary = "empty block: expect at least a terminator";
      LOWORD(v329) = 259;
      mlir::emitError(Loc, &DiscardableAttrDictionary, &v338);
      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
      if (v338)
      {
        mlir::InFlightDiagnostic::report(&v338);
      }

      if (v349[0] == 1)
      {
        if (__dst != v349)
        {
          free(__dst);
        }

        v115 = __p;
        if (__p)
        {
          v116 = *(&__p + 1);
          v117 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
            }

            while (v116 != v115);
            v117 = __p;
          }

          *(&__p + 1) = v115;
          operator delete(v117);
        }

        v34 = v343;
        if (v343)
        {
          v118 = *(&v343 + 1);
          v36 = v343;
          if (*(&v343 + 1) == v343)
          {
LABEL_209:
            *(&v343 + 1) = v34;
            operator delete(v36);
            goto LABEL_210;
          }

          do
          {
            v120 = *--v118;
            v119 = v120;
            *v118 = 0;
            if (v120)
            {
              operator delete[](v119);
            }
          }

          while (v118 != v34);
LABEL_208:
          v36 = v343;
          goto LABEL_209;
        }

LABEL_210:
        v121 = v340;
        if (v340 != v342)
        {
LABEL_211:
          free(v121);
        }
      }

LABEL_212:
      if (!v30)
      {
        goto LABEL_360;
      }
    }

LABEL_213:
    if ((v6 & 4) != 0)
    {
      v131 = *(v7 + 32);
      v129 = (v7 + 32);
      for (m = v131; m != v129; m = *m)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v134 = v133;
        if ((*(v133 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_229;
        }

        {
        }

        if (((*(**(v134 + 48) + 32))(*(v134 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_229:
          v132 = v323;
          if (v323 >= HIDWORD(v323))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v322, v324, v323 + 1, 8);
            v132 = v323;
          }

          *(v322 + v132) = v134;
          LODWORD(v323) = v323 + 1;
        }
      }
    }

    else if (*this == 1)
    {
      v122 = *(v7 + 44);
      if ((v122 & 0x7FFFFF) != 0)
      {
        v123 = ((v7 + 16 * ((v122 >> 23) & 1) + ((v122 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v124 = (v123 + 24 * (v122 & 0x7FFFFF));
        do
        {
          v126 = *(v124 - 3);
          v124 -= 3;
          v125 = v126;
          if (v126 != v124)
          {
            v127 = v323;
            do
            {
              if (v125)
              {
                v128 = (v125 - 1);
              }

              else
              {
                v128 = 0;
              }

              if (v127 >= HIDWORD(v323))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v322, v324, v127 + 1, 8);
                *(v322 + v323) = v128 | 4;
              }

              else
              {
                *(v322 + v127) = v128 | 4;
              }

              v127 = v323 + 1;
              LODWORD(v323) = v323 + 1;
              v125 = *v125;
            }

            while (v125 != v124);
          }
        }

        while (v124 != v123);
      }
    }

    v4 = v323;
    if (!v323)
    {
LABEL_393:
      v181 = 1;
      v182 = v322;
      if (v322 == v324)
      {
        goto LABEL_362;
      }

LABEL_361:
      free(v182);
      goto LABEL_362;
    }
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 68);
    if (v8)
    {
      v9 = (*(v7 + 72) + 24);
      while (*v9)
      {
        v9 += 4;
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      DiscardableAttrDictionary = "null operand found";
      LOWORD(v329) = 259;
      mlir::Operation::emitError((v6 & 0xFFFFFFFFFFFFFFF8), &DiscardableAttrDictionary, &v338);
      v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
      if (v338)
      {
        mlir::InFlightDiagnostic::report(&v338);
      }

      if (v349[0])
      {
        if (__dst != v349)
        {
          free(__dst);
        }

        v83 = __p;
        if (__p)
        {
          v84 = *(&__p + 1);
          v85 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          *(&__p + 1) = v83;
          operator delete(v85);
        }

        v34 = v343;
        if (v343)
        {
          v86 = *(&v343 + 1);
          v36 = v343;
          if (*(&v343 + 1) == v343)
          {
            goto LABEL_209;
          }

          do
          {
            v88 = *--v86;
            v87 = v88;
            *v86 = 0;
            if (v88)
            {
              operator delete[](v87);
            }
          }

          while (v86 != v34);
          goto LABEL_208;
        }

        goto LABEL_210;
      }

      goto LABEL_212;
    }
  }

LABEL_10:
  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary((v6 & 0xFFFFFFFFFFFFFFF8));
  Value = mlir::AffineMapAttr::getValue(&DiscardableAttrDictionary);
  v11 = mlir::DictionaryAttr::end(&DiscardableAttrDictionary);
  if (Value == v11)
  {
LABEL_101:
    v64 = *(v7 + 48);
    if (v64[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v64 + 8))(v64, v6 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_360;
    }

    v65 = *(v7 + 44);
    v66 = *&v65 & 0x7FFFFFLL;
    if ((v65 & 0x7FFFFF) == 0)
    {
      goto LABEL_213;
    }

    InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v6 & 0xFFFFFFFFFFFFFFF8);
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionKindInterface,mlir::detail::RegionKindInterfaceInterfaceTraits>::getInterfaceFor(v6 & 0xFFFFFFFFFFFFFFF8);
      v68 = (v6 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v68 = 0;
    }

    MemorySpace = v68;
    v305 = InterfaceFor;
    DiscardableAttrDictionary = &v327;
    v326 = 0x600000000;
    v135 = *(v7 + 44);
    if ((v135 & 0x7FFFFF) != 0)
    {
      v136 = (v7 + 16 * ((v135 >> 23) & 1) + ((v135 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64);
      if (!v68)
      {
        goto LABEL_260;
      }

LABEL_244:
      v137 = 0;
      while (2)
      {
        if (MemorySpace)
        {
          RegionKind = mlir::RegionKindInterface::getRegionKind(&MemorySpace, v137);
          v139 = *v136;
          if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
          {
            goto LABEL_256;
          }

          if (v136 != v139)
          {
            if (v136 != *(v136[1] + 8))
            {
              v312 = "expects graph region #";
              v315 = 259;
              mlir::Operation::emitOpError((v6 & 0xFFFFFFFFFFFFFFF8), &v312, &v338);
              if (v338)
              {
                LODWORD(v307) = 5;
                v308 = v137;
                v161 = v340;
                if (v341 >= HIDWORD(v341))
                {
                  if (v340 <= &v307 && v340 + 24 * v341 > &v307)
                  {
                    v178 = &v307 - v340;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                    v161 = v340;
                    v162 = (v340 + v178);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v341 + 1, 24);
                    v162 = &v307;
                    v161 = v340;
                  }
                }

                else
                {
                  v162 = &v307;
                }

                v163 = &v161[24 * v341];
                v164 = *v162;
                *(v163 + 2) = v162[2];
                *v163 = v164;
                v165 = (v341 + 1);
                LODWORD(v341) = v341 + 1;
                if (v338)
                {
                  LODWORD(v307) = 3;
                  v308 = " to have 0 or 1 blocks";
                  v309 = 22;
                  v166 = v340;
                  if (v165 >= HIDWORD(v341))
                  {
                    if (v340 <= &v307 && v340 + 24 * v165 > &v307)
                    {
                      v180 = &v307 - v340;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v165 + 1, 24);
                      v166 = v340;
                      v167 = (v340 + v180);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v165 + 1, 24);
                      v167 = &v307;
                      v166 = v340;
                    }
                  }

                  else
                  {
                    v167 = &v307;
                  }

                  v168 = &v166[24 * v341];
                  v169 = *v167;
                  *(v168 + 2) = v167[2];
                  *v168 = v169;
                  LODWORD(v341) = v341 + 1;
                }
              }

              v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
              if (v338)
              {
                mlir::InFlightDiagnostic::report(&v338);
              }

              if (v349[0] == 1)
              {
                if (__dst != v349)
                {
                  free(__dst);
                }

                v170 = __p;
                if (__p)
                {
                  v171 = *(&__p + 1);
                  v172 = __p;
                  if (*(&__p + 1) != __p)
                  {
                    do
                    {
                      v171 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v171 - 1);
                    }

                    while (v171 != v170);
                    v172 = __p;
                  }

                  *(&__p + 1) = v170;
                  operator delete(v172);
                }

                v145 = v343;
                if (v343)
                {
                  v173 = *(&v343 + 1);
                  v147 = v343;
                  if (*(&v343 + 1) == v343)
                  {
LABEL_335:
                    *(&v343 + 1) = v145;
                    operator delete(v147);
                    goto LABEL_336;
                  }

                  do
                  {
                    v175 = *--v173;
                    v174 = v175;
                    *v173 = 0;
                    if (v175)
                    {
                      operator delete[](v174);
                    }
                  }

                  while (v173 != v145);
LABEL_334:
                  v147 = v343;
                  goto LABEL_335;
                }

                goto LABEL_336;
              }

              goto LABEL_279;
            }

LABEL_256:
            if (v136 != v139 && *(v136[1] - 8))
            {
              goto LABEL_262;
            }
          }

          ++v137;
          v136 += 3;
          if (v66 == v137)
          {
            goto LABEL_278;
          }

          continue;
        }

        break;
      }

      v139 = *v136;
      goto LABEL_256;
    }

    v136 = 0;
    if (v68)
    {
      goto LABEL_244;
    }

LABEL_260:
    while (v136 == *v136 || !*(v136[1] - 8))
    {
      v136 += 3;
      if (!--v66)
      {
LABEL_278:
        v30 = 1;
        goto LABEL_279;
      }
    }

LABEL_262:
    v141 = *(v7 + 24);
    v312 = "entry block of region may not have predecessors";
    v315 = 259;
    mlir::emitError(v141, &v312, &v338);
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v338);
    if (v338)
    {
      mlir::InFlightDiagnostic::report(&v338);
    }

    if (v349[0] == 1)
    {
      if (__dst != v349)
      {
        free(__dst);
      }

      v142 = __p;
      if (__p)
      {
        v143 = *(&__p + 1);
        v144 = __p;
        if (*(&__p + 1) != __p)
        {
          do
          {
            v143 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v143 - 1);
          }

          while (v143 != v142);
          v144 = __p;
        }

        *(&__p + 1) = v142;
        operator delete(v144);
      }

      v145 = v343;
      if (v343)
      {
        v146 = *(&v343 + 1);
        v147 = v343;
        if (*(&v343 + 1) == v343)
        {
          goto LABEL_335;
        }

        do
        {
          v149 = *--v146;
          v148 = v149;
          *v146 = 0;
          if (v149)
          {
            operator delete[](v148);
          }
        }

        while (v146 != v145);
        goto LABEL_334;
      }

LABEL_336:
      if (v340 != v342)
      {
        free(v340);
      }
    }

LABEL_279:
    v121 = DiscardableAttrDictionary;
    if (DiscardableAttrDictionary != &v327)
    {
      goto LABEL_211;
    }

    goto LABEL_212;
  }

  v12 = v11;
  while (1)
  {
    v338 = *Value;
    NameDialect = mlir::NamedAttribute::getNameDialect(&v338);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v6 & 0xFFFFFFFFFFFFFFF8, v338, *(&v338 + 1)) & 1) == 0)
      {
        break;
      }
    }

    if (++Value == v12)
    {
      goto LABEL_101;
    }
  }

LABEL_360:
  v181 = 0;
  v182 = v322;
  if (v322 != v324)
  {
    goto LABEL_361;
  }

LABEL_362:
  if (!v181)
  {
    return 0;
  }

  if ((*(a2 + 11) & 0x7FFFFF) != 0)
  {
    MemorySpace = 0;
    v305 = 0;
    v306 = 0;
    v322 = v324;
    HIDWORD(v323) = 8;
    v324[0] = a2;
    v183 = 1;
    while (1)
    {
      v184 = *(v322 + --v183);
      LODWORD(v323) = v183;
      v185 = *(v184 + 44);
      if ((v185 & 0x7FFFFF) != 0)
      {
        v186 = ((v184 + 16 * ((v185 >> 23) & 1) + ((v185 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v184 + 40);
        v299 = v186 + 24 * (v185 & 0x7FFFFF);
        do
        {
          v187 = *(v186 + 8);
          for (n = v186; v187 != n; v186 = n)
          {
            if (v187)
            {
              v188 = (v187 - 8);
            }

            else
            {
              v188 = 0;
            }

            isReachableFromEntry = mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(&MemorySpace, v188);
            v189 = (v188 + 32);
            for (ii = *(v188 + 5); ii != v189; ii = ii[1])
            {
              MPSGraphDelegateCompiler.precompilationDescriptor.modify();
              v192 = v191;
              if (isReachableFromEntry && (*(v191 + 46) & 0x80) != 0)
              {
                v193 = *(v191 + 68);
                if (v193)
                {
                  v194 = 0;
                  v195 = *(v191 + 72);
                  v196 = 24;
                  while ((mlir::DominanceInfo::properlyDominates(&MemorySpace, *(v195 + v196), v192) & 1) != 0)
                  {
                    ++v194;
                    v196 += 32;
                    if (v193 == v194)
                    {
                      goto LABEL_381;
                    }
                  }

                  v312 = "operand #";
                  v315 = 259;
                  mlir::Operation::emitError(v192, &v312, &DiscardableAttrDictionary);
                  if (DiscardableAttrDictionary)
                  {
                    LODWORD(v307) = 5;
                    v308 = v194;
                    v198 = &v307;
                    v199 = __src;
                    if (v329 >= HIDWORD(v329))
                    {
                      if (__src <= &v307 && __src + 24 * v329 > &v307)
                      {
                        v293 = &v307 - __src;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v330, v329 + 1, 24);
                        v199 = __src;
                        v198 = (__src + v293);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v330, v329 + 1, 24);
                        v198 = &v307;
                        v199 = __src;
                      }
                    }

                    v200 = &v199[24 * v329];
                    v201 = *v198;
                    *(v200 + 2) = v198[2];
                    *v200 = v201;
                    v202 = (v329 + 1);
                    LODWORD(v329) = v329 + 1;
                    if (DiscardableAttrDictionary)
                    {
                      LODWORD(v307) = 3;
                      v308 = " does not dominate this use";
                      v309 = 27;
                      v203 = &v307;
                      v204 = __src;
                      if (v202 >= HIDWORD(v329))
                      {
                        if (__src <= &v307 && __src + 24 * v202 > &v307)
                        {
                          v295 = &v307 - __src;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v330, v202 + 1, 24);
                          v204 = __src;
                          v203 = (__src + v295);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v330, v202 + 1, 24);
                          v203 = &v307;
                          v204 = __src;
                        }
                      }

                      v205 = &v204[24 * v329];
                      v206 = *v203;
                      *(v205 + 2) = v203[2];
                      *v205 = v206;
                      LODWORD(v329) = v329 + 1;
                      *&v338 = DiscardableAttrDictionary;
                      BYTE8(v338) = 0;
                      v349[0] = 0;
                      if (v337 != 1)
                      {
LABEL_440:
                        mlir::InFlightDiagnostic::abandon(&DiscardableAttrDictionary);
                        if (DiscardableAttrDictionary)
                        {
                          mlir::InFlightDiagnostic::report(&DiscardableAttrDictionary);
                        }

                        if (v337 == 1)
                        {
                          if (v335 != &v337)
                          {
                            free(v335);
                          }

                          v220 = v333;
                          if (v333)
                          {
                            v221 = *(&v333 + 1);
                            v222 = v333;
                            if (*(&v333 + 1) != v333)
                            {
                              do
                              {
                                v221 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v221 - 1);
                              }

                              while (v221 != v220);
                              v222 = v333;
                            }

                            *(&v333 + 1) = v220;
                            operator delete(v222);
                          }

                          v223 = v331;
                          if (v331)
                          {
                            v224 = *(&v331 + 1);
                            v225 = v331;
                            if (*(&v331 + 1) != v331)
                            {
                              do
                              {
                                v227 = *--v224;
                                v226 = v227;
                                *v224 = 0;
                                if (v227)
                                {
                                  operator delete[](v226);
                                }
                              }

                              while (v224 != v223);
                              v225 = v331;
                            }

                            *(&v331 + 1) = v223;
                            operator delete(v225);
                          }

                          if (__src != v330)
                          {
                            free(__src);
                          }
                        }

                        v312 = *(*(v192 + 72) + v196);
                        DefiningOp = mlir::Value::getDefiningOp(&v312);
                        if (DefiningOp)
                        {
                          v229 = DefiningOp;
                          v230 = mlir::Diagnostic::attachNote(&v338 + 1, *(DefiningOp + 24), 1);
                          v231 = v230;
                          v233 = v230 + 16;
                          v232 = *(v230 + 16);
                          LODWORD(DiscardableAttrDictionary) = 3;
                          v326 = "operand defined here";
                          v327 = 20;
                          v234 = *(v230 + 24);
                          p_DiscardableAttrDictionary = &DiscardableAttrDictionary;
                          if (v234 >= *(v230 + 28))
                          {
                            if (v232 <= &DiscardableAttrDictionary && v232 + 24 * v234 > &DiscardableAttrDictionary)
                            {
                              v294 = &DiscardableAttrDictionary - v232;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(v230 + 16, (v230 + 32), v234 + 1, 24);
                              v232 = *(v231 + 16);
                              p_DiscardableAttrDictionary = &v294[v232];
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(v230 + 16, (v230 + 32), v234 + 1, 24);
                              v232 = *(v231 + 16);
                              p_DiscardableAttrDictionary = &DiscardableAttrDictionary;
                            }
                          }

                          v236 = v232 + 24 * *(v231 + 24);
                          v237 = *p_DiscardableAttrDictionary;
                          *(v236 + 16) = p_DiscardableAttrDictionary[2];
                          *v236 = v237;
                          ++*(v231 + 24);
                          v238 = *(v192 + 16);
                          v239 = *(v229 + 16);
                          v240 = mlir::Block::getParent(v238);
                          v241 = mlir::Block::getParent(v239);
                          if (v238 == v239)
                          {
                            LODWORD(DiscardableAttrDictionary) = 3;
                            v255 = " (op in the same block)";
                            goto LABEL_484;
                          }

                          if (v240 == v241)
                          {
                            LODWORD(DiscardableAttrDictionary) = 3;
                            v243 = " (op in the same region)";
LABEL_476:
                            v326 = v243;
                            v327 = 24;
                            v256 = *(v231 + 24);
                            v257 = *(v231 + 16);
                            v258 = &DiscardableAttrDictionary;
                            if (v256 < *(v231 + 28))
                            {
                              goto LABEL_485;
                            }
                          }

                          else
                          {
                            v242 = v241;
                            if (mlir::Region::isProperAncestor(v241, v240))
                            {
                              LODWORD(DiscardableAttrDictionary) = 3;
                              v243 = " (op in a parent region)";
                              goto LABEL_476;
                            }

                            if (mlir::Region::isProperAncestor(v240, v242))
                            {
                              LODWORD(DiscardableAttrDictionary) = 3;
                              v255 = " (op in a child region)";
LABEL_484:
                              v326 = v255;
                              v327 = 23;
                              v256 = *(v231 + 24);
                              v257 = *(v231 + 16);
                              v258 = &DiscardableAttrDictionary;
                              if (v256 < *(v231 + 28))
                              {
LABEL_485:
                                v263 = v257 + 24 * *(v231 + 24);
                                v264 = *v258;
                                v265 = v258[2];
                                goto LABEL_486;
                              }
                            }

                            else
                            {
                              LODWORD(DiscardableAttrDictionary) = 3;
                              v326 = " (op is neither in a parent nor in a child region)";
                              v327 = 50;
                              v256 = *(v231 + 24);
                              v257 = *(v231 + 16);
                              v258 = &DiscardableAttrDictionary;
                              if (v256 < *(v231 + 28))
                              {
                                goto LABEL_485;
                              }
                            }
                          }

                          if (v257 > &DiscardableAttrDictionary || v257 + 24 * v256 <= &DiscardableAttrDictionary)
                          {
                            v261 = (v231 + 32);
                            v262 = v256 + 1;
                            v259 = v233;
                            goto LABEL_527;
                          }

                          v290 = &DiscardableAttrDictionary - v257;
                          v291 = (v231 + 32);
                          v292 = v256 + 1;
                          v259 = v233;
                          goto LABEL_552;
                        }

                        v244 = *(v192 + 16);
                        v245 = v312[2];
                        v246 = mlir::Block::getParent(v244);
                        v247 = mlir::Block::getParent(v245);
                        v248 = mlir::Attribute::getContext((v192 + 24));
                        v250 = mlir::UnknownLoc::get(v248, v249);
                        if (mlir::Block::getParentOp(v245))
                        {
                          v250 = *(mlir::Block::getParentOp(v245) + 24);
                        }

                        v251 = mlir::Diagnostic::attachNote(&v338 + 1, v250, 1);
                        v231 = v251;
                        if (!v247)
                        {
                          v259 = v251 + 16;
                          v257 = *(v231 + 16);
                          LODWORD(DiscardableAttrDictionary) = 3;
                          v326 = " (block without parent)";
                          v327 = 23;
                          v260 = *(v231 + 24);
                          v258 = &DiscardableAttrDictionary;
                          if (v260 < *(v231 + 28))
                          {
                            goto LABEL_485;
                          }

                          if (v257 > &DiscardableAttrDictionary || v257 + 24 * v260 <= &DiscardableAttrDictionary)
                          {
                            v261 = (v231 + 32);
                            v262 = v260 + 1;
LABEL_527:
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v259, v261, v262, 24);
                            v257 = *(v231 + 16);
                            v258 = &DiscardableAttrDictionary;
                            goto LABEL_485;
                          }

                          v290 = &DiscardableAttrDictionary - v257;
                          v291 = (v231 + 32);
                          v292 = v260 + 1;
LABEL_552:
                          llvm::SmallVectorBase<unsigned int>::grow_pod(v259, v291, v292, 24);
                          v257 = *(v231 + 16);
                          v258 = &v290[v257];
                          goto LABEL_485;
                        }

                        if (v244 == v245)
                        {
                          llvm::report_fatal_error("Internal error in dominance verification", 1, a3);
                        }

                        v252 = *(v247 + 1);
                        if (v252 == (v245 + 8))
                        {
                          v254 = 0;
                        }

                        else
                        {
                          v253 = 0;
                          do
                          {
                            v252 = v252[1];
                            v253 += 0x100000000;
                          }

                          while (v252 != (v245 + 8));
                          v254 = v253 >> 32;
                        }

                        v275 = *(v251 + 16);
                        LODWORD(DiscardableAttrDictionary) = 3;
                        v326 = "operand defined as a block argument (block #";
                        v327 = 44;
                        v276 = *(v251 + 24);
                        v277 = &DiscardableAttrDictionary;
                        if (v276 >= *(v251 + 28))
                        {
                          if (v275 <= &DiscardableAttrDictionary && v275 + 24 * v276 > &DiscardableAttrDictionary)
                          {
                            v296 = &DiscardableAttrDictionary - v275;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v251 + 16, (v251 + 32), v276 + 1, 24);
                            v275 = *(v231 + 16);
                            v277 = &v296[v275];
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v251 + 16, (v251 + 32), v276 + 1, 24);
                            v275 = *(v231 + 16);
                            v277 = &DiscardableAttrDictionary;
                          }
                        }

                        v278 = v275 + 24 * *(v231 + 24);
                        v279 = *v277;
                        *(v278 + 16) = v277[2];
                        *v278 = v279;
                        v280 = *(v231 + 28);
                        v281 = (*(v231 + 24) + 1);
                        *(v231 + 24) = v281;
                        LODWORD(DiscardableAttrDictionary) = 2;
                        v326 = v254;
                        v282 = *(v231 + 16);
                        v283 = &DiscardableAttrDictionary;
                        if (v281 >= v280)
                        {
                          if (v282 <= &DiscardableAttrDictionary && v282 + 24 * v281 > &DiscardableAttrDictionary)
                          {
                            v297 = &DiscardableAttrDictionary - v282;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v231 + 16, (v231 + 32), v281 + 1, 24);
                            v282 = *(v231 + 16);
                            v283 = &v297[v282];
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v231 + 16, (v231 + 32), v281 + 1, 24);
                            v282 = *(v231 + 16);
                            v283 = &DiscardableAttrDictionary;
                          }
                        }

                        v284 = v282 + 24 * *(v231 + 24);
                        v285 = *v283;
                        *(v284 + 16) = v283[2];
                        *v284 = v285;
                        v286 = (*(v231 + 24) + 1);
                        *(v231 + 24) = v286;
                        if (v246 != v247)
                        {
                          if (mlir::Region::isProperAncestor(v247, v246))
                          {
                            LODWORD(DiscardableAttrDictionary) = 3;
                            v326 = " in a parent region)";
                            v327 = 20;
                            v287 = *(v231 + 24);
                            v257 = *(v231 + 16);
                            v258 = &DiscardableAttrDictionary;
                            if (v287 < *(v231 + 28))
                            {
                              goto LABEL_485;
                            }
                          }

                          else if (mlir::Region::isProperAncestor(v246, v247))
                          {
                            LODWORD(DiscardableAttrDictionary) = 3;
                            v326 = " in a child region)";
                            v327 = 19;
                            v287 = *(v231 + 24);
                            v257 = *(v231 + 16);
                            v258 = &DiscardableAttrDictionary;
                            if (v287 < *(v231 + 28))
                            {
                              goto LABEL_485;
                            }
                          }

                          else
                          {
                            LODWORD(DiscardableAttrDictionary) = 3;
                            v326 = " neither in a parent nor in a child region)";
                            v327 = 43;
                            v287 = *(v231 + 24);
                            v257 = *(v231 + 16);
                            v258 = &DiscardableAttrDictionary;
                            if (v287 < *(v231 + 28))
                            {
                              goto LABEL_485;
                            }
                          }

                          if (v257 > &DiscardableAttrDictionary || v257 + 24 * v287 <= &DiscardableAttrDictionary)
                          {
                            v261 = (v231 + 32);
                            v262 = v287 + 1;
                            v259 = v231 + 16;
                            goto LABEL_527;
                          }

                          v290 = &DiscardableAttrDictionary - v257;
                          v291 = (v231 + 32);
                          v292 = v287 + 1;
                          v259 = v231 + 16;
                          goto LABEL_552;
                        }

                        LODWORD(DiscardableAttrDictionary) = 3;
                        v326 = " in the same region)";
                        v327 = 20;
                        v288 = *(v231 + 16);
                        v289 = &DiscardableAttrDictionary;
                        if (v286 >= *(v231 + 28))
                        {
                          if (v288 <= &DiscardableAttrDictionary && v288 + 24 * v286 > &DiscardableAttrDictionary)
                          {
                            v298 = &DiscardableAttrDictionary - v288;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v231 + 16, (v231 + 32), v286 + 1, 24);
                            v288 = *(v231 + 16);
                            v289 = &v298[v288];
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v231 + 16, (v231 + 32), v286 + 1, 24);
                            v288 = *(v231 + 16);
                            v289 = &DiscardableAttrDictionary;
                          }
                        }

                        v263 = v288 + 24 * *(v231 + 24);
                        v264 = *v289;
                        v265 = v289[2];
LABEL_486:
                        *(v263 + 16) = v265;
                        *v263 = v264;
                        ++*(v231 + 24);
                        if (v338)
                        {
                          mlir::InFlightDiagnostic::report(&v338);
                        }

                        if (v349[0] == 1)
                        {
                          if (__dst != v349)
                          {
                            free(__dst);
                          }

                          v266 = __p;
                          if (__p)
                          {
                            v267 = *(&__p + 1);
                            v268 = __p;
                            if (*(&__p + 1) != __p)
                            {
                              do
                              {
                                v267 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v267 - 1);
                              }

                              while (v267 != v266);
                              v268 = __p;
                            }

                            *(&__p + 1) = v266;
                            operator delete(v268);
                          }

                          v269 = v343;
                          if (v343)
                          {
                            v270 = *(&v343 + 1);
                            v271 = v343;
                            if (*(&v343 + 1) != v343)
                            {
                              do
                              {
                                v273 = *--v270;
                                v272 = v273;
                                *v270 = 0;
                                if (v273)
                                {
                                  operator delete[](v272);
                                }
                              }

                              while (v270 != v269);
                              v271 = v343;
                            }

                            *(&v343 + 1) = v269;
                            operator delete(v271);
                          }

                          if (v340 != v342)
                          {
                            free(v340);
                          }
                        }

LABEL_506:
                        if (v322 != v324)
                        {
                          free(v322);
                        }

                        mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(&MemorySpace, a2, a3, a4);
                      }
                    }

                    else
                    {
                      *&v338 = 0;
                      BYTE8(v338) = 0;
                      v349[0] = 0;
                      if (v337 != 1)
                      {
                        goto LABEL_440;
                      }
                    }
                  }

                  else
                  {
                    *&v338 = 0;
                    BYTE8(v338) = 0;
                    v349[0] = 0;
                    if (v337 != 1)
                    {
                      goto LABEL_440;
                    }
                  }

                  *(&v338 + 1) = v326;
                  v339 = v327;
                  v340 = v342;
                  v341 = 0x400000000;
                  v207 = v329;
                  if (v329)
                  {
                    v208 = __src;
                    if (__src != v330)
                    {
                      v340 = __src;
                      v341 = v329;
                      __src = v330;
                      HIDWORD(v329) = 0;
                      goto LABEL_413;
                    }

                    if (v329 < 5)
                    {
                      v210 = v342;
                      v209 = v329;
LABEL_411:
                      memcpy(v210, v208, 24 * v209);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v340, v342, v329, 24);
                      v209 = v329;
                      if (v329)
                      {
                        v208 = __src;
                        v210 = v340;
                        goto LABEL_411;
                      }
                    }

                    LODWORD(v341) = v207;
LABEL_413:
                    LODWORD(v329) = 0;
                  }

                  v343 = v331;
                  v331 = 0uLL;
                  __p = v333;
                  v344 = v332;
                  v346 = v334;
                  v332 = 0;
                  v333 = 0uLL;
                  v334 = 0;
                  __dst = v349;
                  v348 = 0;
                  v211 = v336;
                  if (v336)
                  {
                    if (v335 == &v337)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v349, v336, 24);
                      if (v336)
                      {
                        memcpy(__dst, v335, 24 * v336);
                      }

                      LODWORD(v348) = v211;
                    }

                    else
                    {
                      __dst = v335;
                      v348 = v336;
                      v335 = &v337;
                      HIDWORD(v336) = 0;
                    }

                    LODWORD(v336) = 0;
                  }

                  v349[0] = 1;
                  if (v337)
                  {
                    if (v335 != &v337)
                    {
                      free(v335);
                    }

                    v212 = v333;
                    if (v333)
                    {
                      v213 = *(&v333 + 1);
                      v214 = v333;
                      if (*(&v333 + 1) != v333)
                      {
                        do
                        {
                          v213 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v213 - 1);
                        }

                        while (v213 != v212);
                        v214 = v333;
                      }

                      *(&v333 + 1) = v212;
                      operator delete(v214);
                    }

                    v215 = v331;
                    if (v331)
                    {
                      v216 = *(&v331 + 1);
                      v217 = v331;
                      if (*(&v331 + 1) != v331)
                      {
                        do
                        {
                          v219 = *--v216;
                          v218 = v219;
                          *v216 = 0;
                          if (v219)
                          {
                            operator delete[](v218);
                          }
                        }

                        while (v216 != v215);
                        v217 = v331;
                      }

                      *(&v331 + 1) = v215;
                      operator delete(v217);
                    }

                    if (__src != v330)
                    {
                      free(__src);
                    }

                    v337 = 0;
                  }

                  goto LABEL_440;
                }
              }

LABEL_381:
              if (*this == 1 && (*(v192 + 44) & 0x7FFFFF) != 0)
              {
                {
                }

                if (((*(**(v192 + 48) + 32))(*(v192 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  v197 = v323;
                  if (v323 >= HIDWORD(v323))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v322, v324, v323 + 1, 8);
                    v197 = v323;
                  }

                  *(v322 + v197) = v192;
                  LODWORD(v323) = v323 + 1;
                }
              }
            }

            v187 = *(v187 + 8);
          }

          v186 += 24;
        }

        while (v186 != v299);
        v183 = v323;
      }

      if (!v183)
      {
        goto LABEL_506;
      }
    }
  }

  return 1;
}

void llvm::ThreadPoolInterface::asyncImpl<void>(void (***a1)(void, _BYTE *, uint64_t)@<X0>, uint64_t a2@<X2>, std::future<void> *a3@<X8>, uint64_t a4@<X1>)
{
  v13 = *MEMORY[0x1E69E9840];
  std::async[abi:nn200100]<std::function<void ()(void)>>(2, a4, &v10);
  state = v10.__state_;
  a3->__state_ = v10.__state_;
  v10.__state_ = 0;
  std::future<void>::~future(&v10);
  if (state)
  {
    atomic_fetch_add_explicit(&state->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = operator new(0x10uLL);
  *v8 = &unk_1F5AF84B8;
  v8[1] = state;
  v9.__state_ = 0;
  v12 = v8;
  (**a1)(a1, v11, a2);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  std::shared_future<void>::~shared_future(&v9);
}

uint64_t std::async[abi:nn200100]<std::function<void ()(void)>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, std::future<void> *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 != a2)
      {
        v11 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_13;
      }

      v11 = v10;
      (*(*v4 + 24))(v4, v10);
      v4 = v11;
      if (v11)
      {
LABEL_13:
        if (v4 == v10)
        {
          v13 = v12;
          (*(*v4 + 24))(v4, v12);
        }

        else
        {
          v13 = v4;
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_16:
    std::__make_async_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>(v12, a3);
    v6 = v13;
    if (v13 != v12)
    {
      goto LABEL_33;
    }

    (*(*v13 + 32))(v13);
    result = v11;
    if (v11 == v10)
    {
      return (*(*result + 32))(result);
    }

    goto LABEL_36;
  }

  if ((result & 2) == 0)
  {
    a3->__state_ = 0;
    return result;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_20;
  }

  if (v5 != a2)
  {
    v11 = *(a2 + 24);
    *(a2 + 24) = 0;
    goto LABEL_22;
  }

  v11 = v10;
  (*(*v5 + 24))(v5, v10);
  v5 = v11;
  if (!v11)
  {
LABEL_20:
    v5 = 0;
    v13 = 0;
    goto LABEL_25;
  }

LABEL_22:
  if (v5 == v10)
  {
    v13 = v12;
    (*(*v5 + 24))(v5, v12);
    v5 = v13;
  }

  else
  {
    v13 = v5;
    v11 = 0;
  }

LABEL_25:
  v7 = operator new(0xB0uLL);
  v8 = v7;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 850045863;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *(v7 + 11) = 1018212795;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 124) = 0u;
  *v7 = &unk_1F5AF8470;
  if (v5)
  {
    if (v5 == v12)
    {
      *(v7 + 21) = v7 + 144;
      (*(*v5 + 24))(v5);
      v9 = v8->__state_ | 8;
      goto LABEL_31;
    }

    *(v7 + 21) = v5;
    v13 = 0;
  }

  else
  {
    *(v7 + 21) = 0;
  }

  v9 = 8;
LABEL_31:
  v8->__state_ = v9;
  std::future<void>::future(a3, v8);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v13;
    if (v13 != v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    (v8->__on_zero_shared)(v8);
    v6 = v13;
    if (v13 != v12)
    {
LABEL_33:
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      result = v11;
      if (v11 != v10)
      {
        goto LABEL_36;
      }

      return (*(*result + 32))(result);
    }
  }

  (*(*v6 + 32))(v6);
  result = v11;
  if (v11 == v10)
  {
    return (*(*result + 32))(result);
  }

LABEL_36:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

std::future<void> *std::__make_async_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>@<X0>(uint64_t a1@<X0>, std::future<void> *a2@<X8>)
{
  v4 = operator new(0xB0uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5AF8428;
  v5 = *(a1 + 24);
  if (v5)
  {
    if (v5 == a1)
    {
      *(v4 + 21) = v4 + 144;
      (*(*v5 + 24))(v5);
    }

    else
    {
      *(v4 + 21) = v5;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    *(v4 + 21) = 0;
  }

  v6 = operator new(8uLL);
  std::__thread_struct::__thread_struct(v6);
  v7 = operator new(0x20uLL);
  *v7 = v6;
  v7[1] = std::__assoc_sub_state::__execute;
  v7[2] = 0;
  v7[3] = v4;
  v8 = pthread_create(&v11, 0, std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>, v7);
  if (v8)
  {
    std::__throw_system_error(v8, "thread constructor failed");
    return std::__assoc_sub_state::__execute(v10);
  }

  else
  {
    std::thread::detach(&v11);
    std::thread::~thread(&v11);
    result = std::future<void>::future(a2, v4);
    if (!atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      return (*(*v4 + 16))(v4);
    }
  }

  return result;
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_1F5AF8428;
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

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_1F5AF8428;
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

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete(v4);
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

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(const void **a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = a1[3] + (v4 >> 1);
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
    v9 = MEMORY[0x1E12E5780]();
    operator delete(v9);
  }

LABEL_6:
  operator delete(a1);
  return 0;
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_1F5AF8470;
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

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_1F5AF8470;
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

  *a1 = MEMORY[0x1E69E5550] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete(v4);
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
  a1->__state_ = &unk_1F5AF84B8;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_1F5AF84B8;
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

void *std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AF84B8;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AF84B8;
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

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  *v2 = &unk_1F5AF8548;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(v2 + 40) = result;
  return result;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0>(mlir::MLIRContext *,mlir::Operation **,mlir::Operation **,anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&)::{lambda(void)#1},std::allocator<anonymous namespace::OperationVerifier::verifyOnExit(mlir::Operation&)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5AF8548;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
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
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

uint64_t mlir::ConstantIntRanges::getStorageBitwidth(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isIndex(&v5))
  {
    return 64;
  }

  v2 = v5;
  v3 = *(*v5 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v4 = v2;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::IntegerType::getWidth(&v4);
  }

  else
  {
    return 0;
  }
}

void mlir::ConstantIntRanges::maxRange(mlir::ConstantIntRanges *this@<X0>, uint64_t *a3@<X8>)
{
  v3 = this;
  v9 = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, 0, 0);
    v7 = v3;
    llvm::APInt::initSlowCase(&__p, -1, 1);
    mlir::ConstantIntRanges::fromUnsigned(a3, &v8, &__p);
    if (v7 < 0x41)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v7 = this;
  v4 = (0xFFFFFFFFFFFFFFFFLL >> -this);
  if (!this)
  {
    v4 = 0;
  }

  __p = v4;
  mlir::ConstantIntRanges::fromUnsigned(a3, &v8, &__p);
  if (v7 >= 0x41)
  {
LABEL_7:
    if (__p)
    {
      operator delete[](__p);
    }
  }

LABEL_9:
  if (v9 >= 0x41)
  {
    if (v8)
    {
      operator delete[](v8);
    }
  }
}

void mlir::ConstantIntRanges::fromUnsigned(uint64_t *__return_ptr a1@<X8>, mlir::ConstantIntRanges *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v6 = *(this + 2);
  v33 = 1;
  v32 = 0;
  v31 = 1;
  __p = 0;
  v7 = v6 - 1;
  v8 = (v6 - 1) >> 6;
  v9 = (*this + 8 * v8);
  if (v6 < 0x41)
  {
    v9 = this;
  }

  v10 = 1 << v7;
  v11 = (*v9 & (1 << v7)) == 0;
  v12 = *(a3 + 2);
  v13 = v12 - 1;
  if (v12 >= 0x41)
  {
    v14 = (*a3 + 8 * ((v12 - 1) >> 6));
  }

  else
  {
    v14 = a3;
  }

  if ((v11 ^ (((*v14 >> v13) & 1) == 0)))
  {
    v29 = v6;
    if (v6 > 0x40)
    {
      llvm::APInt::initSlowCase(&v28, 0, 0);
      if (v29 > 0x40)
      {
        *(v28 + 8 * v8) |= v10;
        if (v33 < 0x41)
        {
          goto LABEL_34;
        }

LABEL_32:
        if (v32)
        {
          operator delete[](v32);
        }

LABEL_34:
        v32 = v28;
        v33 = v29;
        v29 = v6;
        if (v6 > 0x40)
        {
          llvm::APInt::initSlowCase(&v28, -1, 1);
          if (v29 > 0x40)
          {
            *(v28 + 8 * v8) &= ~v10;
            if (v31 < 0x41)
            {
LABEL_44:
              __p = v28;
              v18 = v29;
              goto LABEL_45;
            }

LABEL_42:
            if (__p)
            {
              operator delete[](__p);
            }

            goto LABEL_44;
          }
        }

        else
        {
          v23 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
          if (!v6)
          {
            v23 = 0;
          }

          v28 = v23;
        }

        v28 &= ~v10;
        if (v31 < 0x41)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v28 = 0;
    }

    v28 |= v10;
    if (v33 < 0x41)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (llvm::APInt::compareSigned(this, a3) >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = this;
  }

  v16 = *(v15 + 2);
  if (v16 > 0x40)
  {
    llvm::APInt::assignSlowCase(&v32, v15);
    if (llvm::APInt::compareSigned(this, a3) <= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = this;
    }
  }

  else
  {
    v32 = *v15;
    v33 = v16;
    if (llvm::APInt::compareSigned(this, a3) <= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = this;
    }
  }

  v18 = *(v17 + 2);
  if (v18 > 0x40)
  {
    llvm::APInt::assignSlowCase(&__p, v17);
    v19 = *(this + 2);
    *(a1 + 2) = v19;
    if (v19 <= 0x40)
    {
      goto LABEL_46;
    }

LABEL_25:
    llvm::APInt::initSlowCase(a1, this);
    v20 = *(a3 + 2);
    *(a1 + 6) = v20;
    if (v20 <= 0x40)
    {
      goto LABEL_47;
    }

LABEL_26:
    llvm::APInt::initSlowCase((a1 + 2), a3);
    v21 = v33;
    *(a1 + 10) = v33;
    if (v21 <= 0x40)
    {
      goto LABEL_48;
    }

    goto LABEL_27;
  }

  __p = *v17;
LABEL_45:
  v31 = v18;
  v24 = *(this + 2);
  *(a1 + 2) = v24;
  if (v24 > 0x40)
  {
    goto LABEL_25;
  }

LABEL_46:
  *a1 = *this;
  v25 = *(a3 + 2);
  *(a1 + 6) = v25;
  if (v25 > 0x40)
  {
    goto LABEL_26;
  }

LABEL_47:
  a1[2] = *a3;
  v26 = v33;
  *(a1 + 10) = v33;
  if (v26 <= 0x40)
  {
LABEL_48:
    a1[4] = v32;
    v27 = v31;
    *(a1 + 14) = v31;
    if (v27 <= 0x40)
    {
      goto LABEL_49;
    }

    goto LABEL_28;
  }

LABEL_27:
  llvm::APInt::initSlowCase((a1 + 4), &v32);
  v22 = v31;
  *(a1 + 14) = v31;
  if (v22 <= 0x40)
  {
LABEL_49:
    a1[6] = __p;
    goto LABEL_50;
  }

LABEL_28:
  llvm::APInt::initSlowCase((a1 + 6), &__p);
  if (v31 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

LABEL_50:
  if (v33 >= 0x41)
  {
    if (v32)
    {
      operator delete[](v32);
    }
  }
}

llvm::APInt *mlir::ConstantIntRanges::constant@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::ConstantIntRanges *this@<X0>)
{
  v4 = *(this + 2);
  *(a1 + 2) = v4;
  if (v4 <= 0x40)
  {
    *a1 = *this;
    *(a1 + 6) = v4;
LABEL_4:
    a1[2] = *this;
    *(a1 + 10) = v4;
LABEL_5:
    a1[4] = *this;
    result = (a1 + 6);
    *(a1 + 14) = v4;
LABEL_6:
    *result = *this;
    return result;
  }

  llvm::APInt::initSlowCase(a1, this);
  v4 = *(this + 2);
  *(a1 + 6) = v4;
  if (v4 <= 0x40)
  {
    goto LABEL_4;
  }

  llvm::APInt::initSlowCase((a1 + 2), this);
  v4 = *(this + 2);
  *(a1 + 10) = v4;
  if (v4 <= 0x40)
  {
    goto LABEL_5;
  }

  llvm::APInt::initSlowCase((a1 + 4), this);
  v6 = *(this + 2);
  result = (a1 + 6);
  *(a1 + 14) = v6;
  if (v6 <= 0x40)
  {
    goto LABEL_6;
  }

  return llvm::APInt::initSlowCase(result, this);
}

void mlir::ConstantIntRanges::range(mlir::ConstantIntRanges *this@<X0>, const llvm::APInt *a2@<X1>, const llvm::APInt *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    mlir::ConstantIntRanges::fromSigned(this, a2, a4);
  }

  else
  {
    mlir::ConstantIntRanges::fromUnsigned(a4, this, a2);
  }
}

void mlir::ConstantIntRanges::fromSigned(mlir::ConstantIntRanges *this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *(this + 2);
  v31 = 1;
  __p = 0;
  v29 = 1;
  v28 = 0;
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

  if (((v8 ^ (((*v11 >> v10) & 1) == 0)) & 1) == 0)
  {
    if (llvm::APInt::compare(this, a2) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = this;
    }

    v14 = *(v13 + 2);
    if (v14 > 0x40)
    {
      llvm::APInt::assignSlowCase(&__p, v13);
      if (llvm::APInt::compare(this, a2) <= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = this;
      }
    }

    else
    {
      __p = *v13;
      v31 = v14;
      if (llvm::APInt::compare(this, a2) <= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = this;
      }
    }

    v17 = *(v15 + 2);
    if (v17 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v28, v15);
      v22 = v31;
      a3[2] = v31;
      if (v22 <= 0x40)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *v15;
      v29 = v17;
      v18 = v31;
      a3[2] = v31;
      if (v18 <= 0x40)
      {
        goto LABEL_37;
      }
    }

LABEL_31:
    llvm::APInt::initSlowCase(a3, &__p);
    v19 = v29;
    a3[6] = v29;
    if (v19 <= 0x40)
    {
      goto LABEL_38;
    }

LABEL_32:
    llvm::APInt::initSlowCase((a3 + 4), &v28);
    v20 = *(this + 2);
    a3[10] = v20;
    if (v20 <= 0x40)
    {
      goto LABEL_39;
    }

LABEL_33:
    llvm::APInt::initSlowCase((a3 + 8), this);
    v21 = *(a2 + 2);
    a3[14] = v21;
    if (v21 <= 0x40)
    {
      goto LABEL_40;
    }

LABEL_34:
    llvm::APInt::initSlowCase((a3 + 12), a2);
    if (v29 < 0x41)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v27 = v6;
  if (v6 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v26, 0, 0);
    if (v31 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    __p = v26;
    v31 = v27;
    v27 = v6;
    llvm::APInt::initSlowCase(&v26, -1, 1);
    if (v29 >= 0x41 && v28)
    {
      operator delete[](v28);
    }
  }

  else
  {
    __p = 0;
    v31 = v27;
    v27 = v6;
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v12 = 0;
    }

    v26 = v12;
  }

  v28 = v26;
  v29 = v27;
  v16 = v31;
  a3[2] = v31;
  if (v16 > 0x40)
  {
    goto LABEL_31;
  }

LABEL_37:
  *a3 = __p;
  v23 = v29;
  a3[6] = v29;
  if (v23 > 0x40)
  {
    goto LABEL_32;
  }

LABEL_38:
  *(a3 + 2) = v28;
  v24 = *(this + 2);
  a3[10] = v24;
  if (v24 > 0x40)
  {
    goto LABEL_33;
  }

LABEL_39:
  *(a3 + 4) = *this;
  v25 = *(a2 + 2);
  a3[14] = v25;
  if (v25 > 0x40)
  {
    goto LABEL_34;
  }

LABEL_40:
  *(a3 + 6) = *a2;
  if (v29 < 0x41)
  {
    goto LABEL_43;
  }

LABEL_41:
  if (v28)
  {
    operator delete[](v28);
  }

LABEL_43:
  if (v31 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t *mlir::ConstantIntRanges::rangeUnion@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = this;
  if (!*(this + 2))
  {
    *(a1 + 2) = 0;
    *a1 = *this;
    v17 = *(this + 6);
    *(a1 + 6) = v17;
    if (v17 > 0x40)
    {
      this = llvm::APInt::initSlowCase((a1 + 2), this + 2);
      v27 = *(v3 + 10);
      *(a1 + 10) = v27;
      if (v27 > 0x40)
      {
LABEL_19:
        this = llvm::APInt::initSlowCase((a1 + 4), v3 + 4);
        v19 = *(v3 + 14);
        *(a1 + 14) = v19;
        if (v19 > 0x40)
        {
LABEL_20:
          v15 = a1 + 6;
          v16 = (v3 + 6);
          goto LABEL_25;
        }

LABEL_34:
        v26 = v3[6];
        goto LABEL_38;
      }
    }

    else
    {
      a1[2] = this[2];
      v18 = *(this + 10);
      *(a1 + 10) = v18;
      if (v18 > 0x40)
      {
        goto LABEL_19;
      }
    }

    a1[4] = v3[4];
    v28 = *(v3 + 14);
    *(a1 + 14) = v28;
    if (v28 > 0x40)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (!*(a3 + 2))
  {
    *(a1 + 2) = 0;
    *a1 = *a3;
    v20 = *(a3 + 6);
    *(a1 + 6) = v20;
    if (v20 > 0x40)
    {
      this = llvm::APInt::initSlowCase((a1 + 2), a3 + 2);
      v29 = *(a3 + 10);
      *(a1 + 10) = v29;
      if (v29 > 0x40)
      {
LABEL_23:
        this = llvm::APInt::initSlowCase((a1 + 4), a3 + 4);
        v22 = *(a3 + 14);
        *(a1 + 14) = v22;
        if (v22 > 0x40)
        {
LABEL_24:
          v15 = a1 + 6;
          v16 = (a3 + 48);
          goto LABEL_25;
        }

LABEL_37:
        v26 = *(a3 + 6);
        goto LABEL_38;
      }
    }

    else
    {
      a1[2] = *(a3 + 2);
      v21 = *(a3 + 10);
      *(a1 + 10) = v21;
      if (v21 > 0x40)
      {
        goto LABEL_23;
      }
    }

    a1[4] = *(a3 + 4);
    v30 = *(a3 + 14);
    *(a1 + 14) = v30;
    if (v30 > 0x40)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (llvm::APInt::compare(this, a3) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = v3;
  }

  v7 = a3 + 16;
  if (llvm::APInt::compare((v3 + 2), (a3 + 16)) > 0)
  {
    v7 = (v3 + 2);
  }

  v8 = (v3 + 4);
  if (llvm::APInt::compareSigned((v3 + 4), (a3 + 32)) >= 0)
  {
    v8 = a3 + 32;
  }

  v9 = (v3 + 6);
  v10 = (a3 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this > 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  *(a1 + 2) = v11;
  if (v11 > 0x40)
  {
    this = llvm::APInt::initSlowCase(a1, v6);
    v23 = *(v7 + 2);
    *(a1 + 6) = v23;
    if (v23 > 0x40)
    {
LABEL_14:
      this = llvm::APInt::initSlowCase((a1 + 2), v7);
      v13 = *(v8 + 2);
      *(a1 + 10) = v13;
      if (v13 > 0x40)
      {
        goto LABEL_15;
      }

LABEL_30:
      a1[4] = *v8;
      v25 = *(v10 + 2);
      *(a1 + 14) = v25;
      if (v25 > 0x40)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *a1 = *v6;
    v12 = *(v7 + 2);
    *(a1 + 6) = v12;
    if (v12 > 0x40)
    {
      goto LABEL_14;
    }
  }

  a1[2] = *v7;
  v24 = *(v8 + 2);
  *(a1 + 10) = v24;
  if (v24 <= 0x40)
  {
    goto LABEL_30;
  }

LABEL_15:
  this = llvm::APInt::initSlowCase((a1 + 4), v8);
  v14 = *(v10 + 2);
  *(a1 + 14) = v14;
  if (v14 <= 0x40)
  {
LABEL_31:
    v26 = *v10;
LABEL_38:
    a1[6] = v26;
    return this;
  }

LABEL_16:
  v15 = a1 + 6;
  v16 = v10;
LABEL_25:

  return llvm::APInt::initSlowCase(v15, v16);
}

const void **mlir::ConstantIntRanges::intersection@<X0>(const void **this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = this;
  if (!*(this + 2))
  {
    a3[2] = 0;
    *a3 = *this;
    v17 = *(this + 6);
    a3[6] = v17;
    if (v17 > 0x40)
    {
      this = llvm::APInt::initSlowCase((a3 + 4), this + 2);
      v27 = *(v3 + 10);
      a3[10] = v27;
      if (v27 > 0x40)
      {
LABEL_19:
        this = llvm::APInt::initSlowCase((a3 + 8), v3 + 4);
        v19 = *(v3 + 14);
        a3[14] = v19;
        if (v19 > 0x40)
        {
LABEL_20:
          v15 = a3 + 12;
          v16 = v3 + 6;
          goto LABEL_25;
        }

LABEL_34:
        v26 = v3[6];
        goto LABEL_38;
      }
    }

    else
    {
      *(a3 + 2) = this[2];
      v18 = *(this + 10);
      a3[10] = v18;
      if (v18 > 0x40)
      {
        goto LABEL_19;
      }
    }

    *(a3 + 4) = v3[4];
    v28 = *(v3 + 14);
    a3[14] = v28;
    if (v28 > 0x40)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (!*(a2 + 2))
  {
    a3[2] = 0;
    *a3 = *a2;
    v20 = *(a2 + 6);
    a3[6] = v20;
    if (v20 > 0x40)
    {
      this = llvm::APInt::initSlowCase((a3 + 4), a2 + 2);
      v29 = *(a2 + 10);
      a3[10] = v29;
      if (v29 > 0x40)
      {
LABEL_23:
        this = llvm::APInt::initSlowCase((a3 + 8), a2 + 4);
        v22 = *(a2 + 14);
        a3[14] = v22;
        if (v22 > 0x40)
        {
LABEL_24:
          v15 = a3 + 12;
          v16 = (a2 + 48);
          goto LABEL_25;
        }

LABEL_37:
        v26 = *(a2 + 6);
        goto LABEL_38;
      }
    }

    else
    {
      *(a3 + 2) = *(a2 + 2);
      v21 = *(a2 + 10);
      a3[10] = v21;
      if (v21 > 0x40)
      {
        goto LABEL_23;
      }
    }

    *(a3 + 4) = *(a2 + 4);
    v30 = *(a2 + 14);
    a3[14] = v30;
    if (v30 > 0x40)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (llvm::APInt::compare(this, a2) <= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = a2 + 16;
  if (llvm::APInt::compare((v3 + 2), (a2 + 16)) < 0)
  {
    v7 = (v3 + 2);
  }

  v8 = (v3 + 4);
  if (llvm::APInt::compareSigned((v3 + 4), (a2 + 32)) <= 0)
  {
    v8 = a2 + 32;
  }

  v9 = (v3 + 6);
  v10 = (a2 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this < 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  a3[2] = v11;
  if (v11 > 0x40)
  {
    this = llvm::APInt::initSlowCase(a3, v6);
    v23 = *(v7 + 2);
    a3[6] = v23;
    if (v23 > 0x40)
    {
LABEL_14:
      this = llvm::APInt::initSlowCase((a3 + 4), v7);
      v13 = *(v8 + 2);
      a3[10] = v13;
      if (v13 > 0x40)
      {
        goto LABEL_15;
      }

LABEL_30:
      *(a3 + 4) = *v8;
      v25 = *(v10 + 2);
      a3[14] = v25;
      if (v25 > 0x40)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *a3 = *v6;
    v12 = *(v7 + 2);
    a3[6] = v12;
    if (v12 > 0x40)
    {
      goto LABEL_14;
    }
  }

  *(a3 + 2) = *v7;
  v24 = *(v8 + 2);
  a3[10] = v24;
  if (v24 <= 0x40)
  {
    goto LABEL_30;
  }

LABEL_15:
  this = llvm::APInt::initSlowCase((a3 + 8), v8);
  v14 = *(v10 + 2);
  a3[14] = v14;
  if (v14 <= 0x40)
  {
LABEL_31:
    v26 = *v10;
LABEL_38:
    *(a3 + 6) = v26;
    return this;
  }

LABEL_16:
  v15 = a3 + 12;
  v16 = v10;
LABEL_25:

  return llvm::APInt::initSlowCase(v15, v16);
}