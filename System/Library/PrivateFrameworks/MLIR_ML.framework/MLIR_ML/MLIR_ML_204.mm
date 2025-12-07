void mlir::Operation::destroy(mlir::Operation *this, unsigned int a2)
{
  v3 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v3);
  v5 = 16 * mlir::OpResult::getNumInline(v3) + 24 * NumTrailing;
  v6 = this - ((v5 - (v5 != 0) + 8 * (v5 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v6);
}

mlir::Block *mlir::Operation::isProperAncestor(mlir::Operation *this, Operation *ParentOp)
{
  do
  {
    result = *(ParentOp + 2);
    if (!result)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(result);
    result = (ParentOp != 0);
  }

  while (ParentOp != this && ParentOp != 0);
  return result;
}

mlir::Diagnostic *mlir::Operation::emitError@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, const llvm::Twine *a3@<X1>)
{
  v4 = (this + 24);
  mlir::emitError(*(this + 3), a3, a1);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote(a1 + 1, *v4, 1);
  }

  return result;
}

uint64_t *mlir::Operation::emitWarning@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, const llvm::Twine *a3@<X1>)
{
  v4 = (this + 24);
  mlir::emitWarning(*(this + 3), a3, a1);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote(a1 + 1, *v4, 1);
  }

  return result;
}

uint64_t mlir::Operation::emitRemark@<X0>(mlir::Operation *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (this + 24);
  mlir::emitRemark(*(this + 3), a2, a3);
  Context = mlir::Attribute::getContext(v4);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote((a3 + 8), *v4, 1);
  }

  return result;
}

unint64_t mlir::Operation::getAttrDictionary(mlir::Operation *this)
{
  v6[9] = *MEMORY[0x277D85DE8];
  if (!*(this + 47))
  {
    return *(this + 7);
  }

  mlir::NamedAttrList::NamedAttrList(v5, *(this + 7));
  (*(**(this + 6) + 96))(*(this + 6), this, v5);
  Context = mlir::Attribute::getContext((this + 24));
  result = mlir::NamedAttrList::getDictionary(v5, Context);
  if (v5[0] != v6)
  {
    v4 = result;
    free(v5[0]);
    return v4;
  }

  return result;
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (*(a1 + 47))
  {
    v15 = v17;
    v16 = 0x300000000;
    if (a3 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a3)
    {
      v7 = 16 * a3;
      do
      {
        while (1)
        {
          v14 = *a2;
          Name = mlir::NamedAttribute::getName(&v14);
          Value = mlir::StringAttr::getValue(&Name);
          (*(**(a1 + 48) + 80))(*(a1 + 48), a1, Value, v10);
          if ((v11 & 1) == 0)
          {
            break;
          }

          v8 = mlir::NamedAttribute::getName(&v14);
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v8, *(&v14 + 1));
          a2 += 2;
          v7 -= 16;
          if (!v7)
          {
            goto LABEL_13;
          }
        }

        if (v16 >= HIDWORD(v16))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v15 + v16) = v14;
        LODWORD(v16) = v16 + 1;
        a2 += 2;
        v7 -= 16;
      }

      while (v7);
    }

LABEL_13:
    Context = mlir::Attribute::getContext((a1 + 24));
    *(a1 + 56) = mlir::DictionaryAttr::get(Context, v15, v16);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  else
  {
    v6 = mlir::Attribute::getContext((a1 + 24));
    *(a1 + 56) = mlir::DictionaryAttr::get(v6, a2, a3);
  }
}

uint64_t mlir::Operation::getPropertiesAsAttribute(mlir::Operation *this)
{
  v2 = *(this + 6);
  if (v2[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return (*(*v2 + 19))(v2, this);
  }
}

uint64_t mlir::Operation::copyProperties(uint64_t a1, uint64_t a2)
{
  if (HIBYTE(*(a1 + 44)))
  {
    v3 = a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64;
  }

  else
  {
    v3 = 0;
  }

  return (*(**(a1 + 48) + 160))(*(a1 + 48), v3, a2);
}

uint64_t mlir::Operation::hashProperties(mlir::Operation *this)
{
  if (HIBYTE(*(this + 11)))
  {
    v1 = this + 16 * ((*(this + 11) >> 23) & 1) + 64;
  }

  else
  {
    v1 = 0;
  }

  return (*(**(this + 6) + 176))(*(this + 6), v1);
}

BOOL mlir::Operation::isBeforeInBlock(mlir::Operation *this, mlir::Operation *a2)
{
  if (mlir::Block::isOpOrderValid(*(this + 2)))
  {
    mlir::Operation::updateOrderIfNecessary(this);
    mlir::Operation::updateOrderIfNecessary(a2);
  }

  else
  {
    mlir::Block::recomputeOpOrder(*(this + 2));
  }

  return *(this + 8) < *(a2 + 8);
}

void mlir::Operation::updateOrderIfNecessary(uint64_t *this)
{
  if (*(this + 8) == -1)
  {
    v1 = this[2];
    v2 = *(v1 + 40);
    v3 = (v1 + 32);
    if (v2 == (v1 + 32) || v2[1] != v3)
    {
      if (*v3 == this)
      {
        v7 = *this;
        if (v2 == this)
        {
          v7 = 0;
        }

        v8 = *(v7 + 32);
        if (v8 != -1)
        {
          *(this + 8) = v8 + 5;
          return;
        }

        goto LABEL_23;
      }

      if (v2 != this)
      {
        v4 = *(*this + 32);
        if (v4 != -1)
        {
          v5 = this[1] == v3 ? 0 : this[1];
          v6 = *(v5 + 32);
          if (v6 != -1 && v4 + 1 != v6)
          {
            *(this + 8) = v4 + ((v6 - v4) >> 1);
            return;
          }
        }

        goto LABEL_23;
      }

      if (this[1] == v3)
      {
        v9 = 0;
      }

      else
      {
        v9 = this[1];
      }

      v10 = *(v9 + 32);
      if (!v10 || v10 == -1)
      {
LABEL_23:
        mlir::Block::recomputeOpOrder(this[2]);
        return;
      }

      if (v10 > 5)
      {
        *(this + 8) = 5;
      }

      else
      {
        *(this + 8) = v10 >> 1;
      }
    }
  }
}

void llvm::ilist_traits<mlir::Operation>::deleteNode(mlir::Operation *a1, unsigned int a2)
{
  v3 = *(a1 + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v3);
  v5 = 16 * mlir::OpResult::getNumInline(v3) + 24 * NumTrailing;
  v6 = a1 - ((v5 - (v5 != 0) + 8 * (v5 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(a1);

  free(v6);
}

uint64_t llvm::ilist_traits<mlir::Operation>::addNodeToList(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result - 32;
  *(a2 + 32) = -1;
  return result;
}

uint64_t llvm::ilist_traits<mlir::Operation>::transferNodesFromList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 - 32;
  result = mlir::Block::invalidateOpOrder(a1 - 32);
  if (a1 != a2)
  {
    while (a3 != a4)
    {
      *(a3 + 16) = v8;
      a3 = *(a3 + 8);
    }
  }

  return result;
}

void mlir::Operation::erase(mlir::Operation *this, unsigned int a2)
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

  v5 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v5);
  v7 = 16 * mlir::OpResult::getNumInline(v5) + 24 * NumTrailing;
  v8 = this - ((v7 - (v7 != 0) + 8 * (v7 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v8);
}

uint64_t *mlir::Operation::remove(uint64_t *this)
{
  if (this[2])
  {
    this[2] = 0;
    v2 = *this;
    v1 = this[1];
    *v1 = *this;
    *(v2 + 8) = v1;
    *this = 0;
    this[1] = 0;
  }

  return this;
}

mlir::Operation *mlir::Operation::moveBefore(mlir::Operation *this, mlir::Operation *a2)
{
  if (this != a2)
  {
    v3 = this;
    v4 = *(this + 1);
    if (v4 != a2)
    {
      v5 = *(a2 + 2);
      v6 = *(this + 2);
      this = mlir::Block::invalidateOpOrder(v5);
      if (v4 != v3 && v6 != v5)
      {
        v8 = v3;
        do
        {
          *(v8 + 2) = v5;
          v8 = *(v8 + 1);
        }

        while (v8 != v4);
      }

      if (v4 != v3)
      {
        v9 = *v4;
        v10 = *v3;
        *(v10 + 8) = v4;
        *v4 = v10;
        v11 = *a2;
        *(v9 + 8) = a2;
        *v3 = v11;
        *(v11 + 8) = v3;
        *a2 = v9;
      }
    }
  }

  return this;
}

uint64_t *mlir::Operation::moveBefore(uint64_t *result, mlir::Block *this, uint64_t *a3)
{
  if (result != a3)
  {
    v4 = result;
    v5 = result[1];
    if (v5 != a3)
    {
      v7 = result[2];
      result = mlir::Block::invalidateOpOrder(this);
      if (v7 != this && v5 != v4)
      {
        v9 = v4;
        do
        {
          v9[2] = this;
          v9 = v9[1];
        }

        while (v9 != v5);
      }

      if (v5 != v4)
      {
        v10 = *v5;
        v11 = *v4;
        *(v11 + 8) = v5;
        *v5 = v11;
        v12 = *a3;
        *(v10 + 8) = a3;
        *v4 = v12;
        *(v12 + 8) = v4;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t *mlir::Operation::moveAfter(uint64_t *this, mlir::Operation *a2)
{
  v2 = *(a2 + 1);
  v3 = this[1];
  if (v2 != this && v3 != v2)
  {
    v5 = this;
    v6 = *(a2 + 2);
    v7 = this[2];
    this = mlir::Block::invalidateOpOrder(v6);
    if (v3 != v5 && v7 != v6)
    {
      v9 = v5;
      do
      {
        v9[2] = v6;
        v9 = v9[1];
      }

      while (v9 != v3);
    }

    if (v3 != v5)
    {
      v10 = *v3;
      v11 = *v5;
      *(v11 + 8) = v3;
      *v3 = v11;
      v12 = *v2;
      *(v10 + 8) = v2;
      *v5 = v12;
      *(v12 + 8) = v5;
      *v2 = v10;
    }
  }

  return this;
}

uint64_t mlir::Operation::moveAfter(uint64_t result, mlir::Block *this, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(result + 8);
  if (v3 != result && v4 != v3)
  {
    v7 = result;
    v8 = *(result + 16);
    result = mlir::Block::invalidateOpOrder(this);
    if (v4 != v7 && v8 != this)
    {
      v10 = v7;
      do
      {
        v10[2] = this;
        v10 = v10[1];
      }

      while (v10 != v4);
    }

    if (v4 != v7)
    {
      v11 = *v4;
      v12 = *v7;
      *(v12 + 8) = v4;
      *v4 = v12;
      v13 = *v3;
      *(v11 + 8) = v3;
      *v7 = v13;
      *(v13 + 8) = v7;
      *v3 = v11;
    }
  }

  return result;
}

void *mlir::Operation::dropAllDefinedValueUses(void *this)
{
  v1 = this;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = this - 2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
      while (1)
      {
        v5 = *this;
        if (!*this)
        {
          break;
        }

        v6 = v5[1];
        if (v6)
        {
          v7 = *v5;
          *v6 = *v5;
          if (v7)
          {
            *(v7 + 8) = v6;
          }
        }

        *v5 = 0;
        v5[1] = 0;
        v5[3] = 0;
      }
    }
  }

  v8 = *(v1 + 11);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((&v1[2 * ((v8 >> 23) & 1) + 8] + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 10);
    v10 = v9 + 24 * (v8 & 0x7FFFFF);
    j = *(v9 + 8);
    if (j != v9)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v9 += 24;
      if (v9 == v10)
      {
        break;
      }

      for (j = *(v9 + 8); j != v9; j = *(j + 8))
      {
LABEL_17:
        if (j)
        {
          v12 = (j - 8);
        }

        else
        {
          v12 = 0;
        }

        this = mlir::Block::dropAllDefinedValueUses(v12);
      }
    }
  }

  return this;
}

void mlir::Operation::setSuccessor(mlir::Operation *this, mlir::Block *a2, unsigned int a3)
{
  v3 = (((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    *v4 = *v3;
    if (v5)
    {
      *(v5 + 8) = v4;
    }
  }

  v3[3] = a2;
  mlir::BlockOperand::getUseList(a2, a2);
  v7 = *v6;
  *v3 = *v6;
  v3[1] = v6;
  if (v7)
  {
    *(v7 + 8) = v3;
  }

  *v6 = v3;
}

uint64_t mlir::Operation::fold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 48) + 16))(*(a1 + 48), a1, a2, a3, a4))
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (*(v9 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    ReferencedDialect = *(v9 + 24);
    if (ReferencedDialect)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(v9 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v12);
  if (!ReferencedDialect)
  {
    return 0;
  }

LABEL_6:
  result = mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(ReferencedDialect);
  if (result)
  {
    v11 = mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(ReferencedDialect);
    return (*(*v11 + 16))(v11, a1, a2, a3, a4);
  }

  return result;
}

void mlir::Operation::emitOpError(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, const char **a3@<X1>)
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = 257;
  mlir::Operation::emitError(&v22, this, v18);
  if (v22)
  {
    LODWORD(v20) = 3;
    *(&v20 + 1) = "'";
    v21 = 1;
    if (v25 >= v26)
    {
      if (v24 > &v20 || v24 + 24 * v25 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v24 + 24 * v25;
    v7 = v20;
    *(v6 + 2) = v21;
    *v6 = v7;
    ++v25;
    if (v22)
    {
      mlir::Diagnostic::operator<<(v23, *(this + 6));
      if (v22)
      {
        LODWORD(v20) = 3;
        *(&v20 + 1) = "' op ";
        v21 = 5;
        if (v25 >= v26)
        {
          if (v24 > &v20 || v24 + 24 * v25 <= &v20)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v24 + 24 * v25;
        v9 = v20;
        *(v8 + 2) = v21;
        *v8 = v9;
        ++v25;
        if (v22)
        {
          mlir::Diagnostic::operator<<(v23, a3);
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != &v27)
    {
      free(v24);
    }
  }
}

_BYTE *mlir::Operation::CloneOptions::CloneOptions(_BYTE *this)
{
  *this &= 0xFCu;
  return this;
}

{
  *this &= 0xFCu;
  return this;
}

_BYTE *mlir::Operation::CloneOptions::CloneOptions(_BYTE *this, char a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *this = v3 | a2 | *this & 0xFC;
  return this;
}

{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *this = v3 | a2 | *this & 0xFC;
  return this;
}

_BYTE *mlir::Operation::CloneOptions::cloneOperands(_BYTE *this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *this = *this & 0xFD | v2;
  return this;
}

uint64_t mlir::OpState::parse(mlir::OpState *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 1);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v20[0] = *(v5 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v20);
    v5 = *(a2 + 1);
  }

  else
  {
    ReferencedDialect = *(v5 + 24);
  }

  v20[0] = *(v5 + 8);
  Value = mlir::StringAttr::getValue(v20);
  (*(*ReferencedDialect + 64))(v22, ReferencedDialect, Value, v8);
  if (v23 == 1)
  {
    return (v22[0])(v22[1], this, a2);
  }

  v10 = (*(*this + 16))(this);
  v20[0] = "has no custom assembly form";
  v21 = 259;
  (*(*this + 24))(v22, this, v10, v20);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v29;
      v13 = __p;
      if (v29 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v29 = v11;
      operator delete(v13);
    }

    v14 = v26;
    if (v26)
    {
      v15 = v27;
      v16 = v26;
      if (v27 != v26)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v26;
      }

      v27 = v14;
      operator delete(v16);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v9;
}

uint64_t mlir::OpState::print(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14[0] = *(v8 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v14);
  }

  else
  {
    ReferencedDialect = *(v8 + 24);
  }

  (*(*ReferencedDialect + 72))(v14);
  if (v15 < 8)
  {
    result = (*(*a2 + 216))(a2, a1, 1);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  else
  {
    mlir::OpState::printOpName(a1, a2, a3, a4);
    if ((v15 & 2) != 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14[0];
    }

    result = (*(v15 & 0xFFFFFFFFFFFFFFF8))(v10, a1, a2);
    v12 = v15;
    if (v15 < 8)
    {
      return result;
    }
  }

  if ((v12 & 4) != 0)
  {
    if ((v12 & 2) != 0)
    {
      v13 = v14;
    }

    else
    {
      v13 = v14[0];
    }

    result = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
  }

  if ((v12 & 2) == 0)
  {
    llvm::deallocate_buffer(v14[0], v14[1]);
  }

  return result;
}

void **mlir::OpState::printOpName(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4)
{
  v78[0] = *(*(a1 + 48) + 8);
  Value = mlir::StringAttr::getValue(v78);
  v9 = v8;
  v79 = 773;
  v78[0] = a3;
  v78[1] = a4;
  v78[2] = ".";
  llvm::Twine::str(v78, v80);
  v10 = v81;
  v11 = v80[0];
  if (v81 >= 0)
  {
    v12 = v80;
  }

  else
  {
    v12 = v80[0];
  }

  if (v81 >= 0)
  {
    v13 = v81;
  }

  else
  {
    v13 = v80[1];
  }

  if (v9 < v13 || v13 && memcmp(Value, v12, v13))
  {
    if (v10 < 0)
    {
      operator delete(v11);
    }

    goto LABEL_37;
  }

  if (v9)
  {
    if (v9 < 8)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_26;
    }

    if (v9 >= 0x20)
    {
      v17 = 0uLL;
      v18.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v18.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v19 = vdupq_n_s64(1uLL);
      v14 = v9 & 0xFFFFFFFFFFFFFFE0;
      v20 = 0uLL;
      v21 = Value + 1;
      v22 = 0uLL;
      v23 = v9 & 0xFFFFFFFFFFFFFFE0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      do
      {
        v37 = vceqq_s8(v21[-1], v18);
        v38 = vmovl_u8(*v37.i8);
        v39 = vmovl_high_u8(v37);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v28 = vaddq_s64(v28, vandq_s8(v41, v19));
        v42 = vmovl_high_u16(v38);
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v27 = vaddq_s64(v27, vandq_s8(v41, v19));
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v26 = vaddq_s64(v26, vandq_s8(v41, v19));
        v41.i64[0] = v42.u32[2];
        v41.i64[1] = v42.u32[3];
        v24 = vaddq_s64(v24, vandq_s8(v41, v19));
        v44 = vmovl_u16(*v38.i8);
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v25 = vaddq_s64(v25, vandq_s8(v41, v19));
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v19);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v46 = vandq_s8(v41, v19);
        v41.i64[0] = v42.u32[0];
        v41.i64[1] = v42.u32[1];
        v47 = vceqq_s8(*v21, v18);
        v22 = vaddq_s64(v22, vandq_s8(v41, v19));
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v20 = vaddq_s64(v20, v46);
        v50 = vmovl_high_u16(v49);
        v17 = vaddq_s64(v17, v45);
        v41.i64[0] = v50.u32[2];
        v41.i64[1] = v50.u32[3];
        v36 = vaddq_s64(v36, vandq_s8(v41, v19));
        v51 = vmovl_high_u16(v48);
        v52 = vmovl_u16(*v49.i8);
        v41.i64[0] = v50.u32[0];
        v41.i64[1] = v50.u32[1];
        v35 = vaddq_s64(v35, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[2];
        v41.i64[1] = v52.u32[3];
        v34 = vaddq_s64(v34, vandq_s8(v41, v19));
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v32 = vaddq_s64(v32, vandq_s8(v41, v19));
        v41.i64[0] = v52.u32[0];
        v41.i64[1] = v52.u32[1];
        v33 = vaddq_s64(v33, vandq_s8(v41, v19));
        v53 = vmovl_u16(*v48.i8);
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v31 = vaddq_s64(v31, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[2];
        v41.i64[1] = v53.u32[3];
        v30 = vaddq_s64(v30, vandq_s8(v41, v19));
        v41.i64[0] = v53.u32[0];
        v41.i64[1] = v53.u32[1];
        v29 = vaddq_s64(v29, vandq_s8(v41, v19));
        v21 += 2;
        v23 -= 32;
      }

      while (v23);
      v15 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v29, v17), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v22), vaddq_s64(v35, v27))), vaddq_s64(vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26)), vaddq_s64(vaddq_s64(v32, v24), vaddq_s64(v36, v28)))));
      if (v9 == v14)
      {
        goto LABEL_30;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_26:
        v70 = v9 - v14;
        v71 = &Value->u8[v14];
        do
        {
          v72 = *v71++;
          if (v72 == 46)
          {
            ++v15;
          }

          --v70;
        }

        while (v70);
LABEL_30:
        v16 = v15 == 1;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v54 = v14;
    v14 = v9 & 0xFFFFFFFFFFFFFFF8;
    v55 = 0uLL;
    v56 = v15;
    v57 = &Value->i8[v54];
    v58 = v54 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v59 = vdupq_n_s64(1uLL);
    v60 = 0uLL;
    v61 = 0uLL;
    do
    {
      v62 = *v57++;
      v63 = vmovl_u8(vceq_s8(v62, 0x2E2E2E2E2E2E2E2ELL));
      v64 = vmovl_u16(*v63.i8);
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vandq_s8(v65, v59);
      v65.i64[0] = v64.u32[2];
      v65.i64[1] = v64.u32[3];
      v67 = vandq_s8(v65, v59);
      v68 = vmovl_high_u16(v63);
      v65.i64[0] = v68.u32[0];
      v65.i64[1] = v68.u32[1];
      v69 = vandq_s8(v65, v59);
      v65.i64[0] = v68.u32[2];
      v65.i64[1] = v68.u32[3];
      v61 = vaddq_s64(v61, vandq_s8(v65, v59));
      v60 = vaddq_s64(v60, v69);
      v55 = vaddq_s64(v55, v67);
      v56 = vaddq_s64(v56, v66);
      v58 += 8;
    }

    while (v58);
    v15 = vaddvq_s64(vaddq_s64(vaddq_s64(v56, v60), vaddq_s64(v55, v61)));
    if (v9 == v14)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  operator delete(v11);
LABEL_32:
  if (v9 >= a4 + 1)
  {
    v73 = a4 + 1;
  }

  else
  {
    v73 = v9;
  }

  v74 = &v73[Value];
  v75 = v9 - v73;
  if (v16)
  {
    Value = v74;
    v9 = v75;
  }

LABEL_37:
  result = (*(*a2 + 16))(a2);
  if (v9 > result[3] - result[4])
  {
    return llvm::raw_ostream::write(result, Value->i8, v9);
  }

  if (v9)
  {
    v77 = result;
    result = memcpy(result[4], Value, v9);
    v77[4] = v77[4] + v9;
  }

  return result;
}

llvm::raw_ostream *mlir::OpState::genericPrintProperties(llvm::raw_ostream *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return result;
  }

  v5 = result;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v23 = v6;
  if (v6)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = (*(*result + 16))(result);
    v10 = v9[4];
    if (v9[3] == v10)
    {
      llvm::raw_ostream::write(v9, "<", 1uLL);
    }

    else
    {
      *v10 = 60;
      ++v9[4];
    }

    (*(*v5 + 40))(v5, a2);
    result = (*(*v5 + 16))(v5);
    v17 = *(result + 4);
    if (*(result + 3) == v17)
    {
      return llvm::raw_ostream::write(result, ">", 1uLL);
    }

    *v17 = 62;
    ++*(result + 4);
    return result;
  }

  Value = mlir::DictionaryAttr::getValue(&v23);
  v14 = v13;
  *&v26 = a3;
  v25[0] = (a3 + 16 * a4);
  result = llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v27, &v26, v25);
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = 16 * v14;
  while (1)
  {
    v26 = *Value;
    Name = mlir::NamedAttribute::getName(&v26);
    v25[0] = mlir::StringAttr::getValue(&Name);
    v25[1] = v16;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v27, v25);
    if (!result)
    {
      break;
    }

    if (v27)
    {
      if (result == &v30)
      {
        break;
      }
    }

    else if (result == (v28 + 16 * v29))
    {
      break;
    }

    ++Value;
    v15 -= 16;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  v18 = (*(*v5 + 16))(v5);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "<", 1uLL);
  }

  else
  {
    *v19 = 60;
    ++v18[4];
  }

  v20 = mlir::DictionaryAttr::getValue(&v23);
  (*(*v5 + 192))(v5, v20, v21, a3, a4);
  result = (*(*v5 + 16))(v5);
  v22 = *(result + 4);
  if (*(result + 3) != v22)
  {
    *v22 = 62;
    ++*(result + 4);
LABEL_31:
    if ((v27 & 1) == 0)
    {
      goto LABEL_32;
    }

    return result;
  }

  result = llvm::raw_ostream::write(result, ">", 1uLL);
  if ((v27 & 1) == 0)
  {
LABEL_32:
    llvm::deallocate_buffer(v28, (16 * v29));
  }

  return result;
}

uint64_t mlir::OpTrait::impl::foldIdempotent(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if ((*(this + 46) & 0x80) == 0 || *(this + 17) != 1)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    if (v5 != *(v4 + 56))
    {
      return 0;
    }

    return v5 | 4;
  }

  v6 = *(*(this + 9) + 24);
  result = mlir::Value::getDefiningOp(&v6);
  if (!result)
  {
    return result;
  }

  if (*(this + 6) == *(result + 48))
  {
    v5 = *(*(this + 9) + 24);
    return v5 | 4;
  }

  return 0;
}

uint64_t mlir::OpTrait::impl::foldInvolution(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v4 = *(*(this + 9) + 24);
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    if (*(this + 6) == *(result + 48))
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpTrait::impl::verifyOneOperand(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 1)
  {
    return 1;
  }

  v15 = 257;
  mlir::Operation::emitOpError(v18, this, v14);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "requires a single operand";
    v17 = 25;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v19 + 24 * v20;
    v4 = v16;
    *(v3 + 2) = v17;
    *v3 = v4;
    ++v20;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v26;
      v7 = __p;
      if (v26 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v26 = v5;
      operator delete(v7);
    }

    v8 = v23;
    if (v23)
    {
      v9 = v24;
      v10 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v23;
      }

      v24 = v8;
      operator delete(v10);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v2;
}

uint64_t getTensorOrVectorElementType(uint64_t result)
{
  v1 = *(*result + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    return mlir::VectorType::getElementType(&v6);
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4)
  {
    ElementType = mlir::TensorType::getElementType(&v6);
    return getTensorOrVectorElementType(ElementType);
  }

  return result;
}

uint64_t mlir::OpTrait::impl::verifyZeroRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v15 = 257;
  mlir::Operation::emitOpError(v18, this, v14);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "requires zero regions";
    v17 = 21;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v2 = v19 + 24 * v20;
    v3 = v16;
    *(v2 + 2) = v17;
    *v2 = v3;
    ++v20;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v26;
      v7 = __p;
      if (v26 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v26 = v5;
      operator delete(v7);
    }

    v8 = v23;
    if (v23)
    {
      v9 = v24;
      v10 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v23;
      }

      v24 = v8;
      operator delete(v10);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v4;
}

uint64_t mlir::OpTrait::impl::verifyOneRegion(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v15 = 257;
  mlir::Operation::emitOpError(v18, this, v14);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "requires one region";
    v17 = 19;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v19 + 24 * v20;
    v4 = v16;
    *(v3 + 2) = v17;
    *v3 = v4;
    ++v20;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v26;
      v7 = __p;
      if (v26 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v26 = v5;
      operator delete(v7);
    }

    v8 = v23;
    if (v23)
    {
      v9 = v24;
      v10 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v23;
      }

      v24 = v8;
      operator delete(v10);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFF) == a2)
  {
    return 1;
  }

  v3 = a2;
  v22 = 257;
  mlir::Operation::emitOpError(v25, this, v21);
  if (v25[0])
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "expected ";
    v24 = 9;
    if (v27 >= v28)
    {
      if (v26 > &v23 || v26 + 24 * v27 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v26 + 24 * v27;
    v5 = v23;
    *(v4 + 2) = v24;
    *v4 = v5;
    v6 = ++v27;
    if (v25[0])
    {
      LODWORD(v23) = 5;
      *(&v23 + 1) = v3;
      if (v6 >= v28)
      {
        if (v26 > &v23 || v26 + 24 * v6 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v26 + 24 * v27;
      v8 = v23;
      *(v7 + 2) = v24;
      *v7 = v8;
      v9 = ++v27;
      if (v25[0])
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = " regions";
        v24 = 8;
        if (v9 >= v28)
        {
          if (v26 > &v23 || v26 + 24 * v9 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v26 + 24 * v27;
        v11 = v23;
        *(v10 + 2) = v24;
        *v10 = v11;
        ++v27;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNRegions(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(this + 11) & 0x7FFFFFu) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v22 = 257;
  mlir::Operation::emitOpError(v25, this, v21);
  if (v25[0])
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "expected ";
    v24 = 9;
    if (v27 >= v28)
    {
      if (v26 > &v23 || v26 + 24 * v27 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v26 + 24 * v27;
    v4 = v23;
    *(v3 + 2) = v24;
    *v3 = v4;
    v5 = ++v27;
    if (v25[0])
    {
      LODWORD(v23) = 5;
      *(&v23 + 1) = v2;
      if (v5 >= v28)
      {
        if (v26 > &v23 || v26 + 24 * v5 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v26 + 24 * v27;
      v7 = v23;
      *(v6 + 2) = v24;
      *v6 = v7;
      v8 = ++v27;
      if (v25[0])
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = " or more regions";
        v24 = 16;
        if (v8 >= v28)
        {
          if (v26 > &v23 || v26 + 24 * v8 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v23;
        *(v9 + 2) = v24;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::OpTrait::impl::verifyZeroResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(this + 9))
  {
    return 1;
  }

  v15 = 257;
  mlir::Operation::emitOpError(v18, this, v14);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "requires zero results";
    v17 = 21;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v2 = v19 + 24 * v20;
    v3 = v16;
    *(v2 + 2) = v17;
    *v2 = v3;
    ++v20;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v26;
      v7 = __p;
      if (v26 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v26 = v5;
      operator delete(v7);
    }

    v8 = v23;
    if (v23)
    {
      v9 = v24;
      v10 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v23;
      }

      v24 = v8;
      operator delete(v10);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v4;
}

uint64_t mlir::OpTrait::impl::verifyOneResult(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(this + 9) == 1)
  {
    return 1;
  }

  v15 = 257;
  mlir::Operation::emitOpError(v18, this, v14);
  if (v18[0])
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = "requires one result";
    v17 = 19;
    if (v20 >= v21)
    {
      if (v19 > &v16 || v19 + 24 * v20 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v19 + 24 * v20;
    v4 = v16;
    *(v3 + 2) = v17;
    *v3 = v4;
    ++v20;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v26;
      v7 = __p;
      if (v26 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v26 = v5;
      operator delete(v7);
    }

    v8 = v23;
    if (v23)
    {
      v9 = v24;
      v10 = v23;
      if (v24 != v23)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v23;
      }

      v24 = v8;
      operator delete(v10);
    }

    if (v19 != &v22)
    {
      free(v19);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(this + 9) == a2)
  {
    return 1;
  }

  v3 = a2;
  v22 = 257;
  mlir::Operation::emitOpError(v25, this, v21);
  if (v25[0])
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "expected ";
    v24 = 9;
    if (v27 >= v28)
    {
      if (v26 > &v23 || v26 + 24 * v27 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v26 + 24 * v27;
    v5 = v23;
    *(v4 + 2) = v24;
    *v4 = v5;
    v6 = ++v27;
    if (v25[0])
    {
      LODWORD(v23) = 5;
      *(&v23 + 1) = v3;
      if (v6 >= v28)
      {
        if (v26 > &v23 || v26 + 24 * v6 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v26 + 24 * v27;
      v8 = v23;
      *(v7 + 2) = v24;
      *v7 = v8;
      v9 = ++v27;
      if (v25[0])
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = " results";
        v24 = 8;
        if (v9 >= v28)
        {
          if (v26 > &v23 || v26 + 24 * v9 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v26 + 24 * v27;
        v11 = v23;
        *(v10 + 2) = v24;
        *v10 = v11;
        ++v27;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNResults(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(this + 9) >= a2)
  {
    return 1;
  }

  v2 = a2;
  v22 = 257;
  mlir::Operation::emitOpError(v25, this, v21);
  if (v25[0])
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "expected ";
    v24 = 9;
    if (v27 >= v28)
    {
      if (v26 > &v23 || v26 + 24 * v27 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v26 + 24 * v27;
    v4 = v23;
    *(v3 + 2) = v24;
    *v3 = v4;
    v5 = ++v27;
    if (v25[0])
    {
      LODWORD(v23) = 5;
      *(&v23 + 1) = v2;
      if (v5 >= v28)
      {
        if (v26 > &v23 || v26 + 24 * v5 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v26 + 24 * v27;
      v7 = v23;
      *(v6 + 2) = v24;
      *v6 = v7;
      v8 = ++v27;
      if (v25[0])
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = " or more results";
        v24 = 16;
        if (v8 >= v28)
        {
          if (v26 > &v23 || v26 + 24 * v8 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v23;
        *(v9 + 2) = v24;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::OpTrait::impl::verifyIsTerminator(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2 && *(v2 + 32) == this)
  {
    return 1;
  }

  v13 = "must be the last operation in the parent block";
  v14 = 259;
  mlir::Operation::emitOpError(v15, this, &v13);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::OpTrait::impl::verifyZeroSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(this + 10))
  {
    return 1;
  }

  v16 = "requires 0 successors but found ";
  v17 = 259;
  mlir::Operation::emitOpError(v20, this, &v16);
  if (v20[0])
  {
    v3 = *(this + 10);
    LODWORD(v18) = 5;
    *(&v18 + 1) = v3;
    if (v22 >= v23)
    {
      if (v21 > &v18 || v21 + 24 * v22 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v21 + 24 * v22;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v22;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v28;
      v9 = __p;
      if (v28 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v28 = v7;
      operator delete(v9);
    }

    v10 = v25;
    if (v25)
    {
      v11 = v26;
      v12 = v25;
      if (v26 != v25)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v25;
      }

      v26 = v10;
      operator delete(v12);
    }

    if (v21 != &v24)
    {
      free(v21);
    }
  }

  return v6;
}

uint64_t mlir::OpTrait::impl::verifyOneSuccessor(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 1)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v16 = "requires 1 successor but found ";
    v17 = 259;
    mlir::Operation::emitOpError(v20, this, &v16);
    if (v20[0])
    {
      v4 = *(this + 10);
      LODWORD(v18) = 5;
      *(&v18 + 1) = v4;
      if (v22 >= v23)
      {
        if (v21 > &v18 || v21 + 24 * v22 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v21 + 24 * v22;
      v6 = v18;
      *(v5 + 2) = v19;
      *v5 = v6;
      ++v22;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
      }

      v11 = v25;
      if (v25)
      {
        v12 = v26;
        v13 = v25;
        if (v26 != v25)
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
          v13 = v25;
        }

        v26 = v11;
        operator delete(v13);
      }

      if (v21 != &v24)
      {
        free(v21);
      }
    }

    return v7;
  }
}

uint64_t verifyTerminatorSuccessors(mlir::Operation *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  if (v2)
  {
    Parent = mlir::Block::getParent(v2);
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  else
  {
    Parent = 0;
    mlir::SuccessorRange::SuccessorRange(&v18, a1);
    v4 = v19;
    if (!v19)
    {
      return 1;
    }
  }

  for (i = (v18 + 24); mlir::Block::getParent(*i) == Parent; i += 4)
  {
    if (!--v4)
    {
      return 1;
    }
  }

  v16 = "reference to block defined in another region";
  v17 = 259;
  mlir::Operation::emitError(&v18, a1, &v16);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v6;
}

uint64_t mlir::OpTrait::impl::verifyNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v3 = a2;
    v23 = "requires ";
    v24 = 259;
    mlir::Operation::emitOpError(v27, this, &v23);
    if (v27[0])
    {
      LODWORD(v25) = 5;
      *(&v25 + 1) = v3;
      if (v29 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v29 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v28 + 24 * v29;
      v6 = v25;
      *(v5 + 2) = v26;
      *v5 = v6;
      v7 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 3;
        *(&v25 + 1) = " successors but found ";
        v26 = 22;
        if (v7 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v7 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v28 + 24 * v29;
        v9 = v25;
        *(v8 + 2) = v26;
        *v8 = v9;
        v10 = ++v29;
        if (v27[0])
        {
          v11 = *(this + 10);
          LODWORD(v25) = 5;
          *(&v25 + 1) = v11;
          if (v10 >= v30)
          {
            if (v28 > &v25 || v28 + 24 * v10 <= &v25)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v28 + 24 * v29;
          v13 = v25;
          *(v12 + 2) = v26;
          *v12 = v13;
          ++v29;
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v35;
        v17 = __p;
        if (v35 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v35 = v15;
        operator delete(v17);
      }

      v18 = v32;
      if (v32)
      {
        v19 = v33;
        v20 = v32;
        if (v33 != v32)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v32;
        }

        v33 = v18;
        operator delete(v20);
      }

      if (v28 != &v31)
      {
        free(v28);
      }
    }

    return v14;
  }
}

uint64_t mlir::OpTrait::impl::verifyAtLeastNSuccessors(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 10) >= a2)
  {

    return verifyTerminatorSuccessors(this);
  }

  else
  {
    v2 = a2;
    v23 = "requires at least ";
    v24 = 259;
    mlir::Operation::emitOpError(v27, this, &v23);
    if (v27[0])
    {
      LODWORD(v25) = 5;
      *(&v25 + 1) = v2;
      if (v29 >= v30)
      {
        if (v28 > &v25 || v28 + 24 * v29 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v28 + 24 * v29;
      v5 = v25;
      *(v4 + 2) = v26;
      *v4 = v5;
      v6 = ++v29;
      if (v27[0])
      {
        LODWORD(v25) = 3;
        *(&v25 + 1) = " successors but found ";
        v26 = 22;
        if (v6 >= v30)
        {
          if (v28 > &v25 || v28 + 24 * v6 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v28 + 24 * v29;
        v8 = v25;
        *(v7 + 2) = v26;
        *v7 = v8;
        v9 = ++v29;
        if (v27[0])
        {
          v10 = *(this + 10);
          LODWORD(v25) = 5;
          *(&v25 + 1) = v10;
          if (v9 >= v30)
          {
            if (v28 > &v25 || v28 + 24 * v9 <= &v25)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v28 + 24 * v29;
          v12 = v25;
          *(v11 + 2) = v26;
          *v11 = v12;
          ++v29;
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v17 = v32;
      if (v32)
      {
        v18 = v33;
        v19 = v32;
        if (v33 != v32)
        {
          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              MEMORY[0x259C63150](v20, 0x1000C8077774924);
            }
          }

          while (v18 != v17);
          v19 = v32;
        }

        v33 = v17;
        operator delete(v19);
      }

      if (v28 != &v31)
      {
        free(v28);
      }
    }

    return v13;
  }
}

uint64_t mlir::OpTrait::impl::verifyResultsAreBoolLike(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v29[0] = v4;
  v29[1] = v3;
  mlir::ResultRange::getTypes(&v24, v29);
  v5 = v25;
  v6 = v26;
  if (v25 == v26)
  {
    return 1;
  }

  v7 = v24;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v5);
    TensorOrVectorElementType = getTensorOrVectorElementType(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::Type::isInteger(&TensorOrVectorElementType, 1))
    {
      break;
    }

    if (v6 == ++v5)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(v29, this, &v21);
  if (v29[0])
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "requires a BOOL result type";
    v28 = 27;
    if (v31 >= v32)
    {
      if (v30 > &v27 || v30 + 24 * v31 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v30 + 24 * v31;
    v12 = v27;
    *(v11 + 2) = v28;
    *v11 = v12;
    ++v31;
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v39)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v37;
      v15 = __p;
      if (v37 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v37 = v13;
      operator delete(v15);
    }

    v16 = v34;
    if (v34)
    {
      v17 = v35;
      v18 = v34;
      if (v35 != v34)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v34;
      }

      v35 = v16;
      operator delete(v18);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }

  return v9;
}

BOOL mlir::OpTrait::impl::verifyResultsAreFloatLike(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  v3 = this - 16;
  if (!v2)
  {
    v3 = 0;
  }

  v45[0] = v3;
  v45[1] = v2;
  mlir::ResultRange::getTypes(&v40, v45);
  v4 = v41;
  v5 = v42;
  if (v41 == v42)
  {
    return 1;
  }

  v6 = v40;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v4);
    v8 = *(*getTensorOrVectorElementType(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v10 = v9 || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v11 = v10 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v12 = v11 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v13 = v12 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v14 = v13 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v15 = v14 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v16 = v15 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v17 = v16 || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v18 = v17 || v8 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v19 = v18 || v8 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v20 = v19 || v8 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v21 = v20 || v8 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v22 = v21 || v8 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v23 = v22 || v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (!v23 && v8 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      break;
    }

    if (v5 == ++v4)
    {
      return 1;
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(v45, this, v38);
  if (v45[0])
  {
    LODWORD(v43) = 3;
    *(&v43 + 1) = "requires a floating point type";
    v44 = 30;
    if (v47 >= v48)
    {
      if (v46 > &v43 || v46 + 24 * v47 <= &v43)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v46 + 24 * v47;
    v27 = v43;
    *(v26 + 2) = v44;
    *v26 = v27;
    ++v47;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
  v28 = result;
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
    result = v28;
  }

  if (v55)
  {
    if (v54 != &v55)
    {
      free(v54);
      result = v28;
    }

    v29 = __p;
    if (__p)
    {
      v30 = v53;
      v31 = __p;
      if (v53 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v53 = v29;
      operator delete(v31);
      result = v28;
    }

    v32 = v50;
    if (v50)
    {
      v33 = v51;
      v34 = v50;
      if (v51 != v50)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            MEMORY[0x259C63150](v35, 0x1000C8077774924);
          }
        }

        while (v33 != v32);
        v34 = v50;
      }

      v51 = v32;
      operator delete(v34);
      result = v28;
    }

    if (v46 != &v49)
    {
      free(v46);
      return v28;
    }
  }

  return result;
}

uint64_t mlir::OpTrait::impl::verifyResultsAreSignlessIntegerLike(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v28[0] = v4;
  v28[1] = v3;
  mlir::ResultRange::getTypes(&v23, v28);
  v5 = v24;
  v6 = v25;
  if (v24 == v25)
  {
    return 1;
  }

  v7 = v23;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v5);
    v28[0] = getTensorOrVectorElementType(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((mlir::Type::isSignlessIntOrIndex(v28) & 1) == 0)
    {
      break;
    }

    if (v6 == ++v5)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(v28, this, v21);
  if (v28[0])
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "requires an integer or index type";
    v27 = 33;
    if (v30 >= v31)
    {
      if (v29 > &v26 || v29 + 24 * v30 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v29 + 24 * v30;
    v12 = v26;
    *(v11 + 2) = v27;
    *v11 = v12;
    ++v30;
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v33;
      }

      v34 = v16;
      operator delete(v18);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }

  return v9;
}

BOOL mlir::OpTrait::impl::verifyValueSizeAttr(uint64_t a1, const void *a2, size_t a3, const void *a4, const char *a5, const char *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 47) || (v9 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, a2, a3, a5, a6), (v10 & 1) == 0))
  {
    v9 = mlir::DictionaryAttr::get(a1 + 56, a2, a3);
  }

  if (v9)
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  v25 = 0;
  v23 = "requires dense i32 array attribute '";
  v24 = 259;
  mlir::Operation::emitOpError(&v29, a1, &v23);
  if (v29)
  {
    v28 = 261;
    *&v26 = a2;
    *(&v26 + 1) = a3;
    mlir::Diagnostic::operator<<(&v30, &v26);
    if (v29)
    {
      LODWORD(v26) = 3;
      *(&v26 + 1) = "'";
      v27 = 1;
      if (v32 >= v33)
      {
        if (v31 > &v26 || v31 + 24 * v32 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v31 + 24 * v32;
      v12 = v26;
      *(v11 + 2) = v27;
      *v11 = v12;
      ++v32;
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v38;
      v16 = __p;
      if (v38 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v38 = v14;
      operator delete(v16);
    }

    v17 = v35;
    if (v35)
    {
      v18 = v36;
      v19 = v35;
      if (v36 != v35)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v35;
      }

      v36 = v17;
      operator delete(v19);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v13;
}

BOOL mlir::OpTrait::impl::verifyNoRegionArguments(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v3 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
  v4 = 24 * (v2 & 0x7FFFFF);
  while (1)
  {
    if (v3 != *v3)
    {
      v5 = v3[1];
      v6 = v5 ? v5 - 8 : 0;
      if (((*(v6 + 56) - *(v6 + 48)) & 0x7FFFFFFF8) != 0)
      {
        break;
      }
    }

    v3 += 3;
    v4 -= 24;
    if (!v4)
    {
      return 1;
    }
  }

  if ((v2 & 0x7FFFFE) != 0)
  {
    v29[0] = "region #";
    v30 = 259;
    mlir::Operation::emitOpError(v33, this, v29);
    RegionNumber = mlir::Region::getRegionNumber(v3);
    if (v33[0])
    {
      LODWORD(v31) = 5;
      *(&v31 + 1) = RegionNumber;
      if (v35 >= v36)
      {
        if (v34 > &v31 || v34 + 24 * v35 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v34 + 24 * v35;
      v9 = v31;
      *(v8 + 2) = v32;
      *v8 = v9;
      v10 = ++v35;
      if (v33[0])
      {
        LODWORD(v31) = 3;
        *(&v31 + 1) = " should have no arguments";
        v32 = 25;
        if (v10 >= v36)
        {
          if (v34 > &v31 || v34 + 24 * v10 <= &v31)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v34 + 24 * v35;
        v12 = v31;
        *(v11 + 2) = v32;
        *v11 = v12;
        ++v35;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    v14 = result;
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
      result = v14;
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
        result = v14;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v41;
        v17 = __p;
        if (v41 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v41 = v15;
        operator delete(v17);
        result = v14;
      }

      v18 = v38;
      if (!v38)
      {
        goto LABEL_51;
      }

      v19 = v39;
      v20 = v38;
      if (v39 == v38)
      {
LABEL_50:
        v39 = v18;
        operator delete(v20);
        result = v14;
LABEL_51:
        if (v34 != &v37)
        {
          free(v34);
          return v14;
        }

        return result;
      }

      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
LABEL_49:
      v20 = v38;
      goto LABEL_50;
    }
  }

  else
  {
    v29[0] = "region should have no arguments";
    v30 = 259;
    mlir::Operation::emitOpError(v33, this, v29);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    v14 = result;
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
      result = v14;
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
        result = v14;
      }

      v23 = __p;
      if (__p)
      {
        v24 = v41;
        v25 = __p;
        if (v41 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v41 = v23;
        operator delete(v25);
        result = v14;
      }

      v18 = v38;
      if (!v38)
      {
        goto LABEL_51;
      }

      v26 = v39;
      v20 = v38;
      if (v39 == v38)
      {
        goto LABEL_50;
      }

      do
      {
        v28 = *--v26;
        v27 = v28;
        *v26 = 0;
        if (v28)
        {
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
        }
      }

      while (v26 != v18);
      goto LABEL_49;
    }
  }

  return result;
}

BOOL mlir::OpTrait::impl::verifyIsIsolatedFromAbove(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v52 = v54;
  v53 = 0x800000000;
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = (((this + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    v5 = (v4 + 24 * (v2 & 0x7FFFFF));
    while (1)
    {
      if (!HIDWORD(v53))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *v52 = v4;
      v6 = __CFADD__(v53, 1);
      v7 = v53 + 1;
      LODWORD(v53) = v53 + 1;
      if (!v6)
      {
        break;
      }

LABEL_27:
      v4 = (v4 + 24);
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      v8 = v52[v7 - 1];
      LODWORD(v53) = v7 - 1;
      mlir::Region::OpIterator::OpIterator(&v42, v8, 0);
      mlir::Region::OpIterator::OpIterator(&v38, v8, 1);
      v9 = v43;
      v37 = v43;
      v36 = v42;
      v34 = v42;
      v35 = v43;
      v10 = v39;
      if (v43 != v39)
      {
        break;
      }

LABEL_26:
      v7 = v53;
      if (!v53)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      v11 = *(v9 + 44);
      if ((v11 & 0x800000) != 0)
      {
        v12 = *(v9 + 68);
        if (v12)
        {
          break;
        }
      }

LABEL_15:
      if ((v11 & 0x7FFFFF) != 0)
      {
        {
        }

        if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          v15 = *(v9 + 44);
          v16 = v15 & 0x7FFFFF;
          if ((v15 & 0x7FFFFF) != 0)
          {
            v17 = ((v9 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40);
            v18 = v53;
            v19 = 24 * v16;
            do
            {
              if (v18 >= HIDWORD(v53))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v52[v18] = v17;
              v18 = v53 + 1;
              LODWORD(v53) = v53 + 1;
              v17 += 24;
              v19 -= 24;
            }

            while (v19);
          }
        }
      }

      mlir::Region::OpIterator::operator++(&v34);
      v9 = v35;
      if (v35 == v10)
      {
        goto LABEL_26;
      }
    }

    v13 = (*(v9 + 72) + 24);
    while (1)
    {
      v33 = *v13;
      ParentRegion = mlir::Value::getParentRegion(&v33);
      if (!ParentRegion)
      {
        break;
      }

      if (v4 != ParentRegion && (mlir::Region::isProperAncestor(v4, ParentRegion) & 1) == 0)
      {
        v40 = "using value defined outside the region";
        v41 = 259;
        mlir::Operation::emitOpError(&v42, v9, &v40);
        mlir::Diagnostic::attachNote(&v42 + 1, *(this + 3), 1);
      }

      v13 += 4;
      if (!--v12)
      {
        v11 = *(v9 + 44);
        goto LABEL_15;
      }
    }

    v31 = "operation's operand is unlinked";
    v32 = 259;
    mlir::emitError(*(v9 + 24), &v31, &v42);
    Context = mlir::Attribute::getContext((v9 + 24));
    if (mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context))
    {
      mlir::Diagnostic::attachNote(&v42 + 1, *(v9 + 24), 1);
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v49;
        v24 = __p;
        if (v49 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v49 = v22;
        operator delete(v24);
      }

      v25 = v46;
      if (v46)
      {
        v26 = v47;
        v27 = v46;
        if (v47 != v46)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              MEMORY[0x259C63150](v28, 0x1000C8077774924);
            }
          }

          while (v26 != v25);
          v27 = v46;
        }

        v47 = v25;
        operator delete(v27);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }
  }

  else
  {
LABEL_30:
    v20 = 1;
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v20;
}

uint64_t mlir::OpTrait::hasElementwiseMappableTraits(mlir::OpTrait *this, mlir::Operation *a2)
{
  {
    mlir::OpTrait::hasElementwiseMappableTraits();
  }

  if (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  {
    mlir::OpTrait::hasElementwiseMappableTraits();
  }

  if (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  {
    mlir::OpTrait::hasElementwiseMappableTraits();
  }

  if (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  {
    mlir::OpTrait::hasElementwiseMappableTraits();
  }

  v3 = *(**(this + 6) + 32);

  return v3();
}

mlir::Operation *mlir::impl::ensureRegionTerminator(uint64_t *Block, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v9 = a2 + 16;
  v17 = *(a2 + 16);
  v10 = *Block;
  if (*Block == Block)
  {
    mlir::TypeRange::TypeRange(v18, 0, 0);
    mlir::OpBuilder::createBlock(a2, Block, 0, v18[0], v18[1], 0, 0);
  }

  if (v10)
  {
    v12 = v10 - 8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 32);
  if (v13 == v12 + 32)
  {
    goto LABEL_10;
  }

  {
    v16 = v13;
    v13 = v16;
  }

  result = (*(**(v13 + 48) + 32))(*(v13 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
  if ((result & 1) == 0)
  {
LABEL_10:
    *(a2 + 16) = v12;
    *(a2 + 24) = v12 + 32;
    v15 = a4(a5, a2, a3);
    result = mlir::OpBuilder::insert(a2, v15);
  }

  if (v17)
  {
    *v9 = v17;
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
  }

  return result;
}

mlir::Operation *mlir::impl::ensureRegionTerminator(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6[0] = *a2;
  memset(&v6[1], 0, 24);
  return mlir::impl::ensureRegionTerminator(a1, v6, a3, a4, a5);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

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
    llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
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

uint64_t llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = result;
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
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v5);
          v21 = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
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

  v8 = *(v4 + 8);
  if (v7 + v8 > *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = a2[1];
  v10 = *(a3 + 8);
  if (v9 != v10)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*v4 + 8 * v8);
    do
    {
      result = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9);
      *v13 = *(result + 8) & 0xFFFFFFFFFFFFFFF8;
      v14 = v9 + 1;
      v9 = v12;
      if (v14 != v12)
      {
        v9 = v14;
        while (1)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v9);
          v15 = *(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
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
    LODWORD(v8) = *(v4 + 8);
  }

  *(v4 + 8) = v8 + v7;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::Type>::append<llvm::filter_iterator_impl<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,llvm::detail::IsaCheckPredicate<mlir::VectorType,mlir::TensorType>,std::bidirectional_iterator_tag>,void>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v6 = *(a3 + 8);
  if (v4 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v16 = a2[1];
    do
    {
      v17 = v16 + 1;
      v18 = a2[3];
      if (v16 + 1 != v5)
      {
        v19 = v3 + 56 + 32 * v16;
        v18 = v17;
        while (1)
        {
          v20 = *(*(*(*v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v21 = v20 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v21 || v20 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v18;
          v19 += 32;
          if (v5 == v18)
          {
            v18 = a2[3];
            break;
          }
        }
      }

      ++v7;
      v16 = v18;
    }

    while (v18 != v6);
  }

  v8 = *(result + 8);
  if (v7 + v8 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4 != v6)
  {
    v9 = (*result + 8 * v8);
    do
    {
      *v9 = *(*(v3 + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = v4 + 1;
      v11 = v5;
      if (v4 + 1 != v5)
      {
        v12 = v3 + 56 + 32 * v4;
        v11 = v10;
        while (1)
        {
          v13 = *(*(*(*v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v14 = v13 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v14 || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            break;
          }

          ++v11;
          v12 += 32;
          if (v5 == v11)
          {
            v11 = v5;
            break;
          }
        }
      }

      ++v9;
      v4 = v11;
    }

    while (v11 != v6);
    LODWORD(v8) = *(result + 8);
  }

  *(result + 8) = v8 + v7;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::Type>::append<llvm::concat_iterator<mlir::Type,mlir::Type*,mlir::Type*>,void>(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  v3 = result;
  v4 = a2->i64[0];
  v5 = a2->i64[1];
  v6 = a3->i64[0];
  v7 = a3->i64[1];
  v8 = 0;
  if (a2->i64[0] != a3->i64[0] || v5 != v7)
  {
    do
    {
      if (v4 == a2[1].i64[0])
      {
        v5 += 8;
      }

      else
      {
        v4 += 8;
      }

      ++v8;
    }

    while (v4 != v6 || v5 != v7);
  }

  v10 = *(result + 8);
  if (v8 + v10 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = a3[1];
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  v12 = (*result + 8 * v10);
  if (v19 == v6)
  {
    goto LABEL_15;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v14 = &unk_28689D1A8;
        do
        {
          while (1)
          {
            v15 = *(v14 - 1);
            v16 = (&v19 + (*v14 >> 1));
            if (*v14)
            {
              break;
            }

            v14 += 2;
            result = v15(v16);
            if (result)
            {
              goto LABEL_21;
            }
          }

          v14 += 2;
          result = (*(*v16 + v15))();
        }

        while (!result);
LABEL_21:
        *v12 = *result;
        v17 = v19;
        if (v19 == v20.i64[0])
        {
          break;
        }

        *&v19 = v19 + 8;
        ++v12;
        if (v17 + 8 == v6)
        {
          goto LABEL_15;
        }
      }

      if (*(&v19 + 1) != v20.i64[1])
      {
        *(&v19 + 1) += 8;
      }

      ++v12;
    }

    while (v19 != v6);
LABEL_15:
    if (*(&v19 + 1) == v7)
    {
      v13 = vmovn_s64(vmvnq_s8(vceqq_s64(v20, v18)));
      if (((v13.i32[0] | v13.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(v3 + 8) += v8;
  return result;
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

void OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_10_16()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_16_13(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  a10 = a1;
  a14 = 259;

  mlir::Operation::emitOpError(&a16, v16, &a10);
}

void OUTLINED_FUNCTION_20_11(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, uint64_t a8)
{
  a2 = a1;
  a6 = 259;

  mlir::Operation::emitOpError(&a8, v8, &a2);
}

void OUTLINED_FUNCTION_23_10()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void *OUTLINED_FUNCTION_27_15@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a8 = a1;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v8, &a8);
}

void OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_31_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  mlir::Operation::emitOpError(&a25, v25, &a17);
}

void OUTLINED_FUNCTION_36_6(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, mlir::Operation *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, int a14, uint64_t a15)
{
  a9 = a1;
  a13 = 259;

  mlir::Operation::emitOpError(&a15, a5, &a9);
}

void OUTLINED_FUNCTION_43_6(llvm *a1@<X0>, uint64_t a3@<X8>)
{

  llvm::deallocate_buffer(a1, (16 * a3));
}

void OUTLINED_FUNCTION_52_10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void OUTLINED_FUNCTION_63_7(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{

  operator delete(a1);
}

void *mlir::NamedAttrList::NamedAttrList(void *a1)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = 4;
  return a1;
}

{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = 4;
  return a1;
}

uint64_t mlir::NamedAttrList::assign(mlir::NamedAttrList *this, const mlir::NamedAttribute *a2, const mlir::NamedAttribute *a3)
{
  result = mlir::DictionaryAttr::sort();
  *(this + 10) = 4;
  return result;
}

void *mlir::NamedAttrList::NamedAttrList(void *a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    mlir::DictionaryAttr::getValue(&v4);
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = v4 | 4;
  return a1;
}

{
  v4 = a2;
  if (a2)
  {
    mlir::DictionaryAttr::getValue(&v4);
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  a1[10] = 0;
  mlir::DictionaryAttr::sort();
  a1[10] = v4 | 4;
  return a1;
}

mlir::NamedAttrList *mlir::NamedAttrList::NamedAttrList(mlir::NamedAttrList *this, const mlir::NamedAttribute *a2, const mlir::NamedAttribute *a3)
{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  *(this + 10) = 0;
  mlir::DictionaryAttr::sort();
  *(this + 10) = 4;
  return this;
}

{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  *(this + 10) = 0;
  mlir::DictionaryAttr::sort();
  *(this + 10) = 4;
  return this;
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

uint64_t mlir::NamedAttrList::append(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v13 = a4;
  Context = mlir::Attribute::getContext(&v13);
  v12 = 261;
  v11[0] = a2;
  v11[1] = a3;
  v9 = mlir::StringAttr::get(Context, v11, v8);
  return mlir::NamedAttrList::append(a1, v9, v13);
}

uint64_t mlir::NamedAttrList::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::NamedAttribute::NamedAttribute(&v10, a2, a3);
  v5 = v10;
  v11 = v10;
  v6 = *(a1 + 80);
  if ((v6 & 4) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      result = mlir::NamedAttribute::operator<((*a1 + 16 * v7 - 16), &v11);
      v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!result)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v6) = v8 | v6;
        v5 = v11;
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v6) = v6 & 0xFB;
    }

    v8 = 4;
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 80) = v6 & 7;
  v9 = *(a1 + 8);
  if (v9 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 16 * v9) = v5;
  ++*(a1 + 8);
  return result;
}

uint64_t mlir::NamedAttrList::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v12 = a3;
  v3 = *(result + 80);
  if ((v3 & 4) != 0)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = result;
      v6 = mlir::NamedAttribute::operator<((*result + 16 * v4 - 16), &v11);
      result = v5;
      v7 = *(v5 + 80) & 0xFFFFFFFFFFFFFFFBLL;
      if (!v6)
      {
        v8 = 0;
LABEL_7:
        LOBYTE(v3) = v8 | v7;
        a2 = v11;
        a3 = v12;
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
    llvm::SmallVectorBase<unsigned int>::grow_pod();
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

mlir::NamedAttribute *mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(uint64_t a1, const void *a2, size_t a3)
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
      Name = mlir::NamedAttribute::getName(v7);
      Value = mlir::StringAttr::getValue(&Name);
      v14 = v13;
      v15 = a3 >= v13 ? v13 : a3;
      if (v15)
      {
        v16 = memcmp(Value, a2, v15);
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
        Name = mlir::NamedAttribute::getName(v5);
        v9 = mlir::StringAttr::getValue(&Name);
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
        Name = mlir::NamedAttribute::getName(v5);
        mlir::StringAttr::getValue(&Name);
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
    v3 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*a1, (*a1 + 16 * v4), a2);
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
    while (mlir::NamedAttribute::getName(v3) != a2)
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

mlir::NamedAttribute *mlir::NamedAttrList::getNamed@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  result = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, a2, a3);
  if (v6)
  {
    *a4 = *result;
    *(a4 + 16) = 1;
  }

  else
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

mlir::NamedAttribute *mlir::NamedAttrList::getNamed@<X0>(mlir::NamedAttribute *result@<X0>, mlir::NamedAttribute *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = *(result + 2);
  if ((*(result + 80) & 4) != 0)
  {
    result = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*result, (*result + 16 * v6), a2);
    v5 = result;
    v8 = v9;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = 16 * v6;
    v8 = 1;
    while (1)
    {
      result = mlir::NamedAttribute::getName(v5);
      if (result == a2)
      {
        break;
      }

      v5 = (v5 + 16);
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8)
  {
    *a3 = *v5;
    *(a3 + 16) = 1;
    return result;
  }

LABEL_10:
  *a3 = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v23 = a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*a1 + 16 * v7);
  if ((*(a1 + 80) & 4) != 0)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*a1, v8, a2);
    v10 = v11;
  }

  else
  {
    if (!v7)
    {
LABEL_11:
      if ((*(a1 + 80) & 4) != 0)
      {
        Value = mlir::StringAttr::getValue(&v23);
        v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, Value, v14);
        v4 = v23;
      }

      mlir::NamedAttribute::NamedAttribute(&v22, v4, a3);
      v15 = v22;
      v16 = *a1;
      v17 = *(a1 + 8);
      v18 = *(a1 + 12);
      if ((*a1 + 16 * v17) == v6)
      {
        if (v17 >= v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v16 + v17) = v22;
        ++*(a1 + 8);
      }

      else
      {
        if (v17 >= v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v16 + v17) = *(v16 + v17 - 1);
        v19 = *(a1 + 8);
        v20 = *a1 + 16 * v19 - 16;
        if (v20 != v6)
        {
          v21 = v15;
          memmove(v6 + 16, v6, v20 - v6);
          v15 = v21;
          LODWORD(v19) = *(a1 + 8);
        }

        *(a1 + 8) = v19 + 1;
        *v6 = v15;
      }

      result = 0;
      goto LABEL_21;
    }

    v9 = 16 * v7;
    v10 = 1;
    while (mlir::NamedAttribute::getName(v6) != v4)
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
LABEL_21:
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::set(uint64_t a1, size_t a2, size_t a3, uint64_t a4)
{
  v13 = a4;
  Context = mlir::Attribute::getContext(&v13);
  v12 = 261;
  v11[0] = a2;
  v11[1] = a3;
  v9 = mlir::StringAttr::get(Context, v11, v8);
  return mlir::NamedAttrList::set(a1, v9, v13);
}

uint64_t mlir::NamedAttrList::eraseImpl(mlir::NamedAttrList *this, mlir::NamedAttribute *__dst)
{
  v3 = *(__dst + 1);
  v4 = *(this + 2);
  v5 = (*this + 16 * v4);
  if (v5 != (__dst + 16))
  {
    memmove(__dst, __dst + 16, v5 - (__dst + 16));
    LODWORD(v4) = *(this + 2);
  }

  *(this + 2) = v4 - 1;
  *(this + 10) &= 7uLL;
  return v3;
}

uint64_t mlir::NamedAttrList::erase(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if ((*(a1 + 80) & 4) != 0)
  {
    v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*a1, (*a1 + 16 * v5), a2);
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
    while (mlir::NamedAttribute::getName(v4) != a2)
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

uint64_t mlir::NamedAttrList::erase(uint64_t a1, const void *a2, size_t a3)
{
  v4 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  result = *(v4 + 1);
  v8 = *(a1 + 8);
  v9 = *a1 + 16 * v8;
  if (v9 != (v6 + 16))
  {
    v10 = result;
    memmove(v6, v6 + 16, v9 - (v6 + 16));
    result = v10;
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 - 1;
  *(a1 + 80) &= 7uLL;
  return result;
}

uint64_t mlir::NamedAttrList::operator=(uint64_t a1)
{
  mlir::DictionaryAttr::sort();
  *(a1 + 80) = 4;
  return a1;
}

void *mlir::OperationState::OperationState(void *a1, uint64_t a2, void *a3, size_t a4)
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
  v18 = (a1 + 32);
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x400000000;
  if (a5 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v19 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) == 0 && v19)
    {
      v20 = 0;
      if (a5 < 4 || v18 - v19 <= 0x1F)
      {
        v21 = (a1 + 32);
      }

      else
      {
        v20 = a5 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = &v18[a5 & 0xFFFFFFFFFFFFFFFCLL];
        v22 = (v19 + 16);
        v23 = (a1 + 48);
        v24 = a5 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *v22;
          *(v23 - 1) = *(v22 - 1);
          *v23 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (a5 == v20)
        {
          goto LABEL_23;
        }
      }

      v27 = a5 - v20;
      v28 = (v19 + 8 * v20);
      do
      {
        v29 = *v28++;
        *v21++ = v29;
        --v27;
      }

      while (v27);
      goto LABEL_23;
    }

    if ((a4 & 6) == 2 && v19)
    {
      v30 = a5;
      v31 = (v19 + 24);
      do
      {
        v32 = *v31;
        v31 += 4;
        *v18++ = v32;
        --v30;
      }

      while (v30);
    }

    else
    {
      for (i = 0; i != a5; ++i)
      {
        v18[i] = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, i);
      }
    }
  }

LABEL_23:
  *(a1 + 64) = a1 + 80;
  *(a1 + 24) += a5;
  *(a1 + 72) = 0x400000000;
  if (a7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a7)
  {
    v33 = 0;
    v34 = *(a1 + 64);
    do
    {
      *(v34 + 8 * v33) = mlir::TypeRange::dereference_iterator(a6, v33);
      ++v33;
    }

    while (a7 != v33);
    v35 = *(a1 + 72);
  }

  else
  {
    v35 = 0;
  }

  *(a1 + 72) = v35 + a7;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x400000000;
  *(a1 + 192) = 0;
  mlir::DictionaryAttr::sort();
  *(a1 + 192) = 4;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x100000000;
  if (a12 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a12)
  {
    v36 = 0;
    v37 = *(a1 + 200);
    do
    {
      *(v37 + 8 * v36) = mlir::BlockRange::dereference_iterator(a11, v36);
      ++v36;
    }

    while (a12 != v36);
    v38 = *(a1 + 208);
  }

  else
  {
    v38 = 0;
  }

  v39 = a1 + 240;
  *(a1 + 224) = a1 + 240;
  *(a1 + 208) = v38 + a12;
  *(a1 + 232) = 0x100000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  if (a14)
  {
    v40 = 0;
    v41 = a13;
    v42 = 8 * a14;
    v43 = a13;
    do
    {
      if (v40 >= *(a1 + 236))
      {
        if (v39 > v43 || v39 + 8 * v40 <= v43)
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v40 + 1);
        }

        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a1 + 224, v40 + 1);
      }

      v44 = *(a1 + 232);
      v45 = *v43;
      *v43 = 0;
      *(v39 + 8 * v44) = v45;
      v40 = v44 + 1;
      *(a1 + 232) = v44 + 1;
      ++v43;
      ++v41;
      v42 -= 8;
    }

    while (v42);
  }

  return a1;
}

{
  return mlir::OperationState::OperationState(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t mlir::OperationState::OperationState(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, uint64_t a14)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  mlir::OperationName::OperationName(&v25, a3, a4, Context);
  return mlir::OperationState::OperationState(a1, a2, v25, a5, a6, a7, a8, v21, a9, a10, a11, a12, a13, a14);
}

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
        MEMORY[0x259C63180]();
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

  v7 = *(this + 25);
  if (v7 != this + 216)
  {
    free(v7);
  }

  v8 = *(this + 14);
  if (v8 != this + 128)
  {
    free(v8);
  }

  v9 = *(this + 8);
  if (v9 != this + 80)
  {
    free(v9);
  }

  v10 = *(this + 2);
  if (v10 != this + 32)
  {
    free(v10);
  }
}

uint64_t mlir::OperationState::setProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 248);
  if (v5)
  {

    return mlir::Operation::setPropertiesFromAttribute(a2, v5, a3, a4);
  }

  else
  {
    if (*(a1 + 256))
    {
      if (HIBYTE(*(a2 + 44)))
      {
        v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
      }

      else
      {
        v6 = 0;
      }

      (*(a1 + 288))(*(a1 + 296), v6);
    }

    return 1;
  }
}

uint64_t mlir::OperationState::addOperands(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = *(result + 24);
  if (a3 + v5 > *(result + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = *(result + 16);
    v7 = (v6 + 8 * v5);
    v8 = a2 & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 6) != 0 || !v8)
    {
      if ((a2 & 6) == 2 && v8)
      {
        if (a3 > 0xC && (v7 >= v8 + 32 * a3 || v8 + 24 >= v6 + 8 * (a3 + v5)))
        {
          v20 = a3 & 3;
          if ((a3 & 3) == 0)
          {
            v20 = 4;
          }

          v14 = a3 - v20;
          v21 = (v8 + 88);
          v22 = (v7 + 2);
          v23 = v14;
          do
          {
            v24 = v21 - 8;
            v25 = vld4q_f64(v24);
            v26 = vld4q_f64(v21);
            *(v22 - 1) = v25;
            *v22 = v26;
            v21 += 16;
            v22 += 2;
            v23 -= 4;
          }

          while (v23);
          v7 += v14;
        }

        else
        {
          v14 = 0;
        }

        v27 = a3 - v14;
        v28 = (v8 + 32 * v14 + 24);
        do
        {
          v29 = *v28;
          v28 += 4;
          *v7++ = v29;
          --v27;
        }

        while (v27);
      }

      else
      {
        for (i = 0; i != a3; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v7[i] = result;
        }
      }
    }

    else
    {
      if (a3 <= 7 || (v9 = 8 * v5 + v6, v9 - v8 < 0x20))
      {
        v10 = 0;
LABEL_9:
        v11 = a3 - v10;
        v12 = (v8 + 8 * v10);
        do
        {
          v13 = *v12++;
          *v7++ = v13;
          --v11;
        }

        while (v11);
        goto LABEL_32;
      }

      v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v7 += a3 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v8 + 16);
      v17 = (v9 + 16);
      v18 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (a3 != v10)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_32:
  *(v4 + 24) += a3;
  return result;
}

uint64_t mlir::OperationState::addSuccessors(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 208);
  if (a3 + v6 > *(result + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v7 = 0;
    v8 = *(result + 200) + 8 * v6;
    do
    {
      result = mlir::BlockRange::dereference_iterator(a2, v7);
      *(v8 + 8 * v7++) = result;
    }

    while (a3 != v7);
    LODWORD(v6) = *(v5 + 208);
  }

  *(v5 + 208) = v6 + a3;
  return result;
}

uint64_t mlir::OperationState::addRegion(uint64_t result, char *a2)
{
  v2 = *(result + 224);
  v3 = *(result + 232);
  if (v3 >= *(result + 236))
  {
    if (v2 > a2 || v2 + 8 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v3 + 1);
    }

    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(result + 224, v3 + 1);
  }

  v4 = *(result + 232);
  v5 = *a2;
  *a2 = 0;
  *(v2 + 8 * v4) = v5;
  *(result + 232) = v4 + 1;
  return result;
}

uint64_t mlir::OperationState::addRegions(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result + 224;
    v3 = *(result + 224);
    v5 = *(result + 232);
    v6 = 8 * a3;
    v7 = a2;
    do
    {
      if (v5 >= *(result + 236))
      {
        if (v3 <= v7 && v3 + 8 * v5 > v7)
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
        }

        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(v4, v5 + 1);
      }

      v8 = *(result + 232);
      v9 = *v7;
      *v7 = 0;
      *(v3 + 8 * v8) = v9;
      v5 = v8 + 1;
      *(result + 232) = v8 + 1;
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

uint64_t *mlir::detail::OperandStorage::resize(mlir::detail::OperandStorage *this, mlir::Operation *a2, unsigned int a3)
{
  v4 = *(this + 1);
  result = v4;
  v6 = *(this + 1);
  if (v6 >= a3)
  {
    if (v6 != a3)
    {
      v27 = a3;
      do
      {
        v28 = &v4[4 * v27];
        v29 = v28[1];
        if (v29)
        {
          v30 = *v28;
          *v29 = v30;
          if (v30)
          {
            *(v30 + 8) = v29;
          }
        }

        ++v27;
      }

      while (v6 != v27);
    }

    *(this + 1) = a3;
  }

  else
  {
    v7 = *this & 0x7FFFFFFF;
    if (v7 >= a3)
    {
      do
      {
        v20 = &v4[4 * v6];
        *v20 = 0;
        v20[1] = 0;
        v20[2] = a2;
        v20[3] = 0;
        LODWORD(v6) = *(this + 1) + 1;
        *(this + 1) = v6;
      }

      while (v6 != a3);
    }

    else
    {
      v8 = (v7 + 2) | ((v7 + 2) >> 1) | (((v7 + 2) | ((v7 + 2) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = (v9 >> 16) | v9;
      if (v10 + 1 > a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = this;
      result = malloc_type_malloc(32 * v12, 0xE004003D73A93uLL);
      v15 = v13;
      if (v6)
      {
        v16 = v4 + 3;
        v17 = 32 * v6;
        v18 = 32 * v6;
        v19 = result;
        do
        {
          *v19 = 0;
          v19[1] = 0;
          v21 = *(v16 - 2);
          v19[2] = *(v16 - 1);
          if (v21)
          {
            v22 = *(v16 - 3);
            *v21 = v22;
            if (v22)
            {
              *(v22 + 8) = v21;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = 0;
          v23 = *(v16 - 2);
          if (v23)
          {
            v24 = *(v16 - 3);
            *v23 = v24;
            if (v24)
            {
              *(v24 + 8) = v23;
            }
          }

          *(v16 - 2) = 0;
          *v19 = 0;
          v19[1] = 0;
          v19[3] = *v16;
          *v16 = 0;
          v25 = v19[3];
          if (v25)
          {
            v26 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            if (v26)
            {
              *(v26 + 8) = v19;
            }

            *v25 = v19;
          }

          v19 += 4;
          v16 += 4;
          v18 -= 32;
        }

        while (v18);
        v31 = (v4 + 1);
        do
        {
          v32 = *v31;
          if (*v31)
          {
            v33 = *(v31 - 1);
            *v32 = v33;
            if (v33)
            {
              *(v33 + 8) = v32;
            }
          }

          v31 += 4;
          v17 -= 32;
        }

        while (v17);
      }

      for (i = *(v13 + 1); i != a3; *(v13 + 1) = i)
      {
        v35 = &result[4 * i];
        *v35 = 0;
        v35[1] = 0;
        v35[2] = a2;
        v35[3] = 0;
        i = *(v13 + 1) + 1;
      }

      if ((*v13 & 0x80000000) != 0)
      {
        v36 = result;
        free(*(v13 + 1));
        result = v36;
        v15 = v13;
      }

      *(v15 + 1) = result;
      *v15 = v12 | 0x80000000;
    }
  }

  return result;
}

uint64_t *mlir::detail::OperandStorage::setOperands(uint64_t *result, mlir::Operation *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
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
    v12 = v9[1];
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
    v28 = &result[4 * v24];
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
          v41 = &v25[4 * v8 + 4 * v39];
          v42 = v41[1];
          if (v42)
          {
            goto LABEL_54;
          }
        }

        else
        {
          result = v37[j];
          v41 = &v25[4 * v8 + 4 * v39];
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
      v45 = &v25[4 * v8];
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

uint64_t mlir::detail::OperandStorage::eraseOperands(uint64_t this, const llvm::BitVector *a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = *(this + 4);
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    if (v2 >= 0x41)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    v7 = **a2 & v6;
    if (v7)
    {
      i = 0;
    }

    else
    {
      if (v2 < 0x41)
      {
        return this;
      }

      v20 = (v2 - 1) >> 6;
      v21 = (*a2 + 8);
      for (i = 64; ; i += 64)
      {
        v23 = *v21++;
        v22 = v23;
        v24 = v20 == 1 ? v5 : -1;
        v7 = v24 & v22;
        if (v7)
        {
          break;
        }

        if (!--v20)
        {
          return this;
        }
      }
    }

    v9 = i | __clz(__rbit64(v7));
    if (v9 != -1)
    {
      *(this + 4) = v9;
      if (v9 + 1 < v4)
      {
        v10 = v9 + 1;
        v11 = (v3 + 32 * v9 + 56);
        do
        {
          if (((*(*a2 + 8 * (v10 >> 6)) >> v10) & 1) == 0)
          {
            v12 = *(this + 4);
            *(this + 4) = v12 + 1;
            v13 = (v3 + 32 * v12);
            v14 = v13[1];
            if (v14)
            {
              v15 = *v13;
              *v14 = *v13;
              if (v15)
              {
                *(v15 + 8) = v14;
              }
            }

            v16 = *(v11 - 2);
            if (v16)
            {
              v17 = *(v11 - 3);
              *v16 = v17;
              if (v17)
              {
                *(v17 + 8) = v16;
              }
            }

            *(v11 - 2) = 0;
            *v13 = 0;
            v13[1] = 0;
            v13[3] = *v11;
            *v11 = 0;
            v18 = v13[3];
            if (v18)
            {
              v19 = *v18;
              *v13 = *v18;
              v13[1] = v18;
              if (v19)
              {
                *(v19 + 8) = v13;
              }

              *v18 = v13;
            }
          }

          ++v10;
          v11 += 4;
        }

        while (v10 < v4);
        LODWORD(v9) = *(this + 4);
      }

      if (v9 != v4)
      {
        v25 = 32 * v9;
        v26 = 32 * v4 - v25;
        v27 = (v25 + v3 + 8);
        do
        {
          v28 = *v27;
          if (*v27)
          {
            v29 = *(v27 - 1);
            *v28 = v29;
            if (v29)
            {
              *(v29 + 8) = v28;
            }
          }

          v27 += 4;
          v26 -= 32;
        }

        while (v26);
      }
    }
  }

  return this;
}

uint64_t mlir::OperandRange::split@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v7 = a2;
  result = mlir::DenseArrayAttr::getSize(&v7);
  *a3 = v5;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = result;
  return result;
}

void *mlir::OperandRangeRange::OperandRangeRange(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  Size = mlir::DenseArrayAttr::getSize(&v9);
  *a1 = a2;
  a1[1] = a4;
  a1[2] = 0;
  a1[3] = Size;
  return a1;
}

{
  v9 = a4;
  Size = mlir::DenseArrayAttr::getSize(&v9);
  *a1 = a2;
  a1[1] = a4;
  a1[2] = 0;
  a1[3] = Size;
  return a1;
}

uint64_t mlir::MutableOperandRange::MutableOperandRange(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x100000000;
  v7 = (24 * a6) >> 3;
  v8 = -1431655765 * v7;
  if (0xAAAAAAAAAAAAAAABLL * v7 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = 0;
  if (a6)
  {
    memcpy(*(a1 + 16), a5, 24 * a6);
    v9 = *(a1 + 24);
  }

  *(a1 + 24) = v9 + v8;
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x100000000;
  v7 = (24 * a6) >> 3;
  v8 = -1431655765 * v7;
  if (0xAAAAAAAAAAAAAAABLL * v7 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = 0;
  if (a6)
  {
    memcpy(*(a1 + 16), a5, 24 * a6);
    v9 = *(a1 + 24);
  }

  *(a1 + 24) = v9 + v8;
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

_DWORD *mlir::MutableOperandRange::slice@<X0>(_DWORD *result@<X0>, int a2@<W1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = result[2] + a2;
  v8 = *(result + 2);
  v9 = result[6];
  *a5 = *result;
  *(a5 + 8) = v7;
  *(a5 + 12) = a3;
  *(a5 + 16) = a5 + 32;
  *(a5 + 24) = 0x100000000;
  if (v9 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    result = memcpy(*(a5 + 16), v8, 24 * v9);
    v10 = *(a5 + 24) + v9;
    *(a5 + 24) = v10;
    if (*(a4 + 24) != 1)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    *(a5 + 24) = 0;
    if (*(a4 + 24) != 1)
    {
      return result;
    }
  }

  v11 = *(a5 + 16);
  if (v10 >= *(a5 + 28))
  {
    if (v11 <= a4 && v11 + 24 * v10 > a4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = v11 + 24 * *(a5 + 24);
  v13 = *a4;
  *(v12 + 16) = *(a4 + 2);
  *v12 = v13;
  ++*(a5 + 24);
  return result;
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
  *(this + 3) = a2;
  if (*(this + 6))
  {
    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
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

void mlir::MutableOperandRange::assign(mlir::MutableOperandRange *a1, uint64_t **a2)
{
  v9 = a2;
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 == 1)
  {
    v4 = (*(*a1 + 72) + 32 * v3);
    v5 = v4[1];
    if (v5)
    {
      v6 = *v4;
      *v5 = *v4;
      if (v6)
      {
        *(v6 + 8) = v5;
      }
    }

    v4[3] = a2;
    v7 = *a2;
    *v4 = *a2;
    v4[1] = a2;
    if (v7)
    {
      v7[1] = v4;
    }

    *a2 = v4;
  }

  else
  {
    mlir::Operation::setOperands(*a1, v3, v2, &v9, 1u);
    mlir::MutableOperandRange::updateLength(a1, 1);
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

uint64_t mlir::MutableOperandRangeRange::MutableOperandRangeRange(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = v14;
  v13 = 0x100000000;
  if (&v11 != a2)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      if (v7 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v14, *(a2 + 2), sizeof(v14));
      LODWORD(v13) = v7;
    }
  }

  v15 = a3;
  v16 = a4;
  v10 = a4;
  Size = mlir::DenseArrayAttr::getSize(&v10);
  llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(a1, &v11, 0, Size);
  if (v12 != v14)
  {
    free(v12);
  }

  return a1;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = v14;
  v13 = 0x100000000;
  if (&v11 != a2)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      if (v7 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v14, *(a2 + 2), sizeof(v14));
      LODWORD(v13) = v7;
    }
  }

  v15 = a3;
  v16 = a4;
  v10 = a4;
  Size = mlir::DenseArrayAttr::getSize(&v10);
  llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(a1, &v11, 0, Size);
  if (v12 != v14)
  {
    free(v12);
  }

  return a1;
}

const void **mlir::MutableOperandRangeRange::join@<X0>(const void **this@<X0>, const void **a2@<X8>)
{
  *a2 = *this;
  v3 = (a2 + 4);
  a2[2] = v3;
  a2[3] = 0x100000000;
  if (a2 != this)
  {
    v4 = *(this + 6);
    if (v4)
    {
      if (v4 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      this = memcpy(v3, this[2], 0x18uLL);
      *(a2 + 6) = v4;
    }
  }

  return this;
}

void mlir::MutableOperandRangeRange::dereference(uint64_t a1)
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = *(a1 + 64);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

void *mlir::ResultRange::ResultRange(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 1;
  return result;
}

{
  *result = a2;
  result[1] = 1;
  return result;
}

__n128 mlir::ResultRange::getUses@<Q0>(mlir::detail::OpResultImpl **__return_ptr a1@<X8>, mlir::detail::OpResultImpl **this@<X0>)
{
  v4 = *this;
  v5 = this[1];
  if (v5)
  {
    v6 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v6))
    {
      v6 = (v6 + 1);
      if (v5 == v6)
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
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  result = *this;
  *(a1 + 7) = *this;
  *(a1 + 5) = result;
  a1[9] = 0;
  return result;
}

mlir::detail::OpResultImpl **mlir::ResultRange::use_begin@<X0>(mlir::detail::OpResultImpl **__return_ptr a1@<X8>, mlir::detail::OpResultImpl **this@<X0>)
{
  v2 = *this;
  v3 = this[1];
  *a1 = *this;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = 0;
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

      v5 = (v5 + 1);
      if (v3 == v5)
      {
        v6 = 0;
        a1[1] = v3;
        goto LABEL_9;
      }
    }

    a1[1] = v5;
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
    a1[4] = v6;
  }

  return this;
}

__n128 mlir::ResultRange::use_end@<Q0>(__n128 *__return_ptr a1@<X8>, __n128 *this@<X0>)
{
  result = *this;
  *a1 = *this;
  a1[1] = result;
  a1[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::UseIterator(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  if (a4)
  {
    v5 = 0;
    a1[1] = a3;
    a1[2] = a2;
    a1[3] = a3;
LABEL_11:
    a1[4] = v5;
    return a1;
  }

  a1[1] = 0;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = 0;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
      v8 = a1[1];
      v9 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v6 = v8 + 1;
      a1[1] = v6;
      if (v6 == v9)
      {
        goto LABEL_9;
      }
    }

    if (v8 == v9)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_11;
    }

    v5 = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v8);
    goto LABEL_11;
  }

  return a1;
}

{
  *a1 = a2;
  if (a4)
  {
    v5 = 0;
    a1[1] = a3;
    a1[2] = a2;
    a1[3] = a3;
LABEL_11:
    a1[4] = v5;
    return a1;
  }

  a1[1] = 0;
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = 0;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v6);
      v8 = a1[1];
      v9 = a1[3];
      if (*NextResultAtOffset)
      {
        break;
      }

      v6 = v8 + 1;
      a1[1] = v6;
      if (v6 == v9)
      {
        goto LABEL_9;
      }
    }

    if (v8 == v9)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_11;
    }

    v5 = *mlir::detail::OpResultImpl::getNextResultAtOffset(*a1, v8);
    goto LABEL_11;
  }

  return a1;
}

__n128 mlir::ResultRange::getUsers@<Q0>(mlir::detail::OpResultImpl **this@<X0>, uint64_t a2@<X8>)
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

mlir::detail::OpResultImpl **mlir::ResultRange::user_begin@<X0>(mlir::detail::OpResultImpl **this@<X0>, mlir::detail::OpResultImpl **a2@<X8>)
{
  v3 = *this;
  v4 = this[1];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v5);
      if (*this)
      {
        break;
      }

      v5 = (v5 + 1);
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v4 == v5)
    {
LABEL_8:
      v6 = 0;
      v5 = v4;
      goto LABEL_10;
    }

    this = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v5);
    v6 = *this;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_10:
  *a2 = v3;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v6;
  return this;
}

__n128 mlir::ResultRange::user_end@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = *this;
  *a2 = *this;
  a2[1] = result;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t *mlir::ResultRange::UseIterator::skipOverResultsWithNoUsers(uint64_t *this)
{
  v1 = this;
  v2 = this[1];
  if (v2 == this[3])
  {
    this[4] = 0;
  }

  else
  {
    while (1)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(*v1, v2);
      v3 = v1[1];
      v4 = v1[3];
      if (*this)
      {
        break;
      }

      v2 = v3 + 1;
      v1[1] = v2;
      if (v2 == v4)
      {
        v1[4] = 0;
        return this;
      }
    }

    if (v3 == v4)
    {
      v1[4] = 0;
    }

    else
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(*v1, v3);
      v1[4] = *this;
    }
  }

  return this;
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
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result[1] = a3;
  return result;
}

{
  *result = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
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
    SortCommutativeOperands::matchAndRewrite();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

void mlir::OperationEquivalence::isRegionEquivalentTo(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), unint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6, char a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t, uint64_t, unint64_t, void), uint64_t a10)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<mlir::Type const&>(&v74, &v79, &v80, v78);
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

    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    v25 = v24;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
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

  llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(&v74, v36);
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

void mlir::OperationEquivalence::isRegionEquivalentTo(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v9 = v11;
  v10 = v11;
  v8 = v11;
  mlir::OperationEquivalence::isRegionEquivalentTo(a1, a2, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isRegionEquivalentTo(mlir::Region *,mlir::Region *,mlir::OperationEquivalence::Flags)::$_0>, &v10, llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isRegionEquivalentTo(mlir::Region *,mlir::Region *,mlir::OperationEquivalence::Flags)::$_1>, &v9, a3, a8, llvm::function_ref<llvm::LogicalResult ()(mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::OperationEquivalence::isRegionEquivalentTo(mlir::Region *,mlir::Region *,mlir::OperationEquivalence::Flags)::$_2>, &v8);
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
  v12 = *MEMORY[0x277D85DE8];
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

{
  v12 = *MEMORY[0x277D85DE8];
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

uint64_t llvm::indexed_accessor_range<mlir::MutableOperandRangeRange,std::pair<mlir::MutableOperandRange,mlir::NamedAttribute>,mlir::MutableOperandRange,mlir::MutableOperandRange,mlir::MutableOperandRange>::indexed_accessor_range(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  __src = v14;
  v13 = 0x100000000;
  if (&v11 != a2)
  {
    v9 = *(a2 + 6);
    if (v9)
    {
      if (v9 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v14, *(a2 + 2), sizeof(v14));
      LODWORD(v13) = v9;
      v8 = v9;
    }
  }

  v15 = *(a2 + 56);
  v16 = a3;
  *a1 = v11;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x100000000;
  if (&v11 != a1 && v8)
  {
    memcpy((a1 + 32), __src, 0x18uLL);
    *(a1 + 24) = v8;
    a3 = v16;
  }

  *(a1 + 56) = v15;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  if (__src != v14)
  {
    free(__src);
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ValueTypeRange<mlir::ResultRange>,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unint64_t *a5, uint64_t *a6)
{
  v18[2] = *MEMORY[0x277D85DE8];
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

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isRegionEquivalentTo(mlir::Region *,mlir::Region *,mlir::OperationEquivalence::Flags)::$_0>(uint64_t **a1, unint64_t a2, uint64_t a3)
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

uint64_t *llvm::function_ref<void ()(mlir::Value,mlir::Value)>::callback_fn<mlir::OperationEquivalence::isRegionEquivalentTo(mlir::Region *,mlir::Region *,mlir::OperationEquivalence::Flags)::$_1>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5 = a2;
  v6 = a3;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::try_emplace<mlir::Value>(v3, &v5, &v6, v7);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::try_emplace<mlir::Value>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = (v6 + 16 * (v18 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        v11[1] = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}