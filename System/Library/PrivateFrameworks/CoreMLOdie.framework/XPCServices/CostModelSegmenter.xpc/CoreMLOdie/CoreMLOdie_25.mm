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
    if (v2)
    {
      v4 = (v2 - 8);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4[2];
    v4[3] &= 7uLL;
    v6 = v4[1];
    *v5 = v6;
    *(v6 + 8) = v5;
    v4[1] = 0;
    v4[2] = 0;
    mlir::Block::~Block((v2 - 8));
    operator delete();
  }
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

      v22 = v21 + 32;
      v23 = *(v21 + 5);
      if (v23 != v21 + 32)
      {
        v24 = v19 - 1;
        if (!v19)
        {
          v24 = 0;
        }

        v25 = v24 + 4;
        do
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v27 = mlir::Operation::clone(v26, a4, v18);
          llvm::ilist_traits<mlir::Operation>::addNodeToList(v25, v27);
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
          v28 = *v25;
          *v29 = *v25;
          v29[1] = v25;
          *(v28 + 8) = v29;
          *v25 = v29;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
          v23 = *(v23 + 8);
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
      v90 = v32 + 4;
      v91 = v31 + 32;
      if (v34 != v31 + 32 && v33 != v32 + 4)
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
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v38 = v37;
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
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

      v33 = v33[1];
      v34 = *(v34 + 8);
      if (v34 == v91 || v33 == v90)
      {
        goto LABEL_36;
      }
    }
  }
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

unint64_t *mlir::RegionRange::RegionRange(unint64_t *result, uint64_t a2, unint64_t a3)
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
  v7 = mlir::StringAttr::get(Context, v23, v6);
  v8 = *(((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 32;
  v11 = *(v9 + 40);
  if (v11 != v9 + 32)
  {
    v12 = v7;
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v14 = v13;
      v23[0] = v12;
      v15 = v12;
      if (*(v13 + 47))
      {
        Value = mlir::StringAttr::getValue(v23);
        InherentAttr = mlir::Operation::getInherentAttr(v14, Value, v17);
        if (v19)
        {
          goto LABEL_11;
        }

        v15 = v23[0];
      }

      InherentAttr = mlir::DictionaryAttr::get(v14 + 56, v15);
LABEL_11:
      if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v21 = InherentAttr;
        v22 = v14;
        sub_100078AB0(v4, &v21, &v22, v23);
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  return this;
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

uint64_t mlir::SymbolTable::replaceAllSymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::SymbolRefAttr::get(a2);
  sub_100146C08(&v7, a1, a3);
  if (v8)
  {
    sub_1001473E4(*v7, v6);
    operator new();
  }

  if (v7 != &v9)
  {
    free(v7);
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

    Value = mlir::StringAttr::getValue(&v11);
    if (v7 != 6)
    {
      return v7 == 7 && *Value == 1986622064 && *(Value + 3) == 1702125942;
    }

    v10 = *Value == 1953719662 && *(Value + 4) == 25701;
    return (2 * v10);
  }

  return result;
}

void mlir::SymbolTable::setSymbolVisibility(uint64_t a1, int a2)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  if (a2)
  {
    v6 = "nested";
    if (a2 == 1)
    {
      v6 = "private";
    }

    v7 = 6;
    v14 = 261;
    if (a2 == 1)
    {
      v7 = 7;
    }

    v13[0] = v6;
    v13[1] = v7;
    v8 = mlir::StringAttr::get(Context, v13, v5);
    v9 = mlir::Attribute::getContext((a1 + 24));
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v11 = mlir::StringAttr::get(v9, &v15, v10);
    sub_1000A88A0(a1, v11, v8);
  }

  else
  {
    v17 = 261;
    v15 = "sym_visibility";
    v16 = 14;
    v12 = mlir::StringAttr::get(Context, &v15, v5);
    sub_1000A8998(a1, v12);
  }
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
      if (mlir::StringAttr::getReferencedDialect(&v8))
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
        sub_100281DDC();
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
          if (!mlir::StringAttr::getReferencedDialect(&v8))
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
    v22 = 261;
    v21[0] = "sym_name";
    v21[1] = 8;
    v6 = mlir::StringAttr::get(Context, v21, v5);
    v7 = v2[1];
    v8 = v7 ? v7 - 8 : 0;
    v9 = v8 + 32;
    v10 = *(v8 + 40);
    if (v10 != v8 + 32)
    {
      v11 = v6;
      do
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v13 = v12;
        v21[0] = v11;
        v14 = v11;
        if (*(v12 + 47))
        {
          Value = mlir::StringAttr::getValue(v21);
          InherentAttr = mlir::Operation::getInherentAttr(v13, Value, v16);
          if (v18)
          {
            goto LABEL_13;
          }

          v14 = v21[0];
        }

        InherentAttr = mlir::DictionaryAttr::get(v13 + 56, v14);
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
            return v13;
          }
        }

        else if (!a2)
        {
          return v13;
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, uint64_t a2)
{
  v5 = v7;
  v6 = 0x400000000;
  if (sub_100144090(a1, a2, &v5, sub_100146260, &v4))
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

uint64_t sub_100144090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v27 = a2;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v27);
  result = a4(a5, a1, RootReference);
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
    NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v27);
    if (v14)
    {
      v15 = NestedReferences;
      v16 = v14;
      {
        sub_100281DDC();
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
            v18 = mlir::SymbolRefAttr::getRootReference(&v26);
            v19 = a4(a5, v11, v18);
            if (!v19)
            {
              return 0;
            }

            v11 = v19;
            {
              sub_100281DDC();
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
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v7 = v9;
  v8 = 0x400000000;
  if (sub_100144090(NearestSymbolTable, a2, &v7, sub_100146260, &v6))
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

uint64_t mlir::detail::verifySymbolTable(mlir::detail *this, mlir::Operation *a2)
{
  v3 = *(this + 11);
  if ((v3 & 0x7FFFFF) == 1)
  {
    v4 = ((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    v5 = *(v4 + 8);
    if (v5 != v4 && *(v5 + 8) == v4)
    {
      v54 = 0;
      v53[0] = 0;
      v53[1] = 0;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v29 = i - 8;
        if (!i)
        {
          v29 = 0;
        }

        v30 = v29 + 32;
        for (j = *(v29 + 40); j != v30; j = *(j + 8))
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v33 = v32;
          if (!*(v32 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v32, "sym_name", 8), (v35 & 1) == 0))
          {
            InherentAttr = mlir::DictionaryAttr::get((v33 + 7), "sym_name", 8uLL);
          }

          if (InherentAttr)
          {
            v36 = *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? InherentAttr : 0;
            v52 = v36;
            if (v36)
            {
              v60 = v33[3];
              sub_1000B81AC(v53, &v52, &v60, &v50);
              if ((v51 & 1) == 0)
              {
                v56 = 257;
                mlir::Operation::emitError(&v60, v33, v55);
                v49[0] = mlir::StringAttr::getValue(&v52);
                v49[1] = v37;
                if (v60)
                {
                  sub_10007BBF0(&v61, "redefinition of symbol named '", v49, "'");
                }

                mlir::Diagnostic::attachNote(&v61, *(v50 + 8), 1);
              }
            }
          }
        }
      }

      v60 = 0;
      v61 = 0;
      v62 = 0;
      v55[0] = &v60;
      v38 = *(this + 11);
      v39 = v38 & 0x7FFFFF;
      if ((v38 & 0x7FFFFF) != 0)
      {
        v40 = ((this + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }

      v41 = sub_100144C0C(v40, v39, sub_10014626C, v55);
      v10 = BYTE4(v41) & (v41 != 0);
      v42 = v60;
      if (v62)
      {
        v43 = (v60 + 8);
        v44 = 16 * v62;
        do
        {
          if ((*(v43 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v45 = *v43;
            *v43 = 0;
            if (v45)
            {
              llvm::deallocate_buffer(*(v45 + 8), (16 * *(v45 + 24)), 8uLL);
              operator delete();
            }
          }

          v43 += 2;
          v44 -= 16;
        }

        while (v44);
        v42 = v60;
        v46 = (16 * v62);
      }

      else
      {
        v46 = 0;
      }

      llvm::deallocate_buffer(v42, v46, 8uLL);
      llvm::deallocate_buffer(v53[0], (16 * v54), 8uLL);
    }

    else
    {
      v56 = 257;
      mlir::Operation::emitOpError(&v60, this, v55);
      if (v60)
      {
        v57 = 3;
        v58 = "Operations with a 'SymbolTable' must have exactly one block";
        v59 = 59;
        v6 = &v57;
        v7 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v57 && v63 + 24 * v64 > &v57)
          {
            v48 = &v57 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v7 = v63;
            v6 = (v63 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v6 = &v57;
            v7 = v63;
          }
        }

        v8 = &v7[24 * v64];
        v9 = *v6;
        *(v8 + 2) = *(v6 + 2);
        *v8 = v9;
        ++v64;
      }

      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v72 == 1)
      {
        if (v71 != &v72)
        {
          free(v71);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v70;
          v13 = __p;
          if (v70 != __p)
          {
            do
            {
              v12 = sub_100052FFC(v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v70 = v11;
          operator delete(v13);
        }

        v14 = v67;
        if (!v67)
        {
          goto LABEL_44;
        }

        v15 = v68;
        v16 = v67;
        if (v68 == v67)
        {
LABEL_43:
          v68 = v14;
          operator delete(v16);
LABEL_44:
          if (v63 != v66)
          {
            free(v63);
          }

          return v10;
        }

        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
LABEL_42:
        v16 = v67;
        goto LABEL_43;
      }
    }
  }

  else
  {
    v56 = 257;
    mlir::Operation::emitOpError(&v60, this, v55);
    if (v60)
    {
      v57 = 3;
      v58 = "Operations with a 'SymbolTable' must have exactly one region";
      v59 = 60;
      v18 = &v57;
      v19 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v57 && v63 + 24 * v64 > &v57)
        {
          v47 = &v57 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v19 = v63;
          v18 = (v63 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v18 = &v57;
          v19 = v63;
        }
      }

      v20 = &v19[24 * v64];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      ++v64;
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v70;
        v24 = __p;
        if (v70 != __p)
        {
          do
          {
            v23 = sub_100052FFC(v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v70 = v22;
        operator delete(v24);
      }

      v14 = v67;
      if (!v67)
      {
        goto LABEL_44;
      }

      v25 = v68;
      v16 = v67;
      if (v68 == v67)
      {
        goto LABEL_43;
      }

      do
      {
        v26 = *--v25;
        *v25 = 0;
        if (v26)
        {
          operator delete[]();
        }
      }

      while (v25 != v14);
      goto LABEL_42;
    }
  }

  return v10;
}

uint64_t sub_100144C0C(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = a1;
  v8 = a1 + 24 * a2;
  v38 = &v40;
  v39 = &_mh_execute_header;
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
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, &v40, 0xAAAAAAAAAAAAAAABLL * v9, 8);
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
    v16[-1] = vaddq_s64(v18, xmmword_10028FC90);
    *v16 = vaddq_s64(v18, xmmword_10028FD80);
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
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v25 = v24;
        v26 = a3(a4, v24);
        if ((v26 & 0x1FFFFFFFFLL) != 0x100000001)
        {
          v32 = v26 & 0xFF00000000;
          v20 = v26;
          v33 = v38;
          if (v38 != &v40)
          {
            goto LABEL_29;
          }

          return v32 | v20;
        }

        {
          sub_100281DDC();
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
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, &v40, v30 + 1, 8);
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

    v32 = &_mh_execute_header;
    v33 = v38;
    if (v38 != &v40)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v32 = &_mh_execute_header;
    v20 = 1;
    v33 = v38;
    if (v38 != &v40)
    {
LABEL_29:
      free(v33);
    }
  }

  return v32 | v20;
}

uint64_t mlir::detail::verifySymbol(mlir::detail *this, mlir::Operation *a2)
{
  if (!*(this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(this + 56, "sym_name", 8uLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v67 = 257;
    mlir::Operation::emitOpError(&v72, this, v66);
    if (v72)
    {
      LODWORD(v68) = 3;
      v69 = "requires string attribute '";
      v70 = 27;
      v5 = &v68;
      v6 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v59 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v6 = v74;
          v5 = (v74 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v5 = &v68;
          v6 = v74;
        }
      }

      v7 = &v6[24 * v75];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v75;
      if (v72)
      {
        v71 = 261;
        v68 = "sym_name";
        v69 = 8;
        mlir::Diagnostic::operator<<(v73, &v68);
        if (v72)
        {
          LODWORD(v68) = 3;
          v69 = "'";
          v70 = 1;
          v9 = &v68;
          v10 = v74;
          if (v75 >= v76)
          {
            if (v74 <= &v68 && v74 + 24 * v75 > &v68)
            {
              v60 = &v68 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v10 = v74;
              v9 = (v74 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v9 = &v68;
              v10 = v74;
            }
          }

          v11 = &v10[24 * v75];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          ++v75;
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v81;
        v16 = __p;
        if (v81 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v81 = v14;
        operator delete(v16);
      }

      v17 = v78;
      if (!v78)
      {
        goto LABEL_94;
      }

      v18 = v79;
      v19 = v78;
      if (v79 == v78)
      {
LABEL_93:
        v79 = v17;
        operator delete(v19);
LABEL_94:
        if (v74 != v77)
        {
          free(v74);
        }

        return v13;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
LABEL_92:
      v19 = v78;
      goto LABEL_93;
    }

    return v13;
  }

  if (!*(this + 47) || (v21 = mlir::Operation::getInherentAttr(this, "sym_visibility", 14), (v22 & 1) == 0))
  {
    v21 = mlir::DictionaryAttr::get(this + 56, "sym_visibility", 0xEuLL);
  }

  if (!v21)
  {
    return 1;
  }

  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v65 = v23;
  if (!v23)
  {
    v30 = v21;
    v67 = 257;
    mlir::Operation::emitOpError(&v72, this, v66);
    if (v72)
    {
      LODWORD(v68) = 3;
      v69 = "requires visibility attribute '";
      v70 = 31;
      v31 = &v68;
      v32 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v68 && v74 + 24 * v75 > &v68)
        {
          v62 = &v68 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v32 = v74;
          v31 = (v74 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v31 = &v68;
          v32 = v74;
        }
      }

      v33 = &v32[24 * v75];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v75;
      if (v72)
      {
        v71 = 261;
        v68 = "sym_visibility";
        v69 = 14;
        mlir::Diagnostic::operator<<(v73, &v68);
        if (v72)
        {
          LODWORD(v68) = 3;
          v69 = "' to be a string attribute, but got ";
          v70 = 36;
          v35 = &v68;
          v36 = v74;
          if (v75 >= v76)
          {
            if (v74 <= &v68 && v74 + 24 * v75 > &v68)
            {
              v63 = &v68 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v36 = v74;
              v35 = (v74 + v63);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
              v35 = &v68;
              v36 = v74;
            }
          }

          v37 = &v36[24 * v75];
          v38 = *v35;
          *(v37 + 2) = v35[2];
          *v37 = v38;
          ++v75;
          if (v72)
          {
            v39 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v30);
            v40 = v74;
            if (v75 >= v76)
            {
              if (v74 <= &v68 && v74 + 24 * v75 > &v68)
              {
                v64 = &v68 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v40 = v74;
                v39 = (v74 + v64);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v39 = &v68;
                v40 = v74;
              }
            }

            v41 = &v40[24 * v75];
            v42 = *v39;
            *(v41 + 2) = v39[2];
            *v41 = v42;
            ++v75;
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v81;
        v45 = __p;
        if (v81 != __p)
        {
          do
          {
            v44 = sub_100052FFC(v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v81 = v43;
        operator delete(v45);
      }

      v17 = v78;
      if (!v78)
      {
        goto LABEL_94;
      }

      v46 = v79;
      v19 = v78;
      if (v79 == v78)
      {
        goto LABEL_93;
      }

      do
      {
        v47 = *--v46;
        *v46 = 0;
        if (v47)
        {
          operator delete[]();
        }
      }

      while (v46 != v17);
      goto LABEL_92;
    }

    return v13;
  }

  Value = mlir::StringAttr::getValue(&v65);
  if (v25 != 7)
  {
    if (v25 != 6)
    {
      goto LABEL_72;
    }

    if (*Value != 1818391920 || *(Value + 4) != 25449)
    {
      v27 = *(Value + 4);
      v28 = *Value == 1953719662;
      v29 = 25701;
      goto LABEL_68;
    }

    return 1;
  }

  v27 = *(Value + 3);
  v28 = *Value == 1986622064;
  v29 = 1702125942;
LABEL_68:
  if (v28 && v27 == v29)
  {
    return 1;
  }

LABEL_72:
  v71 = 257;
  mlir::Operation::emitOpError(&v72, this, &v68);
  if (v72)
  {
    LODWORD(v66[0]) = 3;
    v66[1] = "visibility expected to be one of [public, private, nested], but got ";
    v66[2] = 74;
    v49 = v66;
    v50 = v74;
    if (v75 >= v76)
    {
      if (v74 <= v66 && v74 + 24 * v75 > v66)
      {
        v61 = v66 - v74;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v50 = v74;
        v49 = (v74 + v61);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
        v49 = v66;
        v50 = v74;
      }
    }

    v51 = &v50[24 * v75];
    v52 = *v49;
    *(v51 + 2) = v49[2];
    *v51 = v52;
    ++v75;
    if (v72)
    {
      mlir::Diagnostic::operator<<(v73, v65);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
  if (v72)
  {
    mlir::InFlightDiagnostic::report(&v72);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v81;
      v55 = __p;
      if (v81 != __p)
      {
        do
        {
          v54 = sub_100052FFC(v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v81 = v53;
      operator delete(v55);
    }

    v17 = v78;
    if (!v78)
    {
      goto LABEL_94;
    }

    v56 = v79;
    v19 = v78;
    if (v79 == v78)
    {
      goto LABEL_93;
    }

    do
    {
      v57 = *--v56;
      *v56 = 0;
      if (v57)
      {
        operator delete[]();
      }
    }

    while (v56 != v17);
    goto LABEL_92;
  }

  return v13;
}

void mlir::SymbolTable::getSymbolUses(mlir::SymbolTable *this@<X0>, mlir::Operation *a2@<X1>, uint64_t a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  sub_100146C08(&v15, this, a2);
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
        v14[0] = sub_10014736C;
        v14[1] = v12;
        v13 = v14;
        if ((sub_100144C0C(v8, 1, sub_100146940, &v13) & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((sub_100146598(v8, sub_10014736C, v12) & 0x100000000) == 0)
      {
LABEL_13:
        *a3 = 0;
        *(a3 + 24) = 0;
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
  *a3 = *__p;
  *(a3 + 16) = v9;
  *(a3 + 24) = 1;
}

BOOL mlir::SymbolTable::symbolKnownUseEmpty(mlir::SymbolTable *this, mlir::Operation *a2, mlir::Operation *a3)
{
  sub_100146C08(&v16, this, a2);
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

      v15[0] = sub_1001473BC;
      v15[1] = &v13;
      v14 = v15;
      v10 = sub_100144C0C(v9, 1, sub_100146940, &v14);
      v6 = (v10 & 0x1FFFFFFFFLL) == 0x100000001;
      v3 += 16;
      if ((v10 & 0x1FFFFFFFFLL) != 0x100000001 || v3 == v4)
      {
        goto LABEL_14;
      }
    }

    v5 = sub_100146598(v9, sub_1001473BC, &v13);
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
  v5 = a2;
  sub_100145EF8(this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

uint64_t mlir::SymbolTableCollection::lookupSymbolIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v8;
  v7 = 0x400000000;
  if (sub_100144090(a2, a3, &v6, sub_1001478C0, &v5))
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

uint64_t mlir::SymbolTableCollection::lookupNearestSymbolFrom(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, a2);
  if (!NearestSymbolTable)
  {
    return 0;
  }

  v8 = a1;
  v9 = v11;
  v10 = 0x400000000;
  if (sub_100144090(NearestSymbolTable, a3, &v9, sub_1001478C0, &v8))
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

uint64_t *sub_100145EF8@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
    sub_100147958(result, v4);
    sub_10003D9D4(v16, a2, &v18);
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

uint64_t sub_10014607C(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_100281E6C();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &CostModelSegmenter;
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
    sub_100281E18();
    v3 = v21;
    a1 = v22;
    v4 = &CostModelSegmenter;
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
    sub_100281E18();
    v4 = &CostModelSegmenter;
    v18 = v23;
  }

  base_props = v4[51].base_props;
  v20 = *(*v17 + 104);

  return v20(v17, base_props, v18);
}

unint64_t sub_10014626C(void *a1, uint64_t a2)
{
  if (!sub_1001462EC(a2) || !a2)
  {
    return 0x100000001;
  }

  v4 = sub_1001462EC(a2);
  return &_mh_execute_header & 0xFFFFFFFFFFFFFFFELL | (*v4)(v4, a2, *a1) & 1;
}

uint64_t sub_1001462EC(uint64_t a1)
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
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      sub_100281F00();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
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
    sub_100281EAC();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
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
    sub_100281EAC();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[229];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_1001464D0(uint64_t a1, uint64_t a2)
{
  {
    sub_100281F40();
  }

  return llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name;
}

const char *sub_100146518()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolUserOpInterface]";
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

uint64_t sub_100146598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 44) & 0x7FFFFF) == 1)
  {
    v6 = *(a1 + 48);
    if (*(v6 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      if (*(v6 + 24))
      {
        goto LABEL_4;
      }

LABEL_13:
      v8 = 0;
      v9 = 0;
      v7 = 0;
      return v9 | v7 | v8;
    }

    v16[0] = *(v6 + 8);
    if (!mlir::StringAttr::getReferencedDialect(v16))
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if (sub_100146718(a1, a2, a3))
  {
    {
      sub_100281DDC();
    }

    if ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v7 = 0;
      v8 = &_mh_execute_header;
      v9 = 1;
    }

    else
    {
      v10 = *(a1 + 44);
      v11 = v10 & 0x7FFFFF;
      if ((v10 & 0x7FFFFF) != 0)
      {
        v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v16[0] = a2;
      v16[1] = a3;
      v15 = v16;
      v13 = sub_100144C0C(v12, v11, sub_100146940, &v15);
      v7 = v13 & 0xFFFFFF00;
      v9 = v13;
      v8 = v13 & 0xFF00000000;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = &_mh_execute_header;
  }

  return v9 | v7 | v8;
}

uint64_t sub_100146718(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10[0] = off_1002B7808;
  v10[1] = v7;
  v10[2] = &v6;
  v11 = v10;
  *(&v8[0] + 1) = sub_100130CBC(v8, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v4 = mlir::AttrTypeWalker::walkImpl(v8, AttrDictionary, 0);
  sub_100130EE4(v8);
  return v4;
}

__n128 sub_1001468B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001468E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100146940(uint64_t **a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) != 1)
  {
    return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
  }

  v2 = *(a2 + 48);
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v2 + 8);
    v4 = a1;
    v5 = a2;
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v8);
    a2 = v5;
    v7 = ReferencedDialect;
    a1 = v4;
    if (v7)
    {
      return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
    }
  }

  else if (*(v2 + 24))
  {
    return sub_100146718(a2, **a1, (*a1)[1]) | &_mh_execute_header;
  }

  return 0;
}

void sub_1001469EC(uint64_t a1, _OWORD *a2)
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
    sub_10002BC08();
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

    sub_10002BC08();
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

BOOL sub_100146B0C(uint64_t a1, uint64_t a2)
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
    mlir::SymbolRefAttr::getNestedReferences(&v19);
    if (!v5)
    {
      return 0;
    }
  }

  RootReference = mlir::SymbolRefAttr::getRootReference(&v17);
  if (RootReference != mlir::SymbolRefAttr::getRootReference(&v18))
  {
    return 0;
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v17);
  v9 = v8;
  v10 = mlir::SymbolRefAttr::getNestedReferences(&v18);
  if (v11 >= v9)
  {
    return 0;
  }

  if (v11)
  {
    v12 = 8 * v11 - 8;
    do
    {
      v14 = *NestedReferences++;
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

void sub_100146C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v7 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
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

  v66 = &v70;
  v67 = 4;
  v68 = 0;
  v69 = 1;
  v71 = v73;
  v72 = 0x400000000;
  ParentOp = a3;
  while (ParentOp != a2)
  {
    if (v69 == 1)
    {
      v10 = HIDWORD(v67);
      if (HIDWORD(v67))
      {
        v11 = 8 * HIDWORD(v67);
        v12 = v66;
        while (*v12 != ParentOp)
        {
          ++v12;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_22;
      }

LABEL_16:
      if (HIDWORD(v67) < v67)
      {
        ++HIDWORD(v67);
        *(v66 + v10) = ParentOp;
LABEL_19:
        v14 = v72;
        if (v72 >= HIDWORD(v72))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
          v14 = v72;
        }

        *(v71 + v14) = ParentOp;
        LODWORD(v72) = v72 + 1;
        goto LABEL_22;
      }
    }

    llvm::SmallPtrSetImplBase::insert_imp_big(&v66, ParentOp);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = *(ParentOp + 16);
    if (v15)
    {
      ParentOp = mlir::Block::getParentOp(v15);
      if (ParentOp)
      {
        continue;
      }
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = mlir::Block::getParentOp(v16);
    }

    else
    {
      v17 = 0;
    }

    v60 = a3;
    while (1)
    {
      if (v69 == 1)
      {
        if (HIDWORD(v67))
        {
          v22 = v66;
          v23 = 8 * HIDWORD(v67);
          while (*v22 != v17)
          {
            ++v22;
            v23 -= 8;
            if (!v23)
            {
              goto LABEL_42;
            }
          }

LABEL_44:
          v63 = v65;
          v64 = 0x200000001;
          Context = mlir::Attribute::getContext((a2 + 24));
          v27 = mlir::SymbolRefAttr::get(v8);
          v65[0] = v27;
          v28 = *(a2 + 16);
          if (v28)
          {
            v29 = mlir::Block::getParentOp(v28);
            if (v29 != v17)
            {
              goto LABEL_46;
            }

LABEL_78:
            if (v17 != a3)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
          }

          v29 = 0;
          if (!v17)
          {
            goto LABEL_78;
          }

LABEL_46:
          v74 = &v76;
          v76 = v27;
          v75 = 0x100000001;
          v62 = 261;
          v61[0] = "sym_name";
          v61[1] = 8;
          v30 = mlir::StringAttr::get(Context, v61, v26);
          {
            goto LABEL_49;
          }

          while (2)
          {
            sub_100281DDC();
LABEL_49:
            if (!(*(**(v29 + 48) + 32))(*(v29 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
LABEL_72:
              v49 = 0;
              v50 = v74;
              a3 = v60;
              if (v74 == &v76)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            v61[0] = v30;
            v31 = v30;
            if (*(v29 + 47))
            {
              Value = mlir::StringAttr::getValue(v61);
              v34 = mlir::Operation::getInherentAttr(v29, Value, v33);
              if ((v35 & 1) == 0)
              {
                v31 = v61[0];
                goto LABEL_53;
              }
            }

            else
            {
LABEL_53:
              v34 = mlir::DictionaryAttr::get(v29 + 56, v31);
            }

            v36 = v34;
            if (!v34 || *(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              goto LABEL_72;
            }

            v37 = mlir::SymbolRefAttr::get(v34, v74, v75);
            v38 = v64;
            if (v64 >= HIDWORD(v64))
            {
              v48 = v37;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 8);
              v37 = v48;
              v38 = v64;
            }

            *(v63 + v38) = v37;
            LODWORD(v64) = v64 + 1;
            v39 = *(v29 + 16);
            if (v39)
            {
              v29 = mlir::Block::getParentOp(v39);
              if (v29 == v17)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v29 = 0;
              if (!v17)
              {
LABEL_98:
                v49 = 1;
                v50 = v74;
                a3 = v60;
                if (v74 == &v76)
                {
LABEL_74:
                  if (v17 != a3)
                  {
                    if ((v49 & 1) == 0)
                    {
                      *a1 = a1 + 16;
                      *(a1 + 8) = 0x200000000;
                      goto LABEL_89;
                    }

LABEL_79:
                    *(a1 + 16) = *(v63 + v64 - 1);
                    *a1 = a1 + 16;
                    *(a1 + 24) = a3 & 0xFFFFFFFFFFFFFFFBLL;
                    *(a1 + 8) = 0x200000001;
LABEL_89:
                    if (v63 != v65)
                    {
                      free(v63);
                    }

                    v21 = v71;
                    if (v71 != v73)
                    {
LABEL_92:
                      free(v21);
                    }

                    goto LABEL_93;
                  }

LABEL_80:
                  *a1 = a1 + 16;
                  *(a1 + 8) = 0x200000000;
                  v51 = *(a2 + 16);
                  if (v51)
                  {
                    v51 = mlir::Block::getParentOp(v51);
                  }

                  if (v64)
                  {
                    v52 = 0;
                    v53 = 8 * v64;
                    do
                    {
                      v54 = *(v63 + v52);
                      v55 = *(v51 + 40);
                      v56 = *(v51 + 44);
                      v57 = *(a1 + 8);
                      if (v57 >= *(a1 + 12))
                      {
                        v59 = v51;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v57 + 1, 16);
                        v51 = v59;
                        v57 = *(a1 + 8);
                      }

                      v58 = (*a1 + 16 * v57);
                      *v58 = v54;
                      v58[1] = (((v51 + 16 * ((v56 >> 23) & 1) + ((v56 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v55) | 4;
                      ++*(a1 + 8);
                      v51 = *(v51 + 16);
                      if (v51)
                      {
                        v51 = mlir::Block::getParentOp(v51);
                      }

                      v52 += 8;
                    }

                    while (v53 != v52);
                  }

                  goto LABEL_89;
                }

LABEL_73:
                free(v50);
                goto LABEL_74;
              }
            }

            v40 = v74;
            v41 = mlir::SymbolRefAttr::get(v36);
            v42 = v74;
            v43 = v75;
            if (&v74[v75] == v40)
            {
              if (v75 >= HIDWORD(v75))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
                v43 = v75;
                v42 = v74;
              }

              *&v42[8 * v43] = v41;
              LODWORD(v75) = v75 + 1;
              {
                continue;
              }
            }

            else
            {
              if (v75 >= HIDWORD(v75))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
                v44 = v74;
                v43 = v75;
              }

              else
              {
                v44 = v74;
              }

              v45 = (v44 + v40 - v42);
              v44[v43] = v44[v43 - 1];
              v46 = v75;
              v47 = &v74[v75 - 1];
              if (v47 != v45)
              {
                memmove(v45 + 1, v45, v47 - v45);
                v46 = v75;
              }

              LODWORD(v75) = v46 + 1;
              *v45 = v41;
              {
                continue;
              }
            }

            goto LABEL_49;
          }
        }
      }

      else if (llvm::SmallPtrSetImplBase::doFind(&v66, v17))
      {
        goto LABEL_44;
      }

LABEL_42:
      v24 = v17[2];
      if (!v24)
      {
        v17 = 0;
        goto LABEL_44;
      }

      v17 = mlir::Block::getParentOp(v24);
      if (!v17)
      {
        goto LABEL_44;
      }
    }
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    v18 = mlir::Block::getParentOp(v18);
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v18, v7);
  v20 = *(a2 + 16);
  if (v20)
  {
    v20 = mlir::Block::getParentOp(v20);
  }

  if (NearestSymbolTable == v20)
  {
    *(a1 + 16) = mlir::SymbolRefAttr::get(v8);
    *a1 = a1 + 16;
    *(a1 + 24) = a3 & 0xFFFFFFFFFFFFFFFBLL;
    *(a1 + 8) = 0x200000001;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x200000000;
    v21 = v71;
    if (v71 != v73)
    {
      goto LABEL_92;
    }
  }

LABEL_93:
  if ((v69 & 1) == 0)
  {
    free(v66);
  }
}

uint64_t sub_10014736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = a2;
  *(&v5 + 1) = a3;
  if (sub_100146B0C(**a1, a3))
  {
    sub_1001469EC(*(a1 + 8), &v5);
  }

  return 1;
}

uint64_t sub_1001473E4(void *a1, uint64_t a2)
{
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
    mlir::SymbolRefAttr::getNestedReferences(&v15);
    if (!v4)
    {
      return a2;
    }
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v14);
  v7 = v5;
  v15 = v17;
  v16 = 0x200000000;
  if (v5 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v5, 8);
    v8 = v16;
    v9 = v15;
LABEL_10:
    memcpy(&v9[8 * v8], NestedReferences, 8 * v7);
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
  *&v11[8 * (v10 + v7) - 8] = a2;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v14);
  a2 = mlir::SymbolRefAttr::get(RootReference, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  return a2;
}

uint64_t sub_10014752C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a2(a3, a1);
  if ((v6 & 0x1FFFFFFFFLL) == 0x100000001)
  {
    {
      sub_100281F94();
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

      v6 = sub_100144C0C(v9, v8, a2, a3);
    }
  }

  return v6 & 0xFFFFFFFFFFLL;
}

__n128 sub_100147694(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1001476CC(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
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
      v7 = sub_100146B0C(*a1[1], v3);
      a3 = v6;
      if (v7)
      {
        mlir::SymbolRefAttr::getNestedReferences(a1[1]);
        v9 = v8;
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v18);
        v12 = v10;
        if (!v9)
        {
          v3 = mlir::SymbolRefAttr::get(*a1[3], NestedReferences, v10);
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
            *&v16[8 * v9 - 8] = *a1[4];
            RootReference = mlir::SymbolRefAttr::getRootReference(&v18);
            v3 = mlir::SymbolRefAttr::get(RootReference, v19, v20);
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

        memcpy(&v14[8 * v13], NestedReferences, 8 * v12);
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

uint64_t sub_1001478C0(mlir::SymbolTableCollection **a1, mlir::Operation *a2, uint64_t a3)
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

void sub_100147958(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &buffer[2 * v14];
      v16 = buffer + 2;
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
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v18 = &buffer[2 * v11];
    do
    {
      *v15 = -4096;
      v15 += 2;
    }

    while (v15 != v18);
    return;
  }

  v10 = (16 * v3);
  sub_100147A70(a1, v4, &v10[v4]);

  llvm::deallocate_buffer(v4, v10, 8uLL);
}

uint64_t sub_100147A70(uint64_t result, uint64_t *a2, uint64_t *a3)
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
          llvm::deallocate_buffer(*(v19 + 8), (16 * *(v19 + 24)), 8uLL);
          operator delete();
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

BOOL mlir::Type::isIntOrFloat(uint64_t **this)
{
  v1 = **this;
  if (*(v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 1;
  }

  {
    v12 = v1;
    sub_100278FD0();
    v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v3 = *(v12 + 8);
    v4 = *(v12 + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_4:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4])
  {
    return 0;
  }

  return *v5 == v2 && v5[1] != 0;
}

uint64_t mlir::Type::getIntOrFloatBitWidth(uint64_t **this)
{
  v1 = *this;
  v2 = **this;
  v3 = *(v2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = *this;
  }

  else
  {
    v5 = 0;
  }

  v19 = v5;
  if (v4)
  {
    return mlir::IntegerType::getWidth(&v19);
  }

  {
    v17 = v2;
    v18 = v1;
    sub_100278FD0();
    v1 = v18;
    v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v7 = *(v17 + 8);
    v8 = *(v17 + 16);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_18:
    v19 = v1;
    v20 = 0;
    return mlir::FloatType::getWidth(&v19);
  }

  v6 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_7:
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    goto LABEL_18;
  }

  v16 = v9[1];
  v19 = v1;
  v20 = v16;
  return mlir::FloatType::getWidth(&v19);
}

unint64_t *mlir::TypeRange::TypeRange(unint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

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
  v4[0] = sub_10005E890(a1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return a1;
  }
}

void *mlir::getElementTypeOrSelf(uint64_t a1)
{
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4[0] = sub_10005E890(v1);
  v4[1] = v2;
  if (v4[0])
  {
    return mlir::ShapedType::getElementType(v4);
  }

  else
  {
    return v1;
  }
}

BOOL mlir::verifyCompatibleShape(void *a1, void *a2)
{
  v17[0] = sub_10005E890(a1);
  v17[1] = v3;
  v4 = sub_10005E890(a2);
  v16[0] = v4;
  v16[1] = v5;
  if (v17[0])
  {
    if (v4)
    {
      if (!mlir::ShapedType::hasRank(v17) || !mlir::ShapedType::hasRank(v16))
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

uint64_t mlir::verifyCompatibleShapes(uint64_t a1, unint64_t a2)
{
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
  v7 = &v5[16 * v4];
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    *v7 = sub_10005E890(v8);
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
    if (!v21 || (ScalableDims = mlir::VectorType::getScalableDims(&v75), v24 = v23, v25 = 1, (v26 = memchr(ScalableDims, 1, v23)) == 0) || v26 == &ScalableDims[v24])
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
      if (mlir::ShapedType::hasRank(v73))
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

      while ((mlir::ShapedType::hasRank(v73) & 1) == 0);
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

      while ((mlir::ShapedType::hasRank(v73) & 1) == 0);
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

void sub_100148BDC(void *a1, int *a2, unint64_t a3)
{
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

uint64_t *mlir::OperandRange::getTypes@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

uint64_t *mlir::OperandRange::getType@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getTypes@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  return this;
}

uint64_t *mlir::ResultRange::getType@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *this;
  v3 = this[1];
  *a2 = *this;
  a2[1] = 0;
  a2[2] = v2;
  a2[3] = v3;
  return this;
}

__n128 mlir::ValueRange::getTypes@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[1] = 0;
  result = *this;
  a2->n128_u64[0] = this->n128_u64[0];
  a2[1] = result;
  return result;
}

uint64_t sub_100148E68(_BYTE *a1, uint64_t a2)
{
  v236 = v238;
  v2 = &v241;
  v238[0] = a2;
  v237 = 0x600000001;
  v3 = 1;
  while (1)
  {
    while (1)
    {
      v4 = v236 + 8 * v3;
      v5 = *(v4 - 1);
      *(v4 - 1) = v5 | 2;
      v6 = (v5 >> 2) & 1;
      v7 = v5 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LOBYTE(v6) = 1;
      }

      if ((v5 & 2) == 0)
      {
        break;
      }

      if ((v6 & 1) == 0)
      {
        v41 = v2;
        v239 = v2;
        v240 = 0x600000000;
        if (*a1 == 1)
        {
          v42 = *(v7 + 44);
          if ((v42 & 0x7FFFFF) != 0)
          {
            v43 = ((v7 + 16 * ((v42 >> 23) & 1) + ((v42 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
            v44 = v43 + 24 * (v42 & 0x7FFFFF);
            do
            {
              for (i = *(v43 + 8); i != v43; i = *(i + 8))
              {
                v46 = i - 8;
                if (!i)
                {
                  v46 = 0;
                }

                v47 = v46 + 32;
                for (j = *(v46 + 40); j != v47; j = *(j + 8))
                {
                  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
                  if ((*(v49 + 44) & 0x7FFFFF) != 0)
                  {
                    v50 = v49;
                    {
                      sub_100282008();
                    }

                    if ((*(**(v50 + 48) + 32))(*(v50 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
                    {
                      v51 = v240;
                      if (v240 >= HIDWORD(v240))
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v239, v41, v240 + 1, 8);
                        v51 = v240;
                      }

                      *(v239 + v51) = v50;
                      LODWORD(v240) = v240 + 1;
                    }
                  }
                }
              }

              v43 += 24;
            }

            while (v43 != v44);
          }
        }

        Context = mlir::Attribute::getContext((v7 + 24));
        v233 = a1;
        v53 = v239;
        v54 = v240;
        v226 = v239;
        v235 = v240;
        if (v240)
        {
          v55 = Context;
          if (mlir::MLIRContext::isMultithreadingEnabled(Context) && v235 > 1)
          {
            mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v234, v55);
          }

          v82 = &v53[8 * v54];
          v83 = v226;
          if (v226 != v82)
          {
            while (sub_100148E68(v233, *v83))
            {
              v83 = v226 + 1;
              v226 = v83;
              if (v83 == v82)
              {
                goto LABEL_152;
              }
            }

            v28 = 0;
LABEL_271:
            v2 = v41;
LABEL_272:
            v138 = v239;
            if (v239 == v2)
            {
              goto LABEL_274;
            }

            goto LABEL_273;
          }
        }

LABEL_152:
        v84 = *(v7 + 48);
        if (v84[2].__state_ != &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v28 = (*&v84->__state_->__mut_.__m_.__opaque[40])(v84, v7);
          goto LABEL_271;
        }

        v252[0] = v84[1];
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(v252);
        if (ReferencedDialect)
        {
          if ((*(ReferencedDialect + 40) & 1) == 0)
          {
            v86 = ReferencedDialect;
            v229.__state_ = "unregistered operation '";
            v232 = 259;
            mlir::Operation::emitError(v252, v7, &v229);
            if (v252[0].__state_)
            {
              mlir::Diagnostic::operator<<(&v252[1], *(v7 + 48));
              if (v252[0].__state_)
              {
                LODWORD(v264) = 3;
                v265 = "' found in dialect ('";
                v266 = 21;
                v87 = v254;
                if (v255 >= HIDWORD(v255))
                {
                  if (v254 <= &v264 && v254 + 24 * v255 > &v264)
                  {
                    v162 = &v264 - v254;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                    v87 = v254;
                    v88 = (v254 + v162);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                    v88 = &v264;
                    v87 = v254;
                  }
                }

                else
                {
                  v88 = &v264;
                }

                v89 = &v87[24 * v255];
                v90 = *v88;
                *(v89 + 2) = v88[2];
                *v89 = v90;
                LODWORD(v255) = v255 + 1;
                if (v252[0].__state_)
                {
                  v91 = *(v86 + 8);
                  v92 = *(v86 + 16);
                  v267 = 261;
                  v264 = v91;
                  v265 = v92;
                  mlir::Diagnostic::operator<<(&v252[1], &v264);
                  if (v252[0].__state_)
                  {
                    LODWORD(v264) = 3;
                    v265 = "') that does not allow unknown operations";
                    v266 = 41;
                    v93 = v254;
                    if (v255 >= HIDWORD(v255))
                    {
                      if (v254 <= &v264 && v254 + 24 * v255 > &v264)
                      {
                        v165 = &v264 - v254;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                        v93 = v254;
                        v94 = (v254 + v165);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                        v94 = &v264;
                        v93 = v254;
                      }
                    }

                    else
                    {
                      v94 = &v264;
                    }

                    v95 = &v93[24 * v255];
                    v96 = *v94;
                    *(v95 + 2) = v94[2];
                    *v95 = v96;
                    LODWORD(v255) = v255 + 1;
                  }
                }
              }
            }

            v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
            if (v252[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v252);
            }

            v2 = v41;
            if (v263[0] != 1)
            {
              goto LABEL_272;
            }

            if (v261 != v263)
            {
              free(v261);
            }

            v97 = __p[0];
            if (__p[0])
            {
              v98 = __p[1];
              v99 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v98 = sub_100052FFC(v98 - 1);
                }

                while (v98 != v97);
                v99 = __p[0];
              }

              __p[1] = v97;
              operator delete(v99);
            }

            v100 = v257;
            if (v257)
            {
              v101 = *(&v257 + 1);
              v102 = v257;
              if (*(&v257 + 1) == v257)
              {
                goto LABEL_302;
              }

              do
              {
                v103 = *--v101;
                *v101 = 0;
                if (v103)
                {
                  operator delete[]();
                }
              }

              while (v101 != v100);
LABEL_301:
              v102 = v257;
              goto LABEL_302;
            }

            goto LABEL_303;
          }
        }

        else
        {
          v137 = mlir::Attribute::getContext((v7 + 24));
          if ((mlir::MLIRContext::allowsUnregisteredDialects(v137) & 1) == 0)
          {
            v267 = 257;
            mlir::Operation::emitOpError(v252, v7, &v264);
            if (v252[0].__state_)
            {
              LODWORD(v229.__state_) = 3;
              v230 = "created with unregistered dialect. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR opt tool used";
              v231 = 178;
              v139 = v254;
              if (v255 >= HIDWORD(v255))
              {
                if (v254 <= &v229 && v254 + 24 * v255 > &v229)
                {
                  v163 = &v229 - v254;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                  v139 = v254;
                  v140 = (v254 + v163);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                  v140 = &v229;
                  v139 = v254;
                }
              }

              else
              {
                v140 = &v229;
              }

              v141 = &v139[24 * v255];
              v142 = *&v140->__state_;
              v141[2].__state_ = v140[2].__state_;
              *&v141->__state_ = v142;
              LODWORD(v255) = v255 + 1;
            }

            v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
            if (v252[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v252);
            }

            v2 = v41;
            if (v263[0] != 1)
            {
              goto LABEL_272;
            }

            if (v261 != v263)
            {
              free(v261);
            }

            v143 = __p[0];
            if (__p[0])
            {
              v144 = __p[1];
              v145 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v144 = sub_100052FFC(v144 - 1);
                }

                while (v144 != v143);
                v145 = __p[0];
              }

              __p[1] = v143;
              operator delete(v145);
            }

            v100 = v257;
            if (v257)
            {
              v146 = *(&v257 + 1);
              v102 = v257;
              if (*(&v257 + 1) != v257)
              {
                do
                {
                  v147 = *--v146;
                  *v146 = 0;
                  if (v147)
                  {
                    operator delete[]();
                  }
                }

                while (v146 != v100);
                goto LABEL_301;
              }

LABEL_302:
              *(&v257 + 1) = v100;
              operator delete(v102);
            }

LABEL_303:
            if (v254 != v256)
            {
              free(v254);
            }

            goto LABEL_272;
          }
        }

        v28 = 1;
        goto LABEL_271;
      }

      mlir::SuccessorRange::SuccessorRange(v252, (v5 & 0xFFFFFFFFFFFFFFF8));
      state = v252[1].__state_;
      if (v252[1].__state_)
      {
        p_mut = &v252[0].__state_->__mut_;
        while (1)
        {
          Parent = mlir::Block::getParent(*p_mut);
          if (Parent != mlir::Block::getParent(v7))
          {
            break;
          }

          p_mut += 4;
          state = (state - 1);
          if (!state)
          {
            goto LABEL_34;
          }
        }

        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v239 = "branching to block of a different region";
        LOWORD(v243) = 259;
        mlir::Operation::emitOpError(v252, v71, &v239);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
        if (v252[0].__state_)
        {
          mlir::InFlightDiagnostic::report(v252);
        }

        if (v263[0])
        {
          if (v261 != v263)
          {
            free(v261);
          }

          v72 = __p[0];
          if (__p[0])
          {
            v73 = __p[1];
            v74 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v73 = sub_100052FFC(v73 - 1);
              }

              while (v73 != v72);
              v74 = __p[0];
            }

            __p[1] = v72;
            operator delete(v74);
          }

          v32 = v257;
          if (v257)
          {
            v75 = *(&v257 + 1);
            v34 = v257;
            if (*(&v257 + 1) != v257)
            {
              do
              {
                v76 = *--v75;
                *v75 = 0;
                if (v76)
                {
                  operator delete[]();
                }
              }

              while (v75 != v32);
              goto LABEL_277;
            }

LABEL_278:
            *(&v257 + 1) = v32;
            operator delete(v34);
          }

          goto LABEL_279;
        }

        goto LABEL_274;
      }

LABEL_34:
      if ((sub_10014C464(v7) & 1) == 0)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v25 = v24;
        {
          v26 = v24[6];
          if (v26[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_275;
          }
        }

        else
        {
          sub_100279394();
          v26 = *(v25 + 6);
          if (v26[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_275;
          }
        }

        if (((*(*v26 + 4))(v26, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          v239 = "block with no terminator, has ";
          LOWORD(v243) = 259;
          mlir::Operation::emitError(v252, v27, &v239);
          if (v252[0].__state_)
          {
            mlir::Diagnostic::operator<<(&v252[1], v25);
          }

          v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
          if (v252[0].__state_)
          {
            mlir::InFlightDiagnostic::report(v252);
          }

          if (v263[0] != 1)
          {
            goto LABEL_274;
          }

          if (v261 != v263)
          {
            free(v261);
          }

          v29 = __p[0];
          if (__p[0])
          {
            v30 = __p[1];
            v31 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v30 = sub_100052FFC(v30 - 1);
              }

              while (v30 != v29);
              v31 = __p[0];
            }

            __p[1] = v29;
            operator delete(v31);
          }

          v32 = v257;
          if (v257)
          {
            v33 = *(&v257 + 1);
            v34 = v257;
            if (*(&v257 + 1) == v257)
            {
              goto LABEL_278;
            }

            do
            {
              v56 = *--v33;
              *v33 = 0;
              if (v56)
              {
                operator delete[]();
              }
            }

            while (v33 != v32);
LABEL_277:
            v34 = v257;
            goto LABEL_278;
          }

LABEL_279:
          v138 = v254;
          if (v254 == v256)
          {
LABEL_274:
            if ((v28 & 1) == 0)
            {
              goto LABEL_354;
            }

            goto LABEL_275;
          }

LABEL_273:
          free(v138);
          goto LABEL_274;
        }
      }

LABEL_275:
      v3 = v237 - 1;
      LODWORD(v237) = v3;
      if (!v3)
      {
        goto LABEL_387;
      }
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    v8 = *(v7 + 48);
    v9 = *(v7 + 56);
    if (v8 != v9)
    {
      while (*(*v8 + 16) == v7)
      {
        v8 += 8;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      v65 = *(*v8 + 32);
      v239 = "block argument not owned by block";
      LOWORD(v243) = 259;
      mlir::emitError(v65, &v239, v252);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
      if (v252[0].__state_)
      {
        mlir::InFlightDiagnostic::report(v252);
      }

      if (v263[0])
      {
        if (v261 != v263)
        {
          free(v261);
        }

        v66 = __p[0];
        if (__p[0])
        {
          v67 = __p[1];
          v68 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v67 = sub_100052FFC(v67 - 1);
            }

            while (v67 != v66);
            v68 = __p[0];
          }

          __p[1] = v66;
          operator delete(v68);
        }

        v18 = v257;
        if (v257)
        {
          v69 = *(&v257 + 1);
          v20 = v257;
          if (*(&v257 + 1) == v257)
          {
            goto LABEL_199;
          }

          do
          {
            v70 = *--v69;
            *v69 = 0;
            if (v70)
            {
              operator delete[]();
            }
          }

          while (v69 != v18);
          goto LABEL_198;
        }

        goto LABEL_200;
      }

      goto LABEL_202;
    }

LABEL_10:
    if (*(v7 + 32) == v7 + 32)
    {
      if ((sub_10014C464((v5 & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
      {
        v104 = mlir::Block::getParent((v5 & 0xFFFFFFFFFFFFFFF8));
        Loc = mlir::Region::getLoc(v104);
        v239 = "empty block: expect at least a terminator";
        LOWORD(v243) = 259;
        mlir::emitError(Loc, &v239, v252);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
        if (v252[0].__state_)
        {
          mlir::InFlightDiagnostic::report(v252);
        }

        if (v263[0] == 1)
        {
          if (v261 != v263)
          {
            free(v261);
          }

          v106 = __p[0];
          if (__p[0])
          {
            v107 = __p[1];
            v108 = __p[0];
            if (__p[1] != __p[0])
            {
              do
              {
                v107 = sub_100052FFC(v107 - 1);
              }

              while (v107 != v106);
              v108 = __p[0];
            }

            __p[1] = v106;
            operator delete(v108);
          }

          v18 = v257;
          if (v257)
          {
            v109 = *(&v257 + 1);
            v20 = v257;
            if (*(&v257 + 1) == v257)
            {
LABEL_199:
              *(&v257 + 1) = v18;
              operator delete(v20);
              goto LABEL_200;
            }

            do
            {
              v110 = *--v109;
              *v109 = 0;
              if (v110)
              {
                operator delete[]();
              }
            }

            while (v109 != v18);
LABEL_198:
            v20 = v257;
            goto LABEL_199;
          }

          goto LABEL_200;
        }

        goto LABEL_202;
      }
    }

    else
    {
      for (k = *(v7 + 40); k != v7 + 32; k = *(k + 8))
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        if (*(v11 + 10))
        {
          v12 = v11;
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          if (v12 != v13)
          {
            v239 = "operation with block successors must terminate its parent block";
            LOWORD(v243) = 259;
            mlir::Operation::emitError(v252, v12, &v239);
            v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
            if (v252[0].__state_)
            {
              mlir::InFlightDiagnostic::report(v252);
            }

            if (v263[0] != 1)
            {
              goto LABEL_202;
            }

            if (v261 != v263)
            {
              free(v261);
            }

            v15 = __p[0];
            if (__p[0])
            {
              v16 = __p[1];
              v17 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v16 = sub_100052FFC(v16 - 1);
                }

                while (v16 != v15);
                v17 = __p[0];
              }

              __p[1] = v15;
              operator delete(v17);
            }

            v18 = v257;
            if (!v257)
            {
              goto LABEL_200;
            }

            v19 = *(&v257 + 1);
            v20 = v257;
            if (*(&v257 + 1) == v257)
            {
              goto LABEL_199;
            }

            do
            {
              v57 = *--v19;
              *v19 = 0;
              if (v57)
              {
                operator delete[]();
              }
            }

            while (v19 != v18);
            goto LABEL_198;
          }
        }
      }
    }

LABEL_203:
    if ((v5 & 4) != 0 && v7)
    {
      v114 = *(v7 + 32);
      v112 = (v7 + 32);
      for (m = v114; m != v112; m = *m)
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v117 = v116;
        if ((*(v116 + 44) & 0x7FFFFF) == 0)
        {
          goto LABEL_206;
        }

        {
          sub_10027926C();
        }

        if (((*(**(v117 + 48) + 32))(*(v117 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_206:
          v115 = v237;
          if (v237 >= HIDWORD(v237))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v238, v237 + 1, 8);
            v115 = v237;
          }

          *(v236 + v115) = v117;
          LODWORD(v237) = v237 + 1;
        }
      }
    }

    else if (*a1 == 1)
    {
      v118 = *(v7 + 44);
      if ((v118 & 0x7FFFFF) != 0)
      {
        v119 = ((v7 + 16 * ((v118 >> 23) & 1) + ((v118 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
        v120 = (v119 + 24 * (v118 & 0x7FFFFF));
        do
        {
          v122 = *(v120 - 3);
          v120 -= 3;
          v121 = v122;
          if (v122 != v120)
          {
            v123 = v237;
            do
            {
              if (v121)
              {
                v124 = (v121 - 1);
              }

              else
              {
                v124 = 0;
              }

              if (v123 >= HIDWORD(v237))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v238, v123 + 1, 8);
                *(v236 + v237) = v124 | 4;
              }

              else
              {
                *(v236 + v123) = v124 | 4;
              }

              v123 = v237 + 1;
              LODWORD(v237) = v237 + 1;
              v121 = *v121;
            }

            while (v121 != v120);
          }
        }

        while (v120 != v119);
      }
    }

    v3 = v237;
    if (!v237)
    {
LABEL_387:
      v167 = 1;
      v168 = v236;
      if (v236 == v238)
      {
        goto LABEL_356;
      }

LABEL_355:
      free(v168);
      goto LABEL_356;
    }
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v35 = *(v7 + 68);
    if (v35)
    {
      v36 = (*(v7 + 72) + 24);
      while (*v36)
      {
        v36 += 4;
        if (!--v35)
        {
          goto LABEL_58;
        }
      }

      v239 = "null operand found";
      LOWORD(v243) = 259;
      mlir::Operation::emitError(v252, (v5 & 0xFFFFFFFFFFFFFFF8), &v239);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
      if (v252[0].__state_)
      {
        mlir::InFlightDiagnostic::report(v252);
      }

      if ((v263[0] & 1) == 0)
      {
        goto LABEL_202;
      }

      if (v261 != v263)
      {
        free(v261);
      }

      v77 = __p[0];
      if (__p[0])
      {
        v78 = __p[1];
        v79 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v78 = sub_100052FFC(v78 - 1);
          }

          while (v78 != v77);
          v79 = __p[0];
        }

        __p[1] = v77;
        operator delete(v79);
      }

      v18 = v257;
      if (v257)
      {
        v80 = *(&v257 + 1);
        v20 = v257;
        if (*(&v257 + 1) == v257)
        {
          goto LABEL_199;
        }

        do
        {
          v81 = *--v80;
          *v80 = 0;
          if (v81)
          {
            operator delete[]();
          }
        }

        while (v80 != v18);
        goto LABEL_198;
      }

LABEL_200:
      v111 = v254;
      if (v254 == v256)
      {
LABEL_202:
        if (!v14)
        {
          goto LABEL_354;
        }

        goto LABEL_203;
      }

LABEL_201:
      free(v111);
      goto LABEL_202;
    }
  }

LABEL_58:
  v239 = sub_10008861C(v5 & 0xFFFFFFFFFFFFFFF8);
  v37 = mlir::DictionaryAttr::begin(&v239);
  v38 = mlir::DictionaryAttr::end(&v239);
  if (v37 == v38)
  {
LABEL_94:
    v58 = *(v7 + 48);
    if (v58[2] != &mlir::detail::TypeIDResolver<void,void>::id && ((*(*v58 + 8))(v58, v5 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      goto LABEL_354;
    }

    v59 = *(v7 + 44);
    v60 = *&v59 & 0x7FFFFFLL;
    if ((v59 & 0x7FFFFF) == 0)
    {
      goto LABEL_203;
    }

    if (sub_10012A3BC(v5 & 0xFFFFFFFFFFFFFFF8))
    {
      v61 = sub_10012A3BC(v5 & 0xFFFFFFFFFFFFFFF8);
      v62 = v5 & 0xFFFFFFFFFFFFFFF8;
      v226 = (v5 & 0xFFFFFFFFFFFFFFF8);
      v227 = v61;
      v239 = v2;
      v240 = 0x600000000;
      v63 = *(v7 + 44);
      if ((v63 & 0x7FFFFF) != 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v62 = 0;
      v226 = 0;
      v227 = 0;
      v239 = v2;
      v240 = 0x600000000;
      v63 = *(v7 + 44);
      if ((v63 & 0x7FFFFF) != 0)
      {
LABEL_99:
        v64 = (v7 + 16 * ((v63 >> 23) & 1) + ((v63 >> 21) & 0x7F8) + 32 * *(v7 + 40) + 64);
        if (!v62)
        {
          goto LABEL_248;
        }

LABEL_232:
        v125 = 0;
        while (2)
        {
          if (v226)
          {
            RegionKind = mlir::RegionKindInterface::getRegionKind(&v226, v125);
            v127 = *v64;
            if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || RegionKind != 1)
            {
              goto LABEL_244;
            }

            if (v64 != v127)
            {
              if (v64 != *(v64[1] + 8))
              {
                v264 = "expects graph region #";
                v267 = 259;
                mlir::Operation::emitOpError(v252, (v5 & 0xFFFFFFFFFFFFFFF8), &v264);
                if (v252[0].__state_)
                {
                  LODWORD(v229.__state_) = 5;
                  v230 = v125;
                  v148 = v254;
                  if (v255 >= HIDWORD(v255))
                  {
                    if (v254 <= &v229 && v254 + 24 * v255 > &v229)
                    {
                      v164 = &v229 - v254;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                      v148 = v254;
                      v149 = (v254 + v164);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 24);
                      v149 = &v229;
                      v148 = v254;
                    }
                  }

                  else
                  {
                    v149 = &v229;
                  }

                  v150 = &v148[24 * v255];
                  v151 = *&v149->__state_;
                  v150[2].__state_ = v149[2].__state_;
                  *&v150->__state_ = v151;
                  v152 = (v255 + 1);
                  LODWORD(v255) = v255 + 1;
                  if (v252[0].__state_)
                  {
                    LODWORD(v229.__state_) = 3;
                    v230 = " to have 0 or 1 blocks";
                    v231 = 22;
                    v153 = v254;
                    if (v152 >= HIDWORD(v255))
                    {
                      if (v254 <= &v229 && v254 + 24 * v152 > &v229)
                      {
                        v166 = &v229 - v254;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v152 + 1, 24);
                        v153 = v254;
                        v154 = (v254 + v166);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v152 + 1, 24);
                        v154 = &v229;
                        v153 = v254;
                      }
                    }

                    else
                    {
                      v154 = &v229;
                    }

                    v155 = &v153[24 * v255];
                    v156 = *&v154->__state_;
                    v155[2].__state_ = v154[2].__state_;
                    *&v155->__state_ = v156;
                    LODWORD(v255) = v255 + 1;
                  }
                }

                v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
                if (v252[0].__state_)
                {
                  mlir::InFlightDiagnostic::report(v252);
                }

                if (v263[0] == 1)
                {
                  if (v261 != v263)
                  {
                    free(v261);
                  }

                  v157 = __p[0];
                  if (__p[0])
                  {
                    v158 = __p[1];
                    v159 = __p[0];
                    if (__p[1] != __p[0])
                    {
                      do
                      {
                        v158 = sub_100052FFC(v158 - 1);
                      }

                      while (v158 != v157);
                      v159 = __p[0];
                    }

                    __p[1] = v157;
                    operator delete(v159);
                  }

                  v133 = v257;
                  if (v257)
                  {
                    v160 = *(&v257 + 1);
                    v135 = v257;
                    if (*(&v257 + 1) == v257)
                    {
LABEL_329:
                      *(&v257 + 1) = v133;
                      operator delete(v135);
                      goto LABEL_330;
                    }

                    do
                    {
                      v161 = *--v160;
                      *v160 = 0;
                      if (v161)
                      {
                        operator delete[]();
                      }
                    }

                    while (v160 != v133);
LABEL_328:
                    v135 = v257;
                    goto LABEL_329;
                  }

                  goto LABEL_330;
                }

                goto LABEL_267;
              }

LABEL_244:
              if (v64 != v127 && *(v64[1] - 8))
              {
                goto LABEL_250;
              }
            }

            ++v125;
            v64 += 3;
            if (v60 == v125)
            {
              goto LABEL_266;
            }

            continue;
          }

          break;
        }

        v127 = *v64;
        goto LABEL_244;
      }
    }

    v64 = 0;
    if (v62)
    {
      goto LABEL_232;
    }

LABEL_248:
    while (v64 == *v64 || !*(v64[1] - 8))
    {
      v64 += 3;
      if (!--v60)
      {
LABEL_266:
        v14 = 1;
        goto LABEL_267;
      }
    }

LABEL_250:
    v129 = *(v7 + 24);
    v264 = "entry block of region may not have predecessors";
    v267 = 259;
    mlir::emitError(v129, &v264, v252);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v252);
    if (v252[0].__state_)
    {
      mlir::InFlightDiagnostic::report(v252);
    }

    if (v263[0] == 1)
    {
      if (v261 != v263)
      {
        free(v261);
      }

      v130 = __p[0];
      if (__p[0])
      {
        v131 = __p[1];
        v132 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v131 = sub_100052FFC(v131 - 1);
          }

          while (v131 != v130);
          v132 = __p[0];
        }

        __p[1] = v130;
        operator delete(v132);
      }

      v133 = v257;
      if (v257)
      {
        v134 = *(&v257 + 1);
        v135 = v257;
        if (*(&v257 + 1) == v257)
        {
          goto LABEL_329;
        }

        do
        {
          v136 = *--v134;
          *v134 = 0;
          if (v136)
          {
            operator delete[]();
          }
        }

        while (v134 != v133);
        goto LABEL_328;
      }

LABEL_330:
      if (v254 != v256)
      {
        free(v254);
      }
    }

LABEL_267:
    v111 = v239;
    if (v239 == v2)
    {
      goto LABEL_202;
    }

    goto LABEL_201;
  }

  v39 = v38;
  while (1)
  {
    *&v252[0].__state_ = *v37;
    NameDialect = mlir::NamedAttribute::getNameDialect(v252);
    if (NameDialect)
    {
      if (((*(*NameDialect + 96))(NameDialect, v5 & 0xFFFFFFFFFFFFFFF8, v252[0].__state_, v252[1].__state_) & 1) == 0)
      {
        break;
      }
    }

    if (++v37 == v39)
    {
      goto LABEL_94;
    }
  }

LABEL_354:
  v167 = 0;
  v168 = v236;
  if (v236 != v238)
  {
    goto LABEL_355;
  }

LABEL_356:
  if (!v167)
  {
    return 0;
  }

  if ((*(a2 + 44) & 0x7FFFFF) != 0)
  {
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v236 = v238;
    HIDWORD(v237) = 8;
    v238[0] = a2;
    v169 = 1;
    do
    {
      v170 = *(v236 + --v169);
      LODWORD(v237) = v169;
      v171 = *(v170 + 44);
      if ((v171 & 0x7FFFFF) != 0)
      {
        v172 = ((v170 + 16 * ((v171 >> 23) & 1) + ((v171 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v170 + 40);
        v221 = v172 + 24 * (v171 & 0x7FFFFF);
        do
        {
          v173 = *(v172 + 8);
          for (n = v172; v173 != n; v172 = n)
          {
            if (v173)
            {
              v174 = (v173 - 8);
            }

            else
            {
              v174 = 0;
            }

            isReachableFromEntry = mlir::detail::DominanceInfoBase<false>::isReachableFromEntry(&v226, v174);
            v175 = (v174 + 32);
            for (ii = *(v174 + 5); ii != v175; ii = ii[1])
            {
              llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
              v178 = v177;
              if (isReachableFromEntry && (*(v177 + 46) & 0x80) != 0)
              {
                v179 = *(v177 + 68);
                if (v179)
                {
                  v180 = 0;
                  v181 = *(v177 + 72);
                  v182 = 24;
                  while (mlir::DominanceInfo::properlyDominates(&v226, *(v181 + v182), v178))
                  {
                    ++v180;
                    v182 += 32;
                    if (v179 == v180)
                    {
                      goto LABEL_375;
                    }
                  }

                  v264 = "operand #";
                  v267 = 259;
                  mlir::Operation::emitError(&v239, v178, &v264);
                  if (v239)
                  {
                    LODWORD(v229.__state_) = 5;
                    v230 = v180;
                    v184 = &v229;
                    v185 = __src;
                    if (v243 >= HIDWORD(v243))
                    {
                      if (__src <= &v229 && __src + 24 * v243 > &v229)
                      {
                        v219 = &v229 - __src;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v244, v243 + 1, 24);
                        v185 = __src;
                        v184 = (__src + v219);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v244, v243 + 1, 24);
                        v184 = &v229;
                        v185 = __src;
                      }
                    }

                    v186 = &v185[24 * v243];
                    v187 = *&v184->__state_;
                    v186[2].__state_ = v184[2].__state_;
                    *&v186->__state_ = v187;
                    v188 = (v243 + 1);
                    LODWORD(v243) = v243 + 1;
                    if (v239)
                    {
                      LODWORD(v229.__state_) = 3;
                      v230 = " does not dominate this use";
                      v231 = 27;
                      v189 = &v229;
                      v190 = __src;
                      if (v188 >= HIDWORD(v243))
                      {
                        if (__src <= &v229 && __src + 24 * v188 > &v229)
                        {
                          v220 = &v229 - __src;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v244, v188 + 1, 24);
                          v190 = __src;
                          v189 = (__src + v220);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v244, v188 + 1, 24);
                          v189 = &v229;
                          v190 = __src;
                        }
                      }

                      v191 = &v190[24 * v243];
                      v192 = *&v189->__state_;
                      v191[2].__state_ = v189[2].__state_;
                      *&v191->__state_ = v192;
                      LODWORD(v243) = v243 + 1;
                      v252[0].__state_ = v239;
                      LOBYTE(v252[1].__state_) = 0;
                      v263[0] = 0;
                      if (v251 != 1)
                      {
LABEL_434:
                        mlir::InFlightDiagnostic::abandon(&v239);
                        if (v239)
                        {
                          mlir::InFlightDiagnostic::report(&v239);
                        }

                        if (v251 == 1)
                        {
                          if (v249 != &v251)
                          {
                            free(v249);
                          }

                          v206 = v247[0];
                          if (v247[0])
                          {
                            v207 = v247[1];
                            v208 = v247[0];
                            if (v247[1] != v247[0])
                            {
                              do
                              {
                                v207 = sub_100052FFC(v207 - 1);
                              }

                              while (v207 != v206);
                              v208 = v247[0];
                            }

                            v247[1] = v206;
                            operator delete(v208);
                          }

                          v209 = v245;
                          if (v245)
                          {
                            v210 = *(&v245 + 1);
                            v211 = v245;
                            if (*(&v245 + 1) != v245)
                            {
                              do
                              {
                                v212 = *--v210;
                                *v210 = 0;
                                if (v212)
                                {
                                  operator delete[]();
                                }
                              }

                              while (v210 != v209);
                              v211 = v245;
                            }

                            *(&v245 + 1) = v209;
                            operator delete(v211);
                          }

                          if (__src != v244)
                          {
                            free(__src);
                          }
                        }

                        v264 = *(*(v178 + 72) + v182);
                        DefiningOp = mlir::Value::getDefiningOp(&v264);
                        if (DefiningOp)
                        {
                          mlir::Diagnostic::attachNote(&v252[1], *(DefiningOp + 24), 1);
                        }

                        v214 = *(v264 + 2);
                        mlir::Block::getParent(*(v178 + 16));
                        mlir::Block::getParent(v214);
                        v215 = mlir::Attribute::getContext((v178 + 24));
                        v217 = mlir::UnknownLoc::get(v215, v216);
                        if (mlir::Block::getParentOp(v214))
                        {
                          v217 = *(mlir::Block::getParentOp(v214) + 24);
                        }

                        mlir::Diagnostic::attachNote(&v252[1], v217, 1);
                      }
                    }

                    else
                    {
                      v252[0].__state_ = 0;
                      LOBYTE(v252[1].__state_) = 0;
                      v263[0] = 0;
                      if (v251 != 1)
                      {
                        goto LABEL_434;
                      }
                    }
                  }

                  else
                  {
                    v252[0].__state_ = 0;
                    LOBYTE(v252[1].__state_) = 0;
                    v263[0] = 0;
                    if (v251 != 1)
                    {
                      goto LABEL_434;
                    }
                  }

                  v252[1].__state_ = v240;
                  v253 = v241;
                  v254 = v256;
                  v255 = 0x400000000;
                  v193 = v243;
                  if (v243)
                  {
                    v194 = __src;
                    if (__src != v244)
                    {
                      v254 = __src;
                      v255 = v243;
                      __src = v244;
                      HIDWORD(v243) = 0;
                      goto LABEL_407;
                    }

                    if (v243 < 5)
                    {
                      v196 = v256;
                      v195 = v243;
LABEL_405:
                      memcpy(v196, v194, 24 * v195);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v243, 24);
                      v195 = v243;
                      if (v243)
                      {
                        v194 = __src;
                        v196 = v254;
                        goto LABEL_405;
                      }
                    }

                    LODWORD(v255) = v193;
LABEL_407:
                    LODWORD(v243) = 0;
                  }

                  v257 = v245;
                  v258 = v246;
                  v245 = 0uLL;
                  *__p = *v247;
                  v197 = v248;
                  v246 = 0;
                  v247[0] = 0;
                  v247[1] = 0;
                  v248 = 0;
                  v260 = v197;
                  v261 = v263;
                  v262 = 0;
                  v198 = v250;
                  if (v250)
                  {
                    if (v249 == &v251)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v261, v263, v250, 24);
                      if (v250)
                      {
                        memcpy(v261, v249, 24 * v250);
                      }

                      LODWORD(v262) = v198;
                    }

                    else
                    {
                      v261 = v249;
                      v262 = v250;
                      v249 = &v251;
                      HIDWORD(v250) = 0;
                    }

                    LODWORD(v250) = 0;
                  }

                  v263[0] = 1;
                  if (v251)
                  {
                    if (v249 != &v251)
                    {
                      free(v249);
                    }

                    v199 = v247[0];
                    if (v247[0])
                    {
                      v200 = v247[1];
                      v201 = v247[0];
                      if (v247[1] != v247[0])
                      {
                        do
                        {
                          v200 = sub_100052FFC(v200 - 1);
                        }

                        while (v200 != v199);
                        v201 = v247[0];
                      }

                      v247[1] = v199;
                      operator delete(v201);
                    }

                    v202 = v245;
                    if (v245)
                    {
                      v203 = *(&v245 + 1);
                      v204 = v245;
                      if (*(&v245 + 1) != v245)
                      {
                        do
                        {
                          v205 = *--v203;
                          *v203 = 0;
                          if (v205)
                          {
                            operator delete[]();
                          }
                        }

                        while (v203 != v202);
                        v204 = v245;
                      }

                      *(&v245 + 1) = v202;
                      operator delete(v204);
                    }

                    if (__src != v244)
                    {
                      free(__src);
                    }

                    v251 = 0;
                  }

                  goto LABEL_434;
                }
              }

LABEL_375:
              if (*a1 == 1 && (*(v178 + 44) & 0x7FFFFF) != 0)
              {
                {
                  sub_10027926C();
                }

                if (((*(**(v178 + 48) + 32))(*(v178 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  v183 = v237;
                  if (v237 >= HIDWORD(v237))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v238, v237 + 1, 8);
                    v183 = v237;
                  }

                  *(v236 + v183) = v178;
                  LODWORD(v237) = v237 + 1;
                }
              }
            }

            v173 = *(v173 + 8);
          }

          v172 += 24;
        }

        while (v172 != v221);
        v169 = v237;
      }
    }

    while (v169);
    if (v236 != v238)
    {
      free(v236);
    }

    mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(&v226);
  }

  return 1;
}

uint64_t sub_10014B5F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, std::future<void> *a3@<X8>)
{
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
        sub_10014B9EC();
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

void sub_10014BBE4(uint64_t a1)
{
  *a1 = off_1002B7898;
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

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

void sub_10014BCCC(uint64_t a1)
{
  *a1 = off_1002B7898;
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

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_10014BDC8(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void sub_10014BE00(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (!sig)
  {
    v3 = sub_100033DA0();
    sub_10014BE64(v3);
  }

  (*(*sig + 48))(sig);

  std::__assoc_sub_state::set_value(a1);
}

void sub_10014BE64(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if (v4)
  {
    (*(*v6 + v5))();
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5(v6);
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
LABEL_6:
      operator delete();
    }
  }

  std::__thread_struct::~__thread_struct(v7);
  operator delete();
}

void sub_10014BF30(uint64_t a1)
{
  *a1 = off_1002B78C8;
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

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

void sub_10014C018(uint64_t a1)
{
  *a1 = off_1002B78C8;
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

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

void sub_10014C114(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = sub_100033DA0();
    sub_10014C178(v3);
  }
}

std::shared_future<void> *sub_10014C178(std::shared_future<void> *a1)
{
  a1->__state_ = off_1002B78F8;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void sub_10014C1BC(std::shared_future<void> *a1)
{
  a1->__state_ = off_1002B78F8;
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete();
}

uint64_t sub_10014C288(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002B78F8;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10014C2C4(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

__n128 sub_10014C38C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002B7940;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10014C3CC(uint64_t a1)
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
      if ((sub_100148E68(**(a1 + 40), *(**(a1 + 48) + 8 * add)) & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t sub_10014C464(mlir::Block *a1)
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
    sub_10027E140();
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
            llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
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

BOOL mlir::parseSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, uint64_t *a4)
{
  v7 = **a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(**a1);
    *a4 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  if (!mlir::isBytecode(v13))
  {
    mlir::parseAsmSourceFile(a1, a2, a3, 0, 0);
  }

  llvm::MemoryBufferRef::MemoryBufferRef(v13, v7);
  return mlir::readBytecodeFile(v13, a2, a3);
}

BOOL mlir::parseSourceString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  llvm::MemoryBuffer::getMemBuffer(a1, a2, a5, a6, &v18);
  if (!v18)
  {
    return 0;
  }

  llvm::SourceMgr::SourceMgr(&v15);
  v10 = v18;
  v18 = 0;
  v19[0] = v10;
  v19[1] = 0;
  v19[2] = 0;
  if (v16 >= v17)
  {
    v11 = sub_10003987C(&v15, v19);
  }

  else
  {
    v11 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v16, v19) + 3;
  }

  v16 = v11;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(v19);
  v12 = mlir::parseSourceFile(&v15, a3, a4, a7);
  llvm::SourceMgr::~SourceMgr(&v15);
  v14 = v18;
  v18 = 0;
  if (!v14)
  {
    return v12;
  }

  (*(*v14 + 8))(v14);
  return v12;
}

void mlir::detail::InterfaceMap::insert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = *(a1 + 8);
    if (v5 != &v3[16 * v4])
    {
      if (*v5 == a2)
      {

        free(a3);
      }

      else
      {
        v12 = (v5 - v3);
        if (v4 >= *(a1 + 12))
        {
          v31 = a3;
          v32 = a2;
          v33 = a1;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 16);
          a2 = v32;
          a1 = v33;
          a3 = v31;
          v13 = *v33;
          v11 = *(v33 + 8);
        }

        else
        {
          v13 = *a1;
        }

        v14 = &v12[v13];
        *&v13[16 * v11] = *&v13[16 * v11 - 16];
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = *a1 + 16 * v16;
        v18 = (v17 - 16);
        if ((v17 - 16) != &v12[v13])
        {
          v19 = &v3[16 * v16 + v15] - &v5[v13] - 32;
          if (v19 < 0x30)
          {
            goto LABEL_16;
          }

          v20 = (v19 >> 4) + 1;
          v21 = 16 * (v20 & 0x1FFFFFFFFFFFFFFCLL);
          v17 -= v21;
          v18 -= v21;
          v22 = &v15[16 * v16 - 32];
          v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            i64 = v22[-1].i64;
            v36 = vld2q_f64(i64);
            v25 = v22[-3].i64;
            v37 = vld2q_f64(v25);
            *v22 = vzip1q_s64(v36.val[0], v36.val[1]);
            v22[1] = vzip2q_s64(v36.val[0], v36.val[1]);
            v22[-2] = vzip1q_s64(v37.val[0], v37.val[1]);
            v22[-1] = vzip2q_s64(v37.val[0], v37.val[1]);
            v22 -= 4;
            v23 -= 4;
          }

          while (v23);
          if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            v26 = (v17 - 8);
            do
            {
              v27 = *(v18 - 2);
              v18 -= 16;
              *(v26 - 1) = v27;
              *v26 = *(v18 + 1);
              v26 -= 2;
            }

            while (v18 != v14);
          }
        }

        *(a1 + 8) = v16 + 1;
        *v14 = a2;
        *(v14 + 1) = a3;
      }

      return;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v4 >= *(a1 + 12))
  {
    v29 = a2;
    v30 = a3;
    v34 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11 + 1, 16);
    a2 = v29;
    a1 = v34;
    a3 = v30;
    v11 = *(v34 + 8);
    v3 = *v34;
  }

  v28 = &v3[16 * v11];
  *v28 = a2;
  *(v28 + 1) = a3;
  ++*(a1 + 8);
}

void mlir::StorageUniquer::~StorageUniquer(mlir::StorageUniquer *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_10014F808(v2);
    operator delete();
  }
}

uint64_t sub_10014CCA4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v56 = a2;
  v12 = sub_10014DA2C(a1 + 208, &v56);
  v13 = *v12;
  v54 = a1;
  v14 = *(a1 + 256);
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * ((*(*v12 + 24) - 1) & a3)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  v58 = a3;
  v59 = a4;
  v60 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v57) = a3;
    *(&v57 + 1) = 0;
    sub_10014DE44(&v62, explicit, &v57, &v58);
    v24 = v62;
    if ((v63 & 1) == 0)
    {
      return *(v62 + 8);
    }

    v25 = sub_10014EE98(v54);
    result = a6(a7, v25);
    *(v24 + 8) = result;
    return result;
  }

  off_1002C3468();
  if ((*v16 & 1) == 0)
  {
    sub_1002820A0();
  }

  off_1002C3450();
  v18 = v17;
  v19 = *v13;
  v20 = *v17;
  v21 = *v17 & 1;
  if (v21)
  {
    v22 = 4;
    v23 = v17 + 8;
  }

  else
  {
    v22 = *(v17 + 16);
    if (!v22)
    {
      v29 = 0;
      v32 = 0;
      *&v62 = 0;
      goto LABEL_18;
    }

    v23 = *(v17 + 8);
  }

  v27 = v22 - 1;
  v28 = v27 & ((v19 >> 4) ^ (v19 >> 9));
  v29 = v23 + 40 * v28;
  v30 = *v29;
  if (*v29 != v19)
  {
    v50 = 0;
    v51 = 1;
    while (v30 != -4096)
    {
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v30 == -8192;
      }

      if (v52)
      {
        v50 = v29;
      }

      v53 = v28 + v51++;
      v28 = v53 & v27;
      v29 = v23 + 40 * v28;
      v30 = *v29;
      if (*v29 == v19)
      {
        goto LABEL_13;
      }
    }

    if (v50)
    {
      v29 = v50;
    }

    *&v62 = v29;
    if (v21)
    {
      v32 = 4;
    }

    else
    {
      v32 = *(v17 + 16);
    }

LABEL_18:
    if (4 * (v20 >> 1) + 4 >= 3 * v32)
    {
      v32 *= 2;
    }

    else if (v32 + ~(v20 >> 1) - *(v17 + 4) > v32 >> 3)
    {
      goto LABEL_20;
    }

    sub_10014E534(v17, v32);
    sub_10014E48C(v18, v19, &v62);
    v20 = *v18;
    v29 = v62;
    v21 = *v18 & 1;
LABEL_20:
    *v18 = (v20 & 0xFFFFFFFE | v21) + 2;
    if (*v29 != -4096)
    {
      --v18[1];
    }

    *v29 = v19;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    operator new();
  }

LABEL_13:
  v31 = **(v29 + 8);
  if (!v31)
  {
    std::recursive_mutex::lock((*v13 + 40));
    if (*(*v13 + 8) < *(*v13 + 12))
    {
      operator new();
    }

    sub_10014EA3C(*v13, (v29 + 8));
  }

  LODWORD(v62) = a3;
  *(&v62 + 1) = 0;
  sub_10014DE44(&v57, v31, &v62, &v58);
  v33 = v57;
  result = *(v57 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared((explicit + 24));
    v34 = *explicit;
    v35 = *(explicit + 16);
    if (!v35)
    {
      goto LABEL_35;
    }

    v36 = v35 - 1;
    v37 = 1;
    v38 = v59;
    v39 = v60;
    v40 = v58 & (v35 - 1);
    v41 = v34 + 16 * v40;
    v42 = *(v41 + 8);
    if ((v42 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_28;
    }

    while (v42 != -4096)
    {
      while (1)
      {
        v43 = v40 + v37++;
        v40 = v43 & v36;
        v41 = v34 + 16 * (v43 & v36);
        v42 = *(v41 + 8);
        if ((v42 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_28:
        if (v38(v39))
        {
          if (v41 != *explicit + 16 * *(explicit + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        if (*(v41 + 8) == -4096)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_30:
    v44 = *(explicit + 16);
    v41 = *explicit + 16 * v44;
    if (v41 != *explicit + 16 * v44)
    {
LABEL_33:
      v45 = *(v41 + 8);
      *(v33 + 8) = v45;
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      return v45;
    }

    else
    {
LABEL_35:
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      llvm::sys::RWMutexImpl::lock((explicit + 24));
      LODWORD(v61) = v58;
      *(&v61 + 1) = 0;
      sub_10014DE44(&v62, explicit, &v61, &v58);
      v46 = v62;
      if (v63)
      {
        v47 = sub_10014EE98(v54);
        v48 = a6(a7, v47);
        *(v46 + 8) = v48;
      }

      else
      {
        v48 = *(v62 + 8);
      }

      *(v33 + 8) = v48;
      v49 = v48;
      llvm::sys::RWMutexImpl::unlock((explicit + 24));
      return v49;
    }
  }

  return result;
}

uint64_t *sub_10014D624(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 24))
    {
      v2 = 0;
      do
      {
        v3 = atomic_load((*(v1 + 16) + 8 * v2));
        if (v3)
        {
          if (*(v1 + 32) && *(v3 + 8))
          {
            v4 = *(v3 + 16);
            if (v4)
            {
              v5 = 16 * v4;
              v6 = *v3;
              while ((*(v6 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v6 = (v6 + 16);
                v5 -= 16;
                if (!v5)
                {
                  goto LABEL_4;
                }
              }
            }

            else
            {
              v6 = *v3;
            }

            v7 = *v3 + 16 * v4;
            if (v6 != v7)
            {
              v8 = *(v6 + 1);
              do
              {
                (*(v1 + 32))(*(v1 + 40), v8);
                do
                {
                  v6 = (v6 + 16);
                  if (v6 == v7)
                  {
                    goto LABEL_4;
                  }

                  v8 = *(v6 + 1);
                }

                while ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v6 != v7);
            }
          }

LABEL_4:
          llvm::sys::RWMutexImpl::~RWMutexImpl((v3 + 24));
          llvm::deallocate_buffer(*v3, (16 * *(v3 + 16)), 8uLL);
          operator delete();
        }

        ++v2;
      }

      while (v2 != *(v1 + 24));
    }

    v9 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v9)
    {
      operator delete[]();
    }

    v10 = *(v1 + 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    operator delete();
  }

  return a1;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *sub_100087050(v2 + 232, &v4);
}

uint64_t *mlir::StorageUniquer::registerSingletonImpl(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = a2;
  v4 = *a1;
  v7 = a3(a4, *a1 + 112);
  return sub_100078AB0((v4 + 232), &v8, &v7, v6);
}

void sub_10014D880(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B7988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014D8D4(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  sub_10014D940(*(a1 + 24), (*(a1 + 24) + 24 * *(a1 + 32)));
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *sub_10014D940(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = *(v2 - 2);
          if (v6)
          {
            *v6 = 0;
            atomic_store(0, (v6 + 8));
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v5;
            (v5->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v9);
            v7 = *(v2 - 1);
            if (!v7)
            {
              goto LABEL_11;
            }

LABEL_10:
            std::__shared_weak_count::__release_weak(v7);
            goto LABEL_11;
          }
        }

        v7 = *(v2 - 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v8 = *(v2 - 3);
      v2 -= 3;
      result = v8;
      *v2 = 0;
      if (v8)
      {
        operator delete();
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_10014DA2C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*v5 == *a2)
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
      if (*v5 == *a2)
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
    sub_10014DC20(a1, v2);
    sub_10014DB9C(*v14, *(v14 + 16), *v13, &v15);
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

uint64_t sub_10014DB9C(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
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
        v6 = (result + 16 * (v11 & v4));
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

void sub_10014DC20(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
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
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (*v22 != v24)
          {
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
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (*v22 == v24)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          sub_10014D624(v16 + 1);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
      v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 2) = -4096;
        *v19 = -4096;
        v19 += 4;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

uint64_t sub_10014DE44(uint64_t result, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v25 = *a3;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = v4 - 1;
    v8 = 1;
    v9 = *a4 & (v4 - 1);
    v10 = *a2 + 16 * v9;
    v11 = *(v10 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v11 != -4096)
    {
      while (1)
      {
        if (v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11 == -8192;
        }

        if (v12)
        {
          v5 = v10;
        }

        v13 = v9 + v8++;
        v9 = v13 & v7;
        v10 = v6 + 16 * (v13 & v7);
        v11 = *(v10 + 8);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v14 = a2;
        v15 = result;
        v16 = a4;
        if ((*(a4 + 8))(*(a4 + 16), v11))
        {
          v19 = 0;
          result = v15;
          a2 = v14;
          goto LABEL_22;
        }

        v11 = *(v10 + 8);
        result = v15;
        a2 = v14;
        a4 = v16;
        if (v11 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v5)
    {
      v10 = v5;
    }

    v17 = *(a2 + 4);
  }

  else
  {
    v17 = 0;
    v10 = 0;
  }

  v24 = v10;
  v18 = *(a2 + 2);
  if (4 * v18 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_24:
    v21 = result;
    v22 = a2;
    v23 = a4;
    sub_10014EC7C(a2, v17);
    sub_10014EB90(*v22, *(v22 + 4), v23, &v24);
    a2 = v22;
    result = v21;
    v10 = v24;
    ++*(v22 + 2);
    if (*(v10 + 8) == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17 + ~v18 - *(a2 + 3) <= v17 >> 3)
  {
    goto LABEL_24;
  }

  *(a2 + 2) = v18 + 1;
  if (*(v10 + 8) != -4096)
  {
LABEL_19:
    --*(a2 + 3);
  }

LABEL_20:
  *v10 = v25;
  v19 = 1;
LABEL_22:
  v20 = *a2 + 16 * *(a2 + 4);
  *result = v10;
  *(result + 8) = v20;
  *(result + 16) = v19;
  return result;
}

llvm **sub_10014E050(int *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v8 = &v3[10 * v5];
    v6 = a1 + 2;
    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v6 = a1 + 2;
  if (v2)
  {
    v8 = a1 + 42;
    goto LABEL_8;
  }

  v7 = a1[4];
  v8 = (*(a1 + 1) + 40 * v7);
  if (v7)
  {
    v6 = *(a1 + 1);
LABEL_8:
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v8)
      {
        v4 = v8;
        break;
      }
    }

    v6 = a1 + 2;
    if ((v2 & 1) == 0)
    {
LABEL_19:
      v9 = (*(a1 + 1) + 40 * a1[4]);
      if (v4 == v9)
      {
        goto LABEL_14;
      }

LABEL_22:
      v33 = v6;
      do
      {
        v11 = *(v4 + 4);
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = *(v4 + 3);
            if (v14)
            {
              v15 = **(v4 + 1);
              std::recursive_mutex::lock((v14 + 40));
              v16 = *v14;
              v17 = *(v14 + 8);
              v18 = *v14 + 24 * v17;
              v19 = *v14;
              if (v17)
              {
                v20 = 24 * v17;
                v19 = *v14;
                while (*v19 != v15)
                {
                  v19 += 3;
                  v20 -= 24;
                  if (!v20)
                  {
                    v19 = (*v14 + 24 * v17);
                    break;
                  }
                }
              }

              if (v19 + 3 != v18)
              {
                v21 = v19 + 4;
                do
                {
                  v23 = *(v21 - 1);
                  *(v21 - 1) = 0;
                  v24 = *(v21 - 4);
                  *(v21 - 4) = v23;
                  if (v24)
                  {
                    llvm::deallocate_buffer(*v24, (16 * *(v24 + 16)), 8uLL);
                    operator delete();
                  }

                  v25 = *v21;
                  *v21 = 0;
                  v21[1] = 0;
                  v26 = *(v21 - 2);
                  *(v21 - 3) = v25;
                  if (v26)
                  {
                    std::__shared_weak_count::__release_weak(v26);
                  }

                  v22 = v21 + 2;
                  v21 += 3;
                }

                while (v22 != v18);
                LODWORD(v17) = *(v14 + 8);
                v16 = *v14;
              }

              v27 = v17 - 1;
              *(v14 + 8) = v27;
              sub_10014E3C4(&v16[3 * v27]);
              std::recursive_mutex::unlock((v14 + 40));
            }

            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }
        }

        do
        {
          v4 += 10;
        }

        while (v4 != v8 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v4 != v9);
      v6 = v33;
      v1 = a1;
      v2 = *a1;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_47:
      v10 = 4;
      goto LABEL_48;
    }

LABEL_13:
    v9 = a1 + 42;
    if (v4 == a1 + 42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_14:
  if (v2)
  {
    goto LABEL_47;
  }

LABEL_15:
  v10 = v1[4];
  if (!v10)
  {
    goto LABEL_57;
  }

  v6 = *v6;
LABEL_48:
  v28 = (v6 + 4);
  v29 = 40 * v10;
  do
  {
    if ((*(v28 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v30 = v28[2];
      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      v31 = *v28;
      if (*v28 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }
    }

    v28 += 5;
    v29 -= 40;
  }

  while (v29);
  v2 = *v1;
LABEL_57:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(*(v1 + 1), (40 * v1[4]), 8uLL);
  }

  return v1;
}

uint64_t *sub_10014E3C4(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    llvm::deallocate_buffer(*v7, (16 * *(v7 + 16)), 8uLL);
    operator delete();
  }

  return a1;
}

uint64_t sub_10014E48C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (v3 + 40 * (v12 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

void sub_10014E534(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if (*a1)
  {
    v9 = &v18;
    if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 32);
      v19 = *(a1 + 16);
      v20 = v17;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = &v21;
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
LABEL_12:
        v11 = *(a1 + 88);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    *v9 = v10;
    *(v9 + 1) = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(v9 + 3) = *(a1 + 72);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v9 += 5;
    v11 = *(a1 + 88);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_13:
      v12 = *(a1 + 128);
      if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

LABEL_23:
    *v9 = v11;
    *(v9 + 1) = *(a1 + 96);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(v9 + 3) = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v9 += 5;
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_14:
      if (v6 < 5)
      {
LABEL_16:
        sub_10014E7A0(a1, &v18, v9);
        return;
      }

LABEL_15:
      *a1 &= ~1u;
      v13 = a1;
      buffer = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
      a1 = v13;
      *(v13 + 8) = buffer;
      *(v13 + 16) = v6;
      goto LABEL_16;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6 > 4)
  {
    v15 = a1;
    v16 = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
    a1 = v15;
    *(v15 + 8) = v16;
    *(v15 + 16) = v6;
  }

  else
  {
    *a1 |= 1u;
  }

  sub_10014E7A0(a1, v7, &v7[5 * v8]);

  llvm::deallocate_buffer(v7, (40 * v8), 8uLL);
}

void sub_10014E7A0(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = a1 + 42;
    v9 = a1 + 2;
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[10 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 10;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[10 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 20;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (*v19 != v15)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (*v19 == v15)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 2) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 6) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void sub_10014E9E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B79C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014EA3C(uint64_t a1, unsigned __int8 **a2)
{
  v2 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2);
  operator new();
}

uint64_t sub_10014EB90(uint64_t result, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2 - 1;
    v6 = 1;
    v7 = *a3 & (a2 - 1);
    v8 = result + 16 * v7;
    v9 = *(v8 + 8);
    if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v9 != -4096)
    {
      while (1)
      {
        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 == -8192;
        }

        if (v10)
        {
          v4 = v8;
        }

        v11 = v7 + v6++;
        v7 = v11 & v5;
        v8 = result + 16 * (v11 & v5);
        v9 = *(v8 + 8);
        if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v12 = result;
        v13 = a4;
        v14 = a3;
        result = (*(a3 + 8))(*(a3 + 16));
        if (result)
        {
          a4 = v13;
          goto LABEL_17;
        }

        v9 = *(v8 + 8);
        a4 = v13;
        a3 = v14;
        result = v12;
        if (v9 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  *a4 = v8;
  return result;
}

void sub_10014EC7C(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &buffer[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = buffer + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_10028FC60;
        *(v14 - 1) = xmmword_10028FC60;
        *v14 = xmmword_10028FC60;
        v14[1] = xmmword_10028FC60;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &buffer[v11];
        do
        {
          *v10++ = xmmword_10028FC60;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = v4;
      do
      {
        v25 = *(v17 + 1);
        if ((v25 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = *(a1 + 16) - 1;
          v27 = v26 & *v17;
          v24 = *a1 + 16 * v27;
          v28 = *(v24 + 8);
          if (v28 != v25)
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
                v29 = v24;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v24 = *a1 + 16 * (v32 & v26);
              v28 = *(v24 + 8);
              if (v28 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v24 = v29;
            }
          }

LABEL_24:
          *v24 = *v17;
          ++*(a1 + 8);
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = (v18 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v19 < 3)
      {
        goto LABEL_19;
      }

      v20 = v19 + 1;
      v10 = &buffer[v20 & 0x1FFFFFFFFFFFFFFCLL];
      v21 = buffer + 2;
      v22 = v20 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v21 - 2) = xmmword_10028FC60;
        *(v21 - 1) = xmmword_10028FC60;
        *v21 = xmmword_10028FC60;
        v21[1] = xmmword_10028FC60;
        v21 += 4;
        v22 -= 4;
      }

      while (v22);
      if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_19:
        v23 = &buffer[v18];
        do
        {
          *v10++ = xmmword_10028FC60;
        }

        while (v10 != v23);
      }
    }
  }
}

uint64_t sub_10014EE98(uint64_t a1)
{
  if ((*(a1 + 256) & 1) == 0)
  {
    return a1 + 112;
  }

  result = *sub_10014EFA4(a1);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10014EFA4(uint64_t *a1)
{
  off_1002C3498();
  if ((*v2 & 1) == 0)
  {
    sub_100282108();
  }

  off_1002C3480();
  v4 = *a1;
  v17 = *a1;
  v5 = v3 + 8;
  if (*v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(v3 + 16);
    if (!v6)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v5 = *(v3 + 8);
  }

  v7 = v6 - 1;
  v8 = v7 & ((v4 >> 4) ^ (v4 >> 9));
  v9 = v5 + 40 * v8;
  v10 = *v9;
  if (v4 != *v9)
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
      v9 = v5 + 40 * v8;
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_8;
      }
    }

    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = v9;
    }

LABEL_13:
    sub_10014F514(v3, v12, &v17);
  }

LABEL_8:
  result = **(v9 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    sub_10014F6C4(*a1, (v9 + 8));
  }

  return result;
}

int *sub_10014F1C0(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          sub_10014F348(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return sub_100137168(a1);
}

void sub_10014F348(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  if (v5)
  {
    v7 = 24 * v5;
    while (*v4 != a2)
    {
      v4 += 3;
      v7 -= 24;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v4 + 3 != v6)
  {
    v8 = v4 + 4;
    do
    {
      v10 = *(v8 - 1);
      *(v8 - 1) = 0;
      v11 = *(v8 - 4);
      *(v8 - 4) = v10;
      if (v11)
      {
        operator delete();
      }

      v12 = *v8;
      *v8 = 0;
      v8[1] = 0;
      v13 = *(v8 - 2);
      *(v8 - 3) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v9 = v8 + 2;
      v8 += 3;
    }

    while (v9 != v6);
  }

  sub_10014F43C(a1);

  std::recursive_mutex::unlock((a1 + 40));
}

uint64_t sub_10014F43C(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 24 * v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[1];
      if (v5)
      {
        *v5 = 0;
        atomic_store(0, (v5 + 8));
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  result = *v2;
  *v2 = 0;
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_10014F514(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  sub_100137450(a1, v6);
  sub_100137260(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void sub_10014F668(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B79F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014F6C4(uint64_t a1, unsigned __int8 **a2)
{
  v2 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2);
  operator new();
}

uint64_t sub_10014F808(uint64_t a1)
{
  llvm::deallocate_buffer(*(a1 + 232), (16 * *(a1 + 248)), 8uLL);
  v2 = *(a1 + 224);
  v3 = *(a1 + 208);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = sub_10014D624(v4);
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = *(a1 + 208);
    v6 = (16 * *(a1 + 224));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6, 8uLL);
  sub_10003EA00(a1 + 112);
  std::recursive_mutex::~recursive_mutex((a1 + 40));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 16);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          sub_10003EA00(v10);
          operator delete();
        }
      }

      while (v8 != v7);
      v9 = *(a1 + 16);
    }

    *(a1 + 24) = v7;
    operator delete(v9);
  }

  v12 = *(a1 + 8);
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return a1;
}